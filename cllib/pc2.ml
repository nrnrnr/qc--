(*  ------------------------------------------------------------------ 
    $Id$

    Copyright (c) 1999 Christian Lindig <lindig@ips.cs.tu-bs.de>. All
    rights reserved. See COPYING for details.
  
    This module provides parser combinators.  Parsers are build from
    primitive parsers which can be combined to larger paresers by
    parser combinators.  Parser combinators are described in the
    following articles:
  
        Graham Hutton, Higher-Order Functions for Parsing, J of
        Functional Programming 2(3):323-343, July 1992

        Deterministic, Error-Correcting Combinator Parsers, 
        S. Doaitse Swierstra and Luc Dupomched, Dept. of Computer
        Science, Utrecht University, http://www.cs.ruu.nl 
        
    The parsers and combinators in this module are a mixture of the 
    above cited approaches.
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

let (<|>) p1 p2 = fun ts ->
    try p1 ts with 
    Error _ ->  try p2 ts with
                Error _ -> fail "all alternatives failed"

let ( *-* ) p1 p2 = fun ts0 ->
    let (f,ts1)  = p1 ts0 in
    let (v,ts2)  = p2 ts1 in
    	(f v, ts2)

let (%) f p = (succeed f) *-* p 

let opt p v = p <|> succeed v

let rec many p = fun ts ->
    ((fun x xs -> x::xs) 
  % p *-* (many p <|> succeed [])) ts
    
let some p = 
    (fun x xs -> x::xs) 
  % p *-* many p


