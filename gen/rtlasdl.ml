(*
  Machine generated. Edit at your own risk 
  Reproduce with the following
 --line_width=74
 --no_action=false
 --output_directory=.
 --pickler=sexp
 --view=OCaml
 *)
(* module Rtlasdl*)
  type space = (StdPrims.std_int)
  and width = (StdPrims.std_int)
  and aligned = (StdPrims.std_int)
  and assertion = (aligned)
  and bool = (StdPrims.std_int)
  and bits = (StdPrims.std_string * width)
  and aggregration =
        BigEndian
      | LittleEndian
      | Identity
  
  and opr = (StdPrims.std_string * width list)
  and const =
        Bool of (bool)
      | Bits of (bits)
      | Link of (StdPrims.std_string * width)
      | Late of (StdPrims.std_string * width)
  
  and loc =
        Cell of (space * aggregration * width * exp * assertion)
      | Var of (StdPrims.std_string * StdPrims.std_int * width)
      | Slice of (width * StdPrims.std_int * loc)
  
  and exp =
        Const of (const)
      | Fetch of (loc * width)
      | App of (opr * exp list)
  
  and effect =
        Store of (loc * exp * width)
      | Kill of (loc)
  
  and guarded = (exp * effect)
  and rtl = (guarded list)
  and rtls = (rtl list)
  

