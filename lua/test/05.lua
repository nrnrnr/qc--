$ifnot checktable

$ifnot querytab

stat = function () print"`querytab' nao ativo" end

$else

function checktable (t)
  local size, ff = querytab(t)
  local l = {}
  local i = 0
  while i<size do
    local key,val,next = querytab(t, i)
    if not key then
      assert(l[i] == nil and val==nil and next==nil)
    else
      local mp = hash(key, t)
      assert(t[key] == val)
      if l[i] then
        assert(l[i] == mp)
      elseif mp ~= i then
        l[i] = mp
      else  -- list head
        l[mp] = {mp; n=1}   -- first element
        while next do
          assert(size > next and next > ff)
          if l[next] then assert(l[next] == mp) else l[next] = mp end
          tinsert(l[mp], next)
          key,val,next = querytab(t, next)
          assert(key)
        end
      end
    end
    i = i+1
  end
  assert(l[ff] == nil)
  l.size = size; l.ff = ff
  return l
end

function mostra (t)
  write(t.size, "  ", t.ff, "\n")
  local i = 0
  while i<t.size do
    write(format("%5d: ", i))
    if type(t[i]) ~= 'table' then
      write(tostring(t[i]))
    else
      foreachi(t[i], function(_,v) write(" ", v) end)
    end
    write("\n")
    i = i+1
  end
end

function stat (t)
  t = checktable(t)
  local i = 0
  local nelem, nlist = 0, 0
  local maxlist = {}
  while i < t.size do
    if type(t[i]) == 'table' then
      local n = t[i].n
      nlist = nlist+1
      nelem = nelem + n
      if not maxlist[n] then maxlist[n] = 0 end
      maxlist[n] = maxlist[n]+1
    end
    i = i+1
  end
  print(format("size=%d  elements=%d  load=%.2f  med.len=%.2f",
          t.size, nelem, nelem/t.size, nelem/nlist))
  foreachi(maxlist, function(i,n)
    print(format("%5d %10d %.2f%%", i, n, n*100/%nlist))
  end)
end

$end

$end
