#! /bin/sh -x
# 
# $Id$
# 
# Build ocamlerror binary and ocamlerror manual page from sources.
# Used for stand-alon source distribution of Ocamlerror that lacks
# the QC-- infrastructure.  
#

ocamlopt -c srcmap.mli
ocamlopt -c srcmap.ml
ocamllex ocamlscan.mll
ocamlopt -c ocamlscan.ml
ocamlopt -c ocamlerror.ml
ocamlopt -o ocamlerror.opt str.cmxa srcmap.cmx ocamlscan.cmx ocamlerror.cmx
pod2man --center=ocamlerror --section=1 ocamlerror.pod > ocamlerror.1 
