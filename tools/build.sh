#! /bin/sh -x

ocamlopt -c srcmap.mli
ocamlopt -c srcmap.ml
ocamllex ocamlscan.mll
ocamlopt -c ocamlscan.ml
ocamlopt -c ocamlerror.ml
ocamlopt -o ocamlerror.opt str.cmxa srcmap.cmx ocamlscan.cmx ocamlerror.cmx
pod2man --center=ocamlerror --section=1 ocamlerror.pod > ocamlerror.1 
