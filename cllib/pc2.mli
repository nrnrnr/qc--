(*  ------------------------------------------------------------------ 

    $Id$
  
    This module provides parser combinators.  Parsers are build from
    primitive parsers which can be combined to larger paresers by
    parser combinators.  Parser combinators are described in the
    following article:
  
        Graham Hutton, Higher-Order Functions for Parsing, J of
        Functional Programming 2(3):323-343, July 1992
  
    Parsers in this implementation do not return a list of results but
    only one result for efficency reasons.
    ------------------------------------------------------------------ *)
    

exception Error of string
(* [Error] reports parse errors *)

type ('t, 'v) par   = 't list -> 'v * 't list

(* A parser [par] takes a list of tokens ['t] and returns a value ['v]
   together with a remaining ['t list] of unconsumed tokens.  BTW: 
   "parser" is a keyword in OCaml and so could not be used for the
   type declaration.

   This module provides functions to create primitve parsers and
   parser combinators which combine parsers to new parsers. The
   primitive parsers are declared first.

   All parsers are greedy - so beware: although they look much like
   regular expressiones they have different semantics. 
*)


val succeed: 'v -> ('t,'v) par 
(* [succeed] consumes no token and returns result v *)

val fail: string -> 'a
(* [fail] raises [Error] with a descriptive message *)

val any: ('t,'t) par
(* [any] consumes the next token and returns it as result.  Fails if
   there is no next token *)

val eof: ('t,bool) par
(* [eof] succeeds when the end of input is reached, that is, there
   are no more tokens to consume *)

val satisfy: ('t -> bool) -> ('t,'t) par
(* [satisfy f] returns the next token as result if it satisfies
   predicate [f], fails otherwise *)

val literal: 't -> ('t,'t) par
(* [literal x] succeeds if the next token is [x], fails otherwise *)

(*
 *  Parser combinators - they combine existing parsers to new ones.
 *  Precedence of the new operators; operators that bind more tightly 
 *  (have higher precedence) come first:
 *
 *  p1 *-* p2, f % p    both left associative
 *  p1 <|> p2           left associative
 *
 *  A typical production looks like this:
 *
 *  let plus =    (fun left _ right -> left + right)
 *              % mult *-* literal "+" *-* mult
 *  
 *  First comes the semantic action with a parameter for each 
 *  parser in the following sequence (*-*) of parsers.
 *  Semantic actions (%) and sequences (*-*) interact very closely with
 *  each other. It is nearly impossible to have a sequence without a
 *  semantic action. 
 *)  
 
val (<|>) : ('t,'v) par -> ('t,'v) par -> ('t,'v)  par
(* [p1 <|> p2] succeeds when either [p1] or [p2] succeeds. [p1] is tried 
 * first and only when it fails [p2] is tried. Both parsers must
 * return a semantic value of the same type.  
 *)
 
val ( *-* ) : ('t, 'y -> 'z) par -> ('t, 'y) par -> ('t, 'z) par
(* [p1] is used to parse the input and then
 * [p2] the remaining input.  [p1 *-* p2] applies the function
 * returned by parser [p1] to the result of parser [p2]. This operator 
 * interacts with the [%] operator which helps to provide the right
 * functions for [p1].
 *)

val (%) : ('x -> 'y) -> ('t, 'x) par -> ('t, 'y) par
(* [f % p] applies [f] to the semantic value returned by parser [p].
 * See above for the interaction with the sequence operator [*-*].
 *)  

 val many: ('t,'v)  par -> ('t,'v list)   par
(* [many p] applies p as often as possible to the input and 
 * returns a list of results *)
   
val some: ('t,'v)  par -> ('t,'v list) par
(* [some p] tries to apply [p] as often as possible to the input, at
 * least one time.  Returns a list of length >= 1 on success.  *)

val opt: ('t,'v)  par -> 'v -> ('t,'v) par
(* [opt p v] tries to apply [p] to the input and returns its sementic value on success
 * and [v] if [p] fails.  *)

(*
 * $Log$
 * Revision 1.1.1.1  1999/06/13 12:55:05  lindig
 * imported sources
 *
 * Revision 1.2  1998/12/30 18:38:00  lindig
 *
 *
 * Documentation in mli files proof read and BSD style license added.
 *
 * Revision 1.1  1998/12/14 17:44:33  lindig
 *
 * * new modules added
 *
 *)
