--!strict
local StateAbstract = require(script.Parent.StateAbstract)
type StateAbstract<T> = StateAbstract.StateAbstract<T>
export type ComputedAbstract<T> = StateAbstract<T>
local ComputedAbstract = {}
ComputedAbstract.__index = ComputedAbstract
ComputedAbstract.__type = "Computed"

ComputedAbstract.new = function<T, G...>(solver: (G...) -> T, ...: StateAbstract<any>): StateAbstract<T>
	local self = StateAbstract.new(nil)
	setmetatable(self, ComputedAbstract)
	self.Instance.Name = ComputedAbstract.__type

	local maid = self._Maid

	local states = {}
	for i, state: StateAbstract<any> in ipairs({...}) do
		states[i] = state
		self:Bind(state)
	end

	local inst = self.Instance
	local updateEvent = inst:FindFirstChild("Update")
	assert(updateEvent ~= nil and updateEvent:IsA("BindableEvent"))
	local function solve()
		local vals = {}
		for i, state in ipairs(states) do
			if rawget(state, "Alive") == true then
				vals[i] = state:Get()
			end
		end
		local val = solver(table.unpack(vals, 1, #states))
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
setmetatable(ComputedAbstract, StateAbstract)

return ComputedAbstract