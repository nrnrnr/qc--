-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- with help from Roberto Ierusalimschy

-- set up a simple object inheritance
function myindex (object, field)
    if field ~= "parent" then
        local p = object.parent
        return p and p[field]
    end
end
setfallback("index", myindex)


--------------------------------------------------------------
-- Toggle module
--------------------------------------------------------------

function tval(self)
	    return self.bool
	end
function tact(self)
	    self.bool = not self.bool
	    return self
	end

function new_Toggle(start_state)
    return {
	bool = start_state,
	value = tval,
	activate = tact
    }
end

--------------------------------------------------------------
-- NthToggle module
--------------------------------------------------------------

function nact(self)
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
	activate = nact
    }
end

-----------------------------------------------------------
-- main
-----------------------------------------------------------

function main ()
    local N = tonumber((arg and arg[1])) or 1
    local toggle = new_Toggle(1)
    local i = 1; while i <= 5 do i = i + 1
	toggle:activate()
	if toggle:value() then write("true\n") else write("false\n") end
    end
    local i = 1; while i <= N do i = i + 1
	toggle = new_Toggle(1)
    end

    write("\n")

    local ntoggle = new_NthToggle(1, 3)
    local i = 1; while i <= 8 do i = i + 1
	ntoggle:activate()
	if ntoggle:value() then write("true\n") else write("false\n") end
    end
    local i = 1; while i <= N do i = i + 1
	ntoggle = new_NthToggle(1, 3)
    end
end

main()
