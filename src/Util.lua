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
local FusionUtil = FusionFolder.Utility
local _FusionCleanUp = require(FusionUtil.cleanup)

-- Fusion types
local _FusionPubTypes = require(FusionFolder.PubTypes)
local _FusionTypes = require(FusionFolder.Types)

-- Packages
local _Maid = require(_Packages.Maid)
local _NetworkUtil = require(_Packages.NetworkUtil)

-- Import types
local _Types = require(_Package.Types)
type State<T> = _Types.State<T>
type ValueState<T> = _Types.ValueState<T>
type CanBeState<T> = _Types.CanBeState<T>
type Maid = _Maid.Maid
type FusionSpecialKey = _Types.FusionSpecialKey
type FusionKey = _Types.FusionKey
type FusionPropertyTable = _Types.FusionPropertyTable

return function(interface: any)

	local Util = {}
	Util.__index = Util
	
	function Util:Destroy()
		if self["kind"] == "Spring" then _FusionSpringScheduler.remove(self :: any) end
		if self["kind"] == "Tween" then _FusionTweenScheduler.remove(self :: any) end
		-- for k, v in pairs(self) do
			-- self[k] = nil
		-- end
		self._value = nil
		-- setmetatable(self, nil)
		return nil
	end

	-- function Util:Set<T>(initial: T): nil
	-- 	return self:set(initial)
	-- end

	function Util:Get<T>(): T --so that inherited states can still access this functionality
		return self:get()
	end

	function Util:Tween<T>(...): State<T>
		return interface.Tween(self, ...)
	end

	function Util:Spring<T>(...): State<T>
		return interface.Spring(self, ...)
	end

	function Util:Else<T>(altStateOrVal: CanBeState<T>): State<T>
		if interface._getIfState(altStateOrVal) then
			return interface.Computed(function(val: T?, alt: T): T
				if val == nil then
					return alt
				else
					return val
				end
			end, self, altStateOrVal)
		else
			return interface.Computed(function(val: T?): T
				if val == nil then
					return altStateOrVal :: any
				else
					return val
				end
			end, self)
		end
	end
	
	function Util:Transmit<T>(...:any): RBXScriptConnection
		return interface.Transmit(...)
	end
	
	function Util:Receive<T>(...:any): State<T>
		return interface.Receive(...)
	end

	function Util:Connect<T>(func: (cur: T, prev: T?) -> nil): RBXScriptConnection
		local observer = _FusionObserver(self)
		local prev: T = self:Get()
		local connection: RBXScriptConnection = observer:onChange(function()
			local cur = self:Get()
			func(cur, prev)
			prev = cur
		end)
		interface._Maid:GiveTask(connection)
		return connection
	end

	return Util
end