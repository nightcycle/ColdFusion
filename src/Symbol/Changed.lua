--!strict
local Symbol = require(script.Parent)

local Changed = {}
Changed.__index = Changed
setmetatable(Changed, Symbol)

export type Event = Symbol.Symbol & {
	_ColdFusionSymbolType: "Changed",
}

export type Constructor = (propertyName: string) -> Event


function Changed.new(propertyName: string): Event
	local s: any = Symbol.new("Changed", propertyName)
	setmetatable(s, Changed)
	return s
end

return Changed