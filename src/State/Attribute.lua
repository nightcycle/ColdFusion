
--!strict
local State = require(script.Parent)
export type State = State.State

local Attribute = {}
Attribute.__index = Attribute
Attribute.__type = "Attribute"

function Attribute.new(instOrState: Instance | State, attributeName: string)

	local self = State.new()
	setmetatable(self, Attribute)
	self.Instance.Name = Attribute.__type

	local maid = self._Maid
	local function connectAttribute(inst: Instance)
		maid["_attribute"..attributeName] = nil
		if not inst then return end
		maid["_attribute"..attributeName] = inst:GetAttributeChangedSignal(attributeName):Connect(function()
			self:_Set(inst:GetAttribute(attributeName))
		end)
	end
	if typeof(instOrState) == "Instance" then
		
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
end
setmetatable(Attribute, State)

return Attribute.new