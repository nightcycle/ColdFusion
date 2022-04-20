--!nonstrict

--[[
	Constructs a new state object which can listen for updates on another state
	object.

	FIXME: enabling strict types here causes free types to leak
]]

local Package = script.Parent.Parent
local Types = require(Package.Types)
local initDependency = require(Package.Dependencies.initDependency)

type Set<T> = {[T]: any}

local class = {}
local Abstract = require(script.Parent:WaitForChild("Abstract"))
local CLASS_METATABLE = setmetatable({__index = class}, Abstract)

-- Table used to hold Observe objects in memory.
local strongRefs: Set<Types.Observe> = {}

--[[
	Called when the watched state changes value.
]]
function class:update(): boolean
	for _, callback in pairs(self._changeListeners) do
		task.spawn(callback)
	end
	return false
end

--[[
	Adds a change listener. When the watched state changes value, the listener
	will be fired.

	Returns a function which, when called, will disconnect the change listener.
	As long as there is at least one active change listener, this Observe
	will be held in memory, preventing GC, so disconnecting is important.
]]
function class:Connect(callback: () -> ()): () -> ()
	local uniqueIdentifier = {}

	self._numChangeListeners += 1
	self._changeListeners[uniqueIdentifier] = callback

	-- disallow gc (this is important to make sure changes are received)
	strongRefs[self] = true

	local disconnected = false
	return function()
		if disconnected then
			return
		end
		disconnected = true
		self._changeListeners[uniqueIdentifier] = nil
		self._numChangeListeners -= 1

		if self._numChangeListeners == 0 then
			-- allow gc if all listeners are disconnected
			strongRefs[self] = nil
		end
	end
end

function class:onChange(...)
	return self:Connect(...)
end

local function Observe(watchedState): Types.Observe
	local self = Abstract.new("Observe", nil)
	local self = setmetatable({
		type = "State",
		kind = "Observe",
		dependencySet = {[watchedState] = true},
		dependentSet = {},
		_changeListeners = {},
		_numChangeListeners = 0,
		_cleanUp = false, --whether it  cleans up old value when changing it
	}, CLASS_METATABLE)

	initDependency(self)
	-- add this object to the watched state's dependent set
	watchedState.dependentSet[self] = true

	return self
end

return Observe