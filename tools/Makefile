# vim: ts=8 noet sw=8:
# Makefile to build ocamlerror from sources. Not intended for development.
#

NAME =		ocamlerror
VERSION =	1.0

OCAML =		ocaml
OCAMLC =	ocamlc 
OCAMLO =	ocamlopt 
OCAMLTOP =	ocamlmktop
OCAMLDEP =	ocamldep
OCAMLYACC =	ocamlyacc
OCAMLLEX =	ocamllex

NOFAKE =	perl -- nofake

OCAMLC_FLAGS=
OCAMLO_FLAGS=

prefix =	/usr/local

# ------------------------------------------------------------------ 
# high level targets
# ------------------------------------------------------------------ 

all:		ocamlerror		
all.opt:	ocamlerror.opt

install:	ocamlerror ocamlerror.1
		install ocamlerror	$(prefix)/bin
		install ocamlerror.1	$(prefix)/man/man1
		
# ------------------------------------------------------------------ 
# rules
# ------------------------------------------------------------------ 

%.cmi:		%.mli
		$(OCAMLC) $(OCAMLC_FLAGS) -c $<

%.cmo:		%.ml
		$(OCAMLC) $(OCAMLC_FLAGS) -c $<

%.o %.cmx:	%.ml
		$(OCAMLO) $(OCAMLO_FLAGS) -c $<

%.ml:		%.mll
		$(OCAMLLEX) $<

%.mli		\
%.ml		\
%.output:	%.mly
		$(OCAMLYACC) -v $<

%.ml:		%.nw
		$(NOFAKE) -L'# %L "%F"%N' -R$@ $< > $@

%.mli:		%.nw
		$(NOFAKE) -L'# %L "%F"%N' -R$@ $< > $@
		

# ------------------------------------------------------------------ 
# special rules to resolve ambiguities
# ------------------------------------------------------------------ 

ocamlscan.mll:	ocamlerror.nw
		$(NOFAKE) -R$@ $< > $@

# ------------------------------------------------------------------
# files
# ------------------------------------------------------------------ 

ML =		srcmap.ml	\
		ocamlscan.ml	\
		ocamlerror.ml	\

MLI =		srcmap.mli

CMO =		$(addsuffix .cmo,$(basename $(ML))) 
CMX =		$(addsuffix .cmx,$(basename $(ML))) 

# ------------------------------------------------------------------ 
# binaries
# ------------------------------------------------------------------ 

ocamlerror:	$(CMO)
		$(OCAMLC) $(OCAMLC_FLAGS) -custom -o $@ str.cma  $(CMO) 

ocamlerror.opt: $(CMX)		
		$(OCAMLO) $(OCAMLO_FLAGS)         -o $@ str.cmxa $(CMO) 

# ------------------------------------------------------------------ 
# dependencies
# ------------------------------------------------------------------ 

ocamlerror.cmo: ocamlscan.cmo srcmap.cmi 
ocamlerror.cmx: ocamlscan.cmx srcmap.cmx 
ocamlscan.cmo: srcmap.cmi 
ocamlscan.cmx: srcmap.cmx 
srcmap.cmo: srcmap.cmi 
srcmap.cmx: srcmap.cmi 

