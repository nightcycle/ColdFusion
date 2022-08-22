--!strict
local package = script.Parent
local packages = package.Parent

local Maid = require(packages.Maid)

local StateFolder = script.Parent.State
local State = require(StateFolder.State)
local Value = require(StateFolder.Value)
type State<T> = State.State<T>
type ValueState<T> = Value.ValueState<T>
local Property = require(StateFolder.Property)

local Symbol = require(script.Parent.Symbol)
type Symbol = Symbol.Symbol

local Types = require(script.Parent.Types)

local Mount = {}

function setProperty(inst: Instance, propName: string, value: any)
	local obj: any = inst
	obj[propName] = value
end

function getProperty(inst: Instance, propName: string): any
	local obj: any = inst
	return obj[propName]
end

function applyToInstance(inst: Instance?, params: {any})
	if not inst then return end
	assert(inst ~= nil)
	local maid = Maid.new()
	maid:GiveTask(inst.Destroying:Connect(function()
		maid:Destroy()
	end))

	local function applyProperty(propName, valOrState: State<any> | any)
		if not inst then return end
		if typeof(valOrState) == "table" then
			maid:GiveTask(valOrState:Connect(function(cur)
				setProperty(inst, propName, cur)
			end))
			setProperty(inst, propName, valOrState:Get())
		else
			setProperty(inst, propName, valOrState)
		end
	end

	for k, v in pairs(params) do
		if typeof(k) == "string" then
			if k == "Children" then
				local function addChildren(list: {Instance}?)
					assert(list ~= nil, "List of children was not returned at Children symbol")
					for i, child in pairs(list) do
						child.Parent = inst
					end
				end
				
				if v.IsA and v:IsA("State") then
					maid:GiveTask(v:Connect(function(cur)
						addChildren(cur or {})
					end))
					addChildren(v:Get())
				else
					addChildren(v)
				end
			elseif k == "Attributes" then
				for aK, aV in pairs(v) do
					if typeof(aV) == "table" and aV.IsA and aV:IsA("State") then
						maid:GiveTask(aV:Connect(function(cur)
							inst:SetAttribute(aK, cur)
						end))
						if aV.Set then
							maid:GiveTask(inst:GetAttributeChangedSignal(aK):Connect((function(val)
								aV:Set(val)
							end)))
						end
					else
						inst:SetAttribute(aK, aV)
					end
				end
			else
				applyProperty(k, v)
			end
		elseif typeof(k) == "table" then
			if k.IsA then
				if k:IsA("Event") then
					local eventName = k.Value
					local event: RBXScriptSignal = getProperty(inst, eventName)
					maid:GiveTask(event:Connect(function(...)
						v(...)
					end))
				elseif k:IsA("Changed") then
					local propName = k.Value
					local propState = Property.new(inst, propName)
					maid:GiveTask(propState)
					maid:GiveTask(propState:Connect(function(val)
						v(val)
						return nil
					end))
				end
			else
				error("Table provided as property name, you may have forgotten to use a Children object.")
			end
		end
	end
end

function applyToStateOrInstance(instOrState: (Instance | State<Instance?>), params: {any}): Instance? | State<Instance?>
	if typeof(instOrState) == "Instance" then
		local inst: any = instOrState
		applyToInstance(inst, params)
		return inst
	elseif typeof(instOrState) == "table" and instOrState.IsA and instOrState:IsA("State") then
		local state: State<Instance?> = instOrState
		state:Connect(function(val)
			applyToInstance(val, params)
			return nil
		end)
		applyToInstance(state:Get(), params)
		return state
	else
		error("Bad instance")
	end
end
export type ClassNameConstructor = Types.ClassNameConstructors
export type ClassConstructor = (Instance) -> (({[string]: any}) -> Instance)

local fromInstance: ClassConstructor= function(inst: any): any
	return function(params)
		return applyToStateOrInstance(inst, params)
	end
end


local fromClassName: ClassNameConstructor = function(className: any): any
	return function(params)
		local inst: any = Instance.new(className)
		return applyToStateOrInstance(inst, params)
	end
end


-- local fConst = fromClassName("UIListLayout")

-- local _nameState = State.new("Test")
-- local _vState = Value.new("")


-- local _fInst1 = fConst({
-- 	Name = _vState, --{Value = "Name"}
-- })

-- local _fInst1 = fConst({
-- 	Name = "Test"
-- })

Mount.fromInstance = fromInstance
Mount.fromClassName = fromClassName

return Mount