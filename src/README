
DEVELOPER'S FAQ

* What needs to be done to add new files to the compiler?
  
  See the comments in mkfile. You have to make sure your sources are
  extracted from their Noweb file and scanned for dependencies.
  Basically you have to add them to the ML and MLI variables in the
  mkfile.  When adding to ML, you must respect dependencies between
  modules.  When adding to MLI, use alphabetical order.  In more detail,

    ML =            uint64.ml     \
                    impossible.ml \
                    ...
                    foo.ml        \             <---- here
                    ...
                    asm2.ml       \
                    cmdline.ml    \
                    driver.ml     \
                    main.ml       \

  Every module that foo depends on must precede it in that list.  This
  means, high level modules go towards the end of the list.  Every
  time you modify the mkfile you have to do a "mk depend".

  Once the dependencies are recorded, just "mk foo.cmi" or "mk
  foo.cmo" should extract the source code from foo.nw and compile it,
  as well as any dependent file.
    
  A non-standard case contains multiple modules in one noweb-file, say
  foo.nw provides foo.ml, foo.mli and bar.ml.  In this case you have
  to add a rule for bar.ml in mkfile that extracts it from foo.nw. 
  The standard rules still deal with foo.ml and foo.mli.  Look at
  cmdline.ml as an example for such a rule.

* The compiler complains about inconsistencies of compiled interfaces.
  What can I do?

  Your dependencies are not up to date. Do a "mk depend" and try again.

* If something changes just in this directory, and we want to recompile, 
  what do we need to do short of running mk in the parent directory?

  The sub-directories in qc--/ in general depend on each other. In
  particular does src/ (this direcory) depend on ../cllib/, ../lua/
  and ../asdl/.  If these are up to date, running mk in this directory
  builds the compiler as byte-code executable.  During development
  there is little need to step outside of this directory to build the
  compiler.  See the top of mkfile for more targets.
  
* How do I create documentation for my module foo.nw?

  The mkfile provides useful rules for documentation:

        mk foo.tex              extract LaTeX documentation
        mk foo.dvi              create DVI file 
        mk foo.html             create HTML file
        mk foo.ps               create PostScript file
