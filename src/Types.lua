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
	CleanUp: (self: any) -> State<T>,
	Delay: (self: any, val: CanBeState<number>) -> State<T>,
	Connect: (self: any, func: (cur: T, prev: T?) -> nil) -> nil,
	Destroy: (self: any) -> nil,
	Index: (self: any, key: CanBeState<any>) -> State<T>,
	__add: (
		self: any, 
		other: CanBeState<T>
	) -> State<T>,
	__sub: (
		self: any, 
		other: CanBeState<T>
	) -> State<T>,
	__mul: (
		self: any, 
		other: CanBeState<T>
	) -> State<T>,
	__div: (
		self: any, 
		other: CanBeState<T>
	) -> State<T>,
	__mod: (
		self: any, 
		other: CanBeState<T>
	) -> State<T>,
	__pow: (
		self: any, 
		other: CanBeState<T>
	) -> State<T>,
	__eq: (
		self: any, 
		other: CanBeState<T>
	) -> BaseState<boolean> & State<T>,
	__le: (
		self: any, 
		other: CanBeState<T>
	) -> BaseState<boolean> & State<T>,
	__lt: (
		self: any, 
		other: CanBeState<T>
	) -> BaseState<boolean> & State<T>,
	__len: (
		self: any, 
		other: CanBeState<T>
	) -> BaseState<number> & State<T>,
	__concat: (
		self: any, 
		other: CanBeState<T>
	) -> BaseState<number> & State<T>,
	__tostring: (
		self: any
	) -> BaseState<string> & State<T>,
}

export type ValueState<T> = State<T> & {
	Set: (any, T) -> nil,
}

export type FusionSpecialKey = FusionPubTypes.SpecialKey
export type FusionPropertyTable = FusionPubTypes.PropertyTable
export type FusionKey = string | FusionSpecialKey

return {}