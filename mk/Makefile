#
#  Edit the variables below if neccessary and call "make".
# 

PREFIX  = /usr/local
BINDIR  = $(PREFIX)/bin
MAN1DIR = $(PREFIX)/man/man1

AR	= ar crvs
RANLIB 	= ranlib

all:
	    for i in regexp bio 9; do\
		(cd lib/$$i; make "AR=$(AR)" "RANLIB=$(RANLIB)" "CC=$(CC)")\
	    done
	    cd src; make

install:    all
	    install -s mk $(BINDIR)
	    install mk.1  $(MAN1DIR)
	    
	    
clean:
	    rm -f *~ include/*~
	    for i in lib/regexp lib/bio lib/9 src; do (cd $$i; make clean); done

nuke:
	    rm -f *~ include/*~
	    for i in lib/regexp lib/bio lib/9 src; do (cd $$i; make nuke); done
