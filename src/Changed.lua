local State = require(script.Parent:WaitForChild("State"))
type State = State.State

local Changed = {}
Changed.__index = Changed
Changed.__type = "Changed"

function Changed.new(eventName: string)
	local self = setmetatable({
		Value = eventName,
	}, Changed)
	return self
end

return Changed.new