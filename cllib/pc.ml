(*  ------------------------------------------------------------------ 
    $Id$

    Copyright (c) 1999 Christian Lindig <lindig@ips.cs.tu-bs.de>. All
    rights reserved. See COPYING for details.
  
    This module provides parser combinators.  Parsers are build from
    primitive parsers which can be combined to larger paresers by
    parser combinators.  Parser combinators are described in the
    following article:
  
        Graham Hutton, Higher-Order Functions for Parsing, J of
        Functional Programming 2(3):323-343, July 1992
  
    Parsers in this implementation do not return a list of results but
    only one result for efficency reasons.
    ------------------------------------------------------------------  *)

(* error reporting, used for parse errors *)
    
exception Error of string
let error s = raise (Error s)

(*  ------------------------------------------------------------------ 
    Every parser returns a pair: result * (remaining_token list) 
    Naming conventions: t=token, ts=token list, v=value, p=parser
    ------------------------------------------------------------------  *)

type ('t,'v) par = 't list -> 'v * ('t list)

(*  ------------------------------------------------------------------ 
    Primitive parsers - they can be combined to larger parsers using
    the parser combinators from below.
    ------------------------------------------------------------------  *)

let succeed v ts = (v,ts)
let fail msg     = error msg

let any = function
    | []        -> fail "token expected but none found"
    | t::ts     -> succeed t ts

let eof = function
    | []        -> succeed true []
    | _         -> fail "end of input expected but token found"

let satisfy f = function 
    | []        -> fail "satisfy parser: no input" 
    | t::ts     -> if f t 
                   then succeed t ts
                   else fail "token does not satisfy predicate"

let literal x = satisfy ((=) x)

(* ------------------------------------------------------------------  
    From the OCaml lexer: all infix operators. Operators with
    lower precedence come first
    
    %left  INFIXOP0 EQUAL LESS GREATER      /* = < > | ^ $  */
    %right INFIXOP1                         /* @ ^          */
    %left  INFIXOP2 SUBTRACTIVE             /* + -          */
    %left  INFIXOP3 STAR                    /* * / %        */
    %right INFIXOP4                         /* **           */
    ------------------------------------------------------------------ *) 

let ( ||| ) p1 p2 = fun ts ->
    try p1 ts with 
    Error _ ->  try p2 ts with
                Error _ -> fail "all alternatives failed"

let ( --> ) p f = fun ts ->
    let (v,ts') = p ts 
    in (f v, ts')

let return x = fun _ -> x

let ( *** ) p1 p2 = fun ts -> 
    let (v1,ts1) = p1 ts  in
    let (v2,ts2) = p2 ts1 in
        ((v1,v2),ts2)

let ( **> ) p1 p2 =
    p1 *** p2 --> snd

let ( **< ) p1 p2 =
    p1 *** p2 --> fst

let rec many p = fun ts ->
    (      p *** (many p) --> (fun (x,y)->x::y)
        ||| succeed []
    ) ts 

let opt p =
        p --> (fun x -> Some x)
    ||| succeed None

let some p =
    p *** many p --> (fun (x,y) -> x::y)


