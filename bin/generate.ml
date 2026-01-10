open Hardcaml
open Day04

let generate_rtl () =
  let module C = Circuit.With_interface (Axi_wrapper.I) (Axi_wrapper.O) in
  let scope = Scope.create ~auto_label_hierarchical_ports:true () in
  let circuit =
    C.create_exn ~name:"aoc_solver_top" (Axi_wrapper.hierarchical scope)
  in
  let rtl_circuits =
    Rtl.create ~database:(Scope.circuit_database scope) Verilog [ circuit ]
  in
  let rtl = Rtl.full_hierarchy rtl_circuits |> Rope.to_string in
  print_endline rtl

let () = generate_rtl ()
