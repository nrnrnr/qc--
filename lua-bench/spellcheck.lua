-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- based on code from Roberto Ierusalimschy

assert(readfrom("Usr.Dict.Words"))
local dict = {}
local line = read()
while line do
  dict[line] = 1
  line = read()
end
readfrom()    -- closes dictionary

local word = read()
while word do
  if not dict[word] then print(word) end
  word = read()
end
