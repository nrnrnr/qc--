print("testando atribuicoes, operadores logicos e construtores")

local res, res2 = 27

a, b = 1, 2+3
assert(a==1 and b==5)
a={}
function f() return 10, 11, 12 end
a.x, b, a[1] = 1, 2, f()
assert(a.x==1 and b==2 and a[1]==10)
a[f()], b, a[f()+3] = f(), a, 'x'
assert(a[10] == 10 and b == a and a[13] == 'x')

assert(if f() then f() else 10 end == 10)
assert(not if f() == 20 then f() end)
assert(if nil then f() elseif 1 then 20 end == 20)

a, b, c, d = 1 and nil, 1 or nil, (1 and (nil or 1)), 6
assert(not a and b and c and d==6)

assert(2^3^2 == 2^(3^2))
assert(-2^2 == -4 and (-2)^2 == 4 and 2*2-3-1 == 0)
assert(1234567890 == tonumber('1234567890') and 1234567890+1 == 1234567891)

d = 20
a, b, c, d = f()
assert(a==10 and b==11 and c==12 and d==nil)
a,b = f(), 1, 2, 3, f()
assert(a==10 and b==1)

assert((10 and 2) == 2)
assert((10 or 2) == 10)
assert((10 or assert(nil)) == 10)
assert(not (nil and assert(nil)))
assert((nil or "alo") == "alo")
print('+')

function f() return a end

a = {}
i = 3000
while i>-3000 do a[i] = i; i=i-1 end
i = 3000
a[10e30] = "alo"
assert(a[10e30] == 'alo')
while i>-3000 do assert(a[i] == i); i=i-1 end
a[print] = assert
a[f] = print
a[a] = a
assert(a[a][a][a][a][print] == assert)
a[print](a[a[f]] == a[print])
a = nil

a = {10,9,8,7,6,5,4,3,2; [-3]='a', [f]=print, a='a', b='ab'}
assert(a[1]==10 and a[-3]==a.a and a[f]==print)
a[1], f()[2], b, c = {['alo']=assert}, 10, a[1], a[f]
a[1].alo(a[2]==10 and b==10 and c==print)

a[2^31] = 10; a[2^31+1] = 11; a[-2^31] = 12;
a[2^32] = 13; a[-2^32] = 14; a[2^32+1] = 15; a[10^33] = 16;

assert(a[2^31] == 10 and a[2^31+1] == 11 and a[-2^31] == 12 and
       a[2^32] == 13 and a[-2^32] == 14 and a[2^32+1] == 15 and
       a[10^33] == 16)

a = nil

print('OK')

return res
