-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- from Roberto Ierusalimschy

-- this version uses a custom string buffer

------------------------------------------------------------------
-- Buffer library
------------------------------------------------------------------

Buffer = {n=0}

function Buffer:new ()
  local new = {}
  local k,v = next(self, nil)
  while k do new[k] = v; k,v=next(self, k) end
  return new
end

function Buffer:add (s)
  tinsert(self, s)
  local i = self.n-1
  while i > 0 and strlen(self[i]) <= strlen(self[i+1]) do
    local top = tremove(self)
    self[i] = self[i]..top
    i = i - 1
  end
end

function Buffer:close ()
  for i=self.n-1, 1, -1 do
    local top = tremove(self)
    self[i] = self[i]..top
  end
  return self[1]
end


------------------------------------------------------------------
-- Test
------------------------------------------------------------------

local n = tonumber((arg and arg[1]) or 1)
local buff = Buffer:new()
for i=1,n do
  buff:add("hello\n")
end
write(strlen(buff:close()), "\n")
