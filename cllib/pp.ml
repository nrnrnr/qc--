(*
    $Id$

    Copyright (c) 1999 Christian Lindig <lindig@ips.cs.tu-bs.de>. All
    rights reserved. See COPYING for details.

    For changes see end of file.
*)

(* debuging makes groups visible *)
let debug   = false 

(* Auxilliary functions *)
let strlen  = String.length

(* definitions *)
let nl      = "\n"

(* A type for the different kind of (user visible) groups *)
type gmode =
    | GFlat             (* hgrp *)
    | GBreak            (* vgrp *)
    | GFill             (* fgrp *)
    | GAuto             (* agrp *)

(* users build (complex) documents of this type *)    
type doc =
    | DocNil
    | DocCons           of doc * doc
    | DocText           of string
    | DocNest           of int * doc
    | DocBreak          of string
    | DocGroup          of gmode * doc

(*  constructor functions for documents *)

let (^^) x y            = DocCons(x,y)
let empty               = DocNil
let text s              = DocText(s)
let nest i x            = DocNest(i,x)
let break               = DocBreak(" ")
let breakWith s         = DocBreak(s)

let hgrp d              = DocGroup(GFlat, d)
let vgrp d              = DocGroup(GBreak,d)
let agrp d              = if   debug
                          then DocGroup(GAuto, text "[" ^^ d ^^ text "]")
                          else DocGroup(GAuto, d)
let fgrp d              = if   debug
                          then DocGroup(GFill, text "{" ^^ d ^^ text "}")
                          else DocGroup(GFill, d)
                          
(* Formatting turns a complex [doc] document into a simpler
   [sdoc] document which *)

type sdoc =
    | SNil
    | SText             of string * sdoc
    | SLine             of int    * sdoc    (* newline + spaces *)

(* [sdocToString] formats a simple document into a string: [SLIne]
   line breaks are expanded into a newline followed by spaces *)

let rec sdocToString = function
    | SNil              -> ""
    | SText(s,d)        -> s ^ sdocToString d
    | SLine(i,d)        -> let prefix = String.make i ' ' 
                           in  nl ^ prefix ^ sdocToString d

(* [sdocToFile oc doc] formats [doc] into output channel [oc] *)
                           
let sdocToFile oc doc = 
    let pstr = output_string oc in
    let rec loop = function
        | SNil          -> () 
        | SText(s,d)    -> pstr s; loop d
        | SLine(i,d)    -> let prefix = String.make i ' ' 
                           in  pstr nl;
                               pstr prefix;
                               loop d
    in
        loop doc

(* [agrp]s are turned into [Flat] or [Break] groups - so their are
   only 3 different modes internally. *)

type mode =
    | Flat
    | Break
    | Fill

(* [fits] checks whether a documents up to the next [break] fits into w
   characters. All kind of groups are considered flat: their breaks count
   as spaces. This means the [break] this function looks for must not be
   inside sub-groups *)

let rec fits w = function
    | _ when w < 0                   -> false
    | []                             -> true
    | (i,m,DocNil)              :: z -> fits w z
    | (i,m,DocCons(x,y))        :: z -> fits w ((i,m,x)::(i,m,y)::z)
    | (i,m,DocNest(j,x))        :: z -> fits w ((i+j,m,x)::z)
    | (i,m,DocText(s))          :: z -> fits (w - strlen s) z
    | (i,Flat, DocBreak(s))     :: z -> fits (w - strlen s) z
    | (i,Fill, DocBreak(_))     :: z -> true 
    | (i,Break,DocBreak(_))     :: z -> true
    | (i,m,DocGroup(_,x))       :: z -> fits w ((i,Flat,x)::z)

(* [format] does the actual pretty printing. It turns a [doc] document
   into a simple [sdoc] document *)

let rec format w k = function
    | []                             -> SNil
    | (i,m,DocNil)              :: z -> format w k z
    | (i,m,DocCons(x,y))        :: z -> format w k ((i,m,x)::(i,m,y)::z)
    | (i,m,DocNest(j,x))        :: z -> format w k ((i+j,m,x)::z)
    | (i,m,DocText(s))          :: z -> SText(s ,format w (k + strlen s) z)
    | (i,Flat, DocBreak(s))     :: z -> SText(s ,format w (k + strlen s) z)
    | (i,Fill, DocBreak(s))     :: z -> let l = strlen s in
                                            if   fits (w - k - l) z 
                                            then SText(s, format w (k+l) z)
                                            else SLine(i, format w  i    z)
    | (i,Break,DocBreak(s))     :: z -> SLine(i,format w i z)
    | (i,m,DocGroup(GFlat ,x))  :: z -> format w k ((i,Flat ,x)::z)
    | (i,m,DocGroup(GFill ,x))  :: z -> format w k ((i,Fill ,x)::z)
    | (i,m,DocGroup(GBreak,x))  :: z -> format w k ((i,Break,x)::z)
    | (i,m,DocGroup(GAuto, x))  :: z -> if fits (w-k) ((i,Flat,x)::z)
                                        then format w k ((i,Flat ,x)::z)
                                        else format w k ((i,Break,x)::z)


let ppToString w doc =
    sdocToString  (format w 0 [0,Flat,agrp(doc)])

let ppToFile oc w doc =
    sdocToFile oc (format w 0 [0,Flat,agrp(doc)])



(*  ------------------------------------------------------------------ 
    $Log$
    Revision 1.1.1.1  1999/06/13 12:55:05  lindig
    imported sources

    Revision 1.2  1999/01/01 16:54:00  lindig

    Copyright statement added.

    Revision 1.1.1.1  1998/11/15 16:24:08  lindig
    file put into CVS

    ------------------------------------------------------------------ *)

                                
                  
