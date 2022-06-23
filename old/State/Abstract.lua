local runService = game:GetService("RunService")

local src = script.Parent.Parent
local packages = src.Parent
local maidConstructor = require(packages:WaitForChild("maid"))
local signalConstructor = require(packages:WaitForChild("signal"))
local animation = src:WaitForChild("Animation")


local remotes = game.ReplicatedStorage:FindFirstChild("ColdFusionRemotes")
local isEdit = false
local success, msg = pcall(function()
	isEdit = runService:IsEdit()
end)
if not remotes then
	if runService:IsClient() and not isEdit then
		remotes = game.ReplicatedStorage:WaitForChild("ColdFusionRemotes")
	else
		remotes = Instance.new("Folder", game.ReplicatedStorage)
		remotes.Name = "ColdFusionRemotes"
	end
end

local Abstract = {}
Abstract.__index = Abstract
local WEAK_KEYS_METATABLE = {__mode = "k"}

function Abstract.getRemoteEvent(remoteName)
	if runService:IsClient() then
		return remotes:WaitForChild(remoteName)
	else
		if remotes:FindFirstChild(remoteName) then
			return remotes:FindFirstChild(remoteName)
		else
			local newRemote = Instance.new("RemoteEvent", remotes)
			newRemote.Name = remoteName
			return newRemote
		end
	end
end

function Abstract:Lock() --makes it undestroyable
	self._locked = true
	return self
end

function Abstract:Unlock()
	self._locked = false
	return self
end

function Abstract:Destroy()
	if self._locked == true then return end
	if self._destroyed == true then return end
	self._destroyed = true
	if self._cleanUp == true then
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

function Abstract:Get(...) end
function Abstract:get(...) return self:Get(...) end
function Abstract:Set(...) end
function Abstract:set(...) return self:Set(...) end

function Abstract:Connect(func)
	-- local newSignal = signalConstructor.new()
	-- self._Maid:GiveTask(newSignal)

	table.insert(self._connections, func)
	return self
end

function Abstract:Else(valOrState)
	self._alt = valOrState
	return self
end

function Abstract:_IsValueChanged(val)

	-- print("\nComparing values", self._copy, val)

	if typeof(self._copy) == "table" then
		if self._copy.type == "State" then
			local result = self._copy:_IsValueChanged(val)
			-- print("A", result)
			return result
		else
			local traveledTables = {}
			local function deepCompare(t1, t2)
				traveledTables[t1] = traveledTables[t1] or {}
				traveledTables[t1][t2] = true

				traveledTables[t2] = traveledTables[t2] or {}
				traveledTables[t2][t1] = true
				for k, v1 in pairs(t1) do
					local v2 = t2[k]
					local vTab
					if v2 ~= v1 then
						return true
					elseif typeof(v2) == "table" then
						local isUnsafe = (traveledTables[v2] or {})[v1] or (traveledTables[v1] or {})[v2]
						if not isUnsafe then
							if v1.type == "State" and v2.type == v1.type then
								local isChanged = v1:_IsValueChanged(v2:Get())
								if isChanged then
									return true
								end
							else
								local isChanged = deepCompare(v1, v2)
								if isChanged then
									return true
								end
							end
						end
					end
				end
				return false
			end
			local result = deepCompare(val, self._copy)
			-- print("B", result)
			return result
		end
	else
		-- print("D", self._copy ~= val)
		return self._copy ~= val
	end
end

function Abstract:_IsValueEqual(val)
	return not self:_IsValueChanged(val)
end

function Abstract:_GetAlt()
	if typeof(self._alt) == "table" and self._alt.type == "State" then
		return self._alt:Get()
	else
		return self._alt
	end
end

function Abstract._deepCopy(tabl)
	if typeof(tabl) ~= "table" or tabl.type == "State" then return tabl end
	local registry = {}
	local function deepCopy(ref)
		if registry[ref] then return registry[ref] end
		local newTabl = {}
		registry[ref] = newTabl
		for k, v in pairs(ref) do
			if typeof(v) == "table" then
				-- task.wait(1)
				newTabl[k] = deepCopy(v)
			else
				newTabl[k] = v
			end
		end

		return newTabl
	end
	return deepCopy(tabl)
end

function Abstract:_GetOldValue()
	local oldVal = self._value
	if typeof(oldVal) == "table" then
		if not oldVal.type == "state" then
			oldVal = self._deepCopy(oldVal)
		end
	end
	return oldVal
end

function Abstract:_SetValue(val)
	if self._valueTypes and not self._valueTypes[typeof(val)] then
		error(self.kind..self.type.." cannot be set to "..tostring(typeof(val)))
	end
	local oldValue = self._copy
	self._copy = self._deepCopy(val)
	self._value = val
	for i, connection in ipairs(self._connections) do
		connection(val, oldValue)
	end
	if self._cleanUp then
		local oldType = typeof(oldValue)
		if (oldType == "table" and oldType.Destroy) or oldType == "Instance" then
			oldType:Destroy()
		end
	end
end

function Abstract:CleanUp()
	self._cleanUp = true
	return self
end

function Abstract:_Ping()
	local event = self._event
	if runService:IsClient() then
		event:FireServer()
	else
		event:FireClient(self._player)
	end
end

function Abstract:IsDeep()
	self._isDeep = true
	return self
end

function Abstract:_Fire()
	if self._event then
		local t = tick()
		if t - self._lastFire < 1/self._rate then
			return
		end
		self._lastFire = t
		local value = self:Get()
		if runService:IsServer() then
			if self._player then
				self._event:FireClient(self._player, self._id, value)
			else
				self._event:FireAllClients(self._id, value)
			end
		else
			self._event:FireServer(self._id, value)
		end
	end
end

function Abstract:Transmit(remoteName: string, player: Player, id: string | nil, rate: number | nil)
	self._event = self.getRemoteEvent(remoteName)
	self._rate = rate or 30
	self._id = id or ""
	self._player = player

	if runService:IsClient() then
		self._Maid:GiveTask(self._event.OnClientEvent:Connect(function(newVal)
			self:_Fire()
		end))
	else
		self._Maid:GiveTask(self._event.OnServerEvent:Connect(function(plr, newVal)
			if self._player == nil or self._player == plr then
				self:_Fire()
			end
		end))
	end
	self:Connect(function(newVal, oldVal)
		self:_Fire()
	end)
	return self
end

function Abstract:Receive(remoteName: string, player: Player, id: string | nil)
	self._event = self.getRemoteEvent(remoteName)
	self._id = id or ""
	self._player = player
	if runService:IsClient() then
		self._Maid:GiveTask(self._event.OnClientEvent:Connect(function(stateId, newVal)
			if self._id == stateId then
				self:Set(newVal)
			end
		end))
	else
		self._Maid:GiveTask(self._event.OnServerEvent:Connect(function(plr, stateId, newVal)
			if player == nil or player == plr and self._id == stateId then
				self:Set(newVal)
			end
		end))
	end
	self:_Ping()
	return self
end

function Abstract:Tween(duration, easingStyle, easingDirection)
	local tween = require(animation:WaitForChild("Tween"))
	local tweenParams = TweenInfo.new(duration or 0.3, easingStyle or Enum.EasingStyle.Quad, easingDirection or Enum.EasingDirection.InOut)
	local tweenState = tween(self, tweenParams)
	self._Maid:GiveTask(tweenState)
	return tweenState
end

function Abstract:Spring(speed, damping)
	local spring = require(animation:WaitForChild("Spring"))
	local springState = spring(self, speed, damping)
	self._Maid:GiveTask(springState)
	return springState
end

function Abstract:Update(...): boolean
	self:_Fire()
	return false
end

function Abstract:Type(...)
	self._valueTypes = self._valueTypes or {}
	for i, typeName in ipairs({...}) do
		self._valueTypes = typeName
	end
	return self
end

function Abstract:_update(...) return self:Update(...) end

function Abstract.new(kind: string, initalValue: any)
	local self = setmetatable({
		type = "State",
		kind = kind,
		dependentSet = setmetatable({}, WEAK_KEYS_METATABLE),
		_Maid = maidConstructor.new(),
		_signal = signalConstructor.new(),
		_value = initalValue,
		_valueTypes = nil,
		_copy = Abstract._deepCopy(initalValue),
		_alt = nil,
		_connections = {},
		_destroyed = false,
		_locked = false,
		_cleanUp = false, --whether it  cleans up old value when changing it
		_event = nil,
		_rate = 30,
		_player = nil,
		_id = "None",
		_lastFire = 0,
		_isDeep = false,
	}, Abstract)
	self._Maid:GiveTask(self._signal)
	return self
end

return Abstract