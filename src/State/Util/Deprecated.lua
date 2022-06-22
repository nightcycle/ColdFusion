--!strict
--!strict

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService: RunService = game:GetService("RunService")

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

local Deprecated = {}
Deprecated.__index = Deprecated

function Deprecated:Lock(): State --makes it undestroyable
	return self
end

function Deprecated:Unlock(): State --makes it destroyable
	return self
end

function Deprecated:IsDeep(): State --tells state that the stored value is a state
	return self
end

return Deprecated