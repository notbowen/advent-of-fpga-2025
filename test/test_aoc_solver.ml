open Base
open Hardcaml
(* open Hardcaml_waveterm *)

module Aoc_solver = Day04.Aoc_solver
module Sim = Cyclesim.With_interface (Aoc_solver.I) (Aoc_solver.O)

let testbench () =
  let sim = Sim.create Aoc_solver.create in
  let inputs = Cyclesim.inputs sim in
  let outputs = Cyclesim.outputs sim in

  let input_map =
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
  in

  let load_map () =
    inputs.load := Bits.vdd;
    inputs.start := Bits.gnd;

    let bits =
      String.concat input_map |> String.to_list
      |> List.map ~f:(function '@' -> 1 | _ -> 0)
    in

    List.iter bits ~f:(fun b ->
        inputs.load_data := if b = 1 then Bits.vdd else Bits.gnd;
        Cyclesim.cycle sim);
    inputs.load := Bits.gnd
  in

  inputs.clear := Bits.vdd;
  Cyclesim.cycle sim;
  inputs.clear := Bits.gnd;

  load_map ();
  inputs.start := Bits.vdd;

  let rec run_until_done cycle =
    Cyclesim.cycle sim;
    let removed_now = Bits.to_int_trunc !(outputs.total_removed) in
    let active_now = Bits.to_int_trunc !(outputs.current_active) in
    let is_done = Bits.to_bool !(outputs.finished) in

    Stdio.printf "Cycle %d: Removed thus far = %d | Remaining = %d\n" cycle
      removed_now active_now;

    if is_done then () else run_until_done (cycle + 1)
  in

  run_until_done 1

let%expect_test "" =
  testbench ();
  [%expect {|
    Cycle 1: Removed thus far = 13 | Remaining = 58
    Cycle 2: Removed thus far = 25 | Remaining = 46
    Cycle 3: Removed thus far = 32 | Remaining = 39
    Cycle 4: Removed thus far = 37 | Remaining = 34
    Cycle 5: Removed thus far = 39 | Remaining = 32
    Cycle 6: Removed thus far = 40 | Remaining = 31
    Cycle 7: Removed thus far = 41 | Remaining = 30
    Cycle 8: Removed thus far = 42 | Remaining = 29
    Cycle 9: Removed thus far = 43 | Remaining = 28
    |}]
