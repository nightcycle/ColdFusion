local State = require(script.Parent.State)
local Tween = require(script.Parent.State.Tween)
local Computed = require(script.Parent.State.Computed)
type State = State.State

local metas = {}

for i, class in ipairs(script.Parent.State:GetChildren()) do
	if class:IsA("ModuleScript") then
		assert(class:IsA("ModuleScript"))
		local Class = require(class)
		local Util = {}
		Util.__index = Util
		setmetatable(Util, Class)
		
		function Util:Tween(duration: number | State?, easingStyle: string | EnumItem | State?, easingDirection: string | EnumItem | State?): State?
			if not self.Alive then return end
			local maid = self._Maid
			
			if not maid then return end
			assert(maid ~= nil)
		
			local tween = Tween.new(self, duration, easingStyle, easingDirection)
			maid:GiveTask(tween)
		
			return tween
		end
		
		function Util:Else(alt: any | State): State?
			if not self.Alive then return end
			local compState = Computed.new(self, function(v)
				if v ~= nil then
					return v
				else
					return alt
				end
			end)
			compState:Bind(self)
			self._Maid:GiveTask(compState)
			return compState
		end

		metas[Class] = Util
	end
end

return function(class: State, ...:any): State
	local state: State = class.new(...)
	local meta = metas[class]
	assert(meta ~= nil)
	setmetatable(state, meta)
	return state
end
