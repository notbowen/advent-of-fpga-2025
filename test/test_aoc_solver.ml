open Core
open Hardcaml

let ( <--. ) = Bits.( <--. )

module Data = struct
  type 'a t = { value : 'a } [@@deriving hardcaml]
end

module Config = struct
  module Data = Data

  let log_size = 7
  let width = 10
  let height = 10
end

module Solver = Day04.Aoc_solver.Make_with_memory (Config)
module Sim = Cyclesim.With_interface (Solver.I) (Solver.O)

let clear_core (sim : Sim.t) =
  let inputs = Cyclesim.inputs sim in
  inputs.clocking.clear <--. 1;
  Cyclesim.cycle sim;
  inputs.clocking.clear <--. 0

let load_inputs (sim : Sim.t) (input_data : int Data.t array) =
  let inputs = Cyclesim.inputs sim in
  inputs.write_enable <--. 1;
  for i = 0 to (Config.height * Config.width) - 1 do
    inputs.write_address <--. i;
    inputs.write_data.value <--. input_data.(i).value;
    Cyclesim.cycle sim
  done;
  inputs.write_enable <--. 0

let run_core (sim : Sim.t) =
  let inputs = Cyclesim.inputs sim in
  let outputs = Cyclesim.outputs sim in

  inputs.start <--. 1;
  Cyclesim.cycle sim;
  inputs.start <--. 0;

  let timeout = ref 0 in
  while (not (Bits.to_bool !(outputs.done_))) && !timeout < 2_500_000 do
    Cyclesim.cycle sim;
    Int.incr timeout
  done;

  Cyclesim.cycle sim;

  if !timeout <> 2_500_000 then
    let total_removed = Bits.to_unsigned_int !(outputs.total_removed) in
    Stdio.printf "Total removed: %d\n" total_removed
  else Stdio.printf "Timeout!\n"

let test ~input_data =
  let scope =
    Scope.create ~auto_label_hierarchical_ports:true ~flatten_design:true ()
  in
  let sim =
    Sim.create ~config:Cyclesim.Config.trace_all (Solver.create scope)
  in
  clear_core sim;
  load_inputs sim input_data;
  run_core sim

let%expect_test "" =
  let data =
    [
      "..@@.@@@@.";
      "@@@.@.@.@@";
      "@@@@@.@.@@";
      "@.@@@@..@.";
      "@@.@@@@.@@";
      ".@@@@@@@.@";
      ".@.@.@.@@@";
      "@.@@@.@@@@";
      ".@@@@@@@@.";
      "@.@.@@@.@.";
    ]
    |> List.concat_map ~f:(fun s ->
           String.to_list s |> List.map ~f:(function '@' -> 1 | _ -> 0))
    |> List.map ~f:(fun value -> Data.{ value })
    |> Array.of_list
  in

  test ~input_data:data;
  [%expect {| Total removed: 43 |}]
