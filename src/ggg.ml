module A = struct
  type lhs = string
  type exp = int
  type stmt =
    | Assign of lhs * exp
    | If of exp * stmt * stmt
    | Seq of stmt list
end

module Graph = struct
  type label = int
  type node =
    | Assign of A.lhs * A.exp * node
    | Branch of A.exp * label * label
    | Exit
  type bindings =
    | Relative of int * bindings  (* add int to all labels *)
    | Empty
    | Binding of label * node
    | Join of bindings * bindings

  type base = int
  type graph' = node list * bindings * label
        (* nodes, bindings, and next label *)

  type 'a graph = 'a * graph' (* a flow graph plus a value of type 'a *)


  let empty = ([], Empty, 0)

  let unit x = (x, empty)

  let (>>=) (x, (nodes, bindings, label)) f = 
    let (y, (n', b', l')) = f x
    in  (y, (n' @ nodes, Join (Relative(label, b'), bindings), label+l'))
    
  let map f (x, g) = (f x, g)

  let join z = z >>= (fun x -> x)

  let fresh_label (_, (nodes, bindings, label)) = (label, (nodes, bindings, label+1))

  let fresh_label () = (0, ([], Empty, 1))

  let add_node n (x, (nodes, bindings, label)) = (n, (n :: nodes, bindings, label))

  let add_node n = (n, ([n], Empty, 0))
  let bind_here l (n, (nodes, bindings, label)) =
    (n, (nodes, Join (Binding (l, n), bindings), label))

  let bind_label l n = (n, ([], Binding(l, n), 0))
    (* risky not adding n? *)
end

module Translate = struct
  module G = Graph
  let (>>=) = Graph.(>>=)
  let rec stmt s successor = match s with
  | A.Assign(l, r) ->
      G.add_node (G.Assign(l, r, successor)) 
  | A.If (e, s1, s2) ->
      G.fresh_label () >>= fun l1 ->
      G.fresh_label () >>= fun l2 ->
      stmt s1 successor >>= fun s1 ->
      G.bind_label l1 s1 >>= fun _ ->
      stmt s2 successor >>= fun s2 ->
      G.bind_label l2 s2 >>= fun _ ->
      G.add_node (G.Branch(e, l1, l2))
  | A.Seq (ss) -> stmts ss successor
  and stmts ss successor = match ss with
  | [] -> G.unit successor
  | h::t -> stmts t successor >>= fun n -> stmt h n
end
    
let p =
  A.Seq [ A.Assign("x", 3)
        ; A.Assign("y", 4)
        ; A.If(99,
               A.Assign("z", 1),
               A.Assign("z", 0))
        ] 
                   
let g = Translate.stmt p Graph.Exit
