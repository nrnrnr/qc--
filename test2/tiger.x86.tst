
-- setup x86 backend
backend = backend or Backend.x86

Test.source  = "tiger"
Test.results = "tiger/x86"

function Test.tigertest(filename)
  local t
  if type(filename) == "table" then
    t = filename
  else
    t = { source = filename }
  end
  t.other = "tiger/tigermain-x86.o tiger/stdlib-x86.a" 
  return t
end

-- source files live in src directory
Test.files = { Test.tigertest("arrays.c--"),
               Test.tigertest { source = "colmajor.c--", stdin = "colmajor.0", rc = 1 },
               Test.tigertest("exceptions.c--"),
               Test.tigertest("forloop.c--"),
               Test.tigertest("funcall.c--"),
               Test.tigertest("hello.c--"),
               Test.tigertest { source = "merge.c--", rc = 1 },
               Test.tigertest("qsort.c--"),
               Test.tigertest("queens.c--"),
               Test.tigertest { source = "rc4.c--", stdin = "rc4.0" }, 
               Test.tigertest { source = "rb.c--", stdin = "wf.0" },
               Test.tigertest { name = 'rbshort', source = "rb.c--", stdin = "rbshort.0" },
               Test.tigertest("sieve.c--"),
               Test.tigertest { source = "wf.c--", stdin = "wf.0" }
	     }
