AR=ar crvs
RANLIB=ranlib

ORIGINALS=dirstat-posix.o errstr-posix.o getuser-posix.o log-posix.o \
  charstod.o create.o dirstat.o dirwstat.o doprint.o exits.o getfields.o \
  pow10.o print.o qsort.o rune.o runestrlen.o \
  seek.o strdup.o strtoll.o utflen.o utfrrune.o utfrune.o

UNNEEDED=charstod.o dirstat-posix.o dirwstat.o getuser-posix.o \
 pow10.o qsort.o runestrlen.o icossin.o icossin2.o

OFILES=errstr-posix.o log-posix.o \
  create.o dirstat.o doprint.o exits.o getfields.o \
  print.o rune.o \
  seek.o strdup.o strtoll.o utflen.o utfrrune.o utfrune.o \
  newprint.o

TARG=../lib9.a
CFLAGS=-g -I../../include

all: $(TARG)

$(TARG): $(OFILES)
	$(AR) $(TARG) $(OFILES)
	$(RANLIB) $(TARG)

$(OFILES): ../../include/lib9.h

clean:
	rm -f *~
	rm -f *.o 

nuke: clean
	rm -f $(TARG)
