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
module type OLD_RELOCATABLE = sig
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
# 78 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
module type RELOCATABLE = sig
  (* A relocatable address in this model is `symbol + constant' *)
  type symbol    
  type 'a relocatable   (* a bit vector of type 'a
                           whose value may not be known until link time *)

  (* constructors *)
  val of_const : 'a           -> 'a relocatable    (* a known constant *)
  val of_sum   : symbol -> 'a -> 'a relocatable    (* label + offset *)
  val add_const :
      ('a -> 'a -> 'a) -> 'a relocatable -> 'a -> 'a relocatable

  (* observer *)
  val normalize : 'a relocatable -> symbol option * 'a
end
# 100 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
module type INSTRUCTION_SIZE = sig
  type instruction
  type address       (* location of instruction, value of relocatable operands
                        --- an integer type *)
  module Reloc : OLD_RELOCATABLE
  type range = { min : int; max : int }
  val sizeRange : inst : instruction -> range
  val size      : inst   : instruction ->
		  cur_pc : nativeint option ->
		  force  : (address Reloc.relocatable -> address option) ->
		  int
end
# 118 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
module type ENCODER = sig
  type instruction 
  type address
  module Reloc : OLD_RELOCATABLE
  module Emitter : EMITTER

  val encodeAt :
    instruction -> address -> (address Reloc.relocatable -> address) 
    -> Emitter.token_stream
        -> Emitter.token_stream
end
# 155 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
let fail l = raise (Failure l)
let fail_unless condition l = if condition then () else fail l
module TrivialOldReloc = struct
  type 'a relocatable = 'a
  let early x = x
  let late label offset = fail ["Trivial relocatable addresses don't support labels"]
end

module MkReloc (S : sig type symbol end) = struct
  type symbol = S.symbol
  type 'a relocatable = symbol option * 'a
  let of_const c = (None, c)
  let of_sum s c = (Some s, c)
  let add_const (+) = fun (s, c) c' -> (s, c + c')
  let normalize r = r
end
# 174 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
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
# 198 "/home/lair/nr/zephyr/cvs/toolkit/caml-lib.nw"
module type RELOC_PRINT = sig
  include RELOCATABLE
  val to_string : ('a -> String.t) -> 'a relocatable -> String.t
end


