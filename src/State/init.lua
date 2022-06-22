
--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local RunService: RunService = game:GetService("RunService")

local package = script.Parent
local packages = package.Parent

local Util = require(script:WaitForChild("Util"))
local Maid = require(packages:WaitForChild("maid"))

local StateFolder = ReplicatedStorage:FindFirstChild("ColdFusionStates") or Instance.new("Folder", ReplicatedStorage)
StateFolder.Name = "ColdFusionStates"

local State = {}
State.__index = State
State.__type = "State"
setmetatable(State, Util)

function State:__newindex(k: any, v: any): any
	error("You can't set properties of state: "..tostring(k)..","..tostring(v))
end


function isValueDifferent(prev: nil, val: nil | any | State)
	if typeof(val) == "table" then
		if val.IsA and val:IsA("State") then
			return val:Get() ~= prev
		else
			local tablCopy = deepCopy(val)
			local result = deepCompare(tablCopy, prev)
			return result
		end
	else
		return prev ~= val
	end
end

function isValueEqual(prev: nil | any | State, val: nil | any | State)
	return not isValueDifferent(prev, val)
end


function deepCompare(tabl1: {any}, tabl2: {any})
	local traveledTables = {}
	local function compareTable(t1, t2)
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
						local isChanged = isValueDifferent(v1:Get(), v2:Get())
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
	return not compareTable(tabl1, tabl2)
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

function State:_Update()
	if not self.Alive then return end

	local dependantsFolder = self.Dependants
	if not dependantsFolder then return end

	local myUpdate = self.Instance:FindFirstChild("Update")
	if myUpdate then
		myUpdate:Fire()
	end

	for i: number, objValue: ObjectValue in ipairs(dependantsFolder:GetChildren()) do
		local state: Folder = objValue.Value
		if state then
			local updateEvent = state:FindFirstChild("Update")
			if updateEvent then
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

	local dependencies = self.Dependencies
	if not dependencies then return end
	
	local objValue = Instance.new("ObjectValue", dependencies)
	objValue.Name = rawget(state, "Id")
	objValue.Value = otherInst

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

	local updateEvent = inst:FindFirstChild("Update")

	if updateEvent then
		local maid = self._Maid
		if maid then
			local signalMaid = Maid.new()
			maid:GiveTask(signalMaid)
			signalMaid:GiveTask(updateEvent.Event:Connect(function()
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
	
	local objValue = Instance.new("ObjectValue", dependants)
	objValue.Name = rawget(state, "Id")
	objValue.Value = otherInst

	local maid = self._Maid
	if maid then
		maid:GiveTask(objValue)
	end
end

function State:Destroy()
	if not self.Alive then return end
	-- print("Destroy A")
	setmetatable(self, nil)
	self.Alive = false

	if self.Dependencies then
		-- print("Clear from dependants")
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
	-- print("Destroying maid")
	self._Maid:Destroy()

	-- print("Wiping clean")
	for k, _ in pairs(self) do
		self[k] = nil
	end
end

function State:Get(): any | nil --so that inherited states can still access this functionality
	if not self.Alive then return end
	local val = self.Value
	if typeof(val) == "table" then
		if val.IsA and val:IsA("State") then
			val = val:Get()
		end
	end
	return val
end

function State:_Set(val: any | State)
	local prevVal = self:Get()
	local isDif = isValueDifferent(val, prevVal)
	-- print("IsDif", isDif)
	if isDif then
		-- print("Set", val)
		rawset(self, "Prev", prevVal)
		rawset(self, "Value", val)
		self:_Update()
	end
end

function State.new(value): State

	local maid = Maid.new()

	local Inst = Instance.new("Folder")
	Inst.Name = "State"
	maid:GiveTask(Inst)

	local UpdateEvent = Instance.new("BindableEvent", Inst)
	UpdateEvent.Name = "Update"
	maid:GiveTask(UpdateEvent)

	local Dependencies = Instance.new("Folder", Inst)
	Dependencies.Name = "Dependencies"
	maid:GiveTask(Dependencies)

	local Dependants = Instance.new("Folder", Inst)
	Dependants.Name = "Dependants"
	maid:GiveTask(Dependants)

	local self = {
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
			self:_Set(cur)
		end))
	end

	local isScheduled = false
	maid:GiveTask(UpdateEvent.Event:Connect(function()
		-- print("Update")
		-- print("Is Scheduled", isScheduled)
		if isScheduled then return end

		local delayAmountOrState = self.DelayAmount
		local delayAmount
		if typeof(delayAmountOrState) == "table" and delayAmountOrState.IsA and delayAmountOrState:IsA("State") then
			delayAmount = delayAmountOrState:Get()
		else
			delayAmount = delayAmountOrState
		end
		-- print("Delay amount", delayAmount)
		if delayAmount then
			-- print("A")
			isScheduled = true
			task.delay(delayAmount, function()
				isScheduled = false
				self:_Set(self:Get())
			end)
		else
			-- print("B")
			self:_Set(self:Get())
		end
	end))

	setmetatable(self, State)

	return self
end

export type State = typeof(State.new())

return State