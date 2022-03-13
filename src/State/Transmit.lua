--!nonstrict

--[[
	Constructs a new state object which can listen for updates on another state
	object.

	FIXME: enabling strict types here causes free types to leak
]]
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

local fusion = script.Parent.Parent
local PubTypes = require(fusion.PubTypes)
local Types = require(fusion.Types)
local initDependency = require(fusion.Dependencies.initDependency)

type Set<T> = {[T]: any}

local class = {}
local CLASS_METATABLE = {__index = class}

-- Table used to hold Observe objects in memory.
local strongRefs: Set<Types.Observe> = {}

--[[
	Called when the watched state changes value.
]]

function class:Fire()
	local t = tick()
	if t - self._lastFire < 1/self.rate then
		return
	end
	self._lastFire = t
	local event = getRemoteEvent(self._key)
	local value = self._state:get()
	if runService:IsServer() then
		if self._player then
			event:FireClient(self._player, value)
		else
			event:FireAllClients(value)
		end
	else
		event:FireServer(value)
	end
end

function class:fire()
	return self:Fire()
end

function class:Destroy()
	self._maid:Destroy()
	for k, v in pairs(self) do
		self[k] = nil
	end
end

function class:update(): boolean
	self:fire()
	return false
end

local function Transmit(watchedState, key: string, lockedPlayer: Player | nil, rate: number | nil)
	if runService:IsClient() then
		lockedPlayer = game.Players.LocalPlayer
	end
	local self = setmetatable({
		type = "State",
		kind = "Transmit",
		dependencySet = {[watchedState] = true},
		dependentSet = {},
		_lastFire = 0,
		_maid = maidConstructor.new(),
		_state = watchedState,
		_player = lockedPlayer,
		_key = key,
		_rate = rate or 40,
		_changeListeners = {},
		_numChangeListeners = 0,
	}, CLASS_METATABLE)

	
	local event = getRemoteEvent(self.__key)
	if runService:IsClient() then
		self._maid:GiveTask(event.OnClientEvent:Connect(function(newVal)
			self:Fire()
		end))
	else
		self._maid:GiveTask(event.OnServerEvent:Connect(function(plr, newVal)
			if self._player == nil or self._player == plr then
				self:Fire()
			end
		end))
	end

	initDependency(self)

	return self
end

return Transmit