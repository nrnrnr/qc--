# vim:ts=8 sw=8 noet:
# 
# $Id$
#
# This Makefile is only used for building Debian packages; all real work
# is done with mk(1), starting from the mkfile in this directory.
#


DESTDIR = 
BINDIR  = $(DESTDIR)/usr/bin
MAN1DIR = $(DESTDIR)/usr/share/man/man1
LIBDIR  = $(DESTDIR)/usr/lib/qc--
INCDIR  = $(DESTDIR)/usr/include/qc--
DOCDIR  = $(DESTDIR)/usr/share/doc/qcmm

all:    mkfile
	mk timestamps
	mk all.opt
	(cd doc && mk release.pdf)

# The directories in file 'dirs' are created automatically, no need to
# do it again here
install: bin/qc--.opt manual
	# qc-- compiler
	install -m755 -s bin/qc--.opt $(BINDIR)/qc--
	install -m644 man/man1/qc--.1 $(MAN1DIR)
	install -m644 man/man1/qc--internals.1 $(MAN1DIR)
	gzip -9 $(MAN1DIR)/qc--.1
	gzip -9 $(MAN1DIR)/qc--internals.1
	# the interpreter
	install -m755 -s bin/qc--interp $(BINDIR)
	install -m644 man/man1/qc--interp.1 $(MAN1DIR)
	gzip -9 $(MAN1DIR)/qc--interp.1
	install -m644 lib/libqc--interp.a $(LIBDIR) 
	install -m644 interp/libinclude/*.h $(INCDIR)
	# the runtime system 
	install -m664 runtime/runtime.a $(LIBDIR)
	install -m664 runtime/pcmap.ld $(LIBDIR)
	#conflict with interp# install -m664 runtime/qc--runtime.h $(INCDIR)
	# documentation
	install -m664 doc/release.pdf $(DOCDIR)
	install -m664 doc/c--manual.pdf $(DOCDIR)

# the C-- language reference manual is not part of the source distribution but
# we would like to include it. 

manual:
	cd doc; wget http://www.cminusminus.org/rsync/dist/c--manual.pdf
	
debian:	mkfile
	dch -v `cat src/DATE` "nightly build"
	dpkg-buildpackage -us -uc -rfakeroot -elindig@eecs.harvard.edu

distclean: mkfile
	mk clobber

.PHONY: debian install all distclean manualn	
