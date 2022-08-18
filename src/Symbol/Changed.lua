--!strict
local Symbol = require(script.Parent)

local Changed = {}
Changed.__index = Changed
setmetatable(Changed, Symbol)

export type Event = Symbol.Symbol & {
	_ColdFusionSymbolType: "Changed",
}
function Changed.new(eventName: string): Event
	local s: any = Symbol.new("Changed", eventName)
	setmetatable(s, Changed)
	return s
end

return Changed