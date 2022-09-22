--!strict
local _Package = script.Parent
local _Packages = _Package.Parent

local FusionFolder = _Package.Fusion
local FusionPubTypes = require(FusionFolder.PubTypes)
-- local FusionTypes = require(FusionFolder.Types)

export type BaseState<T> = {
	Get: (BaseState<T>) -> T,
	get: (BaseState<T>) -> T,
}
export type CanBeState<T> = (BaseState<T> | T)

export type StateUtil<T> = {
	Tween: (
		duration: CanBeState<number>?, 
		easingStyle: CanBeState<Enum.EasingStyle>?, 
		easingDirection: CanBeState<Enum.EasingDirection>?
	) -> State<T>,
	Else: (alt: CanBeState<T>) -> State<T>,
	Transmit: (
		remoteName: string, 
		id: string?, 
		rate: number?, 
		player: Player?
	) -> State<T>,
	Receive: (
		remoteName: string, 
		id: string?, 
		player: Player?
	) -> State<T>,
	CleanUp: () -> State<T>,
	Delay: (val: CanBeState<number>) -> State<T>,
	Connect: (func: (cur: T, prev: T?) -> nil) -> nil,
	Destroy: () -> nil,
}

export type State<T> = BaseState<T> & StateUtil<T>

export type ValueState<T> = State<T> & {
	Set: (State<T>, T) -> nil,
}

export type FusionSpecialKey = FusionPubTypes.SpecialKey
export type FusionPropertyTable = FusionPubTypes.PropertyTable
export type FusionKey = string | FusionSpecialKey

return {}