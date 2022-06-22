
--!strict
local State = require(script.Parent)
export type State = State.State

local Computed = {}
Computed.__index = Computed
Computed.__type = "Value"


function Computed.new(...)

	local self = State.new()
	setmetatable(self, Computed)
	self.Instance.Name = Computed.__type

	local maid = self._Maid

	local params = {...}
	local callback = params[#params]
	local states = {}
	for i=1, math.max(#params - 1, 0) do
		local state = params[i]
		states[i] = state
		self:Bind(state)
	end

	local inst = self.Instance
	local updateEvent = inst:FindFirstChild("Update")

	maid:GiveTask(updateEvent.Event:Connect(function()
		-- print("Compute event", self.Id)
		local vals = {}
		for i, state in ipairs(states) do
			if rawget(state, "Alive") == true then
				vals[i] = state:Get()
			end
		end
		local val = callback(table.unpack(vals))
		-- print("Compute result", val, self.Id)
		self:_Set(val)
		return val
	end))
	updateEvent:Fire()

	return self
end
setmetatable(Computed, State)
return Computed.new