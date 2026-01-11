open Hardcaml

module I : sig
  type 'a t = {
    clock : 'a;
    clear : 'a;
    write_enable : 'a;
    write_addr : 'a; [@bits 4]
    write_data : 'a; [@bits 32]
    read_addr : 'a; [@bits 4]
  }
  [@@deriving sexp_of, hardcaml]
end

module O : sig
  type 'a t = { read_data : 'a [@bits 32] } [@@deriving sexp_of, hardcaml]
end

val hierarchical : Scope.t -> Signal.t I.t -> Signal.t O.t
