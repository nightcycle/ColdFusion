
--!strict
local RunService = game:GetService("RunService")

local package = script.Parent.Parent
local packages = package.Parent

local math = require(packages:WaitForChild("math"))

local State = require(script.Parent)
local Value = require(script.Parent.Value)

export type State = State.State

local Tween = {}
Tween.__index = Tween
Tween.__type = "Tween"

function Tween.new(goal: State, duration: number | State?, easingStyle: string | EnumItem | State?, easingDirection: string | EnumItem | State?)
	-- print("Start val", goal:Get())
	local self = State.new(goal:Get())
	setmetatable(self, Tween)
	self.Instance.Name = Tween.__type

	local maid = self._Maid
	duration = Value(if duration == nil then 0.2 else duration)

	maid:GiveTask(duration)

	easingStyle = Value(easingStyle)
	maid:GiveTask(easingStyle)

	easingDirection = Value(easingDirection)
	maid:GiveTask(easingDirection)

	local Fuse = require(script.Parent.Parent.Fuse)

	maid:GiveTask(goal:Connect(function(curGoal, prevGoal)
		-- print("Tween Connect", curGoal, prevGoal, self:Get())
		prevGoal = prevGoal or curGoal
		local fuse = Fuse()
		maid._stepComp = fuse
		fuse.Computed(duration, easingStyle, easingDirection, function(dur, style, dir)
			-- print("COMPIN TIME", "CurGoal", curGoal, "PrevGoal", prevGoal, "CurVal", self:Get())
			maid._stepSignal = nil
			local start = tick()
			local curVal = self:Get()
			if not dur then return end
			if curGoal ~= curVal then
				-- print("Step time")
				local stepSignal
	
				local function step(dt)
					local alpha = (tick() - start)/dur
					-- print("Alpha", alpha)
					if alpha >= 1 then
						stepSignal:Disconnect()
						-- print("Set to goal", curGoal)
						if self:_Set(curGoal) then
							self:_UpdateDependants()
						end
					elseif prevGoal ~= nil then
						local a = math.Algebra.ease(alpha, style, dir)
						local s = math.Algebra.lerp(if curVal == nil then prevGoal else curVal, prevGoal, a)
						local final = math.Algebra.lerp(s, curGoal, a)
						-- print("S", s, "V", final, "A", a)
						-- print("Final", final)
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
			-- else
			-- 	print("These are equal")
			end
		end)
	end))

	return self
end
setmetatable(Tween, State)
return Tween.new