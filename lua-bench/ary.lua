-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- Author: Roberto Ierusalimschy

local n = tonumber((arg and arg[1]) or 1)

local x, y = {}, {}
local i = 1
while i <= n do
  x[i] = i
  i = i + 1
end

local j = n
while j >= 1 do
  y[j] = x[j]
  j = j - 1
end

write(y[n-1], "\n")

-- old oclbench timings
-- 70 0.02 700 0.25 1000 0.43 1500 0.96 2000 1.75 2500 2.96 3000 4.87 3500 6.67 4000 9.37 

-- now hitting nonlinearity between 20000 and 40000