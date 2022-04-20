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
	if type(self._value) == "table" and self._value.Get ~= nil then
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
		return self._value
	end
end

function class:Get(asDependency: boolean?): any
	if self._isDeep then
		return self:DeepGet(asDependency)
	else
		if asDependency ~= false then
			useDependency(self)
		end
		return self._value
	end
end

function class:Set(newValue: any, force: boolean?)
	-- if the value hasn't changed, no need to perform extra work here
	if self._value == newValue and not force then
		return
	end

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