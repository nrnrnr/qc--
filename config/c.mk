# ------------------------------------------------------------------ 
# $Id$
#
# rules and tools to compile C source code
# ------------------------------------------------------------------ 

CC =        gcc
CFLAGS =    

%.o:        %.c
            $CC $CFLAGS -c $stem.c -o $stem.o


