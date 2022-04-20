--!nonstrict

--[[
	Constructs a new computed state object, which follows the value of another
	state object using a tween.
]]

local Package = script.Parent.Parent
local PubTypes = require(Package.PubTypes)
local Types = require(Package.Types)
local TweenScheduler = require(Package.Animation.TweenScheduler)
local useDependency = require(Package.Dependencies.useDependency)
local initDependency = require(Package.Dependencies.initDependency)
local logError = require(Package.Logging.logError)
local logErrorNonFatal = require(Package.Logging.logErrorNonFatal)

local Abstract = require(script.Parent.Parent:WaitForChild("State"):WaitForChild("Abstract"))
local class = {}
class.__index = class
setmetatable(class, Abstract)
local WEAK_KEYS_METATABLE = {__mode = "k"}

--[[
	Returns the current value of this Tween object.
	The object will be registered as a dependency unless `asDependency` is false.
]]
function class:Get(asDependency: boolean?): any
	if asDependency ~= false then
		useDependency(self)
	end
	return self._value
end

function class:get(asDependency: boolean?): any
	return self:Get(asDependency)
end

--[[
	Called when the goal state changes value; this will initiate a new tween.
	Returns false as the current value doesn't change right away.
]]
function class:update(): boolean
	local goalValue = self._goalState:Get(false)

	-- if the goal hasn't changed, then this is a TweenInfo change.
	-- in that case, if we're not currently animating, we can skip everything
	if goalValue == self._nextValue and not self._currentlyAnimating then
		return false
	end

	local tweenInfo = self._tweenInfo
	if self._tweenInfoIsState then
		tweenInfo = tweenInfo:Get()
	end

	-- if we receive a bad TweenInfo, then error and stop the update
	if typeof(tweenInfo) ~= "TweenInfo" then
		logErrorNonFatal("mistypedTweenInfo", nil, typeof(tweenInfo))
		return false
	end

	self._prevValue = self._value
	self._nextValue = goalValue

	self._currentTweenStartTime = os.clock()
	self._currentTweenInfo = tweenInfo

	local tweenDuration = tweenInfo.DelayTime + tweenInfo.Time
	if tweenInfo.Reverses then
		tweenDuration += tweenInfo.Time
	end
	tweenDuration *= self._tweenInfo.RepeatCount + 1
	self._currentTweenDuration = tweenDuration

	-- start animating this tween
	TweenScheduler.add(self)

	return false
end

local function Tween(
	goalState: PubTypes.StateObject<PubTypes.Animatable>,
	tweenInfo: PubTypes.CanBeState<TweenInfo>?
)
	local currentValue = goalState:Get(false)

	-- apply defaults for tween info
	if tweenInfo == nil then
		tweenInfo = TweenInfo.new()
	end

	local dependencySet = {[goalState] = true}
	local tweenInfoIsState = typeof(tweenInfo) == "table" and tweenInfo.type == "State"

	if tweenInfoIsState then
		dependencySet[tweenInfo] = true
	end

	if typeof(tweenInfo) ~= "TweenInfo" then
		logError("mistypedTweenInfo", nil, typeof(tweenInfo))
	end
	local self = setmetatable(Abstract.new("Tween", currentValue), class)
	self.dependencySet = dependencySet
	self._goalState = goalState
	self._tweenInfo = tweenInfo
	self._tweenInfoIsState = tweenInfoIsState
	self._prevValue = currentValue
	self._nextValue = currentValue
	self:_SetValue(currentValue)
	self._currentTweenInfo = tweenInfo
	self._currentTweenDuration = 0
	self._currentTweenStartTime = 0
	self._currentlyAnimating = false

	initDependency(self)
	-- add this object to the goal state's dependent set
	goalState.dependentSet[self] = true

	return self
end

return Tween