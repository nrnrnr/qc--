AR=ar crvs
RANLIB=ranlib


ORIGINALS=bbuffered.o bfildes.o bflush.o bgetc.o bgetd.o bgetrune.o \
 binit.o boffset.o bprint.o bputc.o bputrune.o brdline.o bread.o \
 bseek.o bwrite.o

UNNEEDED=bbuffered.o bfildes.o bgetd.o boffset.o \
 bputrune.o brdline.o bread.o bseek.o

OFILES=bflush.o bgetc.o bgetrune.o binit.o bprint.o bputc.o bwrite.o

TARG=../libbio.a
CFLAGS=-g -I../../include

all: $(TARG)

$(TARG): $(OFILES)
	$(AR) $(TARG) $(OFILES)
	$(RANLIB) $(TARG)

$(OFILES): ../../include/bio.h ../../include/lib9.h

clean:
	rm -f *~
	rm -f *.o 

nuke: clean
	rm -f $(TARG)
