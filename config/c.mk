# ------------------------------------------------------------------ 
# $Id$
#
# rules and tools to compile C source code
# ------------------------------------------------------------------ 

<           $TOP/config/config.mk

CC =        $config_cc
CFLAGS =    

%.o:        %.c
            $CC $CFLAGS -c $stem.c -o $stem.o


