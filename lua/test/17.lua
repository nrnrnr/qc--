print("testando $if's")
prog = tmpname()

function criaprog(s)
  assert(writeto(prog))
  assert(write(gsub(s, " %$", "$")))
  assert(writeto())
end

criaprog([[
 $if nil
 $endinput
 $end
 $if a
x = 20
_b = 10
 $if _b
y = 30
 $else
y = 100
 $end
 $	ifnot c
z = 40
 $end
 $else
w = 1
 $end
a = [[1
 $if s
2
 $	end	
3]]
]])

x = nil; y = nil; z = nil; w = nil
s = nil
a = nil
dofile(prog)
assert(x == nil and y == nil and z == nil and w == 1)
assert(a == "1\n3")

x = nil; y = nil; z = nil; w = nil
a = nil; _b = 1; c = 1
s = 1
dofile(prog)
assert(x == nil and y == nil and z == nil and w == 1)
assert(a == "1\n2\n3")

x = nil; y = nil; z = nil; w = nil
a = 1; _b = nil; c = 1
dofile(prog)
assert(x == 20 and y == 100 and z == nil and w == nil)
print('+')

x = nil; y = nil; z = nil; w = nil
a = 1; _b = 1; c = 1
dofile(prog)
assert(x == 20 and y == 30 and z == nil and w == nil)

x = nil; y = nil; z = nil; w = nil
a = 1; _b = {}; c = nil
dofile(prog)
assert(x == 20 and y == 30 and z == 40 and w == nil)

remove(prog)
print('+')

$	ifnot 1
assert(nil)
$end

$ if	 nil
assert(nil)
$	   end

a = nil
$ if 1
a = 1
$end
assert(a==1)

print('OK')

$if nil
bobagens que nao devem dar erro
$else
$endinput

aqui vem
$um monte de bobagens
$$$
e sem o $if!!!
