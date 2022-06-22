--!nonstrict

--[[
	Constructs and returns objects which can be used to model independent
	reactive state.
]]

local Package = script.Parent.Parent
local Types = require(Package.Types)
local useDependency = require(Package.Dependencies.useDependency)
local initDependency = require(Package.Dependencies.initDependency)
local updateAll = require(Package.Dependencies.updateAll)

local Abstract = require(script.Parent:WaitForChild("Abstract"))
local class = {}
class.__index = class
setmetatable(class, Abstract)

--[[
	@startuml
	!theme crt-amber
	!include Abstract.lua
	class ValueState {
		+ new(initial: any | nil): ValueState
	}
	State <|-- ValueState
	@enduml
]]--

function class:DeepGet(asDependency: boolean?)
	if asDependency ~= false then
		useDependency(self)
	end
	-- print("Deep get received")
	if type(self._value) == "table" and self._value.type == "State" then
		-- print("Found gettable table")
		if self._value.DeepGet and self._value._isDeep then
			-- print("Performed deep get")
			return self._value:DeepGet(asDependency)
		else
			-- print("Performed get")
			return self._value:Get(asDependency)
		end
	else
		-- print("Returning ", self._value)
		if self._value == nil then
			return self:_GetAlt()
		else
			return self._value
		end
	end
end

function class:Get(asDependency: boolean?): any
	if self._value == nil then
		return self:_GetAlt()
	else
		if self._isDeep then
			return self:DeepGet(asDependency)
		else
			local val = self._value
			if asDependency ~= false then
				useDependency(self)
			end
			if val == nil then
				return self:_GetAlt()
			else
				return self._value
			end
		end
	end
end

function class:Update(func)
	-- print("Update state called")
	local val = func(self:Get())
	-- print("Setting new val", val)
	self:Set(val)
end

function class:Set(newValue: any, force: boolean?)
	-- warn("Setting value", newValue, "cur", self._copy)
	-- if the value hasn't changed, no need to perform extra work here
	if self:_IsValueEqual(newValue) and not force then
		-- print("It's equal")
		return
	end
	-- print("Time to update everyone else!")
	self:_SetValue(newValue)
	-- update any derived state objects if necessary
	updateAll(self)
end

local function Value<T>(initialValue: T)
	local self = Abstract.new("Value", initialValue)
	setmetatable(self, class)
	initDependency(self)
	return self
end

return Value