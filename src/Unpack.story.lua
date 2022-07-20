--!nonstrict
return function (coreGui)
	local Computed = require(script.Parent:WaitForChild("State"):WaitForChild("Computed"))
	local Value = require(script.Parent:WaitForChild("State"):WaitForChild("Value"))

	local params = {
		Value.new(nil),
		Value.new(nil),
		Value.new(Color3.new(1,1,1)),
		Value.new(4),
	}
	local function test(a,b,c,d)
		print(a,b,c,d)
	end
	local _comp = Computed.new(params[1], params[2], params[3], params[4], test)
	params[4]:Set(5)
	local vals = {}
	for i, state in ipairs(params) do
		vals[i] = state:Get()
	end
	print("TEST 2")
	print(vals)
	print(unpack(vals, 1, #params))
	print(table.unpack(vals, 1, #params))
	test(unpack(vals))
	return function ()
		for i, v in ipairs(params) do
			v:Destroy()
		end
		_comp:Destroy()
	end
end