#
# Rules for Noweb, LaTeX, and HTML
#
# Free variables this codes relies on. They must be defined where this
# code in included.
#
# TOP           - path to top level directory (with INSTALL)
# INTERP        - residualizing | evaluating

NOWEAVE =       noweave
NOTANGLE =      notangle
CPIF =          cpif
LINE =          '# %L "%F"%N'

LATEX =         latex
RERUN =         Rerun (LaTeX|to get cross-references right)

NOCOND =        $TOP/config/nocond $INTERP
OCAMLDEFS =     $TOP/config/autodefs.ocaml

#
# general rules to extract code from noweb files
#


'(([^/]*/)*)(.*)\.ml$':R:        '\1\3'.nw
	$NOTANGLE -L"$LINE" -filter "$NOCOND" -R$stem3.ml $prereq | cpif $target

'(([^/]*/)*)(.*)\.mli$':R:        '\1\3'.nw
	$NOTANGLE -L"$LINE" -filter "$NOCOND" -R$stem3.mli $prereq | cpif $target

'(([^/]*/)*)(.*)\.c$':R:       '\1\3.nw'
	$NOTANGLE -L"$LINE" -R$stem3.c $prereq | cpif $target

%.view: %.nw
	$NOTANGLE -R$target $prereq > $target

%.asdl: %.nw
	$NOTANGLE -R$target $prereq | $CPIF $target


# generate a self-contained LaTeX document from a LaTeX file that
# is supposed to be read by \input from a master LaTeX file. This rule
# allows to specify extra packages like tabularx to be included. 
# The here-document ended by EOF relies on a single TAB character at
# the beginning of a line - so don't substitute spaces for it .

%.tex:	%.inc
	cp $stem.inc $stem.tex
	ed -s $stem.tex <<EOF 
	1
	i
	\documentclass{article}
	\usepackage{noweb}
	\usepackage{tabularx}
	\usepackage{hyperref}
	\pagestyle{noweb}
	\noweboptions{}
	\begin{document}
	\nwfilename{$stem.nw}
	\tableofcontents
	\nwbegindocs{}
	.
	\$
	a
	\end{document}
	.
	w
	q
	EOF 

%.inc:          %.nw
                $NOWEAVE -delay -filter $OCAMLDEFS -index $prereq > $target

%.html: %.nw
        $NOWEAVE -delay -filter $OCAMLDEFS \
            -index -html -filter l2h $prereq > $target

%.bbl:  %.bib %.aux
        bibtex $stem 
                    
%.dvi:  %.tex macros.tex
        $LATEX "\\scrollmode \\input $stem.tex"
        ltxcount=3
        while egrep -s "$RERUN" $stem.log && [ $ltxcount -gt 0 ]
        do
            $LATEX "\\scrollmode \\input $stem.tex"
            ltxcount=`expr $ltxcount - 1`
        done

%.ps:   %.dvi
        dvips -Ppdf -o $target $prereq


