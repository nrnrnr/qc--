
-- setup x86 backend
backend = backend or Backend.x86

Test.source  = "tiger"
Test.results = "tiger/x86"

function Test.tigertest(filename, stdin)
  return { source = filename, stdin = stdin,
           other = "tiger/tigermain-x86.o tiger/stdlib-x86.a" }
end

-- source files live in src directory
Test.files = { Test.tigertest("arrays.c--", "/dev/null"),
               Test.tigertest("colmajor.c--"),
               Test.tigertest("forloop.c--", "/dev/null"),
               Test.tigertest("funcall.c--", "/dev/null"),
               Test.tigertest("hello.c--", "/dev/null"),
               Test.tigertest("merge.c--", "/dev/null"),
               Test.tigertest("qsort.c--", "/dev/null"),
               Test.tigertest("queens.c--", "/dev/null"),
               Test.tigertest("rc4.c--"),
               Test.tigertest("sieve.c--", "/dev/null"),
               Test.tigertest("wf.c--", "/dev/null")
	     }
