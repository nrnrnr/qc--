AR=ar crvs
RANLIB=ranlib

ORIGINALS=regaux.o regcomp.o regerror.o regexec.o regsub.o rregexec.o rregsub.o

UNNEEDED=regerror.o rregexec.o rregsub.o

OFILES=regaux.o regcomp.o regexec.o regsub.o

TARG=../libregexp.a
CFLAGS=-g -I../../include

all: $(TARG)

$(TARG): $(OFILES)
	$(AR) $(TARG) $(OFILES)
	$(RANLIB) $(TARG)

$(OFILES): ../../include/regexp.h ../../include/lib9.h regcomp.h

clean:
	rm -f *~
	rm -f *.o 

nuke: clean
	rm -f $(TARG)
