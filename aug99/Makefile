default: aST.mli

NOWEAVE=noweave

# should split into ASDLSOURCES and CAMLSOURCES

SOURCES=asm cmmir ast
# SOURCES=`cmsrcs *.cm | sed 's/\.nw$//'`
SOURCESDOTTEX=asm.tex cmmir.tex ast.tex

# SOURCESDOTDEFS=`echo $(SOURCES) | sed 's/ /.defs /g;s/$/.defs/'`
# SOURCESDOTASDL=`echo   $(SOURCES) | sed 's/ /.asdl /g;s/$/.asdl/'`
# SOURCESDOTHTML=`echo   $(SOURCES) | sed 's/ /.html /g;s/$/.html/'`
# SOURCESDOTNW=`echo   $(SOURCES) | sed 's/ /.nw /g;s/$/.nw/'`
# SOURCESREGEXP=`echo $(SOURCES) | sed 's/ /|/g'`

NWLIB1=/usr/public/pkg/noweb/lib
NWLIB2=/usr/local/lib/noweb
NWLIB3=/usr/cs/contrib/lib/noweb
NWLIB4=/usr/local/noweb/lib

# change code to put things in derived locations

HTMLDIR=WWW/
TEXDIR=TEX/

SOURCESDOTHTML=`echo $(SOURCES) | sed "s@^@$HTMLDIR@;s@ @.html $HTMLDIR@g;s/\$/.html/"`

%.g: %.nw
	notangle -L -R$@ $^ | cpif $<


clean: 
	rm -f *.html *~ *.t cm.dot cm.ps cm.eps 
	rm -f *.aux *.dvi *.toc *.ps *.log *.blg
	rm -f *.cmi *.cmo *.o 

clobber: clean
	rm -f *.g *.sml *.sig *.ord *.lex *.tab *.mli *.ml
	rm -f *.tex *.html *.defs cm.gif *.a
	rm -rf CM NW WWW
	rm -f *.asdl

html: $SOURCESDOTHTML

################################################################
#
#	counting lines of code

counts: count
count: $SOURCESDOTNW
	PATH="$NWLIB1:$NWLIB2:$NWLIB3:$NWLIB4:$PATH"
	export PATH
	markup $^ | elide 'refman:*' '\*' | nocount -f



$TEXDIR%.ps: %.dot
	dot -Tps $^ > $@

%.eps: %.ps
	ps2epsi $^ $@

$HTMLDIR%.gif: %.dot
	egrep -v '^  (page|size|ratio) = ' $^ |
	dot -Tgif | giftool -rgb white > $@

WWW:
	mkdir $@ 2>/dev/null

$HTMLDIR%.html: %.nw `echo $HTMLDIR | sed 's@/$@@'`
	echo '\section*{Contents}
	\tableofcontents' |
	$(NOWEAVE) -filter 'elide refman:*' -filter l2h -autodefs asdl -html -index - $^ | htmltoc > $@

${HTMLDIR}index.html: index.nw
	$(NOWEAVE) -filter l2h -html $^ | htmltoc | htmlgif > $@


################ defined identifiers (not used here)

# ^($SOURCESREGEXP)'\.'defs:R: '\1'.nw 
#	nodefs -auto asdl $^ > $@

all.defs: $(SOURCESDOTDEFS)
	sort -u $^ | cpif $@

################ literate source 

# ^($SOURCESREGEXP)'\.'tex:R: '\1'.nw
#	$(NOWEAVE) -autodefs asdl -index -n $stem1.nw >$@

asm.tex : asm.nw
	$(NOWEAVE) -autodefs asdl -index -n $^ > $@

cmmir.tex : cmmir.nw
	$(NOWEAVE) -autodefs asdl -index -n $^ > $@

ast.tex : ast.nw
	$(NOWEAVE) -autodefs asdl -index -n $^ > $@

DOCINPUTS=doc.tex $(SOURCESDOTTEX)

docin: $(DOCINPUTS)

doc.dvi: $(DOCINPUTS)

doc.tex: doc.nw
	$(NOWEAVE) -delay doc.nw >$@

doc_check: doc.tex
	for i in $(SOURCESDOTTEX); do 
	  j=`basename $i .tex`
	  fgrep -s "\include{$j}" doc.tex || echo "$i not in doc" 1>&2
	done

%.nwi: %.tex
	noindex $^

%.dvi:  %.tex
	latex '\scrollmode \input $<'
	ltxcount=3
	while egrep -s 'Rerun (LaTeX|to get cross-references right)' $*.log && [ $ltxcount -gt 0 ] \
	do \
	  latex '\scrollmode \input $<' ;\
	  ltxcount=`expr $ltxcount - 1` \
	done

%.ps : %.dvi
	dvips -f < $^ > $@

###################
#
#  Targets for interfaces

caml: asm.cmi asm.cmo iRNode.cmi iRNode.cmo aST.cmi aST.cmo \
	iR.cmi iR.cmo

CAMLOPTS=-I /home/simonmar/fp/src/asdlGen-19990816/src/ocaml

asm.mli asm.ml asmUtil.mli asmUtil.ml: asm.asdl
	asdlGen --ocaml --pickler=sexp $^

rTL.mli rTL.ml: rtl.asdl
	asdlGen --ocaml --pickler=sexp $^

iRNode.mli iRNode.ml: rtl.asdl irnode.asdl
	asdlGen --ocaml --pickler=sexp $^

iR.mli iR.ml: ir.asdl irnode.asdl rtl.asdl ast.asdl
	asdlGen --ocaml --pickler=sexp $^

aST.mli aST.ml aSTUtil.mli aSTUtil.ml: ast.asdl
	asdlGen --ocaml --pickler=sexp $^

%.asdl: %.nw
	notangle -R$@ -L' --#line %-1L "%F"%N'  $^ > $@

irnode.asdl: cmmir.nw
	notangle -R$@ -L' --#line %-1L "%F"%N'  $^ > $@
ir.asdl: cmmir.nw
	notangle -R$@ -L' --#line %-1L "%F"%N'  $^ > $@

%.ml: %.nw
	notangle -Rimplementation -L'# %L "%F"%N' $< > $@
%.mli: %.nw
	notangle -Rinterface -L'# %L "%F"%N' $< > $@

%.cmi: %.mli
	ocamlc $(CAMLOPTS) -c $<
%.cmo: %.ml
	ocamlc $(CAMLOPTS) -c $<

include .depend
