print("testando reais e bib. matematica")

assert(tonumber{} == nil)
assert(tonumber(-12) == -10-2)
assert(tonumber('1e') == nil)
assert(tonumber('1  a') == nil)
assert(tonumber(' . ') == nil)
assert(tonumber('1010', 2) == 10)
assert(tonumber('10', 36) == 36)
assert(tonumber('-10', 36) == -36)
assert(tonumber('-fFfa', 16) == -(10+(16*(15+(16*(15+(16*15)))))))

assert(1.1 == 1.+.1)
assert(100.0 == 1e2 and .01 == 1e-2)
assert(1111111111111111-1111111111111110== 1000.00e-03)
--     1234567890123456
assert(1.1 == '1.'+'.1')
assert('1111111111111111'-'1111111111111110' == tonumber"  0.001e+3 \n\t")

function eq (a,b,limit)
  if not limit then limit = 10e-10 end
  return abs(a-b) <= limit
end

assert(0.1e-30 > 0.9E-31 and 0.9E30 < 0.1e31)

assert(0.123456 > 0.123455)

assert(tonumber('1.23e30') == 1.23e30)

assert(eq(sin(-9.8)^2 + cos(-9.8)^2, 1))
assert(eq(sin(90), 1) and eq(cos(90), 0))
assert(eq(atan(1), 45) and eq(acos(0), 90) and eq(asin(1), 90))
assert(eq(tan(deg(PI/4)), 1) and eq(rad(90), PI/2))
assert(abs(-10) == 10)
assert(eq(atan2(1,0), 90))
assert(ceil(4.5) == 5.0)
assert(floor(4.5) == 4.0)
assert(mod(10,3) == 1)
assert(eq(sqrt(10)^2, 10))
assert(eq(log10(2), log(2)/log(10)))
assert(eq(exp(0), 1))

assert(tonumber(' 1.3e-2 ') == 1.3e-2)
assert(tonumber(' -1.00000000000001 ') == -1.00000000000001)

f = tmpname()
assert(writeto(f))
write("a = {")
i = 1
repeat
  write("{", sin(i), ", ", cos(i), ", ", i/3, "},\n")
  i=i+1
until i >= 10000
write("}")
writeto()
assert(readfrom(f))
dostring(read'*a')
assert(readfrom())
assert(remove(f))

assert(eq(a[300][1], sin(300)))
assert(eq(a[3000][1], sin(3000)))
assert(eq(a[500][2], cos(500)))
assert(eq(a[5000][2], cos(5000)))
assert(eq(a[200][3], 200/3))
assert(eq(a[2000][3], 2000/3, 0.001))
print('+')

a = nil

randomseed(date'%S')

local i = 0
local Max = 0
local Min = 2
repeat
  local t = random()
  Max = max(Max, t)
  Min = min(Min, t)
  i=i+1
  flag = eq(Max, 1, 0.001) and eq(Min, 0, 0.001)
until flag or i>10000
assert(0 <= Min and Max<1)
assert(flag);

i=-1
while (i=i+1)<10 do
  local t = random(5)
  assert(1 <= t and t <= 5)
end

i = 0
Max = 0
Min = 200
repeat
  local t = random(10,20)
  Max = max(Max, t)
  Min = min(Min, t)
  i=i+1
  flag = (Max == 20 and Min == 10)
until flag or i>10000
assert(10 <= Min and Max<=20)
assert(flag);

print('OK')
