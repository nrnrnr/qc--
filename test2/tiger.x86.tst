
-- setup x86 backend
backend = backend or Backend.x86

Test.source  = "tiger"
Test.results = "tiger/x86"

function Test.tigertest(filename, stdin)
  return { source = filename, stdin = stdin, 
           other = "tiger/tigermain-x86.o tiger/stdlib-x86.a" }
end

-- source files live in src directory
Test.files = { Test.tigertest("arrays.c--"),
               Test.tigertest("colmajor.c--", "colmajor.0"),
               Test.tigertest("exceptions.c--"),
               Test.tigertest("forloop.c--"),
               Test.tigertest("funcall.c--"),
               Test.tigertest("hello.c--"),
               Test.tigertest("merge.c--"),
               Test.tigertest("qsort.c--"),
               Test.tigertest("queens.c--"),
               Test.tigertest("rc4.c--", "rc4.0"),
               Test.tigertest("sieve.c--"),
               Test.tigertest("wf.c--", "wf.0")
	     }
