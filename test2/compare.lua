ctab = { }

function counts(n, t)
  ctab[n] = t
  if first then
    compare(first, n)
    first = nil
  else
    first = n
  end
end

function showline(k, v1, v2)
  write(format('%-25s  %4d   %4d  %3d%%\n', k, v1, v2, floor(100.0 * v2 / v1)))
end

function header(n1, n2)
  write(format('%-25s%6s %6s\n', "", n1, n2))
end

function compare(first, second)
  header(first, second)
  local t1, t2 = ctab[first], ctab[second]
  local n1, n2 = 0, 0
  local k, v = next(t1)
  while k do
    showline(k, t1[k], t2[k])
    n1 = n1 + t1[k]
    n2 = n2 + t2[k]
    k, v = next(t1, k)
  end
  showline('TOTALS', n1, n2)
end
