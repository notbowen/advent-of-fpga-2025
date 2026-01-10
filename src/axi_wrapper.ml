open Hardcaml
open Signal
open Always

module Solver = Aoc_solver

module I = struct
  type 'a t = {
    clock : 'a;
    clear : 'a;
    write_enable : 'a;
    write_addr : 'a; [@bits 4]
    write_data : 'a; [@bits 32]
  }
  [@@deriving sexp_of, hardcaml]
end

module O = struct
  type 'a t = { read_data : 'a [@bits 32] } [@@deriving sexp_of, hardcaml]
end

let create _scope (i : _ I.t) =
  let is_addr_control = i.write_addr ==:. 0 in
  let is_addr_load = i.write_addr ==:. 1 in

  let control_spec = Reg_spec.create ~clock:i.clock ~clear:i.clear () in

  let control_reg =
    Variable.reg control_spec
      ~enable:(i.write_enable &: is_addr_control)
      ~width:32
  in

  compile [ control_reg <-- i.write_data ];

  let start_signal = control_reg.value.:(0) in
  let clear_signal = control_reg.value.:(1) in

  let load_pulse = i.write_enable &: is_addr_load in
  let load_data_bit = i.write_data.:(0) in

  let solver_inputs =
    {
      Solver.I.clock = i.clock;
      Solver.I.clear = i.clear |: clear_signal;
      Solver.I.load = load_pulse;
      Solver.I.load_data = load_data_bit;
      Solver.I.start = start_signal;
    }
  in

  let solver_outputs = Solver.create _scope solver_inputs in

  let read_data =
    mux i.write_addr
      [
        control_reg.value;
        zero 32;
        uresize solver_outputs.finished ~width:32;
        uresize solver_outputs.total_removed ~width:32;
        uresize solver_outputs.current_active ~width:32;
      ]
  in

  { O.read_data }


let hierarchical scope =
  let module Scoped = Hierarchy.In_scope (I) (O) in
  Scoped.hierarchical ~scope ~name:"aoc_solver" create
