print('testando next, nextvar e fors')
nofind = {}

a,b,c = 1,2,3
a,b,c = nil

function find (name)
  local n,v = nil
  while (n,v = nextvar(n)) do
    assert(v)
    if n == name then return v end
  end
  return nofind
end

function find1 (name)
  return foreachvar(function (n, v) if n==%name then return v end end)
end

do   -- create 10000 new global variables
  local i=0
  while (i=i+1)<=10000 do
    setglobal(i, i)
  end
end


do
  local a,v = nil
  while (a,v=nextvar(a)) do
    assert(v and v == getglobal(a))
  end
end

foreachvar(function (n, v)
             assert(v and getglobal(n) == v)
           end)

assert(print==find("print") and print == find1("print"))
assert(getglobal("print")==find("print"))
assert(assert==find1("assert"))
assert(nofind==find("return"))
assert(not find1("return"))
setglobal("ret" .. "urn", nil)
assert(nofind==find("return"))
assert(setglobal("xxx", 1) == 1)
assert(xxx==find("xxx"))
print('+')

a = {x=90, y=8, z=23}
assert(foreach(a, function(i,v) if i=='x' then return v end end) == 90)
assert(foreach(a, function(i,v) if i=='a' then return v end end) == nil)

a = {}
i = -1
while (i=i+1) < 10000 do
  if mod(i,10) ~= 0 then
    a['x'..i] = i
  end
end

n = {n=0}
foreach(a, function (i, v)
             n.n = n.n+1
             assert(i and v and a[i] == v)
           end)
assert(n.n == 9000)
a = nil

do   -- remove those 10000 new global variables
  local i=0
  while (i=i+1)<=10000 do
    setglobal(i, nil)
  end
end

foreachvar(function (n, v)
             if tag(v) ~= tag(print) and not strfind(n, "^[%u_]") then
               setglobal(n, nil);
             end
             n=nil;
             collectgarbage()
           end)

do
  local setglobal, foreachvar, foreach, nextvar, assert, error =
        setglobal, foreachvar, foreach, nextvar, assert, error
  local a = {}

  foreachvar(function (n, v) %a[n] = v; %setglobal(n, nil) end)
  assert(nextvar(nil) == nil)
  foreachvar(error)
  foreach(a, function (i, v) %setglobal(i, %a[i]) end)

  print'+'
end

assert(getn{n=20} == 20)
assert(getn{1,2,3; n=1} == 1)
assert(getn{[-1] = 2} == 0)
assert(getn{1,2,3,nil,5} == 5)

foreachi({x=10, y=20}, error)
a = {n = 1}
foreachi({n=3}, function (i, v) assert(%a.n == i and not v); %a.n=%a.n+1 end)
a = {10,20,30,nil,50}
foreachi(a, function (i,v) assert(a[i] == v) end)
assert(foreachi({'a', 'b', 'c'}, function (i,v) if i==2 then return v end end) 
       == 'b')

print("+")

a = {n=0, [6] = "ban"}
tinsert(a, 10); tinsert(a, 2, 20); tinsert(a, 1, -1); tinsert(a, 40);
a[(a.n=a.n+1)] = 50
assert(tremove(a,1) == -1)
assert(tremove(a,1) == 10)
assert(tremove(a,1) == 20)
assert(tremove(a,1) == 40)
assert(tremove(a,1) == 50)
assert(tremove(a,1) == nil)
assert(a.n == 0 and a[6] == "ban")
tinsert(a, 1, 10); tinsert(a, 1, 20); tinsert(a, 1, -1)
assert(tremove(a) == 10)
assert(tremove(a) == 20)
assert(tremove(a) == -1)
print("+")

i = 0
a = {}
while (i=i+1) <= 1000 do
  a[i] = i; a[i-1] = nil
end
assert(next(a,nil) == 1000 and next(a,1000) == nil)

collectgarbage()

print"OK"
