-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- implemented by: Roberto Ierusalimschy

-- this version reads 4K chunks of input at a time

local words = {}   -- list of all words (for sorting)
local count = {}   -- count occurrences of each word

BUFSIZE = 2^12

while 1 do
  local lines, rest = read(BUFSIZE, "*l")
  if lines == nil then break end
  lines = lines..(rest or '')    -- ensures whole lines
  gsub(strlower(lines), "(%l+)", function (w)
    local cw = %count[w]
    if cw == nil then     -- first occurrence?
      cw = 0
      tinsert(%words, w)
    end
    %count[w] = cw + 1
  end)
end

sort(words, function (a,b)
  return  %count[a] > %count[b]  or
         (%count[a] == %count[b] and a > b)
end)

for i=1,getn(words) do
  local w = words[i]
  write(format("%7d\t%s\n", count[w], w))
end
