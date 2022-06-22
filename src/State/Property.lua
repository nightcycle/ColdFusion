
--!strict
local State = require(script.Parent)
export type State = State.State

local Property = {}
Property.__index = Property
Property.__type = "Property"

function Property.new(instOrState: Instance | State, propertyName: string)

	local self = State.new()
	self.Instance.Name = Property.__type
	setmetatable(self, Property)

	local maid = self._Maid
	local function connectAttribute(inst: Instance)
		maid["_attribute"..propertyName] = nil
		if not inst then return end
		maid["_attribute"..propertyName] = inst:GetAttributeChangedSignal(propertyName):Connect(function()
			self:_Set(inst:GetAttribute(propertyName))
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
setmetatable(Property, State)

return Property.new