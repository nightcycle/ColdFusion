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
local Observe = require(src.State.Observe)

local remotes = game.ReplicatedStorage:FindFirstChild("FusionRemotes")
if not remotes then
	if runService:IsClient() then
		remotes = game.ReplicatedStorage:WaitForChild("FusionRemotes")
	else
		remotes = Instance.new("Folder", game.ReplicatedStorage)
		remotes.Name = "FusionRemotes"
	end
end

function getRemoteEvent(key, clientWaitDuration)
	if runService:IsClient() then
		return remotes:WaitForChild(key, clientWaitDuration)
	else
		if remotes:FindFirstChild(key) then
			return remotes:FindFirstChild(key)
		else
			local newRemote = Instance.new("RemoteEvent", remotes)
			newRemote.Name = key
			return newRemote
		end
	end
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
	if t - self._lastFire < 1/self._rate then
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

function class:Destroy(destroyValue: boolean)
	if destroyValue then
		if self._value ~= nil and (type(self._value) == "table" or typeof(self._value) == "Instance") then
			if self._value.Destroy then
				self._value:Destroy()
			end
		end
	end
	if self._Maid then
		self._Maid:Destroy()
	end
	for k, v in pairs(self) do
		self[k] = nil
	end
	setmetatable(self, nil)
end


function class:_update(): boolean
	self:fire()
	return false
end

local function Transmit(watchedState, key: string, lockedPlayer: Player | nil, rate: number | nil)
	-- print("I")
	if runService:IsClient() then
		lockedPlayer = game.Players.LocalPlayer
	end
	local self = setmetatable({
		type = "State",
		kind = "Transmit",
		dependencySet = {[watchedState] = true},
		dependentSet = {},
		_lastFire = 0,
		_Maid = maidConstructor.new(),
		_state = watchedState,
		_player = lockedPlayer,
		_key = key,
		_rate = rate or 40,
		_changeListeners = {},
		_numChangeListeners = 0,
		_cleanUp = false, --whether it  cleans up old value when changing it
	}, CLASS_METATABLE)

	-- print("II")
	local event = getRemoteEvent(self._key)
	-- print("III")
	if runService:IsClient() then
		self._Maid:GiveTask(event.OnClientEvent:Connect(function(newVal)
			self:Fire()
		end))
	else
		self._Maid:GiveTask(event.OnServerEvent:Connect(function(plr, newVal)
			if self._player == nil or self._player == plr then
				self:Fire()
			end
		end))
	end
	self._Maid:GiveTask(Observe(watchedState):Connect(function()
		self:Fire()
	end))
	-- print("IV")
	initDependency(self)
	-- print("V")
	return self
end

return Transmit