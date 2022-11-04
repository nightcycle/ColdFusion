--!strict
local _Package = script.Parent
local _Packages = _Package.Parent

local FusionFolder = _Package.Fusion
local FusionPubTypes = require(FusionFolder.PubTypes)
-- local FusionTypes = require(FusionFolder.Types)

export type BaseState<T> = {
	Get: (any) -> T,
}
export type CanBeState<T> = (BaseState<T> | T)
export type State<T> = BaseState<T> & {
	Tween: (
		self: any, 
		duration: CanBeState<number>?, 
		easingStyle: CanBeState<Enum.EasingStyle>?, 
		easingDirection: CanBeState<Enum.EasingDirection>?,
		repetitions: number?,
		reverses: boolean?,
		delayTime: number?
	) -> State<T>,
	Spring: (
		self: any, 
		speed: number?,
		dampingRatio: number?
	) -> State<T>,
	Else: (self: BaseState<T?>, alt: CanBeState<T>) -> State<T>,
	Transmit: (
		self: any, 
		remoteName: string, 
		id: string?, 
		rate: number?, 
		player: Player?
	) -> State<T>,
	Receive: (
		self: any, 
		remoteName: string, 
		id: string?, 
		player: Player?
	) -> State<T>,
	CleanUp: (self: BaseState<T>) -> State<T>,
	Delay: (self: BaseState<T>, val: CanBeState<number>) -> State<T>,
	Connect: (self: BaseState<T>, func: (cur: T, prev: T?) -> nil) -> nil,
	Destroy: (self: BaseState<T>) -> nil,
	Index: (self: BaseState<T>, key: CanBeState<any>) -> State<T>,
	Add: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> State<T>,
	Subract: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> State<T>,
	Multiply: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> State<T>,
	Divide: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> State<T>,
	Modulus: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> State<T>,
	Power: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> State<T>,
	Equal: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> BaseState<boolean>,
	LessThan: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> BaseState<boolean>,
	LessThanEqualTo: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> BaseState<boolean>,
	Length: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> BaseState<number>,
	Concatenate: (
		self: BaseState<T>, 
		other: CanBeState<T>
	) -> BaseState<string>,
}

export type ValueState<T> = State<T> & {
	Set: (any, T) -> nil,
}

export type FusionSpecialKey = FusionPubTypes.SpecialKey
export type FusionPropertyTable = FusionPubTypes.PropertyTable
export type FusionKey = string | FusionSpecialKey

return {}