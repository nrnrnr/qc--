print "testando sintaxe"

x = {}; x={;}; x={x=1;}; x={;x=1}; x={1}; x={1;}; x={;1}; x={1;x=1}; x={x=1;1}

function f (i)
  if i < 10 then return 'a'
  elseif i < 20 then return 'b'
  elseif i < 30 then return 'c'
  else return 'd'
  end
end

assert(f(3) == 'a' and f(12) == 'b' and f(26) == 'c' and f(100) == 'd')

function f (i)
  return if i < 10 then 'a'
  elseif i < 20 then 'b'
  elseif i < 30 then 'c'
  end, 10
end

assert(f(3) == 'a' and f(12) == 'b' and f(26) == 'c')
a,b=(f(100))
assert(a==nil and b==10)

a = {n=0}
b = {n=0}
while (a.n=a.n+1) <= 10 do
  b[(b.n=b.n+1)] = a.n
end

assert(b[1] == 1 and b[b.n] == 10 and b.n == 10)

a = {}
z,x,k = "a",
(a[1], a[(a[2]=10)], a.x, a.y, u = (a[3],a[4] = 1,2), (a[5],a[6] = sin(0)), a),
"b"

assert(x==1 and a[1] == 1 and a[2] == 10 and a[3] == 1 and a[4] == 2
  and a[5] == sin(0) and a[6] == nil and a.x == a and not a.y and not u
  and a[10] == a[5] and z == "a" and k == "b")
  
print'OK'
