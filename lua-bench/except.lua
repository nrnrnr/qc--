-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- from Roberto Ierusalimschy

-- uses `call' to catch errors; return the error message
-- (or nil if there are no errors)

function try (f, ...)
  call(f, arg) --- not supported in 2.5 -- , "x", function (msg) %arg.msg = msg end)
  return arg.msg
end


HI = 0
LO = 0

function some_function (n)
  local res = try(hi_function, n)
  if res then print("We shouldn't get here: " .. res) end
end


function hi_function (n)
  local res = try(lo_function, n)
  if res == "Hi_Exception" then HI = HI+1 
  elseif res then error(res)  -- rethrow
  end
end


function lo_function (n)
  local res = try(blowup, n)
  if res == "Lo_Exception" then LO = LO+1 
  elseif res then error(res)  -- rethrow
  end
end


function blowup (n)
  if mod(n,2) ~= 0 then error ("Lo_Exception")
  else error ("Hi_Exception")
  end
end


N = (arg and arg[1]) or 1
i = 1
while i <= N do
  some_function(i)
  i = i + 1
end

print(format("Exceptions: HI=%d / LO=%d", HI, LO))
