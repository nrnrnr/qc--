#
# Rules for LaTeX and PostScript
#
# Free variables this codes relies on. They must be defined where this
# code in included.
#
# TOP           - path to top level directory (with INSTALL)

LATEX =         latex
PS2PDF=         ps2pdf
RERUN =         Rerun (LaTeX|to get )

%.bbl:  %.aux
	BIBINPUTS="$TOP/doc:" bibtex $stem 

%.dvi:  %.tex 
	$LATEX "\\scrollmode \\input $stem.tex"
	ltxcount=3
	while egrep -s "$RERUN" $stem.log && [ $ltxcount -gt 0 ]
	do
	  $LATEX "\\scrollmode \\input $stem.tex"
	  ltxcount=`expr $ltxcount - 1`
	done

%.ps:   %.dvi
	dvips -Ppdf -o $target $prereq


%.pdf:  %.ps
	ps2pdf $prereq
