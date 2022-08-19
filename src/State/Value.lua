
--!strict
local State = require(script.Parent.State)
type State<T> = State.State<T>
export type ValueState<T> = {
	Set: (self: ValueState<T>, val: T | State<T>) -> nil,
	Update: (self: ValueState<T>, (T) -> T) -> nil,
} & State<T>

local Value = {}
Value.__index = Value
Value.__type = "Value"

function Value:Set<T>(val: (any | State<T>))
	if self:_Set(val) then
		self:_UpdateDependants()
	end
end


function Value:set(...): any? --for fusion compatibility
	return self:Set(...)
end

function Value:Update(func)
	assert(typeof(func) == "function", "Bad function")
	self:Set(func(self:Get()))
end

export type Constructor = <T>(T) -> ValueState<T>

Value.new = function <T>(v: T): ValueState<T>
	local self = State.new(v)
	setmetatable(self, Value)
	self.Instance.Name = Value.__type
	local output: any = self
	return output
end :: Constructor

setmetatable(Value, State)
return Value