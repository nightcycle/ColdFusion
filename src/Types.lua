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
	Else: (self: any, alt: CanBeState<T>) -> State<T>,
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
}

export type ValueState<T> = State<T> & {
	Set: (any, T) -> nil,
}

export type FusionSpecialKey = FusionPubTypes.SpecialKey
export type FusionPropertyTable = FusionPubTypes.PropertyTable
export type FusionKey = string | FusionSpecialKey

return {}