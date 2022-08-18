
--!strict
local RunService = game:GetService("RunService")

local package = script.Parent.Parent
local packages = package.Parent

local math = require(packages.Math)

local StateAbstract = require(script.Parent.StateAbstract)
local ComputedAbstract = require(script.Parent.ComputedAbstract)

type StateAbstract<T> = StateAbstract.StateAbstract<T>
export type TweenAbstract<T> = StateAbstract<T>

local TweenAbstract = {}
TweenAbstract.__index = TweenAbstract
TweenAbstract.__type = "TweenAbstract"

TweenAbstract.new = function<T>(
	goal: StateAbstract<T>, 
	duration: (number | StateAbstract<number>?), 
	easingStyle: (Enum.EasingStyle | StateAbstract<Enum.EasingStyle>)?, 
	easingDirection: (Enum.EasingDirection | StateAbstract<Enum.EasingDirection>)?
): StateAbstract<T>
	-- print("Start val", goal:Get())
	local self = StateAbstract.new(goal:Get())
	setmetatable(self, TweenAbstract)
	self.Instance.Name = TweenAbstract.__type

	local maid = self._Maid

	local _durationState = StateAbstract.new(if duration == nil then 0.2 else duration)
	maid:GiveTask(_durationState)

	local _easingStyleState = StateAbstract.new(easingStyle or Enum.EasingStyle.Quad)
	maid:GiveTask(_easingStyleState)

	local _easingDirectionState = StateAbstract.new(easingDirection or Enum.EasingDirection.InOut)
	maid:GiveTask(_easingDirectionState)

	maid:GiveTask(goal:Connect(function(curGoal, prevGoal)
		prevGoal = prevGoal or curGoal
		maid._stepComp = ComputedAbstract.new(function(dur, style, dir): nil
			maid._stepSignal = nil
			local start = tick()
			local curVal = self:Get()
			if not dur then return nil end
			if curGoal ~= curVal then
				-- print("Step time")
				local stepSignal
	
				local function step(dt)
					local alpha = (tick() - start)/dur
					if alpha >= 1 then
						stepSignal:Disconnect()
						if self:_Set(curGoal) then
							self:_UpdateDependants()
						end
					elseif prevGoal ~= nil then
						local a = math.Algebra.ease(alpha, style, dir)
						local s = math.Algebra.lerp(if curVal == nil then prevGoal else curVal, prevGoal, a)
						local final = math.Algebra.lerp(s, curGoal, a)
						if self:_Set(final) then
							self:_UpdateDependants()
						end
					end
				end
	
				if RunService:IsServer() then
					stepSignal = RunService.Heartbeat:Connect(step)
				else
					stepSignal = RunService.RenderStepped:Connect(step)
				end
				maid._stepSignal = stepSignal
			end
			return nil
		end, _durationState, _easingStyleState, _easingDirectionState)
		return nil
	end))
	local output: any = self
	return output
end

setmetatable(TweenAbstract, StateAbstract)

return TweenAbstract