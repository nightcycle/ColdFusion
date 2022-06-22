--!strict

local ReplicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService: RunService = game:GetService("RunService")
local Deprecated = require(script:WaitForChild("Deprecated"))

local RemoteFolder = ReplicatedStorage:FindFirstChild("ColdFusionRemotes") or Instance.new("Folder", ReplicatedStorage)
RemoteFolder.Name = "ColdFusionRemotes"

type State = {
	Get: <T>() -> any | nil,
	Destroy: <T>() -> nil,
}

type Maid = {
	DoCleaning: <T>() -> nil,
	GiveTask: <T>(any) -> nil,
	Destroy: <T>() -> nil,
}

local Util = {}
Util.__index = Util
setmetatable(Util, Deprecated)

function getRemoteEvent(remoteName)
	if RunService:IsClient() then
		return RemoteFolder:WaitForChild(remoteName)
	else
		if RemoteFolder:FindFirstChild(remoteName) then
			return RemoteFolder:FindFirstChild(remoteName)
		else
			local newRemote = Instance.new("RemoteEvent", RemoteFolder)
			newRemote.Name = remoteName
			return newRemote
		end
	end
end

function Util:_Fire(remoteName: string, id: string | nil, player: Player | nil): nil --fires event to server / client
	local remFunction = getRemoteEvent(remoteName)
	if RunService:IsServer() then
		if player then
			remFunction:FireClient(player, id, self:Get())
		else
			remFunction:FireAllClients(id, self:Get())
		end
	else
		remFunction:FireServer(id, self:Get())
	end
end

function Util:Else(alt: any | State): State
	if not self.Alive then return end
	local Computed = require(script.Parent:WaitForChild("Computed"))
	local compState = Computed(self, function(v)
		if v ~= nil then
			return v
		else
			return alt
		end
	end)
	compState:Bind(self)
	self._Maid:GiveTask(compState)
	return compState
end

function Util:Transmit(remoteName: string, id: string | nil, rate: number | nil, player: Player | nil): State --when value is changed it replicates
	if not self.Alive then return end

	local reload = if rate then 1/rate else 0
	local lastFire = 0
	self:Connect(function(cur, prev)
		local offset = tick() - lastFire
		if offset < reload then return end
		lastFire = tick()
		self:_Fire(remoteName, id, player)
	end)
	local pingRemFunction = getRemoteEvent(remoteName.."Ping")
	if RunService:IsServer() then
		self._Maid:GiveTask(pingRemFunction.OnServerEvent:Connect(function(plr: Player, pId)
			if (plr == player or not player) and pId == id then
				self:_Fire(remoteName, id, player)
			end
		end))
	else
		self._Maid:GiveTask(pingRemFunction.OnClientEvent:Connect(function(pId)
			if pId == id then
				self:_Fire(remoteName, id, player)
			end
		end))
	end
	self:_Fire(remoteName, id, player)

	return self
end

function Util:Receive(remoteName: string, id: string | nil, player: Player | nil): State
	if not self.Alive then return end
	local pingRemFunction = getRemoteEvent(remoteName.."Ping")
	local remFunction = getRemoteEvent(remoteName)
	if RunService:IsServer() then
		self._Maid:GiveTask(remFunction.OnServerEvent:Connect(function(plr: Player, pId, val)
			if (plr == player or not player) and pId == id then
				if self:_Set(val) then
					self:_UpdateDependants()
				end
			end
		end))
		if player then
			pingRemFunction:FireClient(player, id)
		else
			pingRemFunction:FireAllClients(player, id)
		end
	else
		self._Maid:GiveTask(remFunction.OnClientEvent:Connect(function(pId, val)
			if pId == id then
				if self:_Set(val) then
					self:_UpdateDependants()
				end
			end
		end))
		pingRemFunction:FireServer(id)
	end
end

function Util:CleanUp(): State --sets whether to attempt to fire destroy on the instance when state is destroyed
	if not self.Alive then return end
	local maid = self._Maid
	if not maid then return end

	maid:GiveTask(self:Connect(function(cur, prev)
		if prev then
			pcall(function()
				prev:Destroy()
			end)
		end
	end))
	return self
end

function Util:Delay(val: number | State | nil): State --delays until a later point to avoid updating multiple times per heartbeat
	if not self.Alive then return end
	rawset(self, "DelayAmount", val)
	return self
end

function Util:Tween(duration: number | State | nil, easingStyle: string | EnumItem | State | nil, easingDirection: string | EnumItem | State | nil): State
	if not self.Alive then return end
	local maid = self._Maid
	if not maid then return end
	local Tween = require(script.Parent:WaitForChild("Tween"))
	local tween = Tween(self, duration, easingStyle, easingDirection)
	maid:GiveTask(tween)
	return tween
end

function Util:SetParent(parent: Instance): State --changes the parent of the instance
	if not self.Alive then return end
	local inst: Folder | nil = self.Instance
	if inst then
		inst.Parent = parent
	end
	return self
end

function Util:SetId(key): State --changes the name of the instance
	if not self.Alive then return end
	key = tostring(key)
	rawset(self, "Id", key)
	local inst: Folder | nil = self.Instance
	if inst then
		inst.Name = key
	end
	return self
end


function Util:IsA(className: string)
	if className == "Isotope" then return true end
	if self.__type == className then return true end
	local checkList = {}
	local function getClasses(tabl)
		local meta = getmetatable(tabl)
		if meta and checkList[meta] == nil then
			checkList[meta] = true
			if meta.__type == className then
				return true
			else
				return getClasses(meta)
			end
		end
		return false
	end
	return getClasses(self)
end


return Util