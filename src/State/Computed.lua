
--!strict
local State = require(script.Parent)
export type State = State.State

local Computed = {}
Computed.__index = Computed
Computed.__type = "Computed"

function Computed.new(...)

	local self = State.new()
	setmetatable(self, Computed)
	self.Instance.Name = Computed.__type

	local maid = self._Maid

	local params = {...}
	local callback = params[#params]
	local states = {}
	local stateCount = math.max(#params - 1, 0)
	for i=1, stateCount do
		local state = params[i]
		states[i] = state
		self:Bind(state)
	end

	local inst = self.Instance
	local updateEvent = inst:FindFirstChild("Update")

	local function solve()
		local vals = {}
		for i, state in ipairs(states) do
			if rawget(state, "Alive") == true then
				vals[i] = state:Get()
			end
		end
		local val = callback(table.unpack(vals, 1, stateCount))
		-- print("Update Val", val)
		if self:_Set(val) then
			self:_UpdateDependants()
		end
		return val
	end

	maid:GiveTask(updateEvent.Event:Connect(solve))
	solve()
	return self
end
setmetatable(Computed, State)
return Computed.new