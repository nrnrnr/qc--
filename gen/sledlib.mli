# 28 "caml-lib.nw"
exception Failure of string list (* raised on failure to encode *)

# 36 "caml-lib.nw"
module type EMITTER = sig
  type token_stream
  val emit32 : nativeint * token_stream -> token_stream
  val emit16 : int       * token_stream -> token_stream
  val emit : value:nativeint -> width:int -> token_stream -> token_stream
end
# 54 "caml-lib.nw"
module type RELOCATABLE = sig
  type 'a relocatable   (* a bit vector of type 'a
                           whose value may not be known until link time *)

  val early : 'a -> 'a relocatable                  (* a value we know now *)
  val late  : string -> offset:'a -> 'a relocatable (* label + offset *)

  (* not clear what the rest of the interface should be.  
     Here are three candidates:

     C style  
     val known : 'a relocatable -> bool
     val force : 'a relocatable -> 'a

     CPS?
     val test  : 'a relocatable -> known:('a -> 'b) -> unknown:(unit -> 'b) -> b

     vanilla ML
     val force : 'a relocatable -> 'a option
  *)
end
# 89 "caml-lib.nw"
module type NEW_RELOCATABLE = sig
  (* A relocatable address in this model is `symbol + constant' *)
  type ('sym, 'const) relocatable   (* a bit vector of type 'const 
                                       whose value may not be known 
                                       until link time *)

  (* constructors *)
  val of_const : 'c       -> ('s, 'c) relocatable    (* a known constant *)
  val of_sum   : 's -> 'c -> ('s, 'c) relocatable    (* label + offset *)
  val add_const :
      ('c -> 'c -> 'c) -> ('s, 'c) relocatable -> 'c -> ('s, 'c) relocatable

  (* observer *)
  val normalize : ('s, 'c) relocatable -> 's option * 'c
end
# 113 "caml-lib.nw"
module type INSTRUCTION_SIZE = sig
  type instruction
  type address       (* location of instruction, value of relocatable operands
                        --- an integer type *)
  module Reloc : RELOCATABLE
  type range = { min : int; max : int }
  val sizeRange : inst : instruction -> range
  val size      : inst   : instruction ->
		  cur_pc : nativeint option ->
		  force  : (address Reloc.relocatable -> address option) ->
		  int
end
# 132 "caml-lib.nw"
module type ENCODER = sig
  type instruction 
  type address
  module Reloc : RELOCATABLE
  module Emitter : EMITTER

  val encodeAt :
    instruction -> address -> (address Reloc.relocatable -> address) 
    -> Emitter.token_stream
        -> Emitter.token_stream
end
# 31 "caml-lib.nw"
val fail        : string list -> 'a                 (* raises Failure *)
val fail_unless : bool -> string list -> unit       (* raises Failure *)
# 76 "caml-lib.nw"
module TrivialReloc : RELOCATABLE with type 'a relocatable = 'a
# 105 "caml-lib.nw"
module NewReloc : NEW_RELOCATABLE
# 148 "caml-lib.nw"
module String : sig
  type t
  val of_string : string -> t              (* constant time *)
  val cat : t -> t -> t                    (* constant time *)
  val app : (string -> unit) -> t -> unit  (* call f on each part of string *)

  val signed_operand   : nativeint -> t
  val unsigned_operand : nativeint -> t
  val hex_operand      : nativeint -> t
  val getname : string array -> nativeint -> operandname:string -> t
end

module type RELOC_PRINT = sig
  include RELOCATABLE
  val to_string : ('a -> String.t) -> 'a relocatable -> String.t
end
