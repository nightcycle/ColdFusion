--!strict
local package = script.Parent
local packages = package.Parent

local Maid = require(packages.Maid)

local StateFolder = script.Parent.State
local State = require(StateFolder)
type State = State.State

local Property = require(StateFolder.Property)

return function(instOrState: (Instance | State), params: {[any]: any})
	-- print("INST", params)
	local function mount(inst: any)
		if not inst then return end
		local maid = Maid.new()
		maid:GiveTask(inst.Destroying:Connect(function()
			-- print("Clean up")
			maid:Destroy()
		end))
		local function mountProperty(propName, valOrState: State | any)
			-- print("MOUNTING PROP", propName)
			if typeof(valOrState) == "table" then
				-- print("TBL", valOrState)
				maid:GiveTask(valOrState:Connect(function(cur)
					-- print("Setting ", propName, "val", cur)
					inst[propName] = cur
				end))
				inst[propName] = valOrState:Get()
			else
				inst[propName] = valOrState
			end
		end
		for k, v in pairs(params) do
			if typeof(k) == "string" then
				mountProperty(k, v)
			elseif typeof(k) == "table" then
				if k.IsA then
					if k:IsA("Event") then
						local eventName = k.Value
						maid:GiveTask(inst[eventName]:Connect(function(...)
							v(...)
						end))
					elseif k:IsA("Children") then
						local function addChildren(list: {Instance})
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
	if typeof(instOrState) == "Instance" then
		local inst: Instance = instOrState
		mount(inst)
		return inst
	elseif typeof(instOrState) == "table" and instOrState.IsA and instOrState:IsA("State") then
		local state: State = instOrState
		state:Connect(function(val)
			mount(val)
			return nil
		end)
		mount(state:Get())
		return state
		
	else
		error("Bad instance")
	end
end