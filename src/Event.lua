local State = require(script.Parent:WaitForChild("State"))
type State = State.State

local Event = {}
Event.__index = Event
Event.__type = "Event"

function Event.new(eventName: string)
	local self = setmetatable({
		Value = eventName,
	}, Event)
	return self
end

return Event.new