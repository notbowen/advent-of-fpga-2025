open Base
open Hardcaml

module type Data = sig
  type 'a t = { value : 'a } [@@deriving hardcaml]
end

module type Config = sig
  module Data : Data

  val log_size : int
  val width : int
  val height : int
end

module Make (Config : Config) = struct
  open Signal

  module I = struct
    type 'a t = { clocking : 'a Clocking.t; start : 'a; d : 'a Config.Data.t }
    [@@deriving hardcaml]
  end

  module O = struct
    type 'a t = {
      done_ : 'a;
      total_removed : 'a; [@bits 16]
      read_address : 'a; [@bits Config.log_size]
      write_address : 'a; [@bits Config.log_size]
      write_enable : 'a;
      write_data : 'a Config.Data.t;
    }
    [@@deriving hardcaml]
  end

  module State = struct
    type t = Start | Load | Process | Check | Finished
    [@@deriving sexp_of, compare ~localize, enumerate]
  end

  let create _scope (i : _ I.t) =
    let spec = Clocking.to_spec i.clocking in
    let sm = Always.State_machine.create (module State) spec in

    let x_count = Clocking.Var.reg i.clocking ~width:Config.log_size in
    let y_count = Clocking.Var.reg i.clocking ~width:Config.log_size in

    let read_addr = Clocking.Var.reg i.clocking ~width:Config.log_size in
    let total_removed = Clocking.Var.reg i.clocking ~width:16 in

    (* Keep track if map has changed this round *)
    let has_changed = Clocking.Var.reg i.clocking ~width:1 in

    let enable_shift = sm.is Load |: sm.is Process in

    let row0 = i.d.value in
    let row1 = pipeline spec ~enable:enable_shift ~n:Config.width row0 in
    let row2 = pipeline spec ~enable:enable_shift ~n:Config.width row1 in

    let taps row =
      let c0 = row in
      let c1 = reg spec ~enable:enable_shift c0 in
      let c2 = reg spec ~enable:enable_shift c1 in
      [ c2; c1; c0 ]
    in

    let window = [ taps row0; taps row1; taps row2 ] in

    let cur_x = pipeline spec ~n:(Config.width + 3) x_count.value in
    let cur_y = pipeline spec ~n:(Config.width + 3) y_count.value in

    let is_left = cur_x ==:. 0 in
    let is_right = cur_x ==:. Config.width - 1 in
    let is_top = cur_y ==:. 0 in
    let is_bottom = cur_y ==:. Config.height - 1 in

    let center = List.nth_exn (List.nth_exn window 1) 1 in
    let neighbours_count =
      let mask_val row col signal =
        let is_out =
          is_top
          &: (of_int_trunc ~width:3 row ==:. 2)
          |: (is_bottom &: (of_int_trunc ~width:3 row ==:. 0))
          |: (is_left &: (of_int_trunc ~width:3 col ==:. 0))
          |: (is_right &: (of_int_trunc ~width:3 col ==:. 2))
        in
        ~:is_out &: signal
      in

      List.mapi window ~f:(fun r row ->
          List.mapi row ~f:(fun c s ->
              if r = 1 && c = 1 then gnd else mask_val r c s))
      |> List.concat
      |> List.map ~f:(fun n -> uresize n ~width:4)
      |> reduce ~f:( +: )
    in

    let remove = sm.is Process &: center &: (neighbours_count <:. 4) in
    let write_addr = pipeline spec ~n:(Config.width + 3) read_addr.value in

    let advancing =
      sm.is Load
      |: (sm.is Process &: (read_addr.value <:. Config.width * Config.height))
    in

    Always.(
      compile
        [
          when_ advancing
            [
              read_addr <-- read_addr.value +:. 1;
              if_
                (x_count.value ==:. Config.width - 1)
                [ x_count <--. 0; y_count <-- y_count.value +:. 1 ]
                [ x_count <-- x_count.value +:. 1 ];
            ];
          sm.switch
            [
              ( Start,
                [
                  when_ i.start
                    [
                      total_removed <--. 0;
                      read_addr <--. 0;
                      x_count <--. 0;
                      y_count <--. 0;
                      has_changed <-- gnd;
                      sm.set_next Load;
                    ];
                ] );
              ( Load,
                [
                  when_
                    (read_addr.value ==:. Config.width + 2)
                    [ sm.set_next Process ];
                ] );
              ( Process,
                [
                  when_ remove
                    [
                      has_changed <-- vdd;
                      total_removed <-- total_removed.value +:. 1;
                    ];
                  when_
                    (write_addr ==:. (Config.width * Config.height) - 1)
                    [ sm.set_next Check ];
                ] );
              ( Check,
                [
                  if_ has_changed.value
                    [
                      has_changed <-- gnd;
                      read_addr <--. 0;
                      x_count <--. 0;
                      y_count <--. 0;
                      sm.set_next Load;
                    ]
                    [ sm.set_next Finished ];
                ] );
              (Finished, []);
            ];
        ]);

    {
      O.done_ = sm.is Finished;
      total_removed = total_removed.value;
      read_address = read_addr.value;
      write_address = write_addr;
      write_enable = remove;
      write_data = { value = gnd };
    }
end

module Make_with_memory (Config : Config) = struct
  open Signal
  module Aoc_solver = Make (Config)

  module I = struct
    type 'a t = {
      clocking : 'a Clocking.t;
      start : 'a;
      write_enable : 'a;
      write_address : 'a; [@bits Config.log_size]
      write_data : 'a Config.Data.t;
    }
    [@@deriving hardcaml]
  end

  module O = struct
    type 'a t = { done_ : 'a; total_removed : 'a [@bits 16] }
    [@@deriving hardcaml]
  end

  let create scope (i : _ I.t) =
    let spec = Clocking.to_spec i.clocking in
    let read_wire = Config.Data.Of_signal.wires () in

    let solver =
      Aoc_solver.create scope
        { Aoc_solver.I.clocking = i.clocking; start = i.start; d = read_wire }
    in

    let write_enable = i.write_enable |: solver.write_enable in

    let write_address =
      mux2 solver.write_enable solver.write_address i.write_address
    in

    let write_data =
      mux2 solver.write_enable
        (Config.Data.Of_signal.pack solver.write_data)
        (Config.Data.Of_signal.pack i.write_data)
    in

    let memory =
      multiport_memory (1 lsl Config.log_size)
        ~write_ports:
          [|
            {
              write_clock = i.clocking.clock;
              write_address;
              write_enable;
              write_data;
            };
          |]
        ~read_addresses:[| solver.read_address |]
    in

    let solver_read_data =
      memory.(0) |> pipeline spec ~n:2 |> Config.Data.Of_signal.unpack
    in
    Config.Data.Of_signal.assign read_wire solver_read_data;

    { O.done_ = solver.done_; total_removed = solver.total_removed }
end
