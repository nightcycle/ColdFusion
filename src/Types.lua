--!strict
local Package = script.Parent
local Packages = Package.Parent

-- Packages
local Maid = require(Packages:WaitForChild("Maid"))
local TableUtil = require(Packages:WaitForChild("TableUtil"))

-- Types
type Maid = Maid.Maid
type List<V> = TableUtil.List<V>
type Dict<K, V> = TableUtil.Dict<K, V>

export type BaseState<T> = {
	Get: (any) -> T,
}
export type CanBeState<T> = (BaseState<T> | T)

--- @type CanBeState<T> (State | T)
--- @within ColdFusion

export type State<T> = BaseState<T> & {
	-- Animation
	Tween: (
		self: BaseState<T>,
		duration: CanBeState<number>?,
		easingStyle: CanBeState<Enum.EasingStyle>?,
		easingDirection: CanBeState<Enum.EasingDirection>?,
		repetitions: CanBeState<number>?,
		reverses: CanBeState<boolean>?,
		delayTime: CanBeState<number>?
	) -> State<T>,
	Spring: (self: BaseState<T>, speed: CanBeState<number>?, dampingRatio: CanBeState<number>?) -> State<T>,
	
	-- Tables
	ForKeys: <KI, KO>(self: BaseState<T>, processor: (key: KI, maid: Maid) -> KO) -> BaseState<{ [KO]: any }>
		& State<T>,
	ForValues: <VI, VO>(
		self: BaseState<T>,
		processor: (val: VI, maid: Maid) -> VO
	) -> BaseState<{ [any]: VO }> & State<T>,
	ForPairs: <KI, VI, KO, VO>(
		self: BaseState<T>,
		processor: (key: KI, val: VI, maid: Maid) -> VO
	) -> BaseState<{ [KO]: VO }> & State<T>,

	Connect: (self: BaseState<T>, func: (cur: T, prev: T?) -> nil) -> () -> nil,
	Destroy: (self: BaseState<T>) -> nil,
	Read: <K>(self: BaseState<T>, key: CanBeState<any>) -> State<T> & BaseState<K>,

	-- Math
	Add: (self: BaseState<T>, other: CanBeState<T>) -> State<T>,
	Subract: (self: BaseState<T>, other: CanBeState<T>) -> State<T>,
	Multiply: (self: BaseState<T>, other: CanBeState<T>) -> State<T>,
	Divide: (self: BaseState<T>, other: CanBeState<T>) -> State<T>,
	Modulus: (self: BaseState<T>, other: CanBeState<T>) -> State<T>,
	Power: (self: BaseState<T>, other: CanBeState<T>) -> State<T>,
	Sign: (self: BaseState<number>) -> BaseState<number> & State<T>,
	Clamp: (
		self: BaseState<number>,
		min: CanBeState<number>, 
		max: CanBeState<number>
	) -> BaseState<number> & State<T>,
	Min: (
		self: BaseState<number>,
		other: CanBeState<number>
	) -> BaseState<number> & State<T>,
	Max: (
		self: BaseState<number>,
		other: CanBeState<number>
	) -> BaseState<number> & State<T>,
	Degree: (
		self: BaseState<number>
	) -> BaseState<number> & State<T>,
	Radian: (
		self: BaseState<number>
	) -> BaseState<number> & State<T>,
	Round: (
		self: BaseState<number>
	) -> BaseState<number> & State<T>,	
	Floor: (
		self: BaseState<number>
	) -> BaseState<number> & State<T>,	
	Ceil: (
		self: BaseState<number>
	) -> BaseState<number> & State<T>,	
	Log: (
		self: BaseState<number>, 
		base: CanBeState<T>
	) -> BaseState<number> & State<T>,	
	Log10: (
		self: BaseState<number>
	) -> BaseState<number> & State<T>,	
	IfNaN: (self: BaseState<any>, alt: CanBeState<T>) -> BaseState<boolean> & State<T>,

	-- Boolean
	Equal: (self: BaseState<T>, other: CanBeState<T>) -> BaseState<boolean> & State<T>,
	Not: (self: BaseState<boolean>) -> BaseState<boolean> & State<T>,
	And: (self: BaseState<boolean>, other: CanBeState<boolean>) -> BaseState<boolean> & State<T>,
	Or: (self: BaseState<boolean>, other: CanBeState<boolean>) -> BaseState<boolean> & State<T>,
	XOr: (self: BaseState<boolean>, other: CanBeState<boolean>) -> BaseState<boolean> & State<T>,
	
	LessThan: (self: BaseState<number>, other: CanBeState<number>) -> BaseState<boolean> & State<T>,
	LessThanEqualTo: (self: BaseState<number>, other: CanBeState<number>) -> BaseState<boolean> & State<T>,
	GreaterThan: (self: BaseState<number>, other: CanBeState<number>) -> BaseState<boolean> & State<T>,
	GreaterThanEqualTo: (self: BaseState<number>, other: CanBeState<number>) -> BaseState<boolean> & State<T>,
	
	-- Logic
	Else: (self: BaseState<boolean | T?>, alt: CanBeState<T>) -> State<T>,
	Then: (self: BaseState<boolean | T?>, value: CanBeState<T>) -> BaseState<T?> & State<T>,

	-- Table
	Len: (self: BaseState<{[any]: any} | string>) -> BaseState<number> & State<T>,
	Keys: <K>(self: BaseState<{[K]: any}>) -> BaseState<{[number]: K}> & State<T>,
	Values: <V>(self: BaseState<{[any]: V}>) -> BaseState<{[number]: V}> & State<T>,
	Sort: <V>(self: BaseState<{[number]: V}>, filter: (a: V, b: V) -> boolean) -> BaseState<{[number]: V}> & State<T>,
	Randomize: <V>(self: BaseState<{[number]: V}>) -> BaseState<{[number]: V}> & State<T>,

	-- String
	Concat: (self: BaseState<string>, other: CanBeState<string>) -> BaseState<string> & State<T>,
	ToString: (self: BaseState<string>) -> BaseState<string> & State<T>,
	Upper: (self: BaseState<string>) -> BaseState<string> & State<T>,
	Lower: (self: BaseState<string>) -> BaseState<string> & State<T>,
	Split: (self: BaseState<string>, separator: CanBeState<string>) -> BaseState<{[number]: string}> & State<T>,
	Sub: (self: BaseState<string>, start: CanBeState<number>, finish: CanBeState<number>?) -> BaseState<string> & State<T>,
	GSub: (self: BaseState<string>, pattern: CanBeState<string>, replacement: CanBeState<string>) -> BaseState<string> & State<T>,
	Rep: (self: BaseState<string>, count: CanBeState<number>) -> BaseState<string> & State<T>,
	Reverse: <V>(self: BaseState<string> | BaseState<{[number]: V}>) -> BaseState<any> & State<T>,

}

export type ValueState<T> = State<T> & {
	Set: (any, T) -> nil,
}


return {}
