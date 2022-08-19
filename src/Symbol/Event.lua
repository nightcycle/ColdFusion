--!strict
local Symbol = require(script.Parent)

local Event = {}
Event.__index = Event
setmetatable(Event, Symbol)

export type Event = Symbol.Symbol & {
	_ColdFusionSymbolType: "Event",
}

export type Constructor = (eventName: string) -> Event

Event.new = function(eventName: string): Event
	local s: any = Symbol.new("Event", eventName)
	setmetatable(s, Event)
	return s
end :: Constructor

return Event