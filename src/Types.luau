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
		self: any,
		duration: CanBeState<number>?,
		easingStyle: CanBeState<Enum.EasingStyle>?,
		easingDirection: CanBeState<Enum.EasingDirection>?,
		repetitions: CanBeState<number>?,
		reverses: CanBeState<boolean>?,
		delayTime: CanBeState<number>?
	) -> State<T>,
	Spring: (self: any, speed: CanBeState<number>?, dampingRatio: CanBeState<number>?) -> State<T>,
	
	-- Tables
	ForKeys: <KI, KO>(self: any, processor: (key: KI, maid: Maid) -> KO) -> BaseState<{ [KO]: any }>
		& State<T>,
	ForValues: <VI, VO>(
		self: any,
		processor: (val: VI, maid: Maid) -> VO
	) -> BaseState<{ [any]: VO }> & State<T>,
	ForPairs: <KI, VI, KO, VO>(
		self: any,
		processor: (key: KI, val: VI, maid: Maid) -> VO
	) -> BaseState<{ [KO]: VO }> & State<T>,
	Join: <G>(self: any, targetInst: G & Instance, (inst: G & Instance, val: T) -> ()) -> (),
	Connect: (self: any, func: (cur: T, prev: T?) -> nil) -> () -> nil,
	Destroy: (self: any) -> nil,
}

export type ValueState<T> = State<T> & {
	Set: (any, T) -> nil,
}


return {}
