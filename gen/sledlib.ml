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
# 177 "caml-lib.nw"
let fail l = raise (Failure l)
let fail_unless condition l = if condition then () else fail l

module TrivialReloc = struct
  type 'a relocatable = 'a
  let early x = x
  let late label offset = 
    fail ["Trivial relocatable addresses don't support labels"]
end

module NewReloc = struct
  type ('s, 'c) relocatable = 's option * 'c
  let of_const c = (None, c)
  let of_sum s c = (Some s, c)
  let add_const (+) = fun (s, c) c' -> (s, c + c')
  let normalize r = r
end
# 197 "caml-lib.nw"
module String = struct
  type t = (string -> unit) -> unit
  let of_string s f = f s
  let cat s s' = fun f -> (s f; s' f)
  let app f s = s f

  let d = Printf.sprintf "%d"
  let u = Printf.sprintf "%u"
  let x = Printf.sprintf "%x"

  let fmt print n = of_string (print (Nativeint.to_int n))

  let signed_operand   = fmt d
  let unsigned_operand = fmt u
  let hex_operand      = fmt x

  let getname a n name =
    let n = Nativeint.to_int n in
    of_string (try Array.get a n
               with Invalid_argument _ -> "??" ^ name ^ "=" ^ d n ^ "?!")
end
let asmprintreloc _ = String.of_string "<relocatable>"
# 222 "caml-lib.nw"
module type RELOC_PRINT = sig
  include RELOCATABLE
  val to_string : ('a -> String.t) -> 'a relocatable -> String.t
end


