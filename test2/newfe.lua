-- Driver.oldcheck = Driver.check
-- 
-- function Driver.check (ast, asm)
--   local n = Driver.new_ok (ast, asm)
--   if n then
--     write(_STDERR, 'New check passed\n')
--   else
--     write(_STDERR, 'New check failed\n')
--   end
--   local env = Driver.oldcheck(ast, asm)
--   if not n then error('new check failed but old check returned an env') end
--   return env
-- end
$debug

if Test then
  Test.run_test_case = Test.compare_front_ends
end

function CMD.compilertab['.c--'](file)
  if Options.verbose > 0 then write('Running new front ends on ', file, '\n') end
  if Options.verbose < 2 then
    local ast = Driver.parse(file) 
    local fd  = open_out('/dev/null')
    local asm = backend.asm(fd)
    local passed = Driver.new_ok(ast, asm)
    if Options.verbose > 0 then
      if passed then print('Accepted')
      else print('=> Rejected')
      end
    end
    if fd ~= Driver.stdout then close_out(fd) end -- close fd
    return nil
  end
end
