--!strict
local Symbol = {}
Symbol.__index = Symbol
Symbol.__type = "Symbol"

function Symbol:IsA(symbolType: string)
	return self._ColdFusionSymbolType == symbolType
end

export type Symbol = {
	_ColdFusionSymbolType: string,
	Destroy: (Symbol) -> nil,
	Value: string,
}

function Symbol:Destroy()
	local tabl: any = self
	for k, v in pairs(tabl) do
		tabl[k] = nil
	end
	setmetatable(tabl, nil)
end

function Symbol.new(symbolType: string, eventName: string): Symbol
	local self: any = setmetatable({
		_ColdFusionSymbolType = symbolType,
		Value = eventName,
	}, Symbol)
	return self
end

return Symbol