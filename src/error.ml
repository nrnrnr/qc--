(*
 * $Id$
 *
 * Global error and warning treatment.
 *)


(* The universal error exception
 *)

exception Error of string

(* [error] raises [Error]
 *)

let error msg	= raise (Error msg)

(* [warning] issues a warning to stderr
 *)

let warning msg = prerr_endline ("warning: " ^ msg)
