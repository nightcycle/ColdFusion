--!strict
local package = script.Parent.Parent
local packages = package.Parent

local Maid = require(packages.Maid)
local State = require(script.Parent.State)
export type State<T> = State.State<T>

local Attribute = {}
Attribute.__index = Attribute
Attribute.__type = "Attribute"

export type Constructor = <T>(instOrState: (Instance | State<Instance>), attributeName: string) -> State<T>

Attribute.new = function<T>(instOrState: (Instance | State<Instance>), attributeName: string): State<T>

	local self: State<nil> = State.new(nil)
	local se: any = self
	self.Instance.Name = Attribute.__type
	setmetatable(self, Attribute)

	local maid = self._Maid
	local function connectAttribute(inst: Instance)
		if not inst then return end
		local instMaid = Maid.new()
		maid["_attr"..attributeName] = instMaid
		instMaid:GiveTask(inst.Destroying:Connect(function()
			instMaid:Destroy()
		end))

		instMaid["_attr"..attributeName] = inst:GetAttributeChangedSignal(attributeName):Connect(function()
			if self:_Set(inst:GetAttribute(attributeName)) then
				se:_UpdateDependants()
			end
		end)
		if self:_Set(inst:GetAttribute(attributeName)) then
			se:_UpdateDependants()
		end
	end
	if typeof(instOrState) == "Instance" then
		connectAttribute(instOrState)
	elseif typeof(instOrState) == "table" then
		local tabl = instOrState
		if tabl.IsA and tabl:IsA("State") then
			local state:State<Instance> = tabl
			state:Connect(function(cur: any?)
				if cur == nil then return nil end
				assert(cur ~= nil and cur:IsA("Instance"))
				connectAttribute(cur)
				return nil
			end)
			connectAttribute(state:Get())
		else
			error("Bad inst state")
		end
	else
		error("Bad inst")
	end
	local output: any = self
	return output
end :: Constructor
setmetatable(Attribute, State)

return Attribute