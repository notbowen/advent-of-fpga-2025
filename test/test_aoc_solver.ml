open Base
open Hardcaml
open Hardcaml_test_harness

module Aoc_solver = Day04.Aoc_solver
module Harness = Cyclesim_harness.Make (Aoc_solver.I) (Aoc_solver.O)

let testbench sim =
  let load = Cyclesim.in_port sim "load" in
  let load_data = Cyclesim.in_port sim "load_data" in
  let start = Cyclesim.in_port sim "start" in
  let clear = Cyclesim.in_port sim "clear" in

  let total_removed = Cyclesim.out_port sim "total_removed" in
  let current_active = Cyclesim.out_port sim "current_active" in
  let finished = Cyclesim.out_port sim "finished" in

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
    load := Bits.vdd;
    start := Bits.gnd;

    let bits =
      String.concat input_map |> String.to_list
      |> List.map ~f:(function '@' -> 1 | _ -> 0)
    in

    List.iter bits ~f:(fun b ->
        load_data := if b = 1 then Bits.vdd else Bits.gnd;
        Cyclesim.cycle sim);
    load := Bits.gnd
  in

  clear := Bits.vdd;
  Cyclesim.cycle sim;
  clear := Bits.gnd;

  load_map ();
  start := Bits.vdd;

  let rec run_until_done cycle =
    Cyclesim.cycle sim;
    let removed_now = Bits.to_int_trunc !total_removed in
    let active_now = Bits.to_int_trunc !current_active in
    let is_done = Bits.to_bool !finished in

    Stdio.printf "Cycle %d: Removed thus far = %d | Remaining = %d\n" cycle
      removed_now active_now;

    if is_done then () else run_until_done (cycle + 1)
  in

  run_until_done 1

let%expect_test "" =
  Harness.run_advanced ~create:Aoc_solver.hierarchical testbench;
  [%expect
    {|
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
