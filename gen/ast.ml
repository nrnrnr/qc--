(*
  Machine generated. Edit at your own risk 
  Reproduce with the following
 --line_width=74
 --no_action=false
 --output_directory=.
 --pickler=sexp
 --view=OCaml
 *)
(* module Ast*)
  type name = (StdPrims.std_string)
  and conv = (StdPrims.std_string)
  and hint = (StdPrims.std_string)
  and reg = (StdPrims.std_string)
  and target = (StdPrims.std_string)
  and size = (StdPrims.std_int)
  and align = (StdPrims.std_int)
  and aligned = (StdPrims.std_int)
  and op = (StdPrims.std_string)
  and region = (StdPrims.std_int * StdPrims.std_int)
  and ty =
        TyAt of (ty * region)
      | BitsTy of (size)
      | AliasTy of (name)
  
  and lvalue =
        LValueAt of (lvalue * region)
      | Var of (hint option * name)
      | Mem of (ty * expr * aligned option)
  
  and actual = (hint option * expr)
  and expr =
        ExprAt of (expr * region)
      | Int of (StdPrims.std_string * ty option)
      | Float of (StdPrims.std_string * ty option)
      | Char of (StdPrims.std_string * ty option)
      | Fetch of (lvalue)
      | BinOp of (expr * op * expr)
      | UnOp of (op * expr)
      | PrimOp of (name * actual list)
  
  and import = (StdPrims.std_string option * name)
  and export = (name * StdPrims.std_string option)
  and invariant =
        Invariant
      | Variant
  
  and register = (invariant * hint option * ty * name * reg option)
  and arch =
        Memsize of (StdPrims.std_int)
      | ByteorderBig
      | ByteorderLittle
      | FloatRepr of (StdPrims.std_string)
      | Charset of (StdPrims.std_string)
      | WordSize of (StdPrims.std_int)
      | PointerSize of (StdPrims.std_int)
  
  and decl =
        DeclAt of (decl * region)
      | Import of (ty * import list)
      | Export of (ty option * export list)
      | Const of (ty option * name * expr)
      | Typedef of (ty * name list)
      | Registers of (register list)
      | Pragma
      | Target of (arch list)
  
  and formal = (hint option * invariant * ty * name)
  and memsize =
        NoSize
      | DynSize
      | FixSize of (expr)
  
  and init =
        InitAt of (init * region)
      | InitExprs of (expr list)
      | InitStr of (StdPrims.std_string)
      | InitUStr of (StdPrims.std_string)
  
  and datum =
        DatumAt of (datum * region)
      | Label of (name)
      | Align of (align)
      | MemDecl of (ty * memsize * init option)
  
  and cformal = (hint option * name)
  and flow =
        FlowAt of (flow * region)
      | CutsTo of (name list)
      | UnwindsTo of (name list)
      | ReturnsTo of (name list)
      | Aborts
  
  and altcont = (expr * expr)
  and range =
        Point of (expr)
      | Range of (expr * expr)
  
  and guarded = (expr option * expr)
  and arm =
        ArmAt of (arm * region)
      | Case of (range list * body list)
  
  and stmt =
        StmtAt of (stmt * region)
      | IfStmt of (expr * body list * body list)
      | SwitchStmt of (range option * expr * arm list)
      | LabelStmt of (name)
      | ContStmt of (name * cformal list)
      | SpanStmt of (expr * expr * body list)
      | AssignStmt of (lvalue list * guarded list)
      | CallStmt of (lvalue list *
          conv option *
          expr *
          actual list *
          target list *
          flow list)
      | PrimStmt of (lvalue list *
          conv option *
          name *
          actual list *
          flow list)
      | GotoStmt of (expr * target list)
      | JumpStmt of (conv option * expr * actual list * target list)
      | CutStmt of (expr * actual list * flow list)
      | ReturnStmt of (conv option * altcont option * actual list)
      | EmptyStmt
      | CommentStmt of (StdPrims.std_string)
  
  and body =
        BodyAt of (body * region)
      | DeclBody of (decl)
      | StmtBody of (stmt)
      | DataBody of (datum list)
  
  and proc = (conv option * name * formal list * body list)
  and section =
        SectionAt of (section * region)
      | Decl of (decl)
      | Procedure of (proc)
      | Datum of (datum)
      | SSpan of (expr * expr * section list)
  
  and toplevel =
        ToplevelAt of (toplevel * region)
      | Section of (name * section list)
      | TopDecl of (decl)
      | TopProcedure of (proc)
  
  and program = (toplevel list)
  

