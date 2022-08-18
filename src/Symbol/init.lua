--!strict
local Symbol = {}
Symbol.__index = Symbol
Symbol.__type = "Symbol"

function Symbol:IsA(symbolType: string)
	return self._ColdFusionSymbolType == symbolType
end

export type Symbol = {
	_ColdFusionSymbolType: string,
	Value: string,
}
function Symbol.new(symbolType: string, eventName: string): Symbol
	local self: any = setmetatable({
		_ColdFusionSymbolType = symbolType,
		Value = eventName,
	}, Symbol)
	return self
end

return Symbol