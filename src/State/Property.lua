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
local Value = require(fusion.State.Value)

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
	return self:Get(...)
end

function class:Destroy()
	self._maid:Destroy()
end

local function Property(instOrState, propName: string, refreshRate: number | nil)

	local instValue = if type(instOrState) == "table" then instOrState else Value(instOrState)
	-- print("Property init", instOrState, propName, refreshRate)
	local self = setmetatable({
		type = "State",
		kind = "Property",
		_maid = maidConstructor.new(),
		-- if we held strong references to the dependents, then they wouldn't be
		-- able to get garbage collected when they fall out of scope
		dependentSet = setmetatable({}, WEAK_KEYS_METATABLE),
		_value = if instValue:Get() then instValue:Get()[propName] else nil,
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

	local function init()
		local inst = instValue:Get()
		if not inst then self._maid.Event = nil return end
		local type = typeof(inst[propName])
		if refreshRate then
			-- print("Feelin fresh", inst:GetFullName())
			local lastBeat = tick()
			self._maid.Event = runService.Heartbeat:Connect(function(dt)
				if 1/refreshRate < tick() - lastBeat then
					lastBeat = tick()
					-- print("Update", propName)
					set(inst[propName])
				end
			end)
		else
			-- print("What refresh rate", inst:GetFullName(), propName)
			self._maid.Event = inst:GetPropertyChangedSignal(propName):Connect(function()
				set(inst[propName])
			end)
		end
	end
	
	self._maid:GiveTask(observe(instValue):Connect(init))
	init()
	
	initDependency(self)

	return self
end

return Property