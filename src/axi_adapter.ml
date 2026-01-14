open Hardcaml
open Signal

module Make (Config : Aoc_solver.Config) = struct
  module Solver = Aoc_solver.Make_with_memory (Config)

  module I = struct
    type 'a t = {
      clock : 'a;
      clear : 'a;
      reg_addr : 'a; [@bits 4]
      reg_wdata : 'a; [@bits 32]
      reg_write_strobe : 'a;
    }
    [@@deriving hardcaml]
  end

  module O = struct
    type 'a t = { reg_rdata : 'a [@bits 32] } [@@deriving hardcaml]
  end

  let create scope (i : _ I.t) =
    let spec = Reg_spec.create ~clock:i.clock ~clear:i.clear () in

    let ram_write_addr =
      reg_fb spec
        ~enable:(i.reg_write_strobe &: (i.reg_addr ==:. 2))
        ~width:Config.log_size
        ~f:(fun _ -> i.reg_wdata.:[Config.log_size - 1, 0])
    in

    let ram_write_en = i.reg_write_strobe &: (i.reg_addr ==:. 3) in
    let ram_write_data = Config.Data.{ value = i.reg_wdata.:[0, 0] } in

    let start =
      i.reg_write_strobe &: (i.reg_addr ==:. 0) &: i.reg_wdata.:[0, 0]
    in

    let solver =
      Solver.create scope
        {
          Solver.I.clocking = { clock = i.clock; clear = i.clear };
          start;
          write_enable = ram_write_en;
          write_address = ram_write_addr;
          write_data = ram_write_data;
        }
    in

    let status_reg =
      uresize solver.total_removed ~width:16 @: zero 15 @: solver.done_
    in

    let reg_rdata =
      mux i.reg_addr [ zero 32; uresize status_reg ~width:32; zero 32; zero 32 ]
    in

    { O.reg_rdata }
end
