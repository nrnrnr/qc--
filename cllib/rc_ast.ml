# 164 "rc.nw"
type id         =       string

type rc         =
                | RCstr of string
                | RCbool of bool
                | RCint of int
                | RCfloat of float
                | RClist of rc list

module IdMap    = 
    Map.Make(struct type t=id let compare=Pervasives.compare end)

(* rc files are maps (or dictinoaries) which map identifiers 
   to values (of type rc from above) *)
                
type rcdict     =       rc IdMap.t


let empty               = IdMap.empty
let find                = IdMap.find
let add                 = IdMap.add

(* [asList dictfile] returns the contents of [dictfile] as a lsit of
   id/rc pairs. This is for debugging only *)

let asList dict =
    let insert id rc list = (id,rc)::list       in
        IdMap.fold insert dict []
