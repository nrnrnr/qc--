
-- setup x86 backend with DLS register allocator
backend = backend or Backend.x86
backend.ralloc = Ralloc.dls

-- tiger setup
function CMD.compilertab[".tig"](file)
  local tmp = CMD.outfilename(file, '.c--')
  CMD.exec('../../frontends/tiger/tigerc ' .. file .. ' > ' .. tmp)
  return tmp
end

Test.trust_exe = 1
Test.tigertop = Test.tigertop or "../../frontends/tiger"
Test.source  = Test.tigertop .. "/test"
Test.results = Test.tigertop .. "/test/x86"

function Test.tigertest(filename, stdin)
  return { source = filename, stdin = stdin,
           other = Test.tigertop .. "/runtime.o " .. Test.tigertop .. "/stdlib.a " ..
                   "../runtime/runtime.a ../runtime/pcmap.ld"}
end

-- source files live in src directory
Test.files = { Test.tigertest("arrays.tig", "/dev/null"),
               Test.tigertest("colmajor.tig"),
               Test.tigertest("forloop.tig", "/dev/null"),
               Test.tigertest("funcall.tig", "/dev/null"),
               Test.tigertest("hello.tig", "/dev/null"),
               Test.tigertest("merge.tig", "/dev/null"),
               Test.tigertest("qsort.tig", "/dev/null"),
               Test.tigertest("queens.tig", "/dev/null"),
               Test.tigertest("rc4.tig"),
               Test.tigertest("sieve.tig", "/dev/null"),
               Test.tigertest("wf.tig", "/dev/null")
	     }
