-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- with help from Roberto Ierusalimschy

-- set up a simple object inheritance
function myinherit(object, field)
    if field ~= "parent" then
        local p = object.parent
        return p and p[field]
    end
end
setfallback("index", myinherit)


--------------------------------------------------------------
-- Toggle module
--------------------------------------------------------------

function togglefun (self) return self.bool end
function toggleact (self) self.bool = not self.bool; return self end

function new_Toggle(start_state)
    return {
	bool = start_state,
	value = togglefun,
	activate = toggleact,
    }
end

--------------------------------------------------------------
-- NthToggle module
--------------------------------------------------------------

function nthact(self)
	    self.counter = self.counter + 1
	    if self.counter >= self.count_max then
		self.parent:activate()
		self.counter = 0
	    end
	    return self
	end

function new_NthToggle(start_state, max_counter)
    return {
	parent = new_Toggle(start_state),
	count_max = max_counter,
	counter = 0,
	activate = nthact
    }
end

-----------------------------------------------------------
-- main
-----------------------------------------------------------

function main ()
    local N = tonumber((arg and arg[1])) or 1

    local val = 1
    local toggle = new_Toggle(val)
    local i = 1
    while i <= N do
        local tmp = toggle:activate()
	val = tmp:value()
        i = i + 1
    end
    if toggle:value() then write("true\n") else write("false\n") end
    
    val = 1
    local ntoggle = new_NthToggle(val, 3)
    i = 1
    while i <= N do
	local tmp = ntoggle:activate()
	val = tmp:value()
        i = i + 1
    end
    if ntoggle:value() then write("true\n") else write("false\n") end
end

main()
