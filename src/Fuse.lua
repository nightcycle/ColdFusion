--!strict
local _Package = script.Parent
local _Packages = _Package.Parent

-- Import types
local _Maid = require(_Packages.Maid)
local _Types = require(_Package.Types)

type State<T> = _Types.State<T>
type ValueState<T> = _Types.ValueState<T>
type CanBeState<T> = _Types.CanBeState<T>
type Maid = _Maid.Maid
type FusionSpecialKey = _Types.FusionSpecialKey
type FusionKey = _Types.FusionKey
type FusionPropertyTable = _Types.FusionPropertyTable

-- Fusion references
local FusionFolder = _Package.Fusion

-- Fusion states
local FusionStateFolder = FusionFolder.State
local FusionValue = require(FusionStateFolder.Value)
local FusionComputed = require(FusionStateFolder.Computed)
local FusionForKeys = require(FusionStateFolder.ForKeys)
local FusionForPairs = require(FusionStateFolder.ForPairs)
local FusionForValues = require(FusionStateFolder.ForValues)
local FusionObserver = require(FusionStateFolder.Observer)

-- Fusion animations
local FusionAnimationFolder = FusionFolder.Animation
local FusionSpring = require(FusionAnimationFolder.Spring)
local FusionTween = require(FusionAnimationFolder.Tween)

-- Fusion symbols
local FusionInstanceFolder = FusionFolder.Instances
local FusionChildren = require(FusionInstanceFolder.Children)
local FusionOnChange = require(FusionInstanceFolder.OnChange)
local FusionOnEvent = require(FusionInstanceFolder.OnEvent)
local FusionOut = require(FusionInstanceFolder.Out)
local FusionRef = require(FusionInstanceFolder.Ref)
local FusionNew = require(FusionInstanceFolder.New)
local FusionHydrate = require(FusionInstanceFolder.Hydrate)

-- Fusion Utils
local FusionUtil = FusionFolder.Utility
local FusionCleanUp = require(FusionUtil.cleanup)

-- Fusion types
local FusionPubTypes = require(FusionFolder.PubTypes)
local FusionTypes = require(FusionFolder.Types)

export type Fuse = {
	new: (className: string) -> ((propertyTable: FusionPropertyTable) -> Instance),
	mount: (target: Instance) -> ((propertyTable: FusionPropertyTable) -> Instance),

	REF: FusionSpecialKey,
	CLEANUP: FusionSpecialKey,
	CHILDREN: FusionSpecialKey,
	OUT: FusionSpecialKey,
	ATTRIBUTES: FusionSpecialKey,

	ON_EVENT: (eventName: string) -> FusionSpecialKey,
	PROPERTY_CHANGED: (propertyName: string) -> FusionSpecialKey,
	ATTRIBUTE_CHANGED: (attributeName: string) -> FusionSpecialKey,

	Property: <T>(inst: CanBeState<Instance>, propertyName: CanBeState<string>) -> State<T>,
	Attribute: <T>(inst: CanBeState<Instance>, attributeName: CanBeState<string>) -> State<T>,
	Value: <T>(initialValue: T) -> ValueState<T>,
	Computed: <T, A, B, C, D, E, F, G, H, I, J, K, L>(
		(A, B, C, D, E, F, G, H, I, J, K, L, ...any) -> T, 
		(State<A>)?,
		(State<B>)?,
		(State<C>)?,
		(State<D>)?,
		(State<E>)?,
		(State<F>)?,
		(State<G>)?,
		(State<H>)?,
		(State<I>)?,
		(State<J>)?,
		(State<K>)?,
		(State<L>)?,
		...(State<any>)
	) -> State<T>,
	Tween: <T>(goalState: State<T>, tweenInfo: TweenInfo?) -> State<T>,
	Spring: <T>(goalState: State<T>, speed: number?, damping: number?) -> State<T>,

	ForPairs: <KI, VI, KO, VO, M>(
		inputTable: CanBeState<{[KI]: VI}>, 
		processor: (KI, VI) -> (KO, VO, M?), 
		destructor: (KO, VO, M?) -> ()?
	) -> ForPairs<KO, VO>,
	ForKeys: <KI, KO, M>(
		inputTable: CanBeState<{[KI]: any}>, 
		processor: (KI) -> (KO, M?), 
		destructor: (KO, M?) -> ()?
	) -> ForKeys<KO, any>,
	ForValues: <VI, VO, M>(
		inputTable: CanBeState<{[any]: VI}>, 
		processor: (VI) -> (VO, M?), 
		destructor: (VO, M?) -> ()?
	) -> ForValues<any, VO>,
	Observer: (
		watchedState: State<any>
	) -> Observer,
}

-- Constants
local WEAK_KEYS_METATABLE = {__mode = "k"}

-- Fuse class
local Fuse = {}
Fuse.__index = Fuse

function Fuse:Destroy()
	if not self._IsAlive then return end
	self._IsAlive = false
	for k, state: {any} in pairs(self._States) do
		self._States[k] = nil
		setmetatable(state, nil)
		for k, v in pairs(state) do
			state[k] = nil
		end
	end
	setmetatable(self._States, nil)
	for k, v in pairs(self) do
		self[k] = nil
	end
	setmetatable(self, nil)
end

function Fuse.fuse(maid: Maid): Fuse
	
	local states = {} :: any
	setmetatable(states, WEAK_KEYS_METATABLE)

	local self = {
		_IsAlive = true,
		_States = states :: {[number]: any},
	}
	setmetatable(self, Fuse)

	local Util = {}
	Util.__index = Util
	
	local function initFusionState(state: {any})
		setmetatable(state, Util)
		table.insert(self._States, state)
	end

	
	function getIfState(possibleState: any): boolean
		if typeof(possibleState) == "table" then
			if possibleState.Get or possibleState.get then
				return true
			end
		end
		return false
	end
	

	function Util:Tween<T>(
		duration: CanBeState<number>?, 
		easingStyle: CanBeState<Enum.EasingStyle>?, 
		easingDirection: CanBeState<Enum.EasingDirection>?
	): State<T>
		return nil :: any
	end
	
	function Util:Else<T>(alt: CanBeState<T>): State<T>
		return nil :: any
	end
	
	function Util:Transmit<T>(remoteName: string, id: string?, rate: number?, player: Player?): State<T>
		return nil :: any
	end
	
	function Util:Receive<T>(remoteName: string, id: string?, player: Player?): State<T>
		return nil :: any
	end
	
	function Util:CleanUp<T>(): State<T>
		return nil :: any
	end
	
	function Util:Delay<T>(val: CanBeState<number>): State<T>
		return nil :: any
	end
	
	function Util:Connect<T>(func: (cur: T, prev: T?) -> nil)
		return nil :: any
	end
	
	function Util:Destroy(): nil
		return nil :: any
	end

	function Util:Set<T>(initial: T): nil
		return nil
	end

	function Util:Get<T>(): T --so that inherited states can still access this functionality
		return nil :: any
	end

	-- States
	function self.Computed<T>(processor: (...any) -> T, ...:any): State<T>

		local paramStates = {} :: {[number]: any}

		for i, state: State<any> in ipairs({...}) do
			table.insert(paramStates, state)
		end

		local compState = FusionComputed(function()
			local vals = {}
			for i, paramState in ipairs(paramStates) do
				if rawget(paramState, "Alive") == true then
					vals[i] = paramState:Get()
				end
			end
			local val = processor(table.unpack(vals, 1, #states))
			return val
		end)

		initFusionState(compState)

		return compState :: any
	end

	
	function self.Value<T>(initalVal: T): ValueState<T>

		local valState = FusionValue(initalVal)
		initFusionState(valState)

		return valState :: any
	end

	function self.Attribute<T>(inst: CanBeState<Instance>, attributeName: CanBeState<string>): State<T>	

		local instState: State<Instance> = if not getIfState(inst) then self.Value(inst) else inst :: any
		local nameState: State<string> = if not getIfState(attributeName) then self.Value(attributeName) else attributeName :: any

		return self.Computed(function(inst, name): T
			return inst:GetAttribute(name)
		end, instState, nameState)
	end
	
	function self.Property<T>(inst: CanBeState<Instance>, attributeName: CanBeState<string>): State<T>

		local instState: State<Instance> = if not getIfState(inst) then self.Value(inst) else inst :: any
		local nameState: State<string> = if not getIfState(attributeName) then self.Value(attributeName) else attributeName :: any

		return self.Computed(function(inst: Instance, name: string): T
			return (inst :: any)[name]
		end, instState, nameState)
	end
	
	function self.Tween<T>(goal: CanBeState<Instance>, duration: CanBeState<number>?, easingStyle: CanBeState<Enum.EasingStyle>?, easingDirection: CanBeState<Enum.EasingDirection>?): State<T>
		if easingStyle == nil then
			easingStyle = self.Value(Enum.EasingStyle.Quad)
		elseif getIfState(easingStyle) then
			easingStyle = self.Value(easingStyle :: any)
		end
		if easingStyle == nil then
			easingDirection = self.Value(Enum.EasingDirection.InOut)
		elseif getIfState(easingStyle) then
			easingDirection = self.Value(easingDirection :: any)
		end
		

		local tweenState = FusionTween(goal :: any, easingStyle :: any)
		initFusionState(tweenState)
		return nil :: any
	end

	function self.Spring<T>()
		return nil :: any
	end
		
	function self.ForPairs<T>()
		return nil :: any
	end
	
	function self.ForKeys<T>()
		return nil :: any
	end
	
	function self.ForValues<T>()
		return nil :: any
	end
	

	function self.new()
		return nil :: any
	end
	
	--- Same as Hydrate
	function self.mount()
		return nil :: any
	end

	self.OUT = FusionOut :: any
	self.REF = FusionRef :: any
	self.CHILDREN = FusionChildren :: any
	self.CLEANUP = FusionCleanUp :: any
	self.EVENT = FusionOnEvent :: any
	self.CHANGED = FusionOnChange :: any


	return self :: any
end


return Fuse