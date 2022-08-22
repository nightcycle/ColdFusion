--!strict
local HttpService = game:GetService("HttpService")
local package = script.Parent.Parent
assert(package ~= nil)
local packages = package.Parent

local Maid = require(packages.Maid)

type Maid = Maid.Maid

export type StateInstance = {
	-- Update: BindableEvent,
	-- Connect: BindableEvent,
	-- Dependencies: Folder,
	-- Dependants: Folder,
	-- FindFirstChild: ((self: Instance, name: "Update", recurse: false) -> BindableEvent?)
	--  & ((self: Instance, name: "Connect", recurse: false) -> BindableEvent?)
	--  & ((self: Instance, name: "Dependencies", recurse: false) -> Folder?)
	--  & ((self: Instance, name: "Dependants", recurse: false) -> Folder?),

	--  WaitForChild: ((self: Instance, name: "Update", duration: nil) -> BindableEvent)
	--  & ((self: Instance, name: "Connect", recurse: false, duration: nil) -> BindableEvent)
	--  & ((self: Instance, name: "Dependencies", recurse: false, duration: nil) -> Folder)
	--  & ((self: Instance, name: "Dependants", recurse: false, duration: nil) -> Folder)
	--  & ((self: Instance, name: "Update", duration: number) -> BindableEvent?)
	--  & ((self: Instance, name: "Connect", recurse: false, duration: number) -> BindableEvent?)
	--  & ((self: Instance, name: "Dependencies", recurse: false, duration: number) -> Folder?)
	--  & ((self: Instance, name: "Dependants", recurse: false, duration: number) -> Folder?)
} & Folder

export type StateConnection = {
	_Maid: any,
	DelayAmount: number?,
	Alive: boolean?,
	Dependencies: Folder,
	Instance: StateInstance,
	_UpdateDependants: (self: StateConnection) -> nil,
	_Dependant: (self: StateConnection, state: StateConnection) -> nil,
}

export type StateAbstract<T> = any

local StateAbstract = {}
StateAbstract.__index = StateAbstract
StateAbstract.__type = "State"

function StateAbstract:__newindex(k: any, v: any): any
	error("You can't set properties of state: "..tostring(k)..","..tostring(v))
end

function deepCompare<T>(tabl1: T, tabl2: T)
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
	local function compareTable(t1: any, t2: any)
		traveledTables[t1] = traveledTables[t1] or {}
		traveledTables[t1][t2] = true

		traveledTables[t2] = traveledTables[t2] or {}
		traveledTables[t2][t1] = true
		for k, v1 in pairs(t1) do
			local v2 = t2[k]
			if v2 ~= v1 then
				return true
			elseif typeof(v2) == "table" then
				v1 = v1 :: any
				local tab1: any = traveledTables[v1] or {}
				local tab2: any = traveledTables[v2] or {}

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

function isValueDifferent<T>(prev: (T | StateAbstract<T>)?, val: (T | StateAbstract<T>)?)
	if typeof(val) == "table" then
		local trueVal
		local truePrev
		if val.IsA and val:IsA("State") then
			trueVal = val:Get()
		else

			trueVal = deepCopy(val)
		end
		if typeof(prev) == "table" then
			assert(typeof(val) == "table")
			val = val :: (any)
			local fVal: any = val
			assert(val ~= nil)
			local meta: any = getmetatable(fVal or {})

			if prev.IsA and prev:IsA("State") then
				truePrev = prev:Get()
			elseif meta ~= nil then
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

function deepCopy(tabl: any)
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

function StateAbstract:_UpdateDependants()
	if not self.Alive then return end

	local dependantsFolder = self.Dependants
	if not dependantsFolder then return end

	for i: number, objValue: ObjectValue in ipairs(dependantsFolder:GetChildren()) do
		local state: Instance? = objValue.Value
	
		if state and state:IsA("Folder") then
			local updateEvent: Instance? = state:FindFirstChild("Update")
			if updateEvent ~= nil and updateEvent:IsA("BindableEvent") then
				-- print("Firing update event")
				updateEvent:Fire()
			end
		end
	end
end

function StateAbstract:Bind<T>(state: StateAbstract<T>): any
	assert(state ~= nil, "State is nil")
	assert(typeof(state) == "table", "Bad state")
	if not self.Alive then return self end
	if not state.Alive then return self end

	local otherInst = rawget(state, "Instance")
	if not otherInst then return self end
	assert(otherInst ~= nil and otherInst:IsA("Instance"))

	local dependencies = self.Dependencies
	if not dependencies then return self end
	
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

function StateAbstract:Connect(func)
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

function StateAbstract:_Dependant<T>(state: StateAbstract<T>): nil
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

function StateAbstract:Destroy()
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

	local tabl: any = self
	for k, _ in pairs(self) do
		tabl[k] = nil
	end
end

function StateAbstract:Get(): any? --so that inherited states can still access this functionality
	if not self.Alive then return end
	local val = self.Value
	if typeof(val) == "table" then
		if val.IsA and val:IsA("State") then
			val = val:Get()
		end
	end
	return val
end

function StateAbstract:get(): any? --for fusion compatibility
	return self:Get()
end

function StateAbstract:IsA(className: string)
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

function StateAbstract:_Set<T>(val: any | StateAbstract<T>): boolean --returns if a chance was made
	local prevVal = self.Prev
	local isDif = if typeof(prevVal) ~= "boolean" then isValueDifferent(val, prevVal) else true 

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

function StateAbstract._new(value: any?)

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

	local self: any = {
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



	setmetatable(self, StateAbstract)

	return self
end


function StateAbstract.new<T>(value: any?): StateAbstract<T>
	local self: StateAbstract<T> = StateAbstract._new(value)

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


return StateAbstract