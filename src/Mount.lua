--!strict
local package = script.Parent
local packages = package.Parent

local Maid = require(packages:WaitForChild("maid"))

local StateFolder = script.Parent:WaitForChild("State")
local State = require(StateFolder)
type State = State.State

local Property = require(StateFolder:WaitForChild("Property"))

local Changed = require(script.Parent:WaitForChild("Changed"))
local Event = require(script.Parent:WaitForChild("Event"))
local Children = require(script.Parent:WaitForChild("Children"))

return function(instOrState, params)
	local function mount(inst: Instance)
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
				if k.__type == "Event" then
					local eventName = k.Value
					maid:GiveTask(inst[eventName]:Connect(function(...)
						v(...)
					end))
				elseif k.__type == "Children" then
					local knownTables = {}
					local function parentTable(tabl)
						if knownTables[tabl] then return end
						knownTables[tabl] = true
						for i, child in ipairs(tabl) do
							if typeof(child) == "Instance" then
								child.Parent = inst
							elseif typeof(child) == "table" then
								if child.IsA and child:IsA("State") then
									child:Connect(function(cur)
										parentTable(cur)
									end)
									parentTable(child:Get())
								else
									parentTable(child)
								end
							else
								error("Bad child")
							end
						end
					end
					parentTable(v)
				elseif k.__type == "Changed" then
					local propName = k.Value
					local propState = Property(inst, propName)
					maid:GiveTask(propState)
					propState:Connect(function(val)
						v(val)
					end)
				elseif k.__type == nil then
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
		end)
		mount(state:Get())
		return state
	else
		error("Bad instance")
	end
end