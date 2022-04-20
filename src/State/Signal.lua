--!nonstrict

--[[
	Constructs and returns objects which can be used to model independent
	reactive state.
]]
local runService = game:GetService("RunService")

-- Used to create a tunnel between client and server
local fusion = script.Parent.Parent
local useDependency = require(fusion.Dependencies.useDependency)
local initDependency = require(fusion.Dependencies.initDependency)
local updateAll = require(fusion.Dependencies.updateAll)

local Abstract = require(script.Parent:WaitForChild("Abstract"))
local class = {}
class.__index = class
setmetatable(class, Abstract)

--[[
	@startuml
	!theme crt-amber
	!include Abstract.lua
	class SignalState {
		+ new(event: Event | State): SignalState
	}
	State <|-- SignalState
	@enduml
]]--

function class:Get(asDependency: boolean?): any
	if asDependency ~= false then
		useDependency(self)
	end
	if type(self._value) == "table" and self._value.Get ~= nil then
		return self._value:Get()
	else
		return self._value
	end
end

local function Signal(eventOrEventState, initialValue)
	local self = Abstract.new("Signal", initialValue)
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
	
	if typeof(eventOrEventState) == "RBXScriptSignal"
	or (typeof(eventOrEventState) == "table" and eventOrEventState.ClassName == "Signal") then --is event
		local event = eventOrEventState
		self._Maid:GiveTask(event:Connect(function(val)
			set(val)
		end))
	else
		local eventState = eventOrEventState
		-- print("Loading up signal")
		if eventState:Get() ~= nil then
			self._Maid._event = eventState:Get():Connect(function(val)
				-- print("original update")
				set(val)
			end)
		end

		self._Maid:GiveTask(eventState:Connect(function()
			-- print("Updating event")
			local event = eventState:Get()
			if event then
				-- print("A")
				self._Maid._event = event:Connect(function(val)
					-- print("update")
					set(val)
				end)
			else
				-- print("B")
				self._Maid._event = nil
			end
		end))
	end

	initDependency(self)

	return self
end

return Signal