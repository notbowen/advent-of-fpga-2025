open Base
open Hardcaml
open Signal
open Always

module Config = struct
  let rows = 10
  let cols = 10
end

module I = struct
  type 'a t = { clock : 'a; clear : 'a; load : 'a; load_data : 'a; start : 'a }
  [@@deriving sexp_of, hardcaml]
end

module O = struct
  type 'a t = {
    finished : 'a;
    total_removed : 'a; [@bits 16]
    current_active : 'a; [@bits 16]
  }
  [@@deriving sexp_of, hardcaml]
end

let create _scope (i : _ I.t) =
  let open Config in
  let spec = Reg_spec.create ~clock:i.clock ~clear:i.clear () in

  let grid =
    Array.init rows ~f:(fun _ ->
        Array.init cols ~f:(fun _ -> Variable.reg spec ~width:1))
  in

  let get_neighbour r c =
    if r < 0 || r >= rows || c < 0 || c >= cols then gnd else grid.(r).(c).value
  in

  let removed_flags =
    Array.init rows ~f:(fun _ ->
        Array.init cols ~f:(fun _ -> Variable.wire ~default:gnd ()))
  in

  compile
    [
      if_ i.load
        (List.concat_map (List.range 0 rows) ~f:(fun r ->
             List.init cols ~f:(fun c ->
                 let prev_val =
                   if r = 0 && c = 0 then i.load_data
                   else if c = 0 then grid.(r - 1).(cols - 1).value
                   else grid.(r).(c - 1).value
                 in
                 grid.(r).(c) <-- prev_val)))
        [
          if_ i.start
            (List.concat_map (List.range 0 rows) ~f:(fun r ->
                 List.init cols ~f:(fun c ->
                     let current_s = grid.(r).(c).value in

                     let neighbors =
                       [
                         (-1, -1);
                         (-1, 0);
                         (-1, 1);
                         (0, -1);
                         (0, 1);
                         (1, -1);
                         (1, 0);
                         (1, 1);
                       ]
                       |> List.map ~f:(fun (dr, dc) ->
                              uresize (get_neighbour (r + dr) (c + dc)) ~width:4)
                     in
                     let count = reduce neighbors ~f:( +: ) in

                     let is_accessible = current_s &: (count <:. 4) in

                     [
                       removed_flags.(r).(c) <-- is_accessible;
                       grid.(r).(c) <-- (current_s &: ~:is_accessible);
                     ])
                 |> List.concat))
            [];
        ];
    ];

  let total_removed_this_cycle =
    Array.to_list removed_flags
    |> List.concat_map ~f:Array.to_list
    |> List.map ~f:(fun v -> uresize v.value ~width:16)
    |> reduce ~f:( +: )
  in

  let total_removed_acc = Variable.reg spec ~width:16 in
  compile
    [
      if_ i.start
        [
          total_removed_acc
          <-- total_removed_acc.value +: total_removed_this_cycle;
        ]
        [ when_ i.clear [ total_removed_acc <--. 0 ] ];
    ];

  let current_active =
    Array.to_list grid
    |> List.concat_map ~f:Array.to_list
    |> List.map ~f:(fun v -> uresize v.value ~width:16)
    |> reduce ~f:( +: )
  in

  {
    O.finished = i.start &: (total_removed_this_cycle ==:. 0);
    total_removed = total_removed_acc.value;
    current_active;
  }
