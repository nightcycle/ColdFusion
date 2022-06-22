
--!strict
local State = require(script.Parent)
export type State = State.State

local Value = {}
Value.__index = Value
Value.__type = "Value"

function Value:Set(val: any | State)
	self:_Set(val)
end

function Value.new(...)
	local self = State.new(...)
	setmetatable(self, Value)
	self.Instance.Name = Value.__type
	return self
end

setmetatable(Value, State)
return Value.new