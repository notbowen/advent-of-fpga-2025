open Hardcaml

module I : sig
  type 'a t = {
    clock : 'a;
    clear : 'a;
    load : 'a;
    load_data : 'a;
    start : 'a;
  }
  [@@deriving sexp_of, hardcaml]
end

module O : sig
  type 'a t = {
    finished : 'a;
  total_removed : 'a [@bits 16];
    current_active : 'a [@bits 16];
  }
  [@@deriving sexp_of, hardcaml]
end

val create : Signal.t I.t -> Signal.t O.t
