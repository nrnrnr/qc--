I've added a target to qc--/interp/mkfile:

  mk booted-interp.opt

This target translates each of the .c files comprising the interpreter
into a .c-- file using lcc, then uses qc--.opt to compile a native-code
binary from the .c-- files: booted-interp.opt.  The binary works fine and
passes a couple of quick tests, but be warned that any run-time error is
going to produce incomplete results, because lcc's setjmp and longjmp do
not work in the C-- translation.

The only mess for the moment is that the mkfile needs to know where lcc's
source directory is (so it can find lcc's version of assert.h, which only
seems to appear there) and where lcc's installation directory is (so it
can find lcc and liblcc.a); although these locations are hard-coded into
the mkfile for now perhaps we could get our configure script to find the
directories eventually?

The mkfile also contains a target booted-interp, which instead translates
the interpreter's C files into .c-- files and then into .qs files.  The
linked version of these .qs files can be created but not successfully
executed right now (qc--interp requires an assembly unit to be loaded
after all units it depends on, but the mkfile doesn't take this into
account, assembling the .qs files in alphabetical order only).
