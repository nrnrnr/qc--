# 20 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
exception Failure of string list (* raised on failure to encode *)
# 26 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
module type EMITTER = sig
  type token_stream
  val emit32 : nativeint * token_stream -> token_stream
  val emit16 : int       * token_stream -> token_stream
  val emit : value:nativeint -> width:int -> token_stream -> token_stream
end
# 43 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
module type RELOCATABLE = sig
  type 'a relocatable   (* a bit vector of type 'a
                           whose value may not be known until link time *)

  val early : 'a -> 'a relocatable      (* a value we know now *)
  val late  : string -> offset:'a -> 'a relocatable
                                        (* label + offset *)

  (* not clear what the rest of the interface should be.  Here are three candidates:

     C style  
       val known : 'a relocatable -> bool
       val force : 'a relocatable -> 'a

     CPS?
       val test  : 'a relocatable -> known:('a -> 'b) -> unknown:(unit -> 'b) -> b

     vanilla ML
       val force : 'a relocatable -> 'a option
  *)
end
# 71 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
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
# 89 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
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
# 22 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
val fail : string list -> 'a     (* raises Failure *)
val fail_unless : bool -> string list -> unit     (* raises Failure *)
# 65 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
module TrivialReloc : RELOCATABLE with type 'a relocatable = 'a
# 103 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
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
