print("testando chamadas")
oldfb = seterrormethod(print)

function f(a,b,c) local d = 'a'; t={a,b,c,d} end

f(1,2)
assert(t[1] == 1 and t[2] == 2 and t[3] == nil and t[4] == 'a')
f(1,2,3,4)
assert(t[1] == 1 and t[2] == 2 and t[3] == 3 and t[4] == 'a')

function fat(x)
  return if x <= 1 then 1
  else x*dostring("return fat(" .. x-1 .. ")")
  end
end

assert(dostring "dostring 'assert(fat(6)==720)' ")
a,b = dostring('return fat(5), 3')
assert(a == 120 and b == 3)
print('+')

function err_on_n (n)
  if n==0 then error("+"); assert(nil);
  else err_on_n (n-1); assert(nil);
  end
end

function dummy (n)
  if n > 0 then
    %assert(%dostring("err_on_n(" .. n .. ")") == nil)
    dummy(n-1)
  end
end

dummy(10)

function deep (n)
  if n>0 then deep(n-1) end
end
deep(10)
deep(200)
assert(seterrormethod(oldfb) == print)
print('+')



-- testando closures

-- operador de ponto fixo
Y = function (le)
      local a = function (f)
                  return %le(function (x) return %f(%f)(x) end)
                end
      return a(a)
    end


-- fatorial sem recursao

F = function (f)
      return function (n)
               return if n == 0 then 1
               else n*%f(n-1) end
             end
    end

fat = Y(F)

assert(fat(0) == 1 and fat(4) == 24 and Y(F)(5)==5*Y(F)(4))

local g = function (z)
  local f = function (a,b,c,d)
    local z = %z
    return function (x,y) return %a+%b+%c+%d+%a+x+y+%z end
  end
  return f(z,z+1,z+2,z+3)
end

f = g(10)
assert(f(9, 16) == 10+11+12+13+10+9+16+10)

Y, F, f = nil
print('OK')

return deep
