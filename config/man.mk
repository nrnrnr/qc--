#
# Rules for manual pages
#

POD2MAN =       pod2man
POD2HTML =      pod2html

%.man:D:          %.1
	nroff -man $prereq > $target

%.1:DQ:            %.pod
	if [ -z "$NAME" ]; then NAME="Quick C-- Tools"; fi
	echo "Trying to use pod2man to build $target"
	if [ -x "`which $POD2MAN`" ]; then
	  $POD2MAN   --release="Version $VERSION"         \
		     --center="$NAME"                     \
		     --section=1 $prereq > $target
	else
	  (echo "No $POD2MAN; no manual."; cat $prereq) > $target
	fi

%.5:DQ:            %.pod
	if [ -z "$NAME" ]; then NAME="Quick C-- Tools"; fi
	echo "Trying to use $POD2MAN to build $target"
	if [ -x "`which $POD2MAN`" ]; then
	  $POD2MAN   --release="Version $VERSION"         \
		     --center="$NAME"                     \
		     --section=5 $prereq > $target
	else
	  (echo "No $POD2MAN; no manual."; cat $prereq) > $target
	fi
%-man.html:DQ:     %.pod
	if [ -z "$NAME" ]; then NAME="Quick C-- Tools"; fi
	echo "Trying to use $POD2MAN to build $target"
	if [ -x "`which $POD2HTML`" ]; then
	  $POD2HTML  --title=$NAME $prereq > $target
	else
	  (echo "No $POD2HTML; no manual."; cat $prereq) > $target
	fi

