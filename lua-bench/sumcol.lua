-- $Id$
-- http://www.bagley.org/~doug/shootout/

local sum = 0
local line = read()
while line ~= nil do
    sum = sum + line
    line = read()
end
write(sum, "\n")
