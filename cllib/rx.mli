(*
    $Id$

    This module provides regular expression matching.  Regular
    expressions don't need to be compiled before they can be matched
    against some input.  Instead the automaton is build while the
    input is consumed.  The drawback of this method is that no
    subexpression matching is possible to extract matching substrings.

    This algorithm used here is by Mark Hopkins who posted it once to
    comp.compiles.  Search the comp.compilers archive for a detailed
    article and an implementation in C.
     
    1999 Christian Lindig <lindig@gaertner.de> 
*)

(* type of a regular expression over symbols of type ['a] *)

type 'a rx 

(* construtor functions for regular expressions *)

val zero : 'a rx                                (* never matches       *)
val unit : 'a rx                                (* matches empty input *)
val sym : 'a -> 'a rx                           (* 'x'                 *)
val many : 'a rx -> 'a rx                       (* e*                  *)
val some : 'a rx -> 'a rx                       (* e+                  *)
val opt : 'a rx -> 'a rx                        (* e?                  *)
val seq : 'a rx -> 'a rx -> 'a rx               (* e1 e2               *)
val alt : 'a rx -> 'a rx -> 'a rx               (* e1 | e2             *)
val ( ||| ) : 'a rx -> 'a rx -> 'a rx           (* e1 | e2             *)
val ( *** ) : 'a rx -> 'a rx -> 'a rx           (* e1 e2               *)

(* [matches e syms] is true, iff the word [syms] is an element of L(e), i.e. 
   [e] matches the symbols [syms]. *)

val matches : 'a rx -> 'a list -> bool

(* [matchstr e str] is true, iff string [str] is matched by 
   regular expression [e] *)

val matchstr : char rx -> string -> bool
