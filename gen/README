This directory contains automatically generated files that are used to
support the Quick C-- compiler.  Sometime I'll figure out the right
way to do it.

There's a significant configuration problem here.  These files are
generated using the \-RTL translator and related tools, which we wish
not to distribute with Quick C--.  (The sources are freely
available but the installation is not for the faint-hearted.)
On the other hand, the generated files can't simply be compiled
independently of Quick C--, because they rely on the QC--
representation of RTLs.   

My tentative solution to this problem is to generate the files into
this directory and to use the local mkfile to compile what I can.
Other files will have to be dealt with by ../src/mkfile.
