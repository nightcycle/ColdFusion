
--!strict
local State = require(script.Parent)
export type State = State.State
export type ValueState = {
	Set: (self: ValueState, val: any | State) -> nil,
	Update: (self: ValueState, (self: ValueState) -> nil) -> nil,
} & State

local Value = {}
Value.__index = Value
Value.__type = "Value"

function Value:Set(val: any | State)
	if self:_Set(val) then
		self:_UpdateDependants()
	end
end

function Value:Update(func)
	assert(typeof(func) == "function", "Bad function")
	self:Set(func(self:Get()))
end

function Value.new(...)
	local self = State.new(...)
	setmetatable(self, Value)
	self.Instance.Name = Value.__type
	return self
end

export type ValueState = typeof(Value.new())

setmetatable(Value, State)
return Value