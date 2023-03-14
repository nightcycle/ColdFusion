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

-- Create foundation
type GetFunction<Self, Value> = {
	_Value: Value,
	Get: (self: Self) -> Value,
}

export type BaseState<Value> = GetFunction<BaseState<Value>, Value>
type CanBeBaseState<Value> = Value | BaseState<Value>

-- Create solo state
type TweenFunction<Self> = {
	Tween: (
		self: Self,
		duration: CanBeBaseState<number>?,
		easingStyle: CanBeBaseState<Enum.EasingStyle>?,
		easingDirection: CanBeBaseState<Enum.EasingDirection>?,
		repetitions: CanBeBaseState<number>?,
		reverses: CanBeBaseState<boolean>?,
		delayTime: CanBeBaseState<number>?
	) -> Self,
}

type DestroyFunction<Self> = {
	Destroy: (self: Self) -> nil,
}

type SpringFunction<Self> = {
	Spring: (self: Self, speed: CanBeBaseState<number>?, dampingRatio: CanBeBaseState<number>?) -> Self
}

type DelayState<Self> = {
	Delay: (self: Self, amount: CanBeBaseState<number>) -> Self,
}

type ElseFunction<Self, Value> = {
	Else: (Self, alt: CanBeBaseState<Value>) -> Self
}

type AddFunction<Self, Value> = {
	Add: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type SubractFunction<Self, Value> = {
	Subract: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type MultiplyFunction<Self, Value> = {
	Multiply: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type DivideFunction<Self, Value> = {
	Divide: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type ModulusFunction<Self, Value> = {
	Modulus: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type PowerFunction<Self, Value> = {
	Power: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type EqualFunction<Self, Value> = {
	Equal: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type LessThanFunction<Self, Value> = {
	LessThan: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type LessThanEqualToState<Self, Value> = {
	LessThanEqualTo: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type LengthFunction<Self, Value> = {
	Length: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type ConcatenateFunction<Self, Value> = {
	Concatenate: (self: Self, other: CanBeBaseState<Value>) -> Self,
}

type ConnectFunction<Self, Value> = {
	Connect: (self: Self, func: (cur: Value, prev: Value?) -> nil) -> RBXScriptConnection,
}

type SoloFunction<Self, Value> = (
	GetFunction<Self, Value>
	& DestroyFunction<Self>
	& TweenFunction<Self>
	& SpringFunction<Self> 
	& DelayState<Self>
	& ElseFunction<Self, Value>
	& AddFunction<Self, Value>
	& SubractFunction<Self, Value>
	& MultiplyFunction<Self, Value>
	& DivideFunction<Self, Value>
	& ModulusFunction<Self, Value>
	& PowerFunction<Self, Value>
	& EqualFunction<Self, Value>
	& LessThanFunction<Self, Value>
	& LessThanEqualToState<Self, Value>
	& LengthFunction<Self, Value>
	& ConcatenateFunction<Self, Value>
	& ConnectFunction<Self, Value>
)

type SoloState<Value> = SoloFunction<SoloState<Value>, Value>

type IndexFunction<Self, KI, Out> = {
	Index: (self: Self, key: CanBeBaseState<KI>) -> Out
}

type ForKeysFunction<Self, KI, KO, Out> = {
	ForKeys: (self: Self, processor: (key: KI, maid: Maid) -> KO) -> Out
}

type ForValueFunction<Self, VI, VO, Out> = {
	ForValues: (
		self: Self,
		processor: (val: VI, maid: Maid) -> VO
	) -> Out,
}

type ForPairsFunction<Self, KI, VI, KO, VO, Out> = {
	ForPairs: (
		self: Self,
		processor: (key: KI, val: VI, maid: Maid) -> (KO, VO)
	) -> Out,
}

type TableFunctions<Self, KI, VI, KO, VO, Out> = (
	ForPairsFunction<Self, KI, VI, KO, VO, Out>
	& ForValueFunction<Self, VI, VO, Out>
	& ForKeysFunction<Self, KI, KO, Out>
	& IndexFunction<Self, KI, Out>
)

type StateFunction<Self, Value, KI, VI, KO, VO, Out> = (
	SoloFunction<Self, Value>	
	& TableFunctions<Self, KI, VI, KO, VO, Out>
)

type ValueStateFunction<Self, Value> = {
	Set: (self: Self, value: Value) -> nil,
}

export type State<Value> = StateFunction<State<Value>, Value, any, any, any, any, State<Value>>
export type TableState<KI, VI, KO, VO> = StateFunction<State<{[KI]: VI}>, {[KI]: VI}, KI, VI, KO, VO, State<{[KO]: VO}>>
export type ValueState<Value> = ValueStateFunction<ValueState<Value>, Value> & State<Value>
export type TableValueState<KI, VI, KO, VO> = ValueStateFunction<State<{[KI]: VI}>, {[KI]: VI}> & State<{[KO]: VO}>
export type CanBeState<Value> = State<Value> | Value
export type CanBeTableState<KI, VI, KO, VO> = TableState<KI, VI, KO, VO> | {[KI]: VI}

return {}
