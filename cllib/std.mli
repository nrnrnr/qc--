(* $Id$
   
   This module provides small but useful functions which are not provided
   by the OCaml standard library.
 *)


val (<<) : ('a -> 'b) -> ('c -> 'a) -> ('c -> 'b)
(* [f << g] function composition: [(f << g) x = f (g x)] and [f << g << h] 
   equals [(f << g) << h] 
 *)

val (>>) : ('a -> 'b) -> ('b -> 'c) -> ('a -> 'c)
(* [f >> g] function composition: [(f >> g) x = g (f x)]. This operator is
   left associative: [f >> g >> h] equals [(f >> g) >> h].
 *)

val slice : int -> int -> string -> string
(* [slice start stop str] returns a substring from [str] determined by [start] 
   and [stop].  Negative indices used for [start] and [stop] count
   from the end of [str].  Note the different meaning for 0 when used
   for [start] and [stop]: start = 0 means "from the beginning of [str]", 
   stop = 0 means "to the end of [str]"

          h  e  l  l  o  _  w  o  r  l  d
        0  1  2  3  4  5  6  7  8  9  10 11
     -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1  0

   # slice 0 0 "hello world"            ;; - : string = "hello world"
   # slice 0 1 "hello world"            ;; - : string = "h"
   # slice 0 (-1) "hello world"         ;; - : string = "hello worl"
   # slice (-3) (-1) "hello world"      ;; - : string = "rl"
   # slice (0) (3) "hello world"        ;; - : string = "hel"
*)
