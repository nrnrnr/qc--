
t = newtag(); a = {}; settag(a, t)

function f (a)
  %write(_STDERR, '.')
  %settag({}, %tag(a))
end

settagmethod(t, 'gc', f)
t = nil; a = nil; f = nil
