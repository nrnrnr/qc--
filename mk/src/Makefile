OFILES=Posix.o sh.o \
 arc.o archive.o bufblock.o dir.o env.o file.o graph.o job.o lex.o \
 main.o match.o mk.o parse.o recipe.o rule.o run.o shprint.o symtab.o \
 var.o varsub.o word.o


TARG=../mk
CFLAGS=-g -I../include

$(TARG): $(OFILES) ../lib/libregexp.a ../lib/libbio.a ../lib/lib9.a
	$(CC) -o $(TARG) $(OFILES) -L../lib -lregexp -lbio -l9

clean:
	rm -f *.o 
	rm -f *~

$(OFILES): mk.h ../include/regexp.h ../include/lib9.h ../include/bio.h

rcs-check:
	if rcsdiff RCS/* > /dev/null 2>&1; then echo OK;\
	else echo "sumbit modified files into RCS"; fi  

nuke: clean
	rm -f $(TARG)
