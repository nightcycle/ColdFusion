--!strict
local _Package = script
local _Packages = _Package.Parent

local _NetworkUtil = require(_Packages.NetworkUtil)
local _Maid = require(_Packages.Maid)

-- Import types
local _Types = require(_Package.Types)
export type State<T> = _Types.State<T>
export type ValueState<T> = _Types.ValueState<T>
export type CanBeState<T> = _Types.CanBeState<T>
type Maid = _Maid.Maid
type FusionSpecialKey = _Types.FusionSpecialKey
type FusionKey = _Types.FusionKey
type FusionPropertyTable = _Types.FusionPropertyTable

-- Fusion references
local FusionFolder = _Package.Fusion

-- Fusion states
local FusionStateFolder = FusionFolder.State
local _FusionValue = require(FusionStateFolder.Value) :: (...any) -> any
local _FusionComputed = require(FusionStateFolder.Computed) :: (...any) -> any
-- local _FusionForKeys = require(FusionStateFolder.ForKeys) :: (...any) -> any
-- local _FusionForPairs = require(FusionStateFolder.ForPairs) :: (...any) -> any
-- local _FusionForValues = require(FusionStateFolder.ForValues) :: (...any) -> any
-- local _FusionObserver = require(FusionStateFolder.Observer) :: (...any) -> any

-- Fusion animations
local FusionAnimationFolder = FusionFolder.Animation
local _FusionSpring = require(FusionAnimationFolder.Spring) :: (...any) -> any
local _FusionTween = require(FusionAnimationFolder.Tween) :: (...any) -> any

-- Modules
local _Interface = require(_Package.Interface)
local _Util = require(_Package.Util)

export type Fuse = {
	fuse: (maid: Maid?) -> Fuse,

	-- Instance related
	new: (className: string) -> ((propertyTable: FusionPropertyTable) -> Instance),
	mount: (target: Instance) -> ((propertyTable: FusionPropertyTable) -> Instance),
	import: <T>(maybeState: CanBeState<T>?, CanBeState<T>) -> State<T>,

	-- Symbols
	CHILDREN: FusionSpecialKey,

	-- Constructed Symbols
	REF: FusionSpecialKey,
	OUT: (propertyName: string) -> FusionSpecialKey,
	ON_EVENT: (eventName: string) -> FusionSpecialKey,
	ON_PROPERTY: (propertyName: string) -> FusionSpecialKey,

	-- States
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
	-- Tween: <T>(
	-- 	goal: State<T>, 
	-- 	duration: number?, 
	-- 	easingStyle: Enum.EasingStyle?, 
	-- 	easingDirection: Enum.EasingDirection?,
	-- 	repetitions: number?,
	-- 	reverses: boolean?,
	-- 	delayTime: number?
	-- ) -> State<T>,
	-- Spring: <T>(
	-- 	goal: State<T>,
	-- 	speed: number?,
	-- 	dampingRatio: number?
	-- ) -> State<T>,

	-- ForPairs: <KI, VI, KO, VO, M>(
	-- 	inputTable: CanBeState<{[KI]: VI}>, 
	-- 	processor: (KI, VI) -> (KO, VO, M?), 
	-- 	destructor: (KO, VO, M?) -> ()?
	-- ) -> ForPairs<KO, VO>,
	-- ForKeys: <KI, KO, M>(
	-- 	inputTable: CanBeState<{[KI]: any}>, 
	-- 	processor: (KI) -> (KO, M?), 
	-- 	destructor: (KO, M?) -> ()?
	-- ) -> ForKeys<KO, any>,
	-- ForValues: <VI, VO, M>(
	-- 	inputTable: CanBeState<{[any]: VI}>, 
	-- 	processor: (VI) -> (VO, M?), 
	-- 	destructor: (VO, M?) -> ()?
	-- ) -> ForValues<any, VO>,
	-- Observer: (
	-- 	watchedState: State<any>
	-- ) -> Observer,
}

-- Constants
local WEAK_KEYS_METATABLE = {__mode = "k"}

-- Fuse class
local Fuse = {}
Fuse.__index = Fuse

--- Destroys the fuse and all the states it created.
function Fuse:Destroy()
	if not self._IsAlive then return end
	self._IsAlive = false
	for k, state: any in pairs(self._States) do
		self._States[k] = nil
		state:Destroy()
		-- setmetatable(state, nil)
		-- for k, v in pairs(state) do
		-- 	state[k] = nil
		-- end
	end
	setmetatable(self._States, nil)
	for k, v in pairs(self) do
		self[k] = nil
	end
	setmetatable(self, nil)
end

--- Creates a fuse
function Fuse.fuse(maid: Maid?): Fuse
	
	maid = maid or _Maid.new()
	assert(maid ~= nil)

	local states = {} :: any
	setmetatable(states, WEAK_KEYS_METATABLE)
	
	local _interface = _Interface(maid)

	local _FusionMetatables: {[any]: any} = {}

	_interface._init = function<T>(
		state: State<T>,
		fusionConstructor: (...any) -> State<T>
	): State<T>
		table.insert(states, state)
		setmetatable(state, _FusionMetatables[fusionConstructor])
		return state
	end

	_FusionMetatables[_FusionValue] = setmetatable(_Util(_interface), getmetatable(_FusionValue(0)))
	_FusionMetatables[_FusionComputed] = setmetatable(_Util(_interface), getmetatable(_FusionComputed(function() return nil end)))
	_FusionMetatables[_FusionTween] = setmetatable(_Util(_interface), getmetatable(_FusionTween(_FusionValue(0))))
	_FusionMetatables[_FusionSpring] = setmetatable(_Util(_interface), getmetatable(_FusionSpring(_FusionValue(0))))

	local self = {
		_IsAlive = true,
		_States = states :: {[number]: any},
		_Interface = _interface,
	}
	setmetatable(self, Fuse)

	self.Computed = function(...)
		return _interface.Computed(...)
	end

	self.Value = function(...)
		local val = _interface.Value(...)
		val.Set = function(s, v: any)
			s:set(v)
		end
		return val
	end

	self.new = function(...)
		return _interface.new(...)
	end

	self.ON_EVENT = _interface.ON_EVENT
	self.ON_PROPERTY = _interface.ON_EVENT
	self.CHILDREN = _interface.CHILDREN
	self.OUT = _interface.OUT
	self.REF = _interface.REF

	self.Attribute = function<T>(...)
		return _interface.Attribute(...)
	end

	self.Property = function<T>(...)
		return _interface.Property(...)
	end

	self.import = function<T>(...)
		return _interface.import(...)
	end

	return self :: any
end


return Fuse.fuse()