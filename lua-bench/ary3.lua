-- $Id$
-- http://www.bagley.org/~doug/shootout/

local n = tonumber((arg and arg[1]) or 1)

local x, y = {}, {}
local last = n - 1

local i = 0
while i <= last do
  x[i] = i + 1
  y[i] = 0
  i = i + 1
end
local k = 1
while k <= 1000 do
  local j = last
  while j >= 0 do
    y[j] = y[j] + x[j]
    j = j - 1
  end
  k = k + 1
end

write(y[0], " ", y[last], "\n")
