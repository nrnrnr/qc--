# :vim ts=8 sw=4 et:
# ------------------------------------------------------------------ 
# $Id$ 
# ------------------------------------------------------------------ 
#
# This directory depends on ../cllib, and specifically the targets
# update and update.opt there.

# ------------------------------------------------------------------ 
# paths
# ------------------------------------------------------------------ 

TOP    =    ..
INTERP =    evaluating
DEPEND =    DEPEND

LIBDIR =    ../lib
BINDIR =    ../bin
MANDIR =    ../man

prefix =    /usr/local

# ------------------------------------------------------------------ 
# (high level) virtual targets
# ------------------------------------------------------------------ 

HTML =          `echo *.nw       | sed 's/\.nw/.html/g;'`
TEX  =          `echo *.nw       | sed 's/\.nw/.tex/g;'`
DVI  =          `echo *.nw       | sed 's/\.nw/.dvi/g;'`

all:V:          mlburg
all.opt:V:      mlburg.opt    

update update.opt:QV:   
                echo "nothing to be done"

dvi:V:          $DVI
html:V:         $HTML

man:V:          

test:VQ:
                echo "nothing to be done"

depend:V:       $DEPEND

clean:V:    
                rm -f *.cmo *.cmi *.cmx *.o
                rm -f *.output
                
clobber:V:      clean
                rm -f mlburg mlburg.opt
                rm -f *.ml *.mll *.mli $DEPEND 
                rm -f *.aux *.log *.dvi *.tex *.inc *.toc *.html

# ------------------------------------------------------------------ 
# rules and tools for OCaml
# ------------------------------------------------------------------ 

<../config/ocaml.mk
<../config/noweb.mk

# compiler flags used by the rules just included

OCAMLC_FLAGS =  -g -I $LIBDIR
OCAMLO_FLAGS =     -I $LIBDIR

# ------------------------------------------------------------------ 
# important file sets
# ------------------------------------------------------------------ 

ML =            myList.ml       \
                pprint.ml       \
                syntax.ml       \
                code.ml         \
                spec.ml         \
                image.ml        \
                pcagain.ml      \
                token.ml        \
                lex.ml          \
                parse.ml        \
                norm.ml         \
                burg.ml         \
                main.ml         \
                
MLI =                           \
                burg.mli        \
                code.mli        \
                image.mli       \
                myList.mli      \
                norm.mli        \
                parse.mli       \
                pprint.mli      \
                spec.mli        \
                syntax.mli      \

TEST =          test.ml test2.ml

SCAN =          $ML $MLI

CMO =           `echo $ML       | sed 's/\.ml/.cmo/g'`
CMX =           `echo $ML       | sed 's/\.ml/.cmx/g'`

# ------------------------------------------------------------------ 
# building binaries
# ------------------------------------------------------------------ 

mlburg:         $LIBDIR/cllib.cma  $CMO 
                $OCAMLC $OCAMLC_FLAGS -o $target $prereq
                
mlburg.opt:     $LIBDIR/cllib.cmxa $CMX
                $OCAMLO $OCAMLO_FLAGS -o $target $prereq

# ------------------------------------------------------------------ 
# extra rules for cases not covered by noweb.mk or to resolve
# ambiguities
# ------------------------------------------------------------------ 

lex.mll:        lex.nw
	        notangle -R$target $prereq > $target

lex.ml:         lex.mll
                $OCAMLLEX $prereq

token.ml:       lex.nw
                notangle -L"$LINE" -R$target $prereq > $target

main.ml:        burg.nw
	        notangle -L"$LINE" -R$target $prereq > $target

# ------------------------------------------------------------------ 
# misc targets  (taken from NR's mkfile)
# ------------------------------------------------------------------ 

test:V: sample.cmo

^(sample|iburg)'\.'ml'$':R: '\1'.mlb mlburg
	mlburg $stem1.mlb > $target

a.out:	test.cmo test2.cmo
	$OCAMLC -o $target $prereq

test.ml: ss.ml gen.ml
	cat $prereq > $target

gen.ml: sample.mlb mlburg
	mlburg sample.mlb > $target

# ------------------------------------------------------------------ 
# recalculate dependencies
# make sure that generators are run first
# ------------------------------------------------------------------ 

$DEPEND:        $SCAN
                $OCAMLDEP $SCAN > $DEPEND

# ------------------------------------------------------------------ 
# include dependencies
# ------------------------------------------------------------------ 

<$DEPEND

