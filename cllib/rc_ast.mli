(*
    $Id$

    The module [Rc] provides a parser for simple configurations files which
    bind values to names. The type [rc] describes the possible values.
 *)


type id         = string

type rc         =
                | RCstr         of string
                | RCbool        of bool
                | RCint         of int
                | RCfloat       of float
                | RClist        of rc list

(* [rcdict] is a dictionary that maps [id]s to [rc] values. It captures 
   a configuration read from a file using the [read] function *) 

type rcdict

(* [find id dict] returns the value bound to [id] or raises [Not_found]
   in case there is no binding *)
   
val find        : id -> rcdict -> rc 

(* The following functions are used by the parser and are not for
   clients of [Rc] *)

(* [empty] - an empty [rcdict] *)
val empty       : rcdict 

(* [add id rc dict] adds binding id->rc to [dict] *)
val add         : id -> rc -> rcdict -> rcdict 

(* [asList dict] returns all bindings of [dict] in a list - for debugging
 *)

val asList      : rcdict -> (id * rc) list
