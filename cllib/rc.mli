(*
    $Id$

    This module provides a parser for generic configuration files. A 
    configuration file binds names to values, where values can
    be integers, floats, booleans, strings and lists of the mentioned
    simple types. 
        
        rcfile  : rclines EOF

        rclines :
                | rclines rcline

        rcline  : ID EQUAL value
                | ID EQUAL values

        value   : ID
                | STR
                | TRUE
                | FALSE
                | INT
                | FLOAT

        values  : value COMMA value
                | values COMMA value

        digit       = ['0'-'9']
        letter      = ['a'-'z' 'A'-'Z' '_']
        ID          = letter (letter|digit)*
        INT         = digit+
        FLOAT       = integer '.' integer ('E' ('+'|'-')? integer)? 
        TRUE        = "true"
        FALSE       = "false" 
        STR         = '"' .... '"'      
        
        Comments start with a '#' and reach to the line end. 
        The representation of values is defined in the module [Rc_ast].
        Both strings and id values are represented as [RCstr]; this means, 
        that string values made up from digits and letters don't need to
        be included into double quotes.
         
        
        
*)

type id         = Rc_ast.id
type rc         = Rc_ast.rc
type rcdict     = Rc_ast.rcdict

exception       Error of string         (* reports parse/scan errors *)


(* [find id dict] returns the value bound to [id] or raises [Not_found]
   in case there is no binding *)
val find        : id -> rcdict -> rc 

(* [read file] reads onfiguration from [file] *)
val read        : string -> rcdict
