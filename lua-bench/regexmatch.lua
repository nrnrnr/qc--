-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- implemented by: Roberto Ierusalimschy

text = read("*a")

-- I added the following line and slightly modified the pattern 
-- match below so that the program will reject the case:
-- 1(111) 111-1111 (due to preceeding digit)
-- (Doug)
text = gsub(gsub(text, "^", "   "), "\n", "\n   ")

N = tonumber((arg and arg[1])) or 1
count = 0
while N > 0 do
  gsub(text,"%D(%D)(%d%d%d)(%)?) (%d%d%d)[- ](%d+)",
    function (A,area,B,exch,digits)
      if (A == '(') == (B == ')') and strlen(digits) == 4 then
        local tel = "("..area..") "..exch.."-"..digits
        if N == 1 then
          count = count+1
          write(count, ": ", tel, "\n")
        end
      end
    end)
  N = N-1
end
