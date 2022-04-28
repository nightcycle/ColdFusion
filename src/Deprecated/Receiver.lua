local runService = game:GetService("RunService")

-- Used to create a tunnel between client and server
local src = script.Parent.Parent
local packages = src.Parent
local maidConstructor = require(packages:WaitForChild("maid"))

local class = {}

local fusion = script.Parent.Parent
local Abstract = require(script.Parent:WaitForChild("Abstract"))
local Types = require(fusion.Types)
local useDependency = require(fusion.Dependencies.useDependency)
local initDependency = require(fusion.Dependencies.initDependency)
local updateAll = require(fusion.Dependencies.updateAll)

class.__index = class
setmetatable(class, Abstract)

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

	self:_SetValue(newValue)

	-- update any derived state objects if necessary
	updateAll(self)
end

function class:Ping()
	local event = self.getRemoteEvent(self._transmitName..tostring(self._transmitId or ""))
	if runService:IsClient() then
		event:FireServer()
	else
		event:FireClient(self._player)
	end
end

local function Receiver<T>(name: string, id: string | nil, lockedPlayer: Player | nil): Types.State<T>
	local self = Abstract.new("Receiver", nil)
	setmetatable(self, class)
	self._transmitName = name
	self._transmitId = id
	self._transmitPlayer = lockedPlayer

	local event = self.getRemoteEvent(self._transmitName..tostring(self._transmitId or ""))
	if runService:IsClient() then
		self._Maid:GiveTask(event.OnClientEvent:Connect(function(newVal)
			self:Set(newVal)
		end))
	else
		self._Maid:GiveTask(event.OnServerEvent:Connect(function(plr, newVal)
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
