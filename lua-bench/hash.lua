-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- Author: Roberto Ierusalimschy

local n = tonumber((arg and arg[1]) or 1)

local X={}
local i = 1
while i <= n do
  X[format("%x", i)] = i
  i = i + 1
end

local c = 0

local i = n
while i >= 1 do
  if X[i..''] then c = c+1 end
  i = i - 1
end

print(c)
