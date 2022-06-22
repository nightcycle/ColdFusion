local RunService = game:GetService("RunService")
local package = script.Parent.Parent
local packages = package.Parent

--!strict
local Maid = require(packages:WaitForChild("maid"))
local State = require(script.Parent)
export type State = State.State

local Attribute = {}
Attribute.__index = Attribute
Attribute.__type = "Attribute"

function Attribute.new(instOrState: Instance | State, attributeName: string)

	local self = State.new()
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
				self:_UpdateDependants()
			end
		end)
		if self:_Set(inst:GetAttribute(attributeName)) then
			self:_UpdateDependants()
		end
	end
	if typeof(instOrState) == "Instance" then
		connectAttribute(instOrState)
	elseif typeof(instOrState) == "table" then
		local tabl: table = instOrState
		if tabl.IsA and tabl:IsA("State") then
			local state:State = tabl
			state:Connect(function(cur)
				connectAttribute(cur)
			end)
			connectAttribute(state:Get())
		else
			error("Bad inst state")
		end
	else
		error("Bad inst")
	end
	return self
end
setmetatable(Attribute, State)

return Attribute.new