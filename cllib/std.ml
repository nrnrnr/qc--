(*
 * $Id$

    Copyright (c) 1999 Christian Lindig <lindig@ips.cs.tu-bs.de>. All
    rights reserved. See COPYING for details.
 *
 * This module provides small but useful functions which are not provided
 * by the OCaml standard library.
 *)


let (<<) f g = fun x -> f (g x)

let (>>) f g = fun x -> g (f x) 

(*
          h  e  l  l  o  _  w  o  r  l  d
        0  1  2  3  4  5  6  7  8  9  10 11
     -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1  0

   # slice 0 0 "hello world"            ;; - : string = "hello world"
   # slice 0 1 "hello world"            ;; - : string = "h"
   # slice 0 (-1) "hello world"         ;; - : string = "hello worl"
   # slice (-3) (-1) "hello world"      ;; - : string = "rl"
   # slice (0) (3) "hello world"        ;; - : string = "hel"
     
*)

let slice start stop str = 
    let start = if start <  0 then String.length str + start else start in
    let stop  = if stop  <= 0 then String.length str + stop  else stop  in
        String.sub str start (stop - start)

