(*  $Id$
    
    This module provides lexer combinators (LCs). They can be used for
    similar purposes as regular expressions: verifying that a string
    obeys a specified syntax and extracting parts from it.  LCs are
    not as powerful as regular expression (REs) but do not require
    preprocessing like REs.
  
    The implementation aims to be reasonable efficient by using
    indices into the scanned string during the whole scan. However,
    scanning of long strings (> 1000 chars) should be avoided.       
*)
   
exception Error of string
(* [Error] reports the failure of a lexer with a message which is not
   too descriptive but may help finding unexpected failures. *)

type 'a lexer

(* A lexer scans a string to check that it matches a syntactic
   structure.  It fails when the string does not match the expected
   syntactic structure.  A scanner can store results while scanning to
   a result list.  The type of a single result is ['a].  Typically
   will a scanner store substrings from the scanned string and thus
   ['a] is [string].  *)

val succeed : 'a lexer
(* [succeed] is a lexer that always succeeds. *) 

val fail : string -> 'a
(* [fail] always fails with a descriptve error message. *)

val any : 'a lexer
(* [any] consumes just one character when availabe and fails when the
   end of string is reached. *)

val eof : 'a lexer
(* [eof] succeeds when the end of input (i.e.  string) is reached.  It
   does not consume any character. *)

val satisfy : (char -> bool) -> 'a lexer
(* [satisfy f] consumes the next characters successfully when it
   satisfies predicate [f]. *)

val chr : char -> 'a lexer
(* [chr c] consumes the next character when it equals [c]; fails
   otherwise. *)

val str : string -> 'a lexer
(* [str s] succeeds when the input starts with string [s] - in this case
   it consumes as many characters as [s] is long. *)

val ( *** ) : 'a lexer -> 'a lexer -> 'a lexer
(* [x *** y] is a lexer that first uses lexer [x] and then scans the
   remaining input using lexer [y]. It fails when any of [x] and [y] fail.
   *)

val ( ||| ) : 'a lexer -> 'a lexer -> 'a lexer
(* [x ||| y] scans the input using lexer [x]; if [x] fails it scans the
   input again using [y]. The lexer fails when [y] fails. *)

val many : 'a lexer -> 'a lexer
(* [many l] scans the input using lexer [l] as many (including zero) times as
   possible; always succeeds. Beware: [many] is greedy; i.e. [many
   any *** chr 'x'] will always fail because the ['x'] in the input
   will be consumed by [many any].  *)

val some : 'a lexer -> 'a lexer
(* [some l] scans the input using lexer one or more times. [some] is
   greedy -- see also [many]. *)

val opt : 'a lexer -> 'a lexer
(* [opt l] scans the input using lexer [l] when possible; when [l]
   fails the lexer does not consume input and succeeds. *)

val save : (string -> int -> int -> 'a) -> 'a lexer -> 'a lexer
(* [save f l] is a lexer [l] which uses a function [f] to store
   results to a result list.  Whenever [l] sucessfully matches a
   substring [f] is called as [f str pos len] where [str] is the
   string actually scanned, [pos] is the character in that string that
   [l] matched, and [len] is the number of characters [l] matched. 
   The result of [f] will be stored in the result list which can be 
   obtained by the [scan] function. 
   
   Since lexers built with [save] can be arbitrarily nested the order
   of results in the result list is somewhat counter intuitive.  This
   is best illustrated by an example:

   Given a string where the following 4 regions are saved (regions can
   be nested):
        
        O b j e c t i v e C a m l
         ( (   )   (   ( ) )   )
         1 2   2   3   4 4 3   1 <--- look from here

   region 1 = bjectivecam
   region 2 =  je
   region 3 =      ivec
   region 4 =        e
   
   The result list obtained by [scan] is:  region1, region3, region4,
   region2.  This list ordered by the numbers of the closing
   parentheses above.  When the matched regions do not nest a
   [List.rev] applied to the result list will reorder the result list
   into the more intuitive order of opening parentheses.  *)

val saveStr : string lexer -> string lexer
(* [saveStr l] uses lexer [l] to scan the input.  The substring [l]
    matches is stored in the result list which can be obtained with
    [scan].  See [save] for the order of the result list.  *)

val scan: string -> 'a lexer -> (int * 'a list)
(* [scan str l] scans string [str] using lexer [l]. The result is a
   pair: the number of characters successfully consumed and the list of
   stored results. [scan] raises [Error] when scanning fails. *)

val scanFrom : int -> string -> 'a lexer -> (int * 'a list)
(* [scanFrom x str l] scans string [str] using lexer [l] starting at
   character [x] of [str] (first character is 0) and returns the
   number of characters successfully scanned and the list of results. 
   *)
