(*
 * $Id$
 *
 * Global error and warning treatment.
 *)

exception Error of string

(* [error] rauses [Error] 
 *)

val error : string -> 'a

(* [warning] writes a messge to stderr
 *)
 
val warning : string -> unit

