(*
    $Id$

    A pretty printer for the abstract syntax.
*)

open Pp     (* pretty printer from cllib *)
open Ast    (* abstract syntax *)

(* Define some helpers first *)

let (~~) x     = x
let (^/) x y   = x ^^ break ^^ y 

let nestn      = nest      (* save old definition *)
let nest       = nest 4    (* define new nest with standard indentation *)

let nl         = breakWith ""

(* [[list]] creates a [[sep]] separated list. Individual items
   are printed using [[f]]. *)

let rec list sep f xs =
    let rec loop acc = function
        | []    -> acc
        | [x]   -> acc ^^ f x 
        | x::xs -> loop (acc ^^ f x ^^ sep) xs
    in
        loop empty xs 

let commalist f = list (text "," ^^ break) f

let block f xs =   
    text "{"
    ^^ nest begin
       ~~ break
       ^^ list break f xs
       end 
    ^/ text "}"

let commablock f xs =
    nest begin
        ~~ break
        ^^ list (text "," ^^ break) f xs
    end

(* most of the names used below refer directly to the grammar or
abstract syntax. Since the overall purpose of this is clear we don't
comment the code much. *)


let id i        = text i
let int n       = text (string_of_int n)
let float f     = text f
let semi        = text ";"

(* replace this with own code *)
let str s       = text ("\"" ^ String.escaped s ^ "\"")
let char c      = text ("'"  ^ String.escaped c   ^ "'" )
    

let ty = function
    | BitsTy(_,n)       -> text "bits"  ^^ int n
    | FloatTy(_,n)      -> text "float" ^^ int n
    
let rec lvalue = function
    | Var(_,x)          -> id x
    | Mem(_,t,e,a)      -> 
        ~~ ty t 
        ^^ text "["
        ^^ expr e 
        ^^ begin match a with 
                | Some i -> break ^^ text "aligned" ^/ int i 
                | None   -> empty
           end 
        ^^ text "]"
                        
and actual = function
    | (_, Some hint, e) -> agrp (str hint ^/ expr e)
    | (_, None     , e) -> expr e

and actuals xs = agrp (text "(" ^^ commalist actual xs ^^ text ")")
    
and expr = function
    | Int(_, i, None)           -> int i
    | Int(_, i, Some size)      -> int i ^^ text ":" ^^ int size
    | Float(_, f, None)         -> float f
    | Float(_, f, Some size)    -> float f ^^ text ":" ^^ int size
    | Char(_, c, None)          -> char c 
    | Char(_, c, Some size)     -> char c ^^ text ":" ^^ int size
    | Fetch(_,v)                -> lvalue v
    | BinOp(_,l,op,r)           -> agrp begin
                                     ~~ text "(" ^^ expr l
                                     ^^ nest begin
                                        ~~ text op
                                        ^^ breakWith ""
                                        ^^ expr r
                                        end
                                     ^^ text ")"
                                   end

    | UnOp(_,op,e)              -> agrp (str op ^^ expr e)
    | PrimOp(_,n,xs)            -> agrp (text "%" ^^ id n ^^ actuals xs)

let constant (_,name,e) =       agrp begin 
                                ~~ id name 
                                ^/ text "="
                                ^/ nest begin
                                    ~~ expr e
                                    ^^ semi
                                   end
                                end

let memsize = function
    | NoSize        -> empty
    | DynSize       -> text "[]"
    | FixSize(e)    -> text "[" ^^ expr e ^^ text "]"

let init = function
    | InitExprs(es) -> 
            fgrp begin
                ~~ text "{"
                ^/ nest begin
                    ~~ commalist expr es
                end
                ^/ text "}"
            end
    | InitStr(s) -> str s
    | InitUStr(s) -> 
            agrp begin
                ~~ text "unicode"
                ^/ text "("
                ^/ nest begin
                   ~~ str s
                   end
                ^/ text ")"
            end

let datum = function
    | Label(_,n)            -> id n ^^ text ":"
    | Align(_,a)            -> agrp (text "align" ^/ int a ^^ semi)
    | MemDecl(_,t,m,Some i) -> agrp (ty t ^^ memsize m ^/ init i ^^ semi)
    | MemDecl(_,t,m,None)   -> agrp (ty t ^^ memsize m ^^ semi) 

let formal (_, h, v, t, n) =
        agrp begin
            ~~ (match h with Some hint -> str hint ^^ break | None -> empty)
            ^^ (if v = Invariant then text "invariant" ^^ break else empty)
            ^^ ty t
            ^/ id n
        end

let formals xs = agrp (text "(" ^^ commalist formal xs ^^ text ")")

let decl = function
    | Register(_, Invariant, t, n) ->   
            agrp begin
                ~~ text "invariant"
                ^/ ty t
                ^/ id n
                ^^ semi
            end

    | Register(_, Variant  , t, n) ->   
            agrp begin 
                ~~ ty t
                ^/ id n
                ^^ semi
            end
    
    | Stackdata(_, dd) ->                
            agrp begin
                ~~ text "stackdata"
                ^/ block datum dd
            end


let altcont (e1,e2) =   
            agrp begin 
                ~~ text "<" 
                ^^ expr e1 
                ^^ text "," 
                ^/ expr e2
                ^^ text ">"
            end

let targets = function
    | []    -> empty
    | ts    -> agrp (text "targets" ^/ nest (commalist id ts))
    
let flow f =
    let also s ns = agrp (text "also" ^/ text s ^/ text "to" 
                         ^/ nest (commalist id ns))
    in match f with
    | CutsTo(_,ns)      -> also "cuts"    ns
    | UnwindsTo(_,ns)   -> also "unwinds" ns
    | ReturnsTo(_,ns)   -> also "returns" ns
    | Aborts(_)         -> text "also aborts"

let flows = function
    | []    -> empty
    | xs    -> nest (agrp (list break flow xs))


let conv = function
    | Some cc       -> agrp (text "foreign" ^/ str cc)
    | None          -> empty 

let dummy = text "<stmt>;"

let stmt = function
    | IfStmt (_, e, ss1, [])    -> dummy
    | IfStmt (_, e, ss1, ss2)   -> dummy
    | LabelStmt(_,n)            -> dummy
    | ContStmt(_,n,ns)          -> dummy
    | SpanStmt(_,e1,e2,ss)      -> dummy
    | AssignStmt(_,xs)          -> dummy
    | CallStmt(_, lhs, cc, e, args, ts, fs) -> dummy
    | PrimStmt(_, lhs, cc, n, args, fs) -> dummy
    | GotoStmt(_,e,ts)          -> dummy
    | CutStmt(_,n, args, fs)    -> dummy
    | ReturnStmt(_,cc, alt, args) -> dummy
    | JumpStmt(_,cc,e,args,ts)  -> dummy
    | EmptyStmt(_)              -> text ";"

let rec section = function
    | SSpan(_, e1, e2, ss) ->  
            agrp begin
                agrp (text "span" ^/ expr e1 ^/ expr e2)
                ^/ block section ss
            end
    | Datum(_, d) ->  
            datum d
    | Procedure(_,cc,n,fs, ds, ss)  ->  
            agrp begin 
                agrp (conv cc ^/ id n ^^ formals fs)
                ^/ text "{"
                ^^ nest begin
                   ~~ break
                   ^^ list break decl ds
                   ^^ break ^^ break
                   ^^ list break stmt ss
                   end 
                ^/ text "}" 
            end
                 
let register (_, v , t, n, reg) = 
    agrp begin 
        ~~ (if v = Invariant then text "invariant" ^^ break else empty)
        ^^ ty t
        ^/ id n
        ^^ (match reg with Some r -> break ^^ str r | None -> empty)
        ^^ semi
    end 

let topdecl = function
    | Import(_, t, ns) -> 
            agrp begin 
                agrp (text "import" ^/ ty t)
                ^/ commablock id ns
                ^^ semi
            end
    | Export(_, ns) ->
            agrp begin 
                ~~ text "export"
                ^/ commablock id ns
                ^^ semi
            end 
    | Const (_, cs) ->
            agrp begin 
                ~~ text "const"
                ^/ block constant cs
            end
    | Section(_, n, ss) ->
            agrp begin 
                agrp (text "section" ^/ str n)
                ^/ block section ss
            end
                   
    | Global(_, rs) ->
            agrp begin 
                ~~ text "global"
                ^/ block register rs
            end
    | Pragma(_) ->
            text "<pragma>"

let program(_,ds) = vgrp begin
                        list (break ^^ break) topdecl ds
                    end
            
                                            
    
                        
