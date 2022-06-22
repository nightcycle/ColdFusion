local module = script.Parent
local StateFolder = module:WaitForChild("State")
local Mount = require(module:WaitForChild("Mount"))
return function()
	return {
		Value = require(StateFolder:WaitForChild("Value")),
		Computed = require(StateFolder:WaitForChild("Computed")),
		Property = require(StateFolder:WaitForChild("Property")),
		Attribute = require(StateFolder:WaitForChild("Attribute")),
		Tween = require(StateFolder:WaitForChild("Tween")),
		new = function(className: string)
			-- print("ClassName", className)
			return function(params: {any})
				-- print("Mounted params", params)
				local inst = Instance.new(className)
				return Mount(inst, params)
			end
		end,
		mount = Mount,
		Event = require(module:WaitForChild("Event")),
		Children = require(module:WaitForChild("Children")),
		Changed = require(module:WaitForChild("Changed")),
	}
end
