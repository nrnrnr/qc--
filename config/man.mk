#
# Rules for manual pages
#

POD2MAN =       pod2man
POD2HTML =      pod2html

%.man:          %.1
	nroff -man $prereq > $target

%.1:            %.pod
	if [ -z "$NAME" ]; then NAME="Quick C-- Tools"; fi
	$POD2MAN   --release="Version $VERSION"         \
		   --center="$NAME"                     \
		   --section=1 $prereq > $target
%.5:            %.pod
	if [ -z "$NAME" ]; then NAME="Quick C-- Tools"; fi
	$POD2MAN   --release="Version $VERSION"         \
		   --center="$NAME"                     \
		   --section=5 $prereq > $target
%-man.html:     %.pod
	if [ -z "$NAME" ]; then NAME="Quick C-- Tools"; fi
	$POD2HTML  --title=$NAME $prereq > $target

