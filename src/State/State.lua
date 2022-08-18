local RunService = game:GetService("RunService")
local RemoteFolder = script

local StateAbstract = require(script.Parent.StateAbstract)
type StateAbstract<T> = StateAbstract.StateAbstract<T>

local TweenAbstract = require(script.Parent.TweenAbstract)
local ComputedAbstract = require(script.Parent.ComputedAbstract)

export type State<T> = StateAbstract<T> & {
	Tween: (
		self: State<T>, 
		duration: (number | StateAbstract<number>?), 
		easingStyle: (Enum.EasingStyle | StateAbstract<Enum.EasingStyle>)?, 
		easingDirection: (Enum.EasingDirection | StateAbstract<Enum.EasingDirection>)?
	) -> State<T>,
	Else: (
		self: State<T>, 
		alt: T
	) -> State<T>,
	_Fire: (self: State<T>, remoteName: string, id: string?, player: Player?) -> nil,
	Transmit: (self: State<T>, remoteName: string, id: string?, rate: number?, player: Player?) -> State<T>,
	Receive: (self: State<T>, remoteName: string, id: string?, player: Player?) -> State<T>,
	CleanUp: (self: State<T>) -> State<T>,
	Delay: (self: State<T>, val: (number | State<T>?)) -> State<T>,
	SetParent: (self: State<T>, parent: Instance) -> State<T>,
	SetId: (self: State<T>, key: string) -> State<T>,
	IsA: (self: State<T>, className: string) -> boolean,
}

local State = {}
State.__index = State
setmetatable(State, StateAbstract)

function getRemoteEvent(remoteName: string): RemoteEvent
	if RunService:IsClient() then
		local inst: Instance? = RemoteFolder:WaitForChild(remoteName)
		assert(inst ~= nil and inst:IsA("RemoteEvent"))
		return inst
	else
		local inst: Instance? = RemoteFolder:FindFirstChild(remoteName)
		if inst ~= nil and inst:IsA("RemoteEvent") then
			return inst
		else
			local newRemote = Instance.new("RemoteEvent")
			newRemote.Name = remoteName
			newRemote.Parent = RemoteFolder
			return newRemote
		end
	end
end

function State:Tween<T>(duration: (number | State<number>?), easingStyle: (Enum.EasingStyle | State<Enum.EasingStyle>)?, easingDirection: (Enum.EasingDirection | State<Enum.EasingDirection>)?): State<T>
	local t = TweenAbstract.new(self, duration, easingStyle, easingDirection)
	self._Maid:GiveTask(t)
	return t
end

function State:Else<T>(alt: (any | State<T>)): State<T>
	local Alternate = StateAbstract.new(alt)
	local t = ComputedAbstract.new(function(v: T, a: T)
		if v == nil then
			return a
		else
			return v
		end
	end, self, Alternate)
	self._Maid:GiveTask(t)
	return t
end

function State:_Fire(remoteName: string, id: string?, player: Player?): nil --fires event to server / client
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
	return nil
end


function State:Transmit<T>(remoteName: string, id: string?, rate: number?, player: Player?): State<T> --when value is changed it replicates
	if not self.Alive then return self end

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

function State:Receive<T>(remoteName: string, id: string?, player: Player?): State<T>
	if not self.Alive then return self end
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
	return self
end

function State:CleanUp<T>(): State<T> --sets whether to attempt to fire destroy on the instance when state is destroyed
	if not self.Alive then return self end
	local maid = self._Maid
	if not maid then return self end

	maid:GiveTask(self:Connect(function(cur, prev)
		if prev then
			pcall(function()
				prev:Destroy()
			end)
		end
	end))
	return self
end

function State:Delay<T>(val: (number | State<T>?)): State<T> --delays until a later point to avoid updating multiple times per heartbeat
	if not self.Alive then return self end
	rawset(self, "DelayAmount", val)
	return self
end

function State:SetParent<T>(parent: Instance): State<T> --changes the parent of the instance
	if not self.Alive then return self end
	local inst: Folder? = self.Instance
	if inst then
		inst.Parent = parent
	end
	return self
end

function State:SetId<T>(key): State<T> --changes the name of the instance
	if not self.Alive then return self end
	key = tostring(key)
	rawset(self, "Id", key)
	local inst: Folder? = self.Instance
	if inst then
		inst.Name = key
	end
	return self
end


function State:IsA(className: string)
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

return State