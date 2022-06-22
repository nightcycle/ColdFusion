local State = require(script.Parent:WaitForChild("State"))
type State = State.State

local Event = {}
Event.__index = Event
Event.__type = "Event"

function Event:IsA(className: string)
	return Event.__type == className
end

function Event.new(eventName: string)
	local self = setmetatable({
		Value = eventName,
	}, Event)
	return self
end

return Event.new