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


function Util:_Ping(): nil --gets value from server
	if not self.Alive then return end
end

function Util:_Fire(): nil --fires event to server / client
	if not self.Alive then return end
end

function Util:Else(val: any | State): State
	if not self.Alive then return end
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
	self.DelayAmount = val
	return self
end

function Util:Transmit(remoteName: string, player: Player | nil, id: string | nil, rate: number | nil): State --when value is changed it replicates
	if not self.Alive then return end
end

function Util:Receive(remoteName: string, player: Player | nil, id: string | nil): State
	if not self.Alive then return end
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

function Util:Spring(speed: number, damping: number): State
	if not self.Alive then return end

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


function Util:IsA(className: string): boolean --gets if a type is valid
	if not self.Alive then return false end
	return true
end

function Util:Type(...) --assigns a list of valid types
	if not self.Alive then return end
end


return Util