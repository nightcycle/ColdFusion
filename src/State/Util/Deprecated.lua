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

function Deprecated:Lock(): State
	return self
end

function Deprecated:Unlock(): State
	return self
end

function Deprecated:IsDeep(): State
	return self
end

function Deprecated:_Ping(): State
	return self
end

function Deprecated:Type(...): State
	return self
end

return Deprecated