
--!strict
local StateAbstract = require(script.Parent.StateAbstract)
type StateAbstract<T> = StateAbstract.StateAbstract<T>

local State = require(script.Parent.State)
local ComputedAbstract = require(script.Parent.ComputedAbstract)

type ComputedAbstract<T> = ComputedAbstract.ComputedAbstract<T>
type State<T> = State.State<T>

local Computed = {}
Computed.__index = Computed
Computed.__type = "Computed"
setmetatable(Computed, State)

Computed.new = function<T, G...>(solver: (G...) -> T, ...: StateAbstract<any>): StateAbstract<T>
	-- print("Start val", goal:Get())
	local self = ComputedAbstract.new(solver, ...)
	setmetatable(self, Computed)
	
	local output: any = self

	return output
end

return Computed