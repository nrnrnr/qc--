# ------------------------------------------------------------------ 
# $Id$
# ------------------------------------------------------------------ 

# ------------------------------------------------------------------ 
# compiler and tools
# ------------------------------------------------------------------ 

OCAML =         ocaml
# use the following for execution profiling
OCAMLC =        ocamlcp -p a    
OCAMLC =        ocamlc -g
OCAMLO =        ocamlopt 
OCAMLTOP =      ocamlmktop
OCAMLDEP =      ocamldep
OCAMLYACC =     ocamlyacc
OCAMLLEX =      ocamllex

# provide these two where you have included this file
#
# OCAMLC_FLAGS=-I $LIBDIR
# OCAMLO_FLAGS=-I $LIBDIR

POD2MAN =       pod2man
POD2HTML =      pod2html

# ------------------------------------------------------------------ 
# rules
# ------------------------------------------------------------------ 

%.cmi:          %.mli
                $OCAMLC $OCAMLC_FLAGS -c $stem.mli

%.cmo:          %.ml
                $OCAMLC $OCAMLC_FLAGS -c $stem.ml

%.cmx:          %.ml
                $OCAMLO $OCAMLO_FLAGS -c $stem.ml

%.ml:           %.mll
                $OCAMLLEX $stem.mll

%.mli %.ml:     %.mly
                $OCAMLYACC -v $stem.mly

%.sig:          %.ml
                $OCAMLC $OCAMLC_FLAGS -c -i $stem.ml > $target

%.man:          %.1
                nroff -man $prereq > $target

%.1:            %.pod
                $POD2MAN   --release="Version $VERSION"         \
                           --center=$NAME                       \
                           --section=1 $prereq > $target
%.5:            %.pod
                $POD2MAN   --release="Version $VERSION"         \
                           --center=$NAME                       \
                           --section=5 $prereq > $target
#%.html:        %.pod
#               $POD2HTML  --title=$(NAME) $prereq > $target


