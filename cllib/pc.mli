(* $Id$
  
    This module provides parser combinators.  Parsers are build from
    primitive parsers which can be combined to larger paresers by
    parser combinators.  Parser combinators are described in the
    following article:
  
        Graham Hutton, Higher-Order Functions for Parsing, J of
        Functional Programming 2(3):323-343, July 1992
  
    Parsers in this implementation do not return a list of results but
    only one result for efficency reasons.
*)
    

exception Error of string
(* [Error] reports parse errors. *)

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
(* [succeed] consumes no token and returns result [v]. *)

val fail: string -> 'a
(* [fail] raises [Error] with a descriptive message. *)

val any: ('t,'t) par
(* [any] consumes the next token and returns it as result.  Fails if
   there is no next token. *)

val eof: ('t,bool) par
(* [eof] succeeds when the end of input is reached, that is, there
   are no more tokens to consume. *)

val satisfy: ('t -> bool) -> ('t,'t) par
(* [satisfy f] returns the next token as result if it satisfies
   predicate [f], fails otherwise. *)

val literal: 't -> ('t,'t) par
(* [literal x] succeeds if the next token is [x], fails otherwise. *)

val return: 'v1 -> 'v2 -> 'v1
(* [return x] -- not a parser but a semantic action for the [-->]
   operator. Discards the result from the parser and always returns [x]. *)

(* 
    Parser combinators - they combine existing parsers to new ones.
    Precedences of the new operators in decreasing order:
  
        *** **> **<  (right assoc - binds strongest )
        -->          (left  assoc)
        |||          (left  assoc)
  
    This permits to write the typical case without parentheses:
  
            foo **< bar *** baz   --> semantic action on foo
        ||| hrz **> grg           --> semantic action on grg
*) 

val ( ||| ): ('t,'v)  par -> ('t,'v)  par -> ('t,'v)  par 
(* [p1 ||| p2] tries to parse the input using [p1]. If this fails
   [p2] is tried to parse the input; if this also fails the parser
   fails as a whole. *)
   
val ( --> ): ('t,'v1) par -> ('v1 -> 'v2) -> ('t,'v2) par
(* [p --> f]: after [p] has been used to parse the input, [f] is applied to
   its result.  The parser fails when [p] fails.  This operator models
   semantic actions in traditional parsers. *)
   
val ( *** ): ('t,'v1) par -> ('t,'v2) par -> ('t,('v1*'v2)) par 
(* [p1 *** p2] applies [p1] to the input and then [p2] to the
   remaining input. The results of the successfull parses of [p1] and
   [p2] are paired to the result. *)
   
val ( **> ): ('t,'v1) par -> ('t,'v2) par -> ('t,'v2) par 
(* [p1 **> p2] works like [p1 *** p2] but returns only the result of
   [p2]. *)
    
val ( **< ): ('t,'v1) par -> ('t,'v2) par -> ('t,'v1) par 
(* [p1 **< p2] works like [p1 *** p2] but returns only the result of
   [p1]. *)
   
val many: ('t,'v)  par -> ('t,'v list)   par
(* [many p] applies [p] as often as possible to the input and 
   returns a list of results. *)
   
val some: ('t,'v)  par -> ('t,'v list  ) par
(* [some p] tries to apply [p] as often as possible to the input, at
   least one time.  Returns a list of length >= 1 on success.  *)

val opt: ('t,'v)  par -> ('t,'v option) par
(* [opt p] tries to apply [p] to the input and returns [Some x] on success
   and [None] if [p] fails.  *)

(*
    $Log$
    Revision 1.1.1.1  1999/06/13 12:55:05  lindig
    imported sources

    Revision 1.2  1998/12/30 18:38:00  lindig


    Documentation in mli files proof read and BSD style license added.

    Revision 1.1.1.1  1998/11/15 16:24:08  lindig
    file put into CVS
 *)
