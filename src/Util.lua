--!strict
local _Package = script.Parent
local _Packages = _Package.Parent

-- Fusion references
local FusionFolder = _Package.Fusion

-- Fusion states
local FusionStateFolder = FusionFolder.State
local _FusionValue = require(FusionStateFolder.Value) :: (...any) -> any
local _FusionComputed = require(FusionStateFolder.Computed) :: (...any) -> any
-- local _FusionForKeys = require(FusionStateFolder.ForKeys) :: (...any) -> any
-- local _FusionForPairs = require(FusionStateFolder.ForPairs) :: (...any) -> any
-- local _FusionForValues = require(FusionStateFolder.ForValues) :: (...any) -> any
local _FusionObserver = require(FusionStateFolder.Observer) :: (...any) -> any

-- Fusion animations
local FusionAnimationFolder = FusionFolder.Animation
local _FusionSpringScheduler = require(FusionAnimationFolder.SpringScheduler)
local _FusionTweenScheduler = require(FusionAnimationFolder.TweenScheduler)
local _FusionSpring = require(FusionAnimationFolder.Spring) :: (...any) -> any
local _FusionTween = require(FusionAnimationFolder.Tween) :: (...any) -> any

-- Fusion symbols
local FusionInstanceFolder = FusionFolder.Instances
local _FusionChildren = require(FusionInstanceFolder.Children)
local _FusionOnChange = require(FusionInstanceFolder.OnChange)
local _FusionOnEvent = require(FusionInstanceFolder.OnEvent)
local _FusionOut = require(FusionInstanceFolder.Out)
local _FusionRef = require(FusionInstanceFolder.Ref)
local _FusionNew = require(FusionInstanceFolder.New)
local _FusionHydrate = require(FusionInstanceFolder.Hydrate)

-- Fusion Utils

-- Fusion types

-- Packages
local Maid = require(_Packages.Maid)

-- Import types
type PrivateState = any
type Maid = Maid.Maid

type StateUtil<Self> = {
	__index: StateUtil<Self>,
	Destroy: (Self) -> nil,
	Connect:<any>(Self, func: (cur: any, prev: any?) -> nil) -> RBXScriptConnection,
	Get: <any>(Self) -> any,
	Tween: (Self, ...any) -> PrivateState,
	Spring: (Self, ...any) -> PrivateState,
	Else: (Self, ...any) -> PrivateState,
	ForPairs: (Self, ...any) -> nil,
	ForKeys: (Self, ...any) -> nil,
	ForValues: (Self) -> nil,
	Subtract: (Self) -> PrivateState,
	Add: (Self) -> PrivateState,
	Multiply: (Self) -> PrivateState,
	Divide: (Self) -> PrivateState,
	Modulus: (Self) -> PrivateState,
	Power: (Self) -> PrivateState,
	Equal: (Self) -> PrivateState,
	LessThan: (Self) -> PrivateState,
	LessThanEqualTo: (Self) -> PrivateState,
	Concatenate: (Self) -> PrivateState,
	Index: (Self) -> PrivateState,
}

return function(interface: any)
	local Util: StateUtil<any> = {} :: any
	Util.__index = Util

	function Util:Destroy()
		if self["kind"] == "Spring" then
			_FusionSpringScheduler.remove(self :: any)
		end
		if self["kind"] == "Tween" then
			_FusionTweenScheduler.remove(self :: any)
		end

		-- remove dependency references
		if self.dependentSet then
			for state: any in pairs(self.dependentSet) do
				state.dependencySet[self] = nil
			end
		end
		for k, v in pairs(self) do
			self[k] = nil
		end
		setmetatable(self, nil)
		return nil
	end

	-- function Util:Set<any>(initial: any): nil
	-- 	return self:set(initial)
	-- end

	function Util:Get<any>(): any --so that inherited states can still access this functionality
		return self:get()
	end

	function Util:Tween(...)
		return interface.Tween(self, ...) :: any
	end

	function Util:Spring(...)
		return interface.Spring(self, ...)
	end

	function Util:Else(altStateOrVal: any)
		if interface._getIfState(altStateOrVal) then
			return interface.Computed(function(val: any, alt: any): any
				if val == nil then
					return alt
				else
					return val
				end
			end, self, altStateOrVal)
		else
			return interface.Computed(function(val: any?): any
				if val == nil then
					return altStateOrVal :: any
				else
					return val
				end
			end, self)
		end
	end

	function Util:ForPairs(...)
		return interface.ForPairs(self, ...)
	end

	function Util:ForKeys(...)
		return interface.ForKeys(self, ...)
	end

	function Util:ForValues(...)
		return interface.ForValues(self, ...)
	end

	function Util:Subtract(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): any
				return a - b
			end, self, other)
		else
			return interface.Computed(function(a: any): any
				return a - other
			end, self)
		end
	end

	function Util:Add(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): any
				return a + b
			end, self, other)
		else
			return interface.Computed(function(a: any): any
				return a + other
			end, self)
		end
	end

	function Util:Multiply(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): any
				return a * b
			end, self, other)
		else
			return interface.Computed(function(a: any): any
				return a * other
			end, self)
		end
	end

	function Util:Divide(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): any
				return a / b
			end, self, other)
		else
			return interface.Computed(function(a: any): any
				return a / other
			end, self)
		end
	end

	function Util:Modulus(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): any
				return a % b
			end, self, other)
		else
			return interface.Computed(function(a: any): any
				return a % other
			end, self)
		end
	end

	function Util:Power(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): any
				return a ^ b
			end, self, other)
		else
			return interface.Computed(function(a: any): any
				return a ^ other
			end, self)
		end
	end

	function Util:Equal(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): boolean
				return a == b
			end, self, other)
		else
			return interface.Computed(function(a: any): boolean
				return a == other
			end, self)
		end
	end

	function Util:LessThan(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): boolean
				return a < b
			end, self, other)
		else
			return interface.Computed(function(a: any): boolean
				return a < other
			end, self)
		end
	end

	function Util:LessThanEqualTo(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): boolean
				return a <= b
			end, self, other)
		else
			return interface.Computed(function(a: any): boolean
				return a <= other
			end, self)
		end
	end

	function Util:Concatenate(other: any): any
		if interface._getIfState(other) then
			return interface.Computed(function(a: any, b: any): string
				return tostring(a) .. tostring(b)
			end, self, other)
		else
			return interface.Computed(function(a: any): string
				return tostring(a) .. tostring(other)
			end, self)
		end
	end

	function Util:Index(key: any): any
		if interface._getIfState(key) then
			return interface.Computed(function(a: any, b: any): string
				return a[b]
			end, self, key)
		else
			return interface.Computed(function(a: any): string
				return a[key]
			end, self)
		end
	end

	function Util:Connect<any>(func: (cur: any, prev: any?) -> nil): RBXScriptConnection
		local observer = _FusionObserver(self)
		local prev: any = self:Get()
		local connection: RBXScriptConnection = observer:onChange(function()
			local cur = self:Get()
			func(cur, prev)
			prev = cur
		end)
		interface.Maid:GiveTask(connection)
		return connection
	end

	return Util
end
