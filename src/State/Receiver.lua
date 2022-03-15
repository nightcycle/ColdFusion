local runService = game:GetService("RunService")

-- Used to create a tunnel between client and server
local src = script.Parent.Parent
local packages = src.Parent
local maidConstructor = require(packages:WaitForChild("maid"))

local remotes = game.ReplicatedStorage:FindFirstChild("FusionRemotes")
if not remotes then
	if runService:IsClient() then
		remotes = game.ReplicatedStorage:WaitForChild("FusionRemotes")
	else
		remotes = Instance.new("Folder", game.ReplicatedStorage)
		remotes.Name = "FusionRemotes"
	end
end
function findFirstChildOfClass(inst, name, className)
	for i, child in ipairs(inst:GetChildren()) do
		if child.Name == name and inst.ClassName == className then
			return inst
		end
	end
end
function waitForChildOfClass(inst, name, className, duration)
	local result = findFirstChildOfClass(inst, name, className)
	if not result then
		local startTick = tick()
		local function waitForChild()
			inst.ChildAdded:wait()
			result = findFirstChildOfClass(inst, name, className)
			if result == nil and duration ~= nil and tick() - startTick < duration then 
				return waitForChild()
			end
		end
		waitForChild()
	end
	return result
end
function getInst(className, parent, key, clientWaitDuration)
	if runService:IsClient() then
		return waitForChildOfClass(parent, key, className, clientWaitDuration)
	else
		local inst = findFirstChildOfClass(parent, key, className)
		if not inst then
			inst = Instance.new(className, parent)
			inst.Name = key
		end
		return inst
	end
end
function getRemoteEvent(key, clientWaitDuration)
	return getInst("RemoteEvent", remotes, key, clientWaitDuration)
end

local class = {}

local fusion = script.Parent.Parent
local CLASS_METATABLE = {__index = class}
local WEAK_KEYS_METATABLE = {__mode = "k"}
local PubTypes = require(fusion.PubTypes)
local Types = require(fusion.Types)
local useDependency = require(fusion.Dependencies.useDependency)
local initDependency = require(fusion.Dependencies.initDependency)
local updateAll = require(fusion.Dependencies.updateAll)

function class:Destroy()
	self._maid:Destroy()
	for k, v in pairs(self) do
		self[k] = nil
	end
end

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

--[[
	Updates the value stored in this State object.

	If `force` is enabled, this will skip equality checks and always update the
	state object and any dependents - use this with care as this can lead to
	unnecessary updates.
]]
function class:Set(newValue: any, force: boolean?)
	-- if the value hasn't changed, no need to perform extra work here
	if self._value == newValue and not force then
		return
	end

	self._value = newValue

	-- update any derived state objects if necessary
	updateAll(self)
end

function class:set(...)
	return self:Set(...)
end

function class:Ping()
	local event = getRemoteEvent(self._key)
	if runService:IsClient() then
		event:FireServer()
	else
		event:FireClient(self._player)
	end
end

function class:ping()
	return self:Ping()
end

local function Receiver<T>(key: string, lockedPlayer: Player | nil): Types.State<T>
	local self = setmetatable({
		type = "State",
		kind = "Receiver",
		-- if we held strong references to the dependents, then they wouldn't be
		-- able to get garbage collected when they fall out of scope
		dependentSet = setmetatable({}, WEAK_KEYS_METATABLE),
		_player = lockedPlayer,
		_key = key,
		_maid = maidConstructor.new(),
		_value = nil
	}, CLASS_METATABLE)

	local event = getRemoteEvent(self._key)
	if runService:IsClient() then
		self._maid:GiveTask(event.OnClientEvent:Connect(function(newVal)
			self:Set(newVal)
		end))
	else
		self._maid:GiveTask(event.OnServerEvent:Connect(function(plr, newVal)
			if self._player == nil or self._player == plr then
				self:Set(newVal)
			end
		end))
	end

	initDependency(self)
	
	self:Ping()

	return self
end

return Receiver
