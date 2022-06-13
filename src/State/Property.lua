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
local useDependency = require(fusion.Dependencies.useDependency)
local initDependency = require(fusion.Dependencies.initDependency)
local updateAll = require(fusion.Dependencies.updateAll)
local Value = require(fusion.State.Value)

local Abstract = require(script.Parent:WaitForChild("Abstract"))
local class = {}
class.__index = class
setmetatable(class, Abstract)

--[[
	@startuml
	!theme crt-amber
	!include Abstract.lua
	class PropertyState {
		+ new(inst: Instance | State, propertyName: string): PropertyState
	}
	State <|-- PropertyState
	@enduml
]]--

local Abstract = require(script.Parent:WaitForChild("Abstract"))
setmetatable(class, Abstract)

--[[
	Returns the value currently stored in this State object.
	The state object will be registered as a dependency unless `asDependency` is
	false.
]]
function class:Get(asDependency: boolean?): any
	if asDependency ~= false then
		useDependency(self)
	end

	if self._value == nil then
		return self:_GetAlt()
	else
		if type(self._value) == "table" and self._value.type == "State" then
			local val = self._value:Get()
			if val == nil then
				return self:_GetAlt()
			else
				return val
			end
		else
			return self._value
		end
	end

end

local function Property(instOrState, propName: string, refreshRate: number | nil)

	local instValue = if type(instOrState) == "table" then instOrState else Value(instOrState)

	local self = Abstract.new("Property", if instValue:Get() then instValue:Get()[propName] else nil)
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
		if not inst then self._Maid.Event = nil return end
		local type = typeof(inst[propName])
		if refreshRate then
			-- print("Feelin fresh", inst:GetFullName())
			local lastBeat = tick()
			self._Maid.Event = runService.Heartbeat:Connect(function(dt)
				if 1/refreshRate < tick() - lastBeat then
					lastBeat = tick()
					-- print("Update", propName)
					set(inst[propName])
				end
			end)
		else
			-- print("What refresh rate", inst:GetFullName(), propName)
			self._Maid.Event = inst:GetPropertyChangedSignal(propName):Connect(function()
				set(inst[propName])
			end)
			set(inst[propName])
		end
	end
	
	self._Maid:GiveTask(instValue:Connect(init))
	init()
	
	initDependency(self)

	return self
end

return Property