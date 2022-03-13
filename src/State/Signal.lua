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
local observe = require(fusion.State.Observe)

local class = {}

local CLASS_METATABLE = {__index = class}
local WEAK_KEYS_METATABLE = {__mode = "k"}

--[[
	Returns the value currently stored in this State object.
	The state object will be registered as a dependency unless `asDependency` is
	false.
]]
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

function class:get(...)
	return class:Get(...)
end

function class:Destroy()
	self._maid:Destroy()
	for k, v in pairs(self) do
		self[k] = nil
	end
end

local function Signal(eventOrEventState, initialValue)
	local self = setmetatable({
		type = "State",
		kind = "Signal",
		_maid = maidConstructor.new(),
		-- if we held strong references to the dependents, then they wouldn't be
		-- able to get garbage collected when they fall out of scope
		dependentSet = setmetatable({}, WEAK_KEYS_METATABLE),
		_value = initialValue,
	}, CLASS_METATABLE)

	local function set(newValue: any)
		-- if the value hasn't changed, no need to perform extra work here
		if self._value == newValue then
			return
		end
	
		self._value = newValue
	
		-- update any derived state objects if necessary
		updateAll(self)
	end
	
	if typeof(eventOrEventState) == "RBXScriptSignal" then --is event
		local event = eventOrEventState
		self._maid:GiveTask(event:Connect(function(val)
			set(val)
		end))
	else
		self._maid:GiveTask(observe(eventOrEventState):Connect(function()
			local event = eventOrEventState:Get()
			if event then
				self._maid._event = event:Connect(function(val)
					set(val)
				end)
			else
				self._maid._event = nil
			end
		end))
	end

	initDependency(self)

	return self
end

return Signal