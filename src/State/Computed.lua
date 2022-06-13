--!nonstrict

--[[
	Constructs and returns objects which can be used to model derived reactive
	state.
]]

local src = script.Parent.Parent
local packages = src.Parent
local maidConstructor = require(packages:WaitForChild("maid"))

local Package = script.Parent.Parent
local Types = require(Package.Types)
local captureDependencies = require(Package.Dependencies.captureDependencies)
local initDependency = require(Package.Dependencies.initDependency)
local useDependency = require(Package.Dependencies.useDependency)
local logErrorNonFatal = require(Package.Logging.logErrorNonFatal)
local updateAll = require(Package.Dependencies.updateAll)

local Abstract = require(script.Parent:WaitForChild("Abstract"))
local class = {}
class.__index = class
setmetatable(class, Abstract)

--[[
	@startuml
	!theme crt-amber
	!include Abstract.lua
	class ComputedState {
		+ new(state1, state2 | nil, state3 | nil, ..., function): ComputedState
	}
	State <|-- ComputedState
	@enduml
]]--

--[[
	Returns the last cached value calculated by this Computed object.
	The computed object will be registered as a dependency unless `asDependency`
	is false.
]]
function class:Get(asDependency: boolean?): any
	if asDependency ~= false then
		useDependency(self)
	end
	if self._value == nil then
		return self:_GetAlt()
	else
		return self._value
	end
end

--[[
	Recalculates this Computed's cached value and dependencies.
	Returns true if it changed, or false if it's identical.
]]
function class:_update(): boolean
	if self._destroyed ~= false then return end
	-- remove this object from its dependencies' dependent sets
	for dependency in pairs(self.dependencySet) do
		if dependency._destroyed == false then
			dependency.dependentSet[self] = nil
		else
			self.dependencySet[dependency] = nil
		end
	end

	-- we need to create a new, empty dependency set to capture dependencies
	-- into, but in case there's an error, we want to restore our old set of
	-- dependencies. by using this table-swapping solution, we can avoid the
	-- overhead of allocating new tables each update.
	self._oldDependencySet, self.dependencySet = self.dependencySet, self._oldDependencySet
	table.clear(self.dependencySet)

	local ok, newValue = captureDependencies(self.dependencySet, self._callback)

	if ok then
		local oldValue = self._copy
		if self._SetValue then
			local isChanged = self:_IsValueChanged(newValue)
			-- print("IsChanged", isChanged, "With", oldValue, "vs", newValue)
			self:_SetValue(newValue)
			-- add this object to the dependencies' dependent sets
			for dependency in pairs(self.dependencySet) do
				dependency.dependentSet[self] = true
			end
			if isChanged then
				updateAll(self)
			end
			return isChanged
		end
	else
		-- this needs to be non-fatal, because otherwise it'd disrupt the
		-- update process
		logErrorNonFatal("computedCallbackError", newValue)

		-- restore old dependencies, because the new dependencies may be corrupt
		self._oldDependencySet, self.dependencySet = self.dependencySet, self._oldDependencySet

		-- restore this object in the dependencies' dependent sets
		for dependency in pairs(self.dependencySet) do
			dependency.dependentSet[self] = true
		end
		if self._Fire then
			self:_Fire()
		end
		return false
	end
end

local function Computed<T>(...: () -> T)
	local params = {...}
	local callback = params[#params]

	local self = Abstract.new("Computed", nil)
	setmetatable(self, class)
	self.dependencySet = {}
	self._oldDependencySet = {}
	self._callback = function()
		self._Maid._compMaid = maidConstructor.new()
		local vals = {}
		-- print("Params", params)
		for i=1, math.max(#params - 1, 0) do
			if params[i]._destroyed == false then
				if params[i].DeepGet and params[i]._isDeep then
					-- print("Deep")
					vals[i] = params[i]:DeepGet()
				else
					-- print("Get")
					vals[i] = params[i]:Get()
				end
			else
				self:Destroy()
				return
			end
		end
		-- print("Vals", table.unpack(vals))
		-- print("Vals2", table.unpack(vals))

		vals[#params] = self._Maid._compMaid
		-- table.insert(vals, self._Maid._compMaid)
		return callback(table.unpack(vals))

	end

	initDependency(self)
	self:_update()

	return self
end

return Computed