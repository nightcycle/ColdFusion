return function (coreGui)
	local Computed = require(script.Parent:WaitForChild("State"):WaitForChild("Computed"))
	local Value = require(script.Parent:WaitForChild("State"):WaitForChild("Value"))

	local params = {
		Value(nil),
		Value(nil),
		Value(Color3.new(1,1,1)),
		Value(4),
	}
	local function test(a,b,c,d)
		print(a,b,c,d)
	end
	local comp = Computed(params[1], params[2], params[3], params[4], test)
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
		
	end
end