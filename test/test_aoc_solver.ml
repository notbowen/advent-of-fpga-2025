open Base
open Hardcaml
open Hardcaml_test_harness
module Axi_wrapper = Day04.Axi_wrapper
module Harness = Cyclesim_harness.Make (Axi_wrapper.I) (Axi_wrapper.O)

let addr_ctrl = 0
let addr_load = 1
let addr_status = 2
let addr_result_removed = 3
let addr_result_active = 4

let testbench sim =
  let clear = Cyclesim.in_port sim "clear" in

  let write_enable = Cyclesim.in_port sim "write_enable" in
  let write_addr = Cyclesim.in_port sim "write_addr" in
  let write_data = Cyclesim.in_port sim "write_data" in
  let read_addr = Cyclesim.in_port sim "read_addr" in

  let read_data = Cyclesim.out_port sim "read_data" in

  let bus_write addr data =
    write_enable := Bits.vdd;
    write_addr := Bits.of_int_trunc ~width:4 addr;
    write_data := Bits.of_int_trunc ~width:32 data;
    Cyclesim.cycle sim;
    write_enable := Bits.gnd
  in

  let bus_read addr =
    write_enable := Bits.gnd;
    read_addr := Bits.of_int_trunc ~width:4 addr;
    Cyclesim.cycle sim;
    Bits.to_int_trunc !read_data
  in

  clear := Bits.vdd;
  Cyclesim.cycle sim;
  clear := Bits.gnd;

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

  let bits =
    String.concat input_map |> String.to_list
    |> List.map ~f:(function '@' -> 1 | _ -> 0)
  in

  List.iter bits ~f:(fun b -> bus_write addr_load b);

  bus_write addr_ctrl 1;

  let rec poll_until_done cycle =
    let status_val = bus_read addr_status in
    let is_finished = status_val land 1 = 1 in

    let removed = bus_read addr_result_removed in
    let active = bus_read addr_result_active in

    Stdio.printf "[DEBUG] Cycle %d: Removed thus far = %d | Remaining = %d\n"
      cycle removed active;

    if is_finished then Stdio.printf "Answer: %d\n" removed
    else poll_until_done (cycle + 1)
  in

  poll_until_done 1;

  bus_write addr_ctrl 0

let%expect_test "" =
  Harness.run_advanced ~create:Axi_wrapper.hierarchical testbench;
  [%expect
    {|
    [DEBUG] Cycle 1: Removed thus far = 25 | Remaining = 39
    [DEBUG] Cycle 2: Removed thus far = 39 | Remaining = 31
    [DEBUG] Cycle 3: Removed thus far = 42 | Remaining = 28
    [DEBUG] Cycle 4: Removed thus far = 43 | Remaining = 28
    Answer: 43
    |}]
