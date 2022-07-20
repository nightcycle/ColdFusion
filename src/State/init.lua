--!strict
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local package = script.Parent
local packages = package.Parent

local RemoteFolder = script

local Maid = require(packages.Maid)

local State: {[any]: any} = {}
State.__index = State
State.__type = "State"

function State:__newindex(k: any, v: any): any
	error("You can't set properties of state: "..tostring(k)..","..tostring(v))
end

function deepCompare(tabl1: {[any]:any}, tabl2: {[any]:any})
	if tabl1 == nil then
		if tabl2 == nil then
			return false
		else
			return true
		end
	elseif tabl2 == nil then
		if tabl1 == nil then
			return false
		else
			return true
		end
	end
	local traveledTables = {}
	local function compareTable(t1, t2)
		traveledTables[t1] = traveledTables[t1] or {}
		traveledTables[t1][t2] = true

		traveledTables[t2] = traveledTables[t2] or {}
		traveledTables[t2][t1] = true
		for k, v1 in pairs(t1) do
			local v2 = t2[k]
			if v2 ~= v1 then
				return true
			elseif typeof(v2) == "table" then
				local tab1: {[any]: any} = traveledTables[v1] or {}
				local tab2: {[any]: any} = traveledTables[v2] or {}

				local isUnsafe = tab2[v1] or tab1[v2]
				if not isUnsafe then
					if v1.type == "State" and v2.type == v1.type then
						assert(v1.Get ~= nil and typeof(v1.Get) == "function")
						assert(v2.Get ~= nil and typeof(v2.Get) == "function")
						
						local f1: ((any) -> any?)? = v1.Get
						local f2: ((any) -> any?)? = v2.Get
						assert(f1 ~= nil and f2 ~= nil)

						local val1: any? = f1(v1)
						local val2: any? = f2(v2)

						local isChanged = isValueDifferent(val1, val2)
						if isChanged then
							return true
						end
					else
						local isChanged = compareTable(v1, v2)
						if isChanged then
							return true
						end
					end
				end
			end
		end
		return false
	end
	return compareTable(tabl1, tabl2)
end

function isValueDifferent(prev: nil | any | State, val: nil | any | State)
	if typeof(val) == "table" then
		local trueVal
		local truePrev
		if val.IsA and val:IsA("State") then
			trueVal = val:Get()
		else
			trueVal = deepCopy(val)
		end
		if typeof(prev) == "table" then
			if prev.IsA and prev:IsA("State") then
				truePrev = prev:Get()
			elseif getmetatable(val) ~= nil then
				return prev ~= val
			else
				truePrev = deepCopy(prev)
			end
		end
		return deepCompare(trueVal, truePrev)
	else
		return prev ~= val
	end
end

function deepCopy(tabl)
	if typeof(tabl) ~= "table" or tabl.type == "State" then return tabl end
	local registry = {}
	local function copyTable(ref)
		if registry[ref] then return registry[ref] end
		local newTabl = {}
		registry[ref] = newTabl
		for k, v in pairs(ref) do
			if typeof(v) == "table" then
				-- task.wait(1)
				newTabl[k] = copyTable(v)
			else
				newTabl[k] = v
			end
		end
		return newTabl
	end
	return copyTable(tabl)
end

function State:_UpdateDependants()
	if not self.Alive then return end

	local dependantsFolder = self.Dependants
	if not dependantsFolder then return end

	for i: number, objValue: ObjectValue in ipairs(dependantsFolder:GetChildren()) do
		local state: Instance? = objValue.Value
		assert(state ~= nil and state:IsA("Folder"))
		if state then
			local updateEvent: Instance? = state:FindFirstChild("Update")
			if updateEvent ~= nil and updateEvent:IsA("BindableEvent") then
				-- print("Firing update event")
				updateEvent:Fire()
			end
		end
	end
end

function State:Bind(state: State): nil
	assert(state ~= nil, "State is nil")
	assert(typeof(state) == "table", "Bad state")
	if not self.Alive then return end
	if not state.Alive then return end

	local otherInst = rawget(state, "Instance")
	if not otherInst then return end
	assert(otherInst ~= nil and otherInst:IsA("Instance"))

	local dependencies = self.Dependencies
	if not dependencies then return end
	
	local objName: any? = rawget(state, "Id")
	assert(objName ~= nil and typeof(objName) == "string")

	local objValue = Instance.new("ObjectValue")
	objValue.Name = objName
	objValue.Value = otherInst
	objValue.Parent = dependencies

	local maid = self._Maid
	if maid then
		maid:GiveTask(objValue)
	end

	state:_Dependant(self)

	return self
end

function State:Connect(func)
	if not self.Alive then return end

	local inst = self.Instance
	if not inst then return end

	local connectEvent = inst:FindFirstChild("Connect")

	if connectEvent then
		local maid = self._Maid
		if maid then
			local signalMaid = Maid.new()
			maid:GiveTask(signalMaid)
			signalMaid:GiveTask(connectEvent.Event:Connect(function()
				func(self.Value, self.Prev)
			end))
			return signalMaid
		end
	end
end

function State:_Dependant(state: State): nil
	if not self.Alive then return end
	if not rawget(state, "Alive") then return end

	local otherInst = rawget(state, "Instance")
	if not otherInst then return end

	local dependants = self.Dependants
	if not dependants then return end
	
	local objValue = Instance.new("ObjectValue")
	objValue.Name = rawget(state, "Id")
	objValue.Value = otherInst
	objValue.Parent = dependants

	local maid = self._Maid
	if maid then
		maid:GiveTask(objValue)
	end
	return nil
end

function State:Destroy()
	if not self.Alive then return end
	setmetatable(self, nil)
	self.Alive = false
	if self.Dependencies then
		for i, objValue in ipairs(self.Dependants:GetChildren()) do
			local otherState = objValue.Value
			if otherState then
				local otherDependencies = otherState:FindFirstChild("Dependencies")
				if otherDependencies then
					for j, otherObjValue in ipairs(otherDependencies:GetChildren()) do
						if otherObjValue.Value == self.Instance then
							otherObjValue:Destroy()
						end
					end
				end
			end
		end
	end
	self._Maid:Destroy()

	for k, _ in pairs(self) do
		self[k] = nil
	end
end

function State:Get(): any? --so that inherited states can still access this functionality
	if not self.Alive then return end
	local val = self.Value
	if typeof(val) == "table" then
		if val.IsA and val:IsA("State") then
			val = val:Get()
		end
	end
	return val
end

function State:_Set(val: any | State): boolean --returns if a chance was made
	local prevVal = self.Prev
	local isDif = isValueDifferent(val, prevVal)
	-- print("IsDif", isDif, "V", val, "P", prevVal)
	if isDif then
		local newPrev = self:Get()
		if typeof(newPrev) == "table" then
			newPrev = deepCopy(newPrev)
			rawset(self, "Prev", newPrev)
		end
		rawset(self, "Prev", newPrev)
		rawset(self, "Value", val)
		local connectEvent = self.Instance:FindFirstChild("Connect")
		if connectEvent then
			connectEvent:Fire()
		end
		return true
	end
	return false
end

function getRemoteEvent(remoteName): RemoteEvent
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


function State:Transmit(remoteName: string, id: string?, rate: number?, player: Player?): State --when value is changed it replicates
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

function State:Receive(remoteName: string, id: string?, player: Player?): State
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
	return nil
end

function State:CleanUp(): State --sets whether to attempt to fire destroy on the instance when state is destroyed
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

function State:Tween(duration: number | State?, easingStyle: string | EnumItem | State?, easingDirection: string | EnumItem | State?): State?
	return nil
end

function State:Else(alt: any | State): State?
	return nil	
end


function State:Delay(val: number | State?): State --delays until a later point to avoid updating multiple times per heartbeat
	if not self.Alive then return end
	rawset(self, "DelayAmount", val)
	return self
end

function State:SetParent(parent: Instance): State --changes the parent of the instance
	if not self.Alive then return end
	local inst: Folder? = self.Instance
	if inst then
		inst.Parent = parent
	end
	return self
end

function State:SetId(key): State --changes the name of the instance
	if not self.Alive then return end
	key = tostring(key)
	rawset(self, "Id", key)
	local inst: Folder? = self.Instance
	if inst then
		inst.Name = key
	end
	return self
end


function State:IsA(className: string)
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

function State._new(value: any?)

	local maid = Maid.new()

	local Inst = Instance.new("Folder")
	Inst.Name = "State"
	maid:GiveTask(Inst)

	local UpdateEvent = Instance.new("BindableEvent")
	UpdateEvent.Name = "Update"
	UpdateEvent.Parent = Inst
	maid:GiveTask(UpdateEvent)

	local ConnectEvent = Instance.new("BindableEvent")
	ConnectEvent.Name = "Connect"
	ConnectEvent.Parent = Inst
	maid:GiveTask(ConnectEvent)

	local Dependencies = Instance.new("Folder")
	Dependencies.Name = "Dependencies"
	Dependencies.Parent = Inst
	maid:GiveTask(Dependencies)

	local Dependants = Instance.new("Folder")
	Dependants.Name = "Dependants"
	Dependants.Parent = Inst
	maid:GiveTask(Dependants)

	local self: {[any]: any} = {
		_Maid = maid,
		Id = tostring(HttpService:GenerateGUID(false)),
		Value = value,
		Prev = nil,
		Alive = true,
		Instance = Inst,
		Dependencies = Dependencies,
		Dependants = Dependants,
		DelayAmount = nil,
	}

	if typeof(value) == "table" and value.IsA and value:IsA("State") then
		maid:GiveTask(value:Connect(function(cur)
			if self:_Set(cur) then
				self:_UpdateDependants()
			end
		end))
	end



	setmetatable(self, State)

	return self
end


function State.new(value: any?): State
	local self: State = State._new(value)

	local UpdateEvent: Instance? = self.Instance:WaitForChild("Update")
	assert(UpdateEvent ~= nil and UpdateEvent:IsA("BindableEvent"))

	local isScheduled = false

	self._Maid:GiveTask(UpdateEvent.Event:Connect(function()
		if isScheduled then return end

		local delayAmountOrState = self.DelayAmount
		local delayAmount
		if typeof(delayAmountOrState) == "table" and delayAmountOrState.IsA and delayAmountOrState:IsA("State") then
			delayAmount = delayAmountOrState:Get()
		else
			delayAmount = delayAmountOrState
		end
		if delayAmount then
			isScheduled = true
			task.delay(delayAmount, function()
				isScheduled = false
				if self:_Set(self:Get()) then
					self:_UpdateDependants()
				end
			end)
		else
			if self:_Set(self:Get()) then
				self:_UpdateDependants()
			end
		end
	end))

	return self
end

export type State = typeof(State._new())

return State