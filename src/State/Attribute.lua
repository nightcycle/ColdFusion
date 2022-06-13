--!nonstrict

--[[
	Constructs and returns objects which can be used to model independent
	reactive state.
]]
local runService = game:GetService("RunService")

-- Used to create a tunnel between client and server
local src = script.Parent.Parent
local packages = src.Parent
local maidConstructor = require(packages:WaitForChild("maid"))

local fusion = script.Parent.Parent
local Types = require(fusion.Types)
local useDependency = require(fusion.Dependencies.useDependency)
local initDependency = require(fusion.Dependencies.initDependency)
local updateAll = require(fusion.Dependencies.updateAll)
local Value = require(fusion.State.Value)

local Abstract = require(script.Parent:WaitForChild("Abstract"))
local class = {}
class.__index = class
setmetatable(class, Abstract)

local WEAK_KEYS_METATABLE = {__mode = "k"}

--[[
	@startuml
	!theme crt-amber
	!include Abstract.lua
	class AttributeState {
		+ new(inst: Instance | State, attributeName: string): AttributeState
	}
	State <|-- AttributeState
	@enduml
]]--


--[[
	Returns the value currently stored in this State object.
	The state object will be registered as a dependency unless `asDependency` is
	false.
]]
function class:Get(asDependency: boolean?): any
	-- print("Getting attribute", self)
	if asDependency ~= false then
		useDependency(self)
	end
	if self._value == nil then
		return self:_GetAlt()
	else
		return self._value
	end
end

local function Attribute(instOrState, attrName: string)
	local instValue = if type(instOrState) == "table" then instOrState else Value(instOrState)
	local self = Abstract.new("Attribute", if instValue:Get() then instValue:Get():GetAttribute(attrName) else nil)
	setmetatable(self, class)
	local function set(newValue: any)
		-- if the value hasn't changed, no need to perform extra work here
		if self._value == newValue then
			return
		end
	
		self:_SetValue(newValue)
		-- update any derived state objects if necessary
		updateAll(self)
	end

	local function init()

		local inst = instValue:Get()
		if inst then
			self._Maid.Event = inst:GetAttributeChangedSignal(attrName):Connect(function()
				set(inst:GetAttribute(attrName))
			end)
			set(inst:GetAttribute(attrName))
		end
	end
	
	self._Maid:GiveTask(instValue:Connect(init))
	init()

	initDependency(self)

	return self
end

return Attribute