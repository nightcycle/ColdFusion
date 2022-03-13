--!strict

--[[
	The entry point for the Fusion library.
]]

local PubTypes = require(script.PubTypes)
local restrictRead = require(script.Utility.restrictRead)

export type StateObject<T> = PubTypes.StateObject<T>
export type CanBeState<T> = PubTypes.CanBeState<T>
export type Symbol = PubTypes.Symbol
export type Value<T> = PubTypes.Value<T>
export type Computed<T> = PubTypes.Computed<T>
export type ComputedPairs<K, V> = PubTypes.ComputedPairs<K, V>
export type Observe = PubTypes.Observe
export type Tween<T> = PubTypes.Tween<T>
export type Spring<T> = PubTypes.Spring<T>

type Fusion = {
	version: PubTypes.Version,

	Mount: (inst: Instance) -> ((propertyTable: PubTypes.PropertyTable) -> Instance),

	New: (className: string) -> ((propertyTable: PubTypes.PropertyTable) -> Instance),
	Ref: PubTypes.SpecialKey,
	Cleanup: PubTypes.SpecialKey,
	Children: PubTypes.SpecialKey,
	Event: (eventName: string) -> PubTypes.SpecialKey,
	Changed: (propertyName: string) -> PubTypes.SpecialKey,
	
	Computed: <T>(callback: () -> T) -> Computed<T>,
	ComputedPairs: <K, VI, VO>(inputTable: CanBeState<{[K]: VI}>, processor: (K, VI) -> VO, destructor: (VO) -> ()?) -> ComputedPairs<K, VO>,
	Value: <T>(initialValue: T) -> Value<T>,
	Observe: (watchedState: StateObject<any>) -> Observe,

	Tween: <T>(goalState: StateObject<T>, tweenInfo: TweenInfo?) -> Tween<T>,
	Spring: <T>(goalState: StateObject<T>, speed: number?, damping: number?) -> Spring<T>
}

return restrictRead("Fusion", {
	version = {major = 0, minor = 2, isRelease = false},

	--additions
	Mount = require(script.Instances.Mount), --applies fusion to existing object
	mount = require(script.Instances.Mount),
	Construct = require(script.Instances.Construct), --creates a pseudo class instance
	construct = require(script.Instances.Construct),
	Network = require(script.State.Network), --returns state based on code running from client or server
	network = require(script.State.Network),
	Receiver = require(script.State.Receiver), --listens for transmissions
	receiver = require(script.State.Receiver),
	Transmit = require(script.State.Receiver), --fires out state to receivers
	transmit = require(script.State.Receiver),
	Signal = require(script.State.Signal), --converts signal into state
	signal = require(script.State.Signal),

	--Vanilla fusion
	New = require(script.Instances.New),
	new = require(script.Instances.New), --I like my constructors lowercase
	Ref = require(script.Instances.Ref), --abstract class?
	Out = require(script.Instances.Out), --abstract class?
	Cleanup = require(script.Instances.Cleanup), --abstract class?
	Children = require(script.Instances.Children),
	Event = require(script.Instances.Event),
	Changed = require(script.Instances.OnChanged),
	
	Computed = require(script.State.Computed),
	ComputedPairs = require(script.State.ComputedPairs),
	Value = require(script.State.Value),
	Observe = require(script.State.Observe),
	
	Tween = require(script.Animation.Tween),
	Spring = require(script.Animation.Spring),

	--deprecated stuff to work with legacy code
	State = require(script.State.Value),
	Compat = require(script.State.Observe),
}) :: Fusion
