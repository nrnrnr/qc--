-- $Id$
-- http://www.bagley.org/~doug/shootout/

local n = tonumber((arg and arg[1]) or 1)

local x, y = {}, {}
local i = 0
while i < n do
    x[i] = i; i = i + 1
    x[i] = i; i = i + 1
    x[i] = i; i = i + 1
    x[i] = i; i = i + 1
    x[i] = i; i = i + 1

    x[i] = i; i = i + 1
    x[i] = i; i = i + 1
    x[i] = i; i = i + 1
    x[i] = i; i = i + 1
    x[i] = i; i = i + 1
end

i = n-1
while i >= 0 do
    y[i] = x[i]; i = i - 1
    y[i] = x[i]; i = i - 1
    y[i] = x[i]; i = i - 1
    y[i] = x[i]; i = i - 1
    y[i] = x[i]; i = i - 1

    y[i] = x[i]; i = i - 1
    y[i] = x[i]; i = i - 1
    y[i] = x[i]; i = i - 1
    y[i] = x[i]; i = i - 1
    y[i] = x[i]; i = i - 1
end

write(y[n-1], "\n")
