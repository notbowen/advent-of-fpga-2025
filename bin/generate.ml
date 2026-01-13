open Hardcaml

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

let generate_rtl () =
  let module C = Circuit.With_interface (Solver.I) (Solver.O) in
  let scope = Scope.create ~auto_label_hierarchical_ports:true () in
  let circuit = C.create_exn ~name:"aoc_solver_top" (Solver.create scope) in
  let rtl_circuits =
    Rtl.create ~database:(Scope.circuit_database scope) Verilog [ circuit ]
  in
  let rtl = Rtl.full_hierarchy rtl_circuits |> Rope.to_string in
  print_endline rtl

let () = generate_rtl ()
