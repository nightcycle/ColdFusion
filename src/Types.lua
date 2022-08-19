
--!strict
-- local StateFolder = script.Parent.State
-- local State = require(StateFolder.State)

local Symbol = require(script.Parent.Symbol)

type State<T> = {Get: (self: State<T>) -> T} -- State.State<T>
type ParameterEntry<T> = (State<T> | T)
type Symbol = Symbol.Symbol


type InstanceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AccessoryProperties = {
	AttachmentForward: ParameterEntry<Vector3>?,
	AttachmentPoint: ParameterEntry<CFrame>?,
	AttachmentPos: ParameterEntry<Vector3>?,
	AttachmentRight: ParameterEntry<Vector3>?,
	AttachmentUp: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AttachmentForward: ParameterEntry<Vector3>?,
	AttachmentPoint: ParameterEntry<CFrame>?,
	AttachmentPos: ParameterEntry<Vector3>?,
	AttachmentRight: ParameterEntry<Vector3>?,
	AttachmentUp: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AdvancedDraggerProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AnalyticsServiceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AnimationProperties = {
	AnimationId: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AnimationId: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CurveAnimationProperties = {
	Loop: ParameterEntry<boolean>?,
	Priority: ParameterEntry<Enum.AnimationPriority>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Loop: ParameterEntry<boolean>?,
	Priority: ParameterEntry<Enum.AnimationPriority>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type KeyframeSequenceProperties = {
	Loop: ParameterEntry<boolean>?,
	Priority: ParameterEntry<Enum.AnimationPriority>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Loop: ParameterEntry<boolean>?,
	Priority: ParameterEntry<Enum.AnimationPriority>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AnimationControllerProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AnimationRigDataProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AnimatorProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AtmosphereProperties = {
	Color: ParameterEntry<Color3>?,
	Decay: ParameterEntry<Color3>?,
	Density: ParameterEntry<number>?,
	Glare: ParameterEntry<number>?,
	Haze: ParameterEntry<number>?,
	Offset: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Color: ParameterEntry<Color3>?,
	Decay: ParameterEntry<Color3>?,
	Density: ParameterEntry<number>?,
	Glare: ParameterEntry<number>?,
	Haze: ParameterEntry<number>?,
	Offset: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AttachmentProperties = {
	Axis: ParameterEntry<Vector3>?,
	CFrame: ParameterEntry<CFrame>?,
	Orientation: ParameterEntry<Vector3>?,
	Position: ParameterEntry<Vector3>?,
	SecondaryAxis: ParameterEntry<Vector3>?,
	Visible: ParameterEntry<boolean>?,
	WorldAxis: ParameterEntry<Vector3>?,
	WorldCFrame: ParameterEntry<CFrame>?,
	WorldOrientation: ParameterEntry<Vector3>?,
	WorldPosition: ParameterEntry<Vector3>?,
	WorldSecondaryAxis: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Axis: ParameterEntry<Vector3>?,
	CFrame: ParameterEntry<CFrame>?,
	Orientation: ParameterEntry<Vector3>?,
	Position: ParameterEntry<Vector3>?,
	SecondaryAxis: ParameterEntry<Vector3>?,
	Visible: ParameterEntry<boolean>?,
	WorldAxis: ParameterEntry<Vector3>?,
	WorldCFrame: ParameterEntry<CFrame>?,
	WorldOrientation: ParameterEntry<Vector3>?,
	WorldPosition: ParameterEntry<Vector3>?,
	WorldSecondaryAxis: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BoneProperties = {
	Transform: ParameterEntry<CFrame>?,
	Axis: ParameterEntry<Vector3>?,
	CFrame: ParameterEntry<CFrame>?,
	Orientation: ParameterEntry<Vector3>?,
	Position: ParameterEntry<Vector3>?,
	SecondaryAxis: ParameterEntry<Vector3>?,
	Visible: ParameterEntry<boolean>?,
	WorldAxis: ParameterEntry<Vector3>?,
	WorldCFrame: ParameterEntry<CFrame>?,
	WorldOrientation: ParameterEntry<Vector3>?,
	WorldPosition: ParameterEntry<Vector3>?,
	WorldSecondaryAxis: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Transform: ParameterEntry<CFrame>?,
	Axis: ParameterEntry<Vector3>?,
	CFrame: ParameterEntry<CFrame>?,
	Orientation: ParameterEntry<Vector3>?,
	Position: ParameterEntry<Vector3>?,
	SecondaryAxis: ParameterEntry<Vector3>?,
	Visible: ParameterEntry<boolean>?,
	WorldAxis: ParameterEntry<Vector3>?,
	WorldCFrame: ParameterEntry<CFrame>?,
	WorldOrientation: ParameterEntry<Vector3>?,
	WorldPosition: ParameterEntry<Vector3>?,
	WorldSecondaryAxis: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BackpackProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ToolProperties = {
	CanBeDropped: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Grip: ParameterEntry<CFrame>?,
	GripForward: ParameterEntry<Vector3>?,
	GripPos: ParameterEntry<Vector3>?,
	GripRight: ParameterEntry<Vector3>?,
	GripUp: ParameterEntry<Vector3>?,
	ManualActivationOnly: ParameterEntry<boolean>?,
	RequiresHandle: ParameterEntry<boolean>?,
	ToolTip: ParameterEntry<string>?,
	TextureId: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CanBeDropped: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Grip: ParameterEntry<CFrame>?,
	GripForward: ParameterEntry<Vector3>?,
	GripPos: ParameterEntry<Vector3>?,
	GripRight: ParameterEntry<Vector3>?,
	GripUp: ParameterEntry<Vector3>?,
	ManualActivationOnly: ParameterEntry<boolean>?,
	RequiresHandle: ParameterEntry<boolean>?,
	ToolTip: ParameterEntry<string>?,
	TextureId: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type StarterGuiProperties = {
	ScreenOrientation: ParameterEntry<Enum.ScreenOrientation>?,
	ShowDevelopmentGui: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ScreenOrientation: ParameterEntry<Enum.ScreenOrientation>?,
	ShowDevelopmentGui: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type WrapLayerProperties = {
	AutoSkin: ParameterEntry<Enum.WrapLayerAutoSkin>?,
	Enabled: ParameterEntry<boolean>?,
	Order: ParameterEntry<number>?,
	Puffiness: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AutoSkin: ParameterEntry<Enum.WrapLayerAutoSkin>?,
	Enabled: ParameterEntry<boolean>?,
	Order: ParameterEntry<number>?,
	Puffiness: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type WrapTargetProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BeamProperties = {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<ColorSequence>?,
	CurveSize0: ParameterEntry<number>?,
	CurveSize1: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	FaceCamera: ParameterEntry<boolean>?,
	LightEmission: ParameterEntry<number>?,
	LightInfluence: ParameterEntry<number>?,
	Segments: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	TextureLength: ParameterEntry<number>?,
	TextureMode: ParameterEntry<Enum.TextureMode>?,
	TextureSpeed: ParameterEntry<number>?,
	Transparency: ParameterEntry<NumberSequence>?,
	Width0: ParameterEntry<number>?,
	Width1: ParameterEntry<number>?,
	ZOffset: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<ColorSequence>?,
	CurveSize0: ParameterEntry<number>?,
	CurveSize1: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	FaceCamera: ParameterEntry<boolean>?,
	LightEmission: ParameterEntry<number>?,
	LightInfluence: ParameterEntry<number>?,
	Segments: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	TextureLength: ParameterEntry<number>?,
	TextureMode: ParameterEntry<Enum.TextureMode>?,
	TextureSpeed: ParameterEntry<number>?,
	Transparency: ParameterEntry<NumberSequence>?,
	Width0: ParameterEntry<number>?,
	Width1: ParameterEntry<number>?,
	ZOffset: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BindableEventProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BindableFunctionProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BodyAngularVelocityProperties = {
	AngularVelocity: ParameterEntry<Vector3>?,
	MaxTorque: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AngularVelocity: ParameterEntry<Vector3>?,
	MaxTorque: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BodyForceProperties = {
	Force: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Force: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BodyGyroProperties = {
	CFrame: ParameterEntry<CFrame>?,
	D: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CFrame: ParameterEntry<CFrame>?,
	D: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BodyPositionProperties = {
	D: ParameterEntry<number>?,
	MaxForce: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Position: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	D: ParameterEntry<number>?,
	MaxForce: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Position: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BodyThrustProperties = {
	Force: ParameterEntry<Vector3>?,
	Location: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Force: ParameterEntry<Vector3>?,
	Location: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BodyVelocityProperties = {
	MaxForce: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Velocity: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	MaxForce: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Velocity: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CameraProperties = {
	CFrame: ParameterEntry<CFrame>?,
	CameraSubject: ParameterEntry<Instance>?,
	CameraType: ParameterEntry<Enum.CameraType>?,
	DiagonalFieldOfView: ParameterEntry<number>?,
	FieldOfView: ParameterEntry<number>?,
	FieldOfViewMode: ParameterEntry<Enum.FieldOfViewMode>?,
	Focus: ParameterEntry<CFrame>?,
	HeadLocked: ParameterEntry<boolean>?,
	HeadScale: ParameterEntry<number>?,
	MaxAxisFieldOfView: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CFrame: ParameterEntry<CFrame>?,
	CameraSubject: ParameterEntry<Instance>?,
	CameraType: ParameterEntry<Enum.CameraType>?,
	DiagonalFieldOfView: ParameterEntry<number>?,
	FieldOfView: ParameterEntry<number>?,
	FieldOfViewMode: ParameterEntry<Enum.FieldOfViewMode>?,
	Focus: ParameterEntry<CFrame>?,
	HeadLocked: ParameterEntry<boolean>?,
	HeadScale: ParameterEntry<number>?,
	MaxAxisFieldOfView: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BodyColorsProperties = {
	HeadColor: ParameterEntry<BrickColor>?,
	HeadColor3: ParameterEntry<Color3>?,
	LeftArmColor: ParameterEntry<BrickColor>?,
	LeftArmColor3: ParameterEntry<Color3>?,
	LeftLegColor: ParameterEntry<BrickColor>?,
	LeftLegColor3: ParameterEntry<Color3>?,
	RightArmColor: ParameterEntry<BrickColor>?,
	RightArmColor3: ParameterEntry<Color3>?,
	RightLegColor: ParameterEntry<BrickColor>?,
	RightLegColor3: ParameterEntry<Color3>?,
	TorsoColor: ParameterEntry<BrickColor>?,
	TorsoColor3: ParameterEntry<Color3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	HeadColor: ParameterEntry<BrickColor>?,
	HeadColor3: ParameterEntry<Color3>?,
	LeftArmColor: ParameterEntry<BrickColor>?,
	LeftArmColor3: ParameterEntry<Color3>?,
	LeftLegColor: ParameterEntry<BrickColor>?,
	LeftLegColor3: ParameterEntry<Color3>?,
	RightArmColor: ParameterEntry<BrickColor>?,
	RightArmColor3: ParameterEntry<Color3>?,
	RightLegColor: ParameterEntry<BrickColor>?,
	RightLegColor3: ParameterEntry<Color3>?,
	TorsoColor: ParameterEntry<BrickColor>?,
	TorsoColor3: ParameterEntry<Color3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PantsProperties = {
	PantsTemplate: ParameterEntry<string>?,
	Color3: ParameterEntry<Color3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	PantsTemplate: ParameterEntry<string>?,
	Color3: ParameterEntry<Color3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ShirtProperties = {
	ShirtTemplate: ParameterEntry<string>?,
	Color3: ParameterEntry<Color3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ShirtTemplate: ParameterEntry<string>?,
	Color3: ParameterEntry<Color3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ShirtGraphicProperties = {
	Color3: ParameterEntry<Color3>?,
	Graphic: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Color3: ParameterEntry<Color3>?,
	Graphic: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ClickDetectorProperties = {
	CursorIcon: ParameterEntry<string>?,
	MaxActivationDistance: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CursorIcon: ParameterEntry<string>?,
	MaxActivationDistance: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CloudsProperties = {
	Color: ParameterEntry<Color3>?,
	Cover: ParameterEntry<number>?,
	Density: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Color: ParameterEntry<Color3>?,
	Cover: ParameterEntry<number>?,
	Density: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ConfigurationProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AlignOrientationProperties = {
	AlignType: ParameterEntry<Enum.AlignType>?,
	CFrame: ParameterEntry<CFrame>?,
	MaxAngularVelocity: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<number>?,
	Mode: ParameterEntry<Enum.OrientationAlignmentMode>?,
	PrimaryAxis: ParameterEntry<Vector3>?,
	PrimaryAxisOnly: ParameterEntry<boolean>?,
	ReactionTorqueEnabled: ParameterEntry<boolean>?,
	Responsiveness: ParameterEntry<number>?,
	RigidityEnabled: ParameterEntry<boolean>?,
	SecondaryAxis: ParameterEntry<Vector3>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AlignType: ParameterEntry<Enum.AlignType>?,
	CFrame: ParameterEntry<CFrame>?,
	MaxAngularVelocity: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<number>?,
	Mode: ParameterEntry<Enum.OrientationAlignmentMode>?,
	PrimaryAxis: ParameterEntry<Vector3>?,
	PrimaryAxisOnly: ParameterEntry<boolean>?,
	ReactionTorqueEnabled: ParameterEntry<boolean>?,
	Responsiveness: ParameterEntry<number>?,
	RigidityEnabled: ParameterEntry<boolean>?,
	SecondaryAxis: ParameterEntry<Vector3>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AlignPositionProperties = {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	MaxForce: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
	Mode: ParameterEntry<Enum.PositionAlignmentMode>?,
	Position: ParameterEntry<Vector3>?,
	ReactionForceEnabled: ParameterEntry<boolean>?,
	Responsiveness: ParameterEntry<number>?,
	RigidityEnabled: ParameterEntry<boolean>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	MaxForce: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
	Mode: ParameterEntry<Enum.PositionAlignmentMode>?,
	Position: ParameterEntry<Vector3>?,
	ReactionForceEnabled: ParameterEntry<boolean>?,
	Responsiveness: ParameterEntry<number>?,
	RigidityEnabled: ParameterEntry<boolean>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type AngularVelocityProperties = {
	AngularVelocity: ParameterEntry<Vector3>?,
	MaxTorque: ParameterEntry<number>?,
	ReactionTorqueEnabled: ParameterEntry<boolean>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AngularVelocity: ParameterEntry<Vector3>?,
	MaxTorque: ParameterEntry<number>?,
	ReactionTorqueEnabled: ParameterEntry<boolean>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BallSocketConstraintProperties = {
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxFrictionTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	TwistLimitsEnabled: ParameterEntry<boolean>?,
	TwistLowerAngle: ParameterEntry<number>?,
	TwistUpperAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxFrictionTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	TwistLimitsEnabled: ParameterEntry<boolean>?,
	TwistLowerAngle: ParameterEntry<number>?,
	TwistUpperAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type HingeConstraintProperties = {
	ActuatorType: ParameterEntry<Enum.ActuatorType>?,
	AngularResponsiveness: ParameterEntry<number>?,
	AngularSpeed: ParameterEntry<number>?,
	AngularVelocity: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	LowerAngle: ParameterEntry<number>?,
	MotorMaxAcceleration: ParameterEntry<number>?,
	MotorMaxTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	ServoMaxTorque: ParameterEntry<number>?,
	TargetAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ActuatorType: ParameterEntry<Enum.ActuatorType>?,
	AngularResponsiveness: ParameterEntry<number>?,
	AngularSpeed: ParameterEntry<number>?,
	AngularVelocity: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	LowerAngle: ParameterEntry<number>?,
	MotorMaxAcceleration: ParameterEntry<number>?,
	MotorMaxTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	ServoMaxTorque: ParameterEntry<number>?,
	TargetAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type LineForceProperties = {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	InverseSquareLaw: ParameterEntry<boolean>?,
	Magnitude: ParameterEntry<number>?,
	MaxForce: ParameterEntry<number>?,
	ReactionForceEnabled: ParameterEntry<boolean>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	InverseSquareLaw: ParameterEntry<boolean>?,
	Magnitude: ParameterEntry<number>?,
	MaxForce: ParameterEntry<number>?,
	ReactionForceEnabled: ParameterEntry<boolean>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type LinearVelocityProperties = {
	LineDirection: ParameterEntry<Vector3>?,
	LineVelocity: ParameterEntry<number>?,
	MaxForce: ParameterEntry<number>?,
	PlaneVelocity: ParameterEntry<Vector2>?,
	PrimaryTangentAxis: ParameterEntry<Vector3>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	SecondaryTangentAxis: ParameterEntry<Vector3>?,
	VectorVelocity: ParameterEntry<Vector3>?,
	VelocityConstraintMode: ParameterEntry<Enum.VelocityConstraintMode>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	LineDirection: ParameterEntry<Vector3>?,
	LineVelocity: ParameterEntry<number>?,
	MaxForce: ParameterEntry<number>?,
	PlaneVelocity: ParameterEntry<Vector2>?,
	PrimaryTangentAxis: ParameterEntry<Vector3>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	SecondaryTangentAxis: ParameterEntry<Vector3>?,
	VectorVelocity: ParameterEntry<Vector3>?,
	VelocityConstraintMode: ParameterEntry<Enum.VelocityConstraintMode>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PlaneConstraintProperties = {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type RigidConstraintProperties = {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type RodConstraintProperties = {
	Length: ParameterEntry<number>?,
	LimitAngle0: ParameterEntry<number>?,
	LimitAngle1: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	Thickness: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Length: ParameterEntry<number>?,
	LimitAngle0: ParameterEntry<number>?,
	LimitAngle1: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	Thickness: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type RopeConstraintProperties = {
	Length: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
	WinchEnabled: ParameterEntry<boolean>?,
	WinchForce: ParameterEntry<number>?,
	WinchResponsiveness: ParameterEntry<number>?,
	WinchSpeed: ParameterEntry<number>?,
	WinchTarget: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Length: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
	WinchEnabled: ParameterEntry<boolean>?,
	WinchForce: ParameterEntry<number>?,
	WinchResponsiveness: ParameterEntry<number>?,
	WinchSpeed: ParameterEntry<number>?,
	WinchTarget: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CylindricalConstraintProperties = {
	AngularActuatorType: ParameterEntry<Enum.ActuatorType>?,
	AngularLimitsEnabled: ParameterEntry<boolean>?,
	AngularResponsiveness: ParameterEntry<number>?,
	AngularRestitution: ParameterEntry<number>?,
	AngularSpeed: ParameterEntry<number>?,
	AngularVelocity: ParameterEntry<number>?,
	InclinationAngle: ParameterEntry<number>?,
	LowerAngle: ParameterEntry<number>?,
	MotorMaxAngularAcceleration: ParameterEntry<number>?,
	MotorMaxTorque: ParameterEntry<number>?,
	RotationAxisVisible: ParameterEntry<boolean>?,
	ServoMaxTorque: ParameterEntry<number>?,
	TargetAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
	ActuatorType: ParameterEntry<Enum.ActuatorType>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	LinearResponsiveness: ParameterEntry<number>?,
	LowerLimit: ParameterEntry<number>?,
	MotorMaxAcceleration: ParameterEntry<number>?,
	MotorMaxForce: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	ServoMaxForce: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	Speed: ParameterEntry<number>?,
	TargetPosition: ParameterEntry<number>?,
	UpperLimit: ParameterEntry<number>?,
	Velocity: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AngularActuatorType: ParameterEntry<Enum.ActuatorType>?,
	AngularLimitsEnabled: ParameterEntry<boolean>?,
	AngularResponsiveness: ParameterEntry<number>?,
	AngularRestitution: ParameterEntry<number>?,
	AngularSpeed: ParameterEntry<number>?,
	AngularVelocity: ParameterEntry<number>?,
	InclinationAngle: ParameterEntry<number>?,
	LowerAngle: ParameterEntry<number>?,
	MotorMaxAngularAcceleration: ParameterEntry<number>?,
	MotorMaxTorque: ParameterEntry<number>?,
	RotationAxisVisible: ParameterEntry<boolean>?,
	ServoMaxTorque: ParameterEntry<number>?,
	TargetAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
	ActuatorType: ParameterEntry<Enum.ActuatorType>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	LinearResponsiveness: ParameterEntry<number>?,
	LowerLimit: ParameterEntry<number>?,
	MotorMaxAcceleration: ParameterEntry<number>?,
	MotorMaxForce: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	ServoMaxForce: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	Speed: ParameterEntry<number>?,
	TargetPosition: ParameterEntry<number>?,
	UpperLimit: ParameterEntry<number>?,
	Velocity: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PrismaticConstraintProperties = {
	ActuatorType: ParameterEntry<Enum.ActuatorType>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	LinearResponsiveness: ParameterEntry<number>?,
	LowerLimit: ParameterEntry<number>?,
	MotorMaxAcceleration: ParameterEntry<number>?,
	MotorMaxForce: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	ServoMaxForce: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	Speed: ParameterEntry<number>?,
	TargetPosition: ParameterEntry<number>?,
	UpperLimit: ParameterEntry<number>?,
	Velocity: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ActuatorType: ParameterEntry<Enum.ActuatorType>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	LinearResponsiveness: ParameterEntry<number>?,
	LowerLimit: ParameterEntry<number>?,
	MotorMaxAcceleration: ParameterEntry<number>?,
	MotorMaxForce: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	ServoMaxForce: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	Speed: ParameterEntry<number>?,
	TargetPosition: ParameterEntry<number>?,
	UpperLimit: ParameterEntry<number>?,
	Velocity: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SpringConstraintProperties = {
	Coils: ParameterEntry<number>?,
	Damping: ParameterEntry<number>?,
	FreeLength: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxForce: ParameterEntry<number>?,
	MaxLength: ParameterEntry<number>?,
	MinLength: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Stiffness: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Coils: ParameterEntry<number>?,
	Damping: ParameterEntry<number>?,
	FreeLength: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxForce: ParameterEntry<number>?,
	MaxLength: ParameterEntry<number>?,
	MinLength: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Stiffness: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TorqueProperties = {
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	Torque: ParameterEntry<Vector3>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	Torque: ParameterEntry<Vector3>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TorsionSpringConstraintProperties = {
	Coils: ParameterEntry<number>?,
	Damping: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxAngle: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	Stiffness: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Coils: ParameterEntry<number>?,
	Damping: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxAngle: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	Stiffness: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UniversalConstraintProperties = {
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxAngle: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxAngle: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type VectorForceProperties = {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	Force: ParameterEntry<Vector3>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	Force: ParameterEntry<Vector3>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type FileMeshProperties = {
	MeshId: ParameterEntry<string>?,
	TextureId: ParameterEntry<string>?,
	Offset: ParameterEntry<Vector3>?,
	Scale: ParameterEntry<Vector3>?,
	VertexColor: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	MeshId: ParameterEntry<string>?,
	TextureId: ParameterEntry<string>?,
	Offset: ParameterEntry<Vector3>?,
	Scale: ParameterEntry<Vector3>?,
	VertexColor: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SpecialMeshProperties = {
	MeshType: ParameterEntry<Enum.MeshType>?,
	MeshId: ParameterEntry<string>?,
	TextureId: ParameterEntry<string>?,
	Offset: ParameterEntry<Vector3>?,
	Scale: ParameterEntry<Vector3>?,
	VertexColor: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	MeshType: ParameterEntry<Enum.MeshType>?,
	MeshId: ParameterEntry<string>?,
	TextureId: ParameterEntry<string>?,
	Offset: ParameterEntry<Vector3>?,
	Scale: ParameterEntry<Vector3>?,
	VertexColor: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type DialogProperties = {
	BehaviorType: ParameterEntry<Enum.DialogBehaviorType>?,
	ConversationDistance: ParameterEntry<number>?,
	GoodbyeChoiceActive: ParameterEntry<boolean>?,
	GoodbyeDialog: ParameterEntry<string>?,
	InUse: ParameterEntry<boolean>?,
	InitialPrompt: ParameterEntry<string>?,
	Purpose: ParameterEntry<Enum.DialogPurpose>?,
	Tone: ParameterEntry<Enum.DialogTone>?,
	TriggerDistance: ParameterEntry<number>?,
	TriggerOffset: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	BehaviorType: ParameterEntry<Enum.DialogBehaviorType>?,
	ConversationDistance: ParameterEntry<number>?,
	GoodbyeChoiceActive: ParameterEntry<boolean>?,
	GoodbyeDialog: ParameterEntry<string>?,
	InUse: ParameterEntry<boolean>?,
	InitialPrompt: ParameterEntry<string>?,
	Purpose: ParameterEntry<Enum.DialogPurpose>?,
	Tone: ParameterEntry<Enum.DialogTone>?,
	TriggerDistance: ParameterEntry<number>?,
	TriggerOffset: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type DialogChoiceProperties = {
	GoodbyeChoiceActive: ParameterEntry<boolean>?,
	GoodbyeDialog: ParameterEntry<string>?,
	ResponseDialog: ParameterEntry<string>?,
	UserDialog: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	GoodbyeChoiceActive: ParameterEntry<boolean>?,
	GoodbyeDialog: ParameterEntry<string>?,
	ResponseDialog: ParameterEntry<string>?,
	UserDialog: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type DraggerProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ExplosionProperties = {
	BlastPressure: ParameterEntry<number>?,
	BlastRadius: ParameterEntry<number>?,
	DestroyJointRadiusPercent: ParameterEntry<number>?,
	ExplosionType: ParameterEntry<Enum.ExplosionType>?,
	Position: ParameterEntry<Vector3>?,
	TimeScale: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	BlastPressure: ParameterEntry<number>?,
	BlastRadius: ParameterEntry<number>?,
	DestroyJointRadiusPercent: ParameterEntry<number>?,
	ExplosionType: ParameterEntry<Enum.ExplosionType>?,
	Position: ParameterEntry<Vector3>?,
	TimeScale: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type FaceControlsProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type DecalProperties = {
	Color3: ParameterEntry<Color3>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	Transparency: ParameterEntry<number>?,
	ZIndex: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Color3: ParameterEntry<Color3>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	Transparency: ParameterEntry<number>?,
	ZIndex: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TextureProperties = {
	OffsetStudsU: ParameterEntry<number>?,
	OffsetStudsV: ParameterEntry<number>?,
	StudsPerTileU: ParameterEntry<number>?,
	StudsPerTileV: ParameterEntry<number>?,
	Color3: ParameterEntry<Color3>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	Transparency: ParameterEntry<number>?,
	ZIndex: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	OffsetStudsU: ParameterEntry<number>?,
	OffsetStudsV: ParameterEntry<number>?,
	StudsPerTileU: ParameterEntry<number>?,
	StudsPerTileV: ParameterEntry<number>?,
	Color3: ParameterEntry<Color3>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	Transparency: ParameterEntry<number>?,
	ZIndex: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type FireProperties = {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Heat: ParameterEntry<number>?,
	SecondaryColor: ParameterEntry<Color3>?,
	Size: ParameterEntry<number>?,
	TimeScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Heat: ParameterEntry<number>?,
	SecondaryColor: ParameterEntry<Color3>?,
	Size: ParameterEntry<number>?,
	TimeScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type FlyweightServiceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CSGDictionaryServiceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type NonReplicatedCSGDictionaryServiceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type FolderProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ForceFieldProperties = {
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CanvasGroupProperties = {
	GroupColor3: ParameterEntry<Color3>?,
	GroupTransparency: ParameterEntry<number>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	GroupColor3: ParameterEntry<Color3>?,
	GroupTransparency: ParameterEntry<number>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type FrameProperties = {
	Style: ParameterEntry<Enum.FrameStyle>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Style: ParameterEntry<Enum.FrameStyle>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ImageButtonProperties = {
	HoverImage: ParameterEntry<string>?,
	Image: ParameterEntry<string>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageRectOffset: ParameterEntry<Vector2>?,
	ImageRectSize: ParameterEntry<Vector2>?,
	ImageTransparency: ParameterEntry<number>?,
	PressedImage: ParameterEntry<string>?,
	ResampleMode: ParameterEntry<Enum.ResamplerMode>?,
	ScaleType: ParameterEntry<Enum.ScaleType>?,
	SliceCenter: ParameterEntry<Rect>?,
	SliceScale: ParameterEntry<number>?,
	TileSize: ParameterEntry<UDim2>?,
	AutoButtonColor: ParameterEntry<boolean>?,
	Modal: ParameterEntry<boolean>?,
	Selected: ParameterEntry<boolean>?,
	Style: ParameterEntry<Enum.ButtonStyle>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	HoverImage: ParameterEntry<string>?,
	Image: ParameterEntry<string>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageRectOffset: ParameterEntry<Vector2>?,
	ImageRectSize: ParameterEntry<Vector2>?,
	ImageTransparency: ParameterEntry<number>?,
	PressedImage: ParameterEntry<string>?,
	ResampleMode: ParameterEntry<Enum.ResamplerMode>?,
	ScaleType: ParameterEntry<Enum.ScaleType>?,
	SliceCenter: ParameterEntry<Rect>?,
	SliceScale: ParameterEntry<number>?,
	TileSize: ParameterEntry<UDim2>?,
	AutoButtonColor: ParameterEntry<boolean>?,
	Modal: ParameterEntry<boolean>?,
	Selected: ParameterEntry<boolean>?,
	Style: ParameterEntry<Enum.ButtonStyle>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TextButtonProperties = {
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	RichText: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextColor3: ParameterEntry<Color3>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
	AutoButtonColor: ParameterEntry<boolean>?,
	Modal: ParameterEntry<boolean>?,
	Selected: ParameterEntry<boolean>?,
	Style: ParameterEntry<Enum.ButtonStyle>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	RichText: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextColor3: ParameterEntry<Color3>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
	AutoButtonColor: ParameterEntry<boolean>?,
	Modal: ParameterEntry<boolean>?,
	Selected: ParameterEntry<boolean>?,
	Style: ParameterEntry<Enum.ButtonStyle>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ImageLabelProperties = {
	Image: ParameterEntry<string>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageRectOffset: ParameterEntry<Vector2>?,
	ImageRectSize: ParameterEntry<Vector2>?,
	ImageTransparency: ParameterEntry<number>?,
	ResampleMode: ParameterEntry<Enum.ResamplerMode>?,
	ScaleType: ParameterEntry<Enum.ScaleType>?,
	SliceCenter: ParameterEntry<Rect>?,
	SliceScale: ParameterEntry<number>?,
	TileSize: ParameterEntry<UDim2>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Image: ParameterEntry<string>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageRectOffset: ParameterEntry<Vector2>?,
	ImageRectSize: ParameterEntry<Vector2>?,
	ImageTransparency: ParameterEntry<number>?,
	ResampleMode: ParameterEntry<Enum.ResamplerMode>?,
	ScaleType: ParameterEntry<Enum.ScaleType>?,
	SliceCenter: ParameterEntry<Rect>?,
	SliceScale: ParameterEntry<number>?,
	TileSize: ParameterEntry<UDim2>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TextLabelProperties = {
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	RichText: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextColor3: ParameterEntry<Color3>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	RichText: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextColor3: ParameterEntry<Color3>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ScrollingFrameProperties = {
	AutomaticCanvasSize: ParameterEntry<Enum.AutomaticSize>?,
	BottomImage: ParameterEntry<string>?,
	CanvasPosition: ParameterEntry<Vector2>?,
	CanvasSize: ParameterEntry<UDim2>?,
	ElasticBehavior: ParameterEntry<Enum.ElasticBehavior>?,
	HorizontalScrollBarInset: ParameterEntry<Enum.ScrollBarInset>?,
	MidImage: ParameterEntry<string>?,
	ScrollBarImageColor3: ParameterEntry<Color3>?,
	ScrollBarImageTransparency: ParameterEntry<number>?,
	ScrollBarThickness: ParameterEntry<number>?,
	ScrollingDirection: ParameterEntry<Enum.ScrollingDirection>?,
	ScrollingEnabled: ParameterEntry<boolean>?,
	TopImage: ParameterEntry<string>?,
	VerticalScrollBarInset: ParameterEntry<Enum.ScrollBarInset>?,
	VerticalScrollBarPosition: ParameterEntry<Enum.VerticalScrollBarPosition>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AutomaticCanvasSize: ParameterEntry<Enum.AutomaticSize>?,
	BottomImage: ParameterEntry<string>?,
	CanvasPosition: ParameterEntry<Vector2>?,
	CanvasSize: ParameterEntry<UDim2>?,
	ElasticBehavior: ParameterEntry<Enum.ElasticBehavior>?,
	HorizontalScrollBarInset: ParameterEntry<Enum.ScrollBarInset>?,
	MidImage: ParameterEntry<string>?,
	ScrollBarImageColor3: ParameterEntry<Color3>?,
	ScrollBarImageTransparency: ParameterEntry<number>?,
	ScrollBarThickness: ParameterEntry<number>?,
	ScrollingDirection: ParameterEntry<Enum.ScrollingDirection>?,
	ScrollingEnabled: ParameterEntry<boolean>?,
	TopImage: ParameterEntry<string>?,
	VerticalScrollBarInset: ParameterEntry<Enum.ScrollBarInset>?,
	VerticalScrollBarPosition: ParameterEntry<Enum.VerticalScrollBarPosition>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TextBoxProperties = {
	ClearTextOnFocus: ParameterEntry<boolean>?,
	CursorPosition: ParameterEntry<number>?,
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	MultiLine: ParameterEntry<boolean>?,
	PlaceholderColor3: ParameterEntry<Color3>?,
	PlaceholderText: ParameterEntry<string>?,
	RichText: ParameterEntry<boolean>?,
	SelectionStart: ParameterEntry<number>?,
	ShowNativeInput: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextColor3: ParameterEntry<Color3>?,
	TextEditable: ParameterEntry<boolean>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ClearTextOnFocus: ParameterEntry<boolean>?,
	CursorPosition: ParameterEntry<number>?,
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	MultiLine: ParameterEntry<boolean>?,
	PlaceholderColor3: ParameterEntry<Color3>?,
	PlaceholderText: ParameterEntry<string>?,
	RichText: ParameterEntry<boolean>?,
	SelectionStart: ParameterEntry<number>?,
	ShowNativeInput: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextColor3: ParameterEntry<Color3>?,
	TextEditable: ParameterEntry<boolean>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type VideoFrameProperties = {
	Looped: ParameterEntry<boolean>?,
	Playing: ParameterEntry<boolean>?,
	TimePosition: ParameterEntry<number>?,
	Video: ParameterEntry<string>?,
	Volume: ParameterEntry<number>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Looped: ParameterEntry<boolean>?,
	Playing: ParameterEntry<boolean>?,
	TimePosition: ParameterEntry<number>?,
	Video: ParameterEntry<string>?,
	Volume: ParameterEntry<number>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ViewportFrameProperties = {
	Ambient: ParameterEntry<Color3>?,
	CurrentCamera: ParameterEntry<Camera>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageTransparency: ParameterEntry<number>?,
	LightColor: ParameterEntry<Color3>?,
	LightDirection: ParameterEntry<Vector3>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Ambient: ParameterEntry<Color3>?,
	CurrentCamera: ParameterEntry<Camera>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageTransparency: ParameterEntry<number>?,
	LightColor: ParameterEntry<Color3>?,
	LightDirection: ParameterEntry<Vector3>?,
	Active: ParameterEntry<boolean>?,
	AnchorPoint: ParameterEntry<Vector2>?,
	AutomaticSize: ParameterEntry<Enum.AutomaticSize>?,
	BackgroundColor3: ParameterEntry<Color3>?,
	BackgroundTransparency: ParameterEntry<number>?,
	BorderColor3: ParameterEntry<Color3>?,
	BorderMode: ParameterEntry<Enum.BorderMode>?,
	BorderSizePixel: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LayoutOrder: ParameterEntry<number>?,
	NextSelectionDown: ParameterEntry<GuiObject>?,
	NextSelectionLeft: ParameterEntry<GuiObject>?,
	NextSelectionRight: ParameterEntry<GuiObject>?,
	NextSelectionUp: ParameterEntry<GuiObject>?,
	Position: ParameterEntry<UDim2>?,
	Rotation: ParameterEntry<number>?,
	Selectable: ParameterEntry<boolean>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
	SelectionOrder: ParameterEntry<number>?,
	Size: ParameterEntry<UDim2>?,
	SizeConstraint: ParameterEntry<Enum.SizeConstraint>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	ZIndex: ParameterEntry<number>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BillboardGuiProperties = {
	Active: ParameterEntry<boolean>?,
	Adornee: ParameterEntry<Instance>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	Brightness: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	DistanceLowerLimit: ParameterEntry<number>?,
	DistanceStep: ParameterEntry<number>?,
	DistanceUpperLimit: ParameterEntry<number>?,
	ExtentsOffset: ParameterEntry<Vector3>?,
	ExtentsOffsetWorldSpace: ParameterEntry<Vector3>?,
	LightInfluence: ParameterEntry<number>?,
	MaxDistance: ParameterEntry<number>?,
	PlayerToHideFrom: ParameterEntry<Instance>?,
	Size: ParameterEntry<UDim2>?,
	SizeOffset: ParameterEntry<Vector2>?,
	StudsOffset: ParameterEntry<Vector3>?,
	StudsOffsetWorldSpace: ParameterEntry<Vector3>?,
	Enabled: ParameterEntry<boolean>?,
	ResetOnSpawn: ParameterEntry<boolean>?,
	ZIndexBehavior: ParameterEntry<Enum.ZIndexBehavior>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Active: ParameterEntry<boolean>?,
	Adornee: ParameterEntry<Instance>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	Brightness: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	DistanceLowerLimit: ParameterEntry<number>?,
	DistanceStep: ParameterEntry<number>?,
	DistanceUpperLimit: ParameterEntry<number>?,
	ExtentsOffset: ParameterEntry<Vector3>?,
	ExtentsOffsetWorldSpace: ParameterEntry<Vector3>?,
	LightInfluence: ParameterEntry<number>?,
	MaxDistance: ParameterEntry<number>?,
	PlayerToHideFrom: ParameterEntry<Instance>?,
	Size: ParameterEntry<UDim2>?,
	SizeOffset: ParameterEntry<Vector2>?,
	StudsOffset: ParameterEntry<Vector3>?,
	StudsOffsetWorldSpace: ParameterEntry<Vector3>?,
	Enabled: ParameterEntry<boolean>?,
	ResetOnSpawn: ParameterEntry<boolean>?,
	ZIndexBehavior: ParameterEntry<Enum.ZIndexBehavior>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ScreenGuiProperties = {
	DisplayOrder: ParameterEntry<number>?,
	IgnoreGuiInset: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	ResetOnSpawn: ParameterEntry<boolean>?,
	ZIndexBehavior: ParameterEntry<Enum.ZIndexBehavior>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	DisplayOrder: ParameterEntry<number>?,
	IgnoreGuiInset: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	ResetOnSpawn: ParameterEntry<boolean>?,
	ZIndexBehavior: ParameterEntry<Enum.ZIndexBehavior>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SurfaceGuiProperties = {
	AlwaysOnTop: ParameterEntry<boolean>?,
	Brightness: ParameterEntry<number>?,
	CanvasSize: ParameterEntry<Vector2>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LightInfluence: ParameterEntry<number>?,
	PixelsPerStud: ParameterEntry<number>?,
	SizingMode: ParameterEntry<Enum.SurfaceGuiSizingMode>?,
	ToolPunchThroughDistance: ParameterEntry<number>?,
	ZOffset: ParameterEntry<number>?,
	Active: ParameterEntry<boolean>?,
	Adornee: ParameterEntry<Instance>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Enabled: ParameterEntry<boolean>?,
	ResetOnSpawn: ParameterEntry<boolean>?,
	ZIndexBehavior: ParameterEntry<Enum.ZIndexBehavior>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AlwaysOnTop: ParameterEntry<boolean>?,
	Brightness: ParameterEntry<number>?,
	CanvasSize: ParameterEntry<Vector2>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LightInfluence: ParameterEntry<number>?,
	PixelsPerStud: ParameterEntry<number>?,
	SizingMode: ParameterEntry<Enum.SurfaceGuiSizingMode>?,
	ToolPunchThroughDistance: ParameterEntry<number>?,
	ZOffset: ParameterEntry<number>?,
	Active: ParameterEntry<boolean>?,
	Adornee: ParameterEntry<Instance>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Enabled: ParameterEntry<boolean>?,
	ResetOnSpawn: ParameterEntry<boolean>?,
	ZIndexBehavior: ParameterEntry<Enum.ZIndexBehavior>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SelectionBoxProperties = {
	LineThickness: ParameterEntry<number>?,
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
	Adornee: ParameterEntry<Instance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	LineThickness: ParameterEntry<number>?,
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
	Adornee: ParameterEntry<Instance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BoxHandleAdornmentProperties = {
	Size: ParameterEntry<Vector3>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Size: ParameterEntry<Vector3>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ConeHandleAdornmentProperties = {
	Height: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Height: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CylinderHandleAdornmentProperties = {
	Angle: ParameterEntry<number>?,
	Height: ParameterEntry<number>?,
	InnerRadius: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Angle: ParameterEntry<number>?,
	Height: ParameterEntry<number>?,
	InnerRadius: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ImageHandleAdornmentProperties = {
	Image: ParameterEntry<string>?,
	Size: ParameterEntry<Vector2>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Image: ParameterEntry<string>?,
	Size: ParameterEntry<Vector2>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type LineHandleAdornmentProperties = {
	Length: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Length: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SphereHandleAdornmentProperties = {
	Radius: ParameterEntry<number>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Radius: ParameterEntry<number>?,
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type WireframeHandleAdornmentProperties = {
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ParabolaAdornmentProperties = {
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SelectionSphereProperties = {
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
	Adornee: ParameterEntry<PVInstance>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ArcHandlesProperties = {
	Axes: ParameterEntry<Axes>?,
	Adornee: ParameterEntry<BasePart>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Axes: ParameterEntry<Axes>?,
	Adornee: ParameterEntry<BasePart>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type HandlesProperties = {
	Faces: ParameterEntry<Faces>?,
	Style: ParameterEntry<Enum.HandlesStyle>?,
	Adornee: ParameterEntry<BasePart>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Faces: ParameterEntry<Faces>?,
	Style: ParameterEntry<Enum.HandlesStyle>?,
	Adornee: ParameterEntry<BasePart>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SurfaceSelectionProperties = {
	TargetSurface: ParameterEntry<Enum.NormalId>?,
	Adornee: ParameterEntry<BasePart>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	TargetSurface: ParameterEntry<Enum.NormalId>?,
	Adornee: ParameterEntry<BasePart>?,
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type HeightmapImporterServiceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type HiddenSurfaceRemovalAssetProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type HighlightProperties = {
	Adornee: ParameterEntry<Instance>?,
	DepthMode: ParameterEntry<Enum.HighlightDepthMode>?,
	Enabled: ParameterEntry<boolean>?,
	FillColor: ParameterEntry<Color3>?,
	FillTransparency: ParameterEntry<number>?,
	OutlineColor: ParameterEntry<Color3>?,
	OutlineTransparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Adornee: ParameterEntry<Instance>?,
	DepthMode: ParameterEntry<Enum.HighlightDepthMode>?,
	Enabled: ParameterEntry<boolean>?,
	FillColor: ParameterEntry<Color3>?,
	FillTransparency: ParameterEntry<number>?,
	OutlineColor: ParameterEntry<Color3>?,
	OutlineTransparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type HumanoidProperties = {
	AutoJumpEnabled: ParameterEntry<boolean>?,
	AutoRotate: ParameterEntry<boolean>?,
	AutomaticScalingEnabled: ParameterEntry<boolean>?,
	BreakJointsOnDeath: ParameterEntry<boolean>?,
	CameraOffset: ParameterEntry<Vector3>?,
	DisplayDistanceType: ParameterEntry<Enum.HumanoidDisplayDistanceType>?,
	DisplayName: ParameterEntry<string>?,
	Health: ParameterEntry<number>?,
	HealthDisplayDistance: ParameterEntry<number>?,
	HealthDisplayType: ParameterEntry<Enum.HumanoidHealthDisplayType>?,
	HipHeight: ParameterEntry<number>?,
	Jump: ParameterEntry<boolean>?,
	JumpHeight: ParameterEntry<number>?,
	JumpPower: ParameterEntry<number>?,
	MaxHealth: ParameterEntry<number>?,
	MaxSlopeAngle: ParameterEntry<number>?,
	NameDisplayDistance: ParameterEntry<number>?,
	NameOcclusion: ParameterEntry<Enum.NameOcclusion>?,
	PlatformStand: ParameterEntry<boolean>?,
	RequiresNeck: ParameterEntry<boolean>?,
	RigType: ParameterEntry<Enum.HumanoidRigType>?,
	Sit: ParameterEntry<boolean>?,
	TargetPoint: ParameterEntry<Vector3>?,
	UseJumpPower: ParameterEntry<boolean>?,
	WalkSpeed: ParameterEntry<number>?,
	WalkToPart: ParameterEntry<BasePart>?,
	WalkToPoint: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AutoJumpEnabled: ParameterEntry<boolean>?,
	AutoRotate: ParameterEntry<boolean>?,
	AutomaticScalingEnabled: ParameterEntry<boolean>?,
	BreakJointsOnDeath: ParameterEntry<boolean>?,
	CameraOffset: ParameterEntry<Vector3>?,
	DisplayDistanceType: ParameterEntry<Enum.HumanoidDisplayDistanceType>?,
	DisplayName: ParameterEntry<string>?,
	Health: ParameterEntry<number>?,
	HealthDisplayDistance: ParameterEntry<number>?,
	HealthDisplayType: ParameterEntry<Enum.HumanoidHealthDisplayType>?,
	HipHeight: ParameterEntry<number>?,
	Jump: ParameterEntry<boolean>?,
	JumpHeight: ParameterEntry<number>?,
	JumpPower: ParameterEntry<number>?,
	MaxHealth: ParameterEntry<number>?,
	MaxSlopeAngle: ParameterEntry<number>?,
	NameDisplayDistance: ParameterEntry<number>?,
	NameOcclusion: ParameterEntry<Enum.NameOcclusion>?,
	PlatformStand: ParameterEntry<boolean>?,
	RequiresNeck: ParameterEntry<boolean>?,
	RigType: ParameterEntry<Enum.HumanoidRigType>?,
	Sit: ParameterEntry<boolean>?,
	TargetPoint: ParameterEntry<Vector3>?,
	UseJumpPower: ParameterEntry<boolean>?,
	WalkSpeed: ParameterEntry<number>?,
	WalkToPart: ParameterEntry<BasePart>?,
	WalkToPoint: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type HumanoidDescriptionProperties = {
	BackAccessory: ParameterEntry<string>?,
	BodyTypeScale: ParameterEntry<number>?,
	ClimbAnimation: ParameterEntry<number>?,
	DepthScale: ParameterEntry<number>?,
	Face: ParameterEntry<number>?,
	FaceAccessory: ParameterEntry<string>?,
	FallAnimation: ParameterEntry<number>?,
	FrontAccessory: ParameterEntry<string>?,
	GraphicTShirt: ParameterEntry<number>?,
	HairAccessory: ParameterEntry<string>?,
	HatAccessory: ParameterEntry<string>?,
	Head: ParameterEntry<number>?,
	HeadColor: ParameterEntry<Color3>?,
	HeadScale: ParameterEntry<number>?,
	HeightScale: ParameterEntry<number>?,
	IdleAnimation: ParameterEntry<number>?,
	JumpAnimation: ParameterEntry<number>?,
	LeftArm: ParameterEntry<number>?,
	LeftArmColor: ParameterEntry<Color3>?,
	LeftLeg: ParameterEntry<number>?,
	LeftLegColor: ParameterEntry<Color3>?,
	MoodAnimation: ParameterEntry<number>?,
	NeckAccessory: ParameterEntry<string>?,
	Pants: ParameterEntry<number>?,
	ProportionScale: ParameterEntry<number>?,
	RightArm: ParameterEntry<number>?,
	RightArmColor: ParameterEntry<Color3>?,
	RightLeg: ParameterEntry<number>?,
	RightLegColor: ParameterEntry<Color3>?,
	RunAnimation: ParameterEntry<number>?,
	Shirt: ParameterEntry<number>?,
	ShouldersAccessory: ParameterEntry<string>?,
	SwimAnimation: ParameterEntry<number>?,
	Torso: ParameterEntry<number>?,
	TorsoColor: ParameterEntry<Color3>?,
	WaistAccessory: ParameterEntry<string>?,
	WalkAnimation: ParameterEntry<number>?,
	WidthScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	BackAccessory: ParameterEntry<string>?,
	BodyTypeScale: ParameterEntry<number>?,
	ClimbAnimation: ParameterEntry<number>?,
	DepthScale: ParameterEntry<number>?,
	Face: ParameterEntry<number>?,
	FaceAccessory: ParameterEntry<string>?,
	FallAnimation: ParameterEntry<number>?,
	FrontAccessory: ParameterEntry<string>?,
	GraphicTShirt: ParameterEntry<number>?,
	HairAccessory: ParameterEntry<string>?,
	HatAccessory: ParameterEntry<string>?,
	Head: ParameterEntry<number>?,
	HeadColor: ParameterEntry<Color3>?,
	HeadScale: ParameterEntry<number>?,
	HeightScale: ParameterEntry<number>?,
	IdleAnimation: ParameterEntry<number>?,
	JumpAnimation: ParameterEntry<number>?,
	LeftArm: ParameterEntry<number>?,
	LeftArmColor: ParameterEntry<Color3>?,
	LeftLeg: ParameterEntry<number>?,
	LeftLegColor: ParameterEntry<Color3>?,
	MoodAnimation: ParameterEntry<number>?,
	NeckAccessory: ParameterEntry<string>?,
	Pants: ParameterEntry<number>?,
	ProportionScale: ParameterEntry<number>?,
	RightArm: ParameterEntry<number>?,
	RightArmColor: ParameterEntry<Color3>?,
	RightLeg: ParameterEntry<number>?,
	RightLegColor: ParameterEntry<Color3>?,
	RunAnimation: ParameterEntry<number>?,
	Shirt: ParameterEntry<number>?,
	ShouldersAccessory: ParameterEntry<string>?,
	SwimAnimation: ParameterEntry<number>?,
	Torso: ParameterEntry<number>?,
	TorsoColor: ParameterEntry<Color3>?,
	WaistAccessory: ParameterEntry<string>?,
	WalkAnimation: ParameterEntry<number>?,
	WidthScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type Motor6DProperties = {
	Transform: ParameterEntry<CFrame>?,
	CurrentAngle: ParameterEntry<number>?,
	DesiredAngle: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
	C0: ParameterEntry<CFrame>?,
	C1: ParameterEntry<CFrame>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Transform: ParameterEntry<CFrame>?,
	CurrentAngle: ParameterEntry<number>?,
	DesiredAngle: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
	C0: ParameterEntry<CFrame>?,
	C1: ParameterEntry<CFrame>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type VelocityMotorProperties = {
	CurrentAngle: ParameterEntry<number>?,
	DesiredAngle: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
	C0: ParameterEntry<CFrame>?,
	C1: ParameterEntry<CFrame>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CurrentAngle: ParameterEntry<number>?,
	DesiredAngle: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
	C0: ParameterEntry<CFrame>?,
	C1: ParameterEntry<CFrame>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type WeldProperties = {
	C0: ParameterEntry<CFrame>?,
	C1: ParameterEntry<CFrame>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	C0: ParameterEntry<CFrame>?,
	C1: ParameterEntry<CFrame>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PointLightProperties = {
	Range: ParameterEntry<number>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Shadows: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Range: ParameterEntry<number>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Shadows: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SpotLightProperties = {
	Angle: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Range: ParameterEntry<number>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Shadows: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Angle: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Range: ParameterEntry<number>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Shadows: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SurfaceLightProperties = {
	Angle: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Range: ParameterEntry<number>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Shadows: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Angle: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Range: ParameterEntry<number>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Shadows: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type LightingProperties = {
	Ambient: ParameterEntry<Color3>?,
	Brightness: ParameterEntry<number>?,
	ClockTime: ParameterEntry<number>?,
	ColorShift_Bottom: ParameterEntry<Color3>?,
	ColorShift_Top: ParameterEntry<Color3>?,
	EnvironmentDiffuseScale: ParameterEntry<number>?,
	EnvironmentSpecularScale: ParameterEntry<number>?,
	ExposureCompensation: ParameterEntry<number>?,
	FogColor: ParameterEntry<Color3>?,
	FogEnd: ParameterEntry<number>?,
	FogStart: ParameterEntry<number>?,
	GeographicLatitude: ParameterEntry<number>?,
	GlobalShadows: ParameterEntry<boolean>?,
	OutdoorAmbient: ParameterEntry<Color3>?,
	ShadowSoftness: ParameterEntry<number>?,
	TimeOfDay: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Ambient: ParameterEntry<Color3>?,
	Brightness: ParameterEntry<number>?,
	ClockTime: ParameterEntry<number>?,
	ColorShift_Bottom: ParameterEntry<Color3>?,
	ColorShift_Top: ParameterEntry<Color3>?,
	EnvironmentDiffuseScale: ParameterEntry<number>?,
	EnvironmentSpecularScale: ParameterEntry<number>?,
	ExposureCompensation: ParameterEntry<number>?,
	FogColor: ParameterEntry<Color3>?,
	FogEnd: ParameterEntry<number>?,
	FogStart: ParameterEntry<number>?,
	GeographicLatitude: ParameterEntry<number>?,
	GlobalShadows: ParameterEntry<boolean>?,
	OutdoorAmbient: ParameterEntry<Color3>?,
	ShadowSoftness: ParameterEntry<number>?,
	TimeOfDay: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type MaterialServiceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type MaterialVariantProperties = {
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	MaterialPattern: ParameterEntry<Enum.MaterialPattern>?,
	StudsPerTile: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	MaterialPattern: ParameterEntry<Enum.MaterialPattern>?,
	StudsPerTile: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type MemoryStoreServiceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type NoCollisionConstraintProperties = {
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CornerWedgePartProperties = {
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PartProperties = {
	Shape: ParameterEntry<Enum.PartType>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Shape: ParameterEntry<Enum.PartType>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SeatProperties = {
	Disabled: ParameterEntry<boolean>?,
	Shape: ParameterEntry<Enum.PartType>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Disabled: ParameterEntry<boolean>?,
	Shape: ParameterEntry<Enum.PartType>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SpawnLocationProperties = {
	AllowTeamChangeOnTouch: ParameterEntry<boolean>?,
	Duration: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Neutral: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
	Shape: ParameterEntry<Enum.PartType>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AllowTeamChangeOnTouch: ParameterEntry<boolean>?,
	Duration: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Neutral: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
	Shape: ParameterEntry<Enum.PartType>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type WedgePartProperties = {
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type MeshPartProperties = {
	TextureID: ParameterEntry<string>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	TextureID: ParameterEntry<string>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type NegateOperationProperties = {
	UsePartColor: ParameterEntry<boolean>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	UsePartColor: ParameterEntry<boolean>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UnionOperationProperties = {
	UsePartColor: ParameterEntry<boolean>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	UsePartColor: ParameterEntry<boolean>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TrussPartProperties = {
	Style: ParameterEntry<Enum.Style>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Style: ParameterEntry<Enum.Style>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type VehicleSeatProperties = {
	Disabled: ParameterEntry<boolean>?,
	HeadsUpDisplay: ParameterEntry<boolean>?,
	MaxSpeed: ParameterEntry<number>?,
	Steer: ParameterEntry<number>?,
	SteerFloat: ParameterEntry<number>?,
	Throttle: ParameterEntry<number>?,
	ThrottleFloat: ParameterEntry<number>?,
	Torque: ParameterEntry<number>?,
	TurnSpeed: ParameterEntry<number>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Disabled: ParameterEntry<boolean>?,
	HeadsUpDisplay: ParameterEntry<boolean>?,
	MaxSpeed: ParameterEntry<number>?,
	Steer: ParameterEntry<number>?,
	SteerFloat: ParameterEntry<number>?,
	Throttle: ParameterEntry<number>?,
	ThrottleFloat: ParameterEntry<number>?,
	Torque: ParameterEntry<number>?,
	TurnSpeed: ParameterEntry<number>?,
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	Reflectance: ParameterEntry<number>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ModelProperties = {
	PrimaryPart: ParameterEntry<BasePart>?,
	WorldPivot: ParameterEntry<CFrame>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	PrimaryPart: ParameterEntry<BasePart>?,
	WorldPivot: ParameterEntry<CFrame>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ActorProperties = {
	PrimaryPart: ParameterEntry<BasePart>?,
	WorldPivot: ParameterEntry<CFrame>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	PrimaryPart: ParameterEntry<BasePart>?,
	WorldPivot: ParameterEntry<CFrame>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type WorldModelProperties = {
	PrimaryPart: ParameterEntry<BasePart>?,
	WorldPivot: ParameterEntry<CFrame>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	PrimaryPart: ParameterEntry<BasePart>?,
	WorldPivot: ParameterEntry<CFrame>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ParticleEmitterProperties = {
	Acceleration: ParameterEntry<Vector3>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<ColorSequence>?,
	Drag: ParameterEntry<number>?,
	EmissionDirection: ParameterEntry<Enum.NormalId>?,
	Enabled: ParameterEntry<boolean>?,
	FlipbookFramerate: ParameterEntry<NumberRange>?,
	FlipbookIncompatible: ParameterEntry<string>?,
	FlipbookLayout: ParameterEntry<Enum.ParticleFlipbookLayout>?,
	FlipbookMode: ParameterEntry<Enum.ParticleFlipbookMode>?,
	FlipbookStartRandom: ParameterEntry<boolean>?,
	Lifetime: ParameterEntry<NumberRange>?,
	LightEmission: ParameterEntry<number>?,
	LightInfluence: ParameterEntry<number>?,
	LockedToPart: ParameterEntry<boolean>?,
	Orientation: ParameterEntry<Enum.ParticleOrientation>?,
	Rate: ParameterEntry<number>?,
	RotSpeed: ParameterEntry<NumberRange>?,
	Rotation: ParameterEntry<NumberRange>?,
	Shape: ParameterEntry<Enum.ParticleEmitterShape>?,
	ShapeInOut: ParameterEntry<Enum.ParticleEmitterShapeInOut>?,
	ShapePartial: ParameterEntry<number>?,
	ShapeStyle: ParameterEntry<Enum.ParticleEmitterShapeStyle>?,
	Size: ParameterEntry<NumberSequence>?,
	Speed: ParameterEntry<NumberRange>?,
	SpreadAngle: ParameterEntry<Vector2>?,
	Squash: ParameterEntry<NumberSequence>?,
	Texture: ParameterEntry<string>?,
	TimeScale: ParameterEntry<number>?,
	Transparency: ParameterEntry<NumberSequence>?,
	VelocityInheritance: ParameterEntry<number>?,
	ZOffset: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Acceleration: ParameterEntry<Vector3>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<ColorSequence>?,
	Drag: ParameterEntry<number>?,
	EmissionDirection: ParameterEntry<Enum.NormalId>?,
	Enabled: ParameterEntry<boolean>?,
	FlipbookFramerate: ParameterEntry<NumberRange>?,
	FlipbookIncompatible: ParameterEntry<string>?,
	FlipbookLayout: ParameterEntry<Enum.ParticleFlipbookLayout>?,
	FlipbookMode: ParameterEntry<Enum.ParticleFlipbookMode>?,
	FlipbookStartRandom: ParameterEntry<boolean>?,
	Lifetime: ParameterEntry<NumberRange>?,
	LightEmission: ParameterEntry<number>?,
	LightInfluence: ParameterEntry<number>?,
	LockedToPart: ParameterEntry<boolean>?,
	Orientation: ParameterEntry<Enum.ParticleOrientation>?,
	Rate: ParameterEntry<number>?,
	RotSpeed: ParameterEntry<NumberRange>?,
	Rotation: ParameterEntry<NumberRange>?,
	Shape: ParameterEntry<Enum.ParticleEmitterShape>?,
	ShapeInOut: ParameterEntry<Enum.ParticleEmitterShapeInOut>?,
	ShapePartial: ParameterEntry<number>?,
	ShapeStyle: ParameterEntry<Enum.ParticleEmitterShapeStyle>?,
	Size: ParameterEntry<NumberSequence>?,
	Speed: ParameterEntry<NumberRange>?,
	SpreadAngle: ParameterEntry<Vector2>?,
	Squash: ParameterEntry<NumberSequence>?,
	Texture: ParameterEntry<string>?,
	TimeScale: ParameterEntry<number>?,
	Transparency: ParameterEntry<NumberSequence>?,
	VelocityInheritance: ParameterEntry<number>?,
	ZOffset: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PathfindingLinkProperties = {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	IsBidirectional: ParameterEntry<boolean>?,
	Label: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	IsBidirectional: ParameterEntry<boolean>?,
	Label: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PathfindingModifierProperties = {
	Label: ParameterEntry<string>?,
	PassThrough: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Label: ParameterEntry<string>?,
	PassThrough: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PlayerProperties = {
	AutoJumpEnabled: ParameterEntry<boolean>?,
	CameraMaxZoomDistance: ParameterEntry<number>?,
	CameraMinZoomDistance: ParameterEntry<number>?,
	CameraMode: ParameterEntry<Enum.CameraMode>?,
	CanLoadCharacterAppearance: ParameterEntry<boolean>?,
	Character: ParameterEntry<Model>?,
	CharacterAppearanceId: ParameterEntry<number>?,
	DevCameraOcclusionMode: ParameterEntry<Enum.DevCameraOcclusionMode>?,
	DevComputerCameraMode: ParameterEntry<Enum.DevComputerCameraMovementMode>?,
	DevComputerMovementMode: ParameterEntry<Enum.DevComputerMovementMode>?,
	DevEnableMouseLock: ParameterEntry<boolean>?,
	DevTouchCameraMode: ParameterEntry<Enum.DevTouchCameraMovementMode>?,
	DevTouchMovementMode: ParameterEntry<Enum.DevTouchMovementMode>?,
	DisplayName: ParameterEntry<string>?,
	HealthDisplayDistance: ParameterEntry<number>?,
	NameDisplayDistance: ParameterEntry<number>?,
	Neutral: ParameterEntry<boolean>?,
	ReplicationFocus: ParameterEntry<Instance>?,
	RespawnLocation: ParameterEntry<SpawnLocation>?,
	Team: ParameterEntry<Team>?,
	TeamColor: ParameterEntry<BrickColor>?,
	UserId: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AutoJumpEnabled: ParameterEntry<boolean>?,
	CameraMaxZoomDistance: ParameterEntry<number>?,
	CameraMinZoomDistance: ParameterEntry<number>?,
	CameraMode: ParameterEntry<Enum.CameraMode>?,
	CanLoadCharacterAppearance: ParameterEntry<boolean>?,
	Character: ParameterEntry<Model>?,
	CharacterAppearanceId: ParameterEntry<number>?,
	DevCameraOcclusionMode: ParameterEntry<Enum.DevCameraOcclusionMode>?,
	DevComputerCameraMode: ParameterEntry<Enum.DevComputerCameraMovementMode>?,
	DevComputerMovementMode: ParameterEntry<Enum.DevComputerMovementMode>?,
	DevEnableMouseLock: ParameterEntry<boolean>?,
	DevTouchCameraMode: ParameterEntry<Enum.DevTouchCameraMovementMode>?,
	DevTouchMovementMode: ParameterEntry<Enum.DevTouchMovementMode>?,
	DisplayName: ParameterEntry<string>?,
	HealthDisplayDistance: ParameterEntry<number>?,
	NameDisplayDistance: ParameterEntry<number>?,
	Neutral: ParameterEntry<boolean>?,
	ReplicationFocus: ParameterEntry<Instance>?,
	RespawnLocation: ParameterEntry<SpawnLocation>?,
	Team: ParameterEntry<Team>?,
	TeamColor: ParameterEntry<BrickColor>?,
	UserId: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PlayersProperties = {
	CharacterAutoLoads: ParameterEntry<boolean>?,
	RespawnTime: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CharacterAutoLoads: ParameterEntry<boolean>?,
	RespawnTime: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BloomEffectProperties = {
	Intensity: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	Threshold: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Intensity: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	Threshold: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BlurEffectProperties = {
	Size: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Size: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ColorCorrectionEffectProperties = {
	Brightness: ParameterEntry<number>?,
	Contrast: ParameterEntry<number>?,
	Saturation: ParameterEntry<number>?,
	TintColor: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Brightness: ParameterEntry<number>?,
	Contrast: ParameterEntry<number>?,
	Saturation: ParameterEntry<number>?,
	TintColor: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type DepthOfFieldEffectProperties = {
	FarIntensity: ParameterEntry<number>?,
	FocusDistance: ParameterEntry<number>?,
	InFocusRadius: ParameterEntry<number>?,
	NearIntensity: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	FarIntensity: ParameterEntry<number>?,
	FocusDistance: ParameterEntry<number>?,
	InFocusRadius: ParameterEntry<number>?,
	NearIntensity: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SunRaysEffectProperties = {
	Intensity: ParameterEntry<number>?,
	Spread: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Intensity: ParameterEntry<number>?,
	Spread: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ProximityPromptProperties = {
	ActionText: ParameterEntry<string>?,
	AutoLocalize: ParameterEntry<boolean>?,
	ClickablePrompt: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Exclusivity: ParameterEntry<Enum.ProximityPromptExclusivity>?,
	GamepadKeyCode: ParameterEntry<Enum.KeyCode>?,
	HoldDuration: ParameterEntry<number>?,
	KeyboardKeyCode: ParameterEntry<Enum.KeyCode>?,
	MaxActivationDistance: ParameterEntry<number>?,
	ObjectText: ParameterEntry<string>?,
	RequiresLineOfSight: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	Style: ParameterEntry<Enum.ProximityPromptStyle>?,
	UIOffset: ParameterEntry<Vector2>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ActionText: ParameterEntry<string>?,
	AutoLocalize: ParameterEntry<boolean>?,
	ClickablePrompt: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Exclusivity: ParameterEntry<Enum.ProximityPromptExclusivity>?,
	GamepadKeyCode: ParameterEntry<Enum.KeyCode>?,
	HoldDuration: ParameterEntry<number>?,
	KeyboardKeyCode: ParameterEntry<Enum.KeyCode>?,
	MaxActivationDistance: ParameterEntry<number>?,
	ObjectText: ParameterEntry<string>?,
	RequiresLineOfSight: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	Style: ParameterEntry<Enum.ProximityPromptStyle>?,
	UIOffset: ParameterEntry<Vector2>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ProximityPromptServiceProperties = {
	Enabled: ParameterEntry<boolean>?,
	MaxPromptsVisible: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Enabled: ParameterEntry<boolean>?,
	MaxPromptsVisible: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type RemoteEventProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type RemoteFunctionProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type RotationCurveProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SkyProperties = {
	CelestialBodiesShown: ParameterEntry<boolean>?,
	MoonAngularSize: ParameterEntry<number>?,
	MoonTextureId: ParameterEntry<string>?,
	SkyboxBk: ParameterEntry<string>?,
	SkyboxDn: ParameterEntry<string>?,
	SkyboxFt: ParameterEntry<string>?,
	SkyboxLf: ParameterEntry<string>?,
	SkyboxRt: ParameterEntry<string>?,
	SkyboxUp: ParameterEntry<string>?,
	StarCount: ParameterEntry<number>?,
	SunAngularSize: ParameterEntry<number>?,
	SunTextureId: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CelestialBodiesShown: ParameterEntry<boolean>?,
	MoonAngularSize: ParameterEntry<number>?,
	MoonTextureId: ParameterEntry<string>?,
	SkyboxBk: ParameterEntry<string>?,
	SkyboxDn: ParameterEntry<string>?,
	SkyboxFt: ParameterEntry<string>?,
	SkyboxLf: ParameterEntry<string>?,
	SkyboxRt: ParameterEntry<string>?,
	SkyboxUp: ParameterEntry<string>?,
	StarCount: ParameterEntry<number>?,
	SunAngularSize: ParameterEntry<number>?,
	SunTextureId: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SmokeProperties = {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Opacity: ParameterEntry<number>?,
	RiseVelocity: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	TimeScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Opacity: ParameterEntry<number>?,
	RiseVelocity: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	TimeScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SoundProperties = {
	Looped: ParameterEntry<boolean>?,
	PlayOnRemove: ParameterEntry<boolean>?,
	PlaybackSpeed: ParameterEntry<number>?,
	Playing: ParameterEntry<boolean>?,
	RollOffMaxDistance: ParameterEntry<number>?,
	RollOffMinDistance: ParameterEntry<number>?,
	RollOffMode: ParameterEntry<Enum.RollOffMode>?,
	SoundGroup: ParameterEntry<SoundGroup>?,
	SoundId: ParameterEntry<string>?,
	TimePosition: ParameterEntry<number>?,
	Volume: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Looped: ParameterEntry<boolean>?,
	PlayOnRemove: ParameterEntry<boolean>?,
	PlaybackSpeed: ParameterEntry<number>?,
	Playing: ParameterEntry<boolean>?,
	RollOffMaxDistance: ParameterEntry<number>?,
	RollOffMinDistance: ParameterEntry<number>?,
	RollOffMode: ParameterEntry<Enum.RollOffMode>?,
	SoundGroup: ParameterEntry<SoundGroup>?,
	SoundId: ParameterEntry<string>?,
	TimePosition: ParameterEntry<number>?,
	Volume: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ChorusSoundEffectProperties = {
	Depth: ParameterEntry<number>?,
	Mix: ParameterEntry<number>?,
	Rate: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Depth: ParameterEntry<number>?,
	Mix: ParameterEntry<number>?,
	Rate: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CompressorSoundEffectProperties = {
	Attack: ParameterEntry<number>?,
	GainMakeup: ParameterEntry<number>?,
	Ratio: ParameterEntry<number>?,
	Release: ParameterEntry<number>?,
	SideChain: ParameterEntry<Instance>?,
	Threshold: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Attack: ParameterEntry<number>?,
	GainMakeup: ParameterEntry<number>?,
	Ratio: ParameterEntry<number>?,
	Release: ParameterEntry<number>?,
	SideChain: ParameterEntry<Instance>?,
	Threshold: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ChannelSelectorSoundEffectProperties = {
	Channel: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Channel: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type DistortionSoundEffectProperties = {
	Level: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Level: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type EchoSoundEffectProperties = {
	Delay: ParameterEntry<number>?,
	DryLevel: ParameterEntry<number>?,
	Feedback: ParameterEntry<number>?,
	WetLevel: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Delay: ParameterEntry<number>?,
	DryLevel: ParameterEntry<number>?,
	Feedback: ParameterEntry<number>?,
	WetLevel: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type EqualizerSoundEffectProperties = {
	HighGain: ParameterEntry<number>?,
	LowGain: ParameterEntry<number>?,
	MidGain: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	HighGain: ParameterEntry<number>?,
	LowGain: ParameterEntry<number>?,
	MidGain: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type FlangeSoundEffectProperties = {
	Depth: ParameterEntry<number>?,
	Mix: ParameterEntry<number>?,
	Rate: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Depth: ParameterEntry<number>?,
	Mix: ParameterEntry<number>?,
	Rate: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type PitchShiftSoundEffectProperties = {
	Octave: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Octave: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ReverbSoundEffectProperties = {
	DecayTime: ParameterEntry<number>?,
	Density: ParameterEntry<number>?,
	Diffusion: ParameterEntry<number>?,
	DryLevel: ParameterEntry<number>?,
	WetLevel: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	DecayTime: ParameterEntry<number>?,
	Density: ParameterEntry<number>?,
	Diffusion: ParameterEntry<number>?,
	DryLevel: ParameterEntry<number>?,
	WetLevel: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TremoloSoundEffectProperties = {
	Depth: ParameterEntry<number>?,
	Duty: ParameterEntry<number>?,
	Frequency: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Depth: ParameterEntry<number>?,
	Duty: ParameterEntry<number>?,
	Frequency: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SoundGroupProperties = {
	Volume: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Volume: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SoundServiceProperties = {
	AmbientReverb: ParameterEntry<Enum.ReverbType>?,
	DistanceFactor: ParameterEntry<number>?,
	DopplerScale: ParameterEntry<number>?,
	RespectFilteringEnabled: ParameterEntry<boolean>?,
	RolloffScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AmbientReverb: ParameterEntry<Enum.ReverbType>?,
	DistanceFactor: ParameterEntry<number>?,
	DopplerScale: ParameterEntry<number>?,
	RespectFilteringEnabled: ParameterEntry<boolean>?,
	RolloffScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SparklesProperties = {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	SparkleColor: ParameterEntry<Color3>?,
	TimeScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	SparkleColor: ParameterEntry<Color3>?,
	TimeScale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type StarterGearProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type StarterPackProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type SurfaceAppearanceProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TeamProperties = {
	AutoAssignable: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AutoAssignable: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TestServiceProperties = {
	AutoRuns: ParameterEntry<boolean>?,
	Description: ParameterEntry<string>?,
	ExecuteWithStudioRun: ParameterEntry<boolean>?,
	Is30FpsThrottleEnabled: ParameterEntry<boolean>?,
	IsPhysicsEnvironmentalThrottled: ParameterEntry<boolean>?,
	IsSleepAllowed: ParameterEntry<boolean>?,
	NumberOfPlayers: ParameterEntry<number>?,
	SimulateSecondsLag: ParameterEntry<number>?,
	Timeout: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AutoRuns: ParameterEntry<boolean>?,
	Description: ParameterEntry<string>?,
	ExecuteWithStudioRun: ParameterEntry<boolean>?,
	Is30FpsThrottleEnabled: ParameterEntry<boolean>?,
	IsPhysicsEnvironmentalThrottled: ParameterEntry<boolean>?,
	IsSleepAllowed: ParameterEntry<boolean>?,
	NumberOfPlayers: ParameterEntry<number>?,
	SimulateSecondsLag: ParameterEntry<number>?,
	Timeout: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TextChannelProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TrackerStreamAnimationProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type TrailProperties = {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<ColorSequence>?,
	Enabled: ParameterEntry<boolean>?,
	FaceCamera: ParameterEntry<boolean>?,
	Lifetime: ParameterEntry<number>?,
	LightEmission: ParameterEntry<number>?,
	LightInfluence: ParameterEntry<number>?,
	MaxLength: ParameterEntry<number>?,
	MinLength: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	TextureLength: ParameterEntry<number>?,
	TextureMode: ParameterEntry<Enum.TextureMode>?,
	Transparency: ParameterEntry<NumberSequence>?,
	WidthScale: ParameterEntry<NumberSequence>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<ColorSequence>?,
	Enabled: ParameterEntry<boolean>?,
	FaceCamera: ParameterEntry<boolean>?,
	Lifetime: ParameterEntry<number>?,
	LightEmission: ParameterEntry<number>?,
	LightInfluence: ParameterEntry<number>?,
	MaxLength: ParameterEntry<number>?,
	MinLength: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	TextureLength: ParameterEntry<number>?,
	TextureMode: ParameterEntry<Enum.TextureMode>?,
	Transparency: ParameterEntry<NumberSequence>?,
	WidthScale: ParameterEntry<NumberSequence>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UIAspectRatioConstraintProperties = {
	AspectRatio: ParameterEntry<number>?,
	AspectType: ParameterEntry<Enum.AspectType>?,
	DominantAxis: ParameterEntry<Enum.DominantAxis>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	AspectRatio: ParameterEntry<number>?,
	AspectType: ParameterEntry<Enum.AspectType>?,
	DominantAxis: ParameterEntry<Enum.DominantAxis>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UISizeConstraintProperties = {
	MaxSize: ParameterEntry<Vector2>?,
	MinSize: ParameterEntry<Vector2>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	MaxSize: ParameterEntry<Vector2>?,
	MinSize: ParameterEntry<Vector2>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UITextSizeConstraintProperties = {
	MaxTextSize: ParameterEntry<number>?,
	MinTextSize: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	MaxTextSize: ParameterEntry<number>?,
	MinTextSize: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UICornerProperties = {
	CornerRadius: ParameterEntry<UDim>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CornerRadius: ParameterEntry<UDim>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UIGradientProperties = {
	Color: ParameterEntry<ColorSequence>?,
	Enabled: ParameterEntry<boolean>?,
	Offset: ParameterEntry<Vector2>?,
	Rotation: ParameterEntry<number>?,
	Transparency: ParameterEntry<NumberSequence>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Color: ParameterEntry<ColorSequence>?,
	Enabled: ParameterEntry<boolean>?,
	Offset: ParameterEntry<Vector2>?,
	Rotation: ParameterEntry<number>?,
	Transparency: ParameterEntry<NumberSequence>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UIGridLayoutProperties = {
	CellPadding: ParameterEntry<UDim2>?,
	CellSize: ParameterEntry<UDim2>?,
	FillDirectionMaxCells: ParameterEntry<number>?,
	StartCorner: ParameterEntry<Enum.StartCorner>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	CellPadding: ParameterEntry<UDim2>?,
	CellSize: ParameterEntry<UDim2>?,
	FillDirectionMaxCells: ParameterEntry<number>?,
	StartCorner: ParameterEntry<Enum.StartCorner>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UIListLayoutProperties = {
	Padding: ParameterEntry<UDim>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Padding: ParameterEntry<UDim>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UIPageLayoutProperties = {
	Animated: ParameterEntry<boolean>?,
	Circular: ParameterEntry<boolean>?,
	EasingDirection: ParameterEntry<Enum.EasingDirection>?,
	EasingStyle: ParameterEntry<Enum.EasingStyle>?,
	GamepadInputEnabled: ParameterEntry<boolean>?,
	Padding: ParameterEntry<UDim>?,
	ScrollWheelInputEnabled: ParameterEntry<boolean>?,
	TouchInputEnabled: ParameterEntry<boolean>?,
	TweenTime: ParameterEntry<number>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Animated: ParameterEntry<boolean>?,
	Circular: ParameterEntry<boolean>?,
	EasingDirection: ParameterEntry<Enum.EasingDirection>?,
	EasingStyle: ParameterEntry<Enum.EasingStyle>?,
	GamepadInputEnabled: ParameterEntry<boolean>?,
	Padding: ParameterEntry<UDim>?,
	ScrollWheelInputEnabled: ParameterEntry<boolean>?,
	TouchInputEnabled: ParameterEntry<boolean>?,
	TweenTime: ParameterEntry<number>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UITableLayoutProperties = {
	FillEmptySpaceColumns: ParameterEntry<boolean>?,
	FillEmptySpaceRows: ParameterEntry<boolean>?,
	MajorAxis: ParameterEntry<Enum.TableMajorAxis>?,
	Padding: ParameterEntry<UDim2>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	FillEmptySpaceColumns: ParameterEntry<boolean>?,
	FillEmptySpaceRows: ParameterEntry<boolean>?,
	MajorAxis: ParameterEntry<Enum.TableMajorAxis>?,
	Padding: ParameterEntry<UDim2>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UIPaddingProperties = {
	PaddingBottom: ParameterEntry<UDim>?,
	PaddingLeft: ParameterEntry<UDim>?,
	PaddingRight: ParameterEntry<UDim>?,
	PaddingTop: ParameterEntry<UDim>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	PaddingBottom: ParameterEntry<UDim>?,
	PaddingLeft: ParameterEntry<UDim>?,
	PaddingRight: ParameterEntry<UDim>?,
	PaddingTop: ParameterEntry<UDim>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UIScaleProperties = {
	Scale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Scale: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type UIStrokeProperties = {
	ApplyStrokeMode: ParameterEntry<Enum.ApplyStrokeMode>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	LineJoinMode: ParameterEntry<Enum.LineJoinMode>?,
	Thickness: ParameterEntry<number>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	ApplyStrokeMode: ParameterEntry<Enum.ApplyStrokeMode>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	LineJoinMode: ParameterEntry<Enum.LineJoinMode>?,
	Thickness: ParameterEntry<number>?,
	Transparency: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BoolValueProperties = {
	Value: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<boolean>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type BrickColorValueProperties = {
	Value: ParameterEntry<BrickColor>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<BrickColor>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type CFrameValueProperties = {
	Value: ParameterEntry<CFrame>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<CFrame>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type Color3ValueProperties = {
	Value: ParameterEntry<Color3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<Color3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type IntValueProperties = {
	Value: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type NumberValueProperties = {
	Value: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<number>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ObjectValueProperties = {
	Value: ParameterEntry<Instance>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<Instance>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type StringValueProperties = {
	Value: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<string>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type Vector3ValueProperties = {
	Value: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Value: ParameterEntry<Vector3>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type Vector3CurveProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type VirtualInputManagerProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type VoiceChannelProperties = {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type WeldConstraintProperties = {
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> any?
} | {
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
	Archivable: ParameterEntry<boolean>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: ParameterEntry<{Instance}>??,
	Attributes: {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}??,
	[any]: (...any) -> nil
}

type ClassNameConstructors0 = (
	((className: "Instance") -> ((params: InstanceProperties) -> Instance))
	& ((className: "Accessory") -> ((params: AccessoryProperties) -> Accessory))
	& ((className: "AdvancedDragger") -> ((params: AdvancedDraggerProperties) -> AdvancedDragger))
	& ((className: "AnalyticsService") -> ((params: AnalyticsServiceProperties) -> AnalyticsService)))

type ClassNameConstructors1 = (
	((className: "Animation") -> ((params: AnimationProperties) -> Animation))
	& ((className: "CurveAnimation") -> ((params: CurveAnimationProperties) -> CurveAnimation))
	& ((className: "KeyframeSequence") -> ((params: KeyframeSequenceProperties) -> KeyframeSequence))
	& ((className: "AnimationController") -> ((params: AnimationControllerProperties) -> AnimationController))
	& ((className: "AnimationRigData") -> ((params: AnimationRigDataProperties) -> AnimationRigData)))

type ClassNameConstructors2 = (
	((className: "Animator") -> ((params: AnimatorProperties) -> Animator))
	& ((className: "Atmosphere") -> ((params: AtmosphereProperties) -> Atmosphere))
	& ((className: "Attachment") -> ((params: AttachmentProperties) -> Attachment))
	& ((className: "Bone") -> ((params: BoneProperties) -> Bone))
	& ((className: "Backpack") -> ((params: BackpackProperties) -> Backpack)))

type ClassNameConstructors3 = (
	((className: "Tool") -> ((params: ToolProperties) -> Tool))
	& ((className: "StarterGui") -> ((params: StarterGuiProperties) -> StarterGui))
	& ((className: "WrapLayer") -> ((params: WrapLayerProperties) -> WrapLayer))
	& ((className: "WrapTarget") -> ((params: WrapTargetProperties) -> WrapTarget))
	& ((className: "Beam") -> ((params: BeamProperties) -> Beam)))

type ClassNameConstructors4 = (
	((className: "BindableEvent") -> ((params: BindableEventProperties) -> BindableEvent))
	& ((className: "BindableFunction") -> ((params: BindableFunctionProperties) -> BindableFunction))
	& ((className: "BodyAngularVelocity") -> ((params: BodyAngularVelocityProperties) -> BodyAngularVelocity))
	& ((className: "BodyForce") -> ((params: BodyForceProperties) -> BodyForce))
	& ((className: "BodyGyro") -> ((params: BodyGyroProperties) -> BodyGyro)))

type ClassNameConstructors5 = (
	((className: "BodyPosition") -> ((params: BodyPositionProperties) -> BodyPosition))
	& ((className: "BodyThrust") -> ((params: BodyThrustProperties) -> BodyThrust))
	& ((className: "BodyVelocity") -> ((params: BodyVelocityProperties) -> BodyVelocity))
	& ((className: "Camera") -> ((params: CameraProperties) -> Camera))
	& ((className: "BodyColors") -> ((params: BodyColorsProperties) -> BodyColors)))

type ClassNameConstructors6 = (
	((className: "Pants") -> ((params: PantsProperties) -> Pants))
	& ((className: "Shirt") -> ((params: ShirtProperties) -> Shirt))
	& ((className: "ShirtGraphic") -> ((params: ShirtGraphicProperties) -> ShirtGraphic))
	& ((className: "ClickDetector") -> ((params: ClickDetectorProperties) -> ClickDetector))
	& ((className: "Clouds") -> ((params: CloudsProperties) -> Clouds)))

type ClassNameConstructors7 = (
	((className: "Configuration") -> ((params: ConfigurationProperties) -> Configuration))
	& ((className: "AlignOrientation") -> ((params: AlignOrientationProperties) -> AlignOrientation))
	& ((className: "AlignPosition") -> ((params: AlignPositionProperties) -> AlignPosition))
	& ((className: "AngularVelocity") -> ((params: AngularVelocityProperties) -> AngularVelocity))
	& ((className: "BallSocketConstraint") -> ((params: BallSocketConstraintProperties) -> BallSocketConstraint)))

type ClassNameConstructors8 = (
	((className: "HingeConstraint") -> ((params: HingeConstraintProperties) -> HingeConstraint))
	& ((className: "LineForce") -> ((params: LineForceProperties) -> LineForce))
	& ((className: "LinearVelocity") -> ((params: LinearVelocityProperties) -> LinearVelocity))
	& ((className: "PlaneConstraint") -> ((params: PlaneConstraintProperties) -> PlaneConstraint))
	& ((className: "RigidConstraint") -> ((params: RigidConstraintProperties) -> RigidConstraint)))

type ClassNameConstructors9 = (
	((className: "RodConstraint") -> ((params: RodConstraintProperties) -> RodConstraint))
	& ((className: "RopeConstraint") -> ((params: RopeConstraintProperties) -> RopeConstraint))
	& ((className: "CylindricalConstraint") -> ((params: CylindricalConstraintProperties) -> CylindricalConstraint))
	& ((className: "PrismaticConstraint") -> ((params: PrismaticConstraintProperties) -> PrismaticConstraint))
	& ((className: "SpringConstraint") -> ((params: SpringConstraintProperties) -> SpringConstraint)))

type ClassNameConstructors10 = (
	((className: "Torque") -> ((params: TorqueProperties) -> Torque))
	& ((className: "TorsionSpringConstraint") -> ((params: TorsionSpringConstraintProperties) -> TorsionSpringConstraint))
	& ((className: "UniversalConstraint") -> ((params: UniversalConstraintProperties) -> UniversalConstraint))
	& ((className: "VectorForce") -> ((params: VectorForceProperties) -> VectorForce))
	& ((className: "FileMesh") -> ((params: FileMeshProperties) -> FileMesh)))

type ClassNameConstructors11 = (
	((className: "SpecialMesh") -> ((params: SpecialMeshProperties) -> SpecialMesh))
	& ((className: "Dialog") -> ((params: DialogProperties) -> Dialog))
	& ((className: "DialogChoice") -> ((params: DialogChoiceProperties) -> DialogChoice))
	& ((className: "Dragger") -> ((params: DraggerProperties) -> Dragger))
	& ((className: "Explosion") -> ((params: ExplosionProperties) -> Explosion)))

type ClassNameConstructors12 = (
	((className: "FaceControls") -> ((params: FaceControlsProperties) -> FaceControls))
	& ((className: "Decal") -> ((params: DecalProperties) -> Decal))
	& ((className: "Texture") -> ((params: TextureProperties) -> Texture))
	& ((className: "Fire") -> ((params: FireProperties) -> Fire))
	& ((className: "FlyweightService") -> ((params: FlyweightServiceProperties) -> FlyweightService)))

type ClassNameConstructors13 = (
	((className: "CSGDictionaryService") -> ((params: CSGDictionaryServiceProperties) -> CSGDictionaryService))
	& ((className: "NonReplicatedCSGDictionaryService") -> ((params: NonReplicatedCSGDictionaryServiceProperties) -> NonReplicatedCSGDictionaryService))
	& ((className: "Folder") -> ((params: FolderProperties) -> Folder))
	& ((className: "ForceField") -> ((params: ForceFieldProperties) -> ForceField))
	& ((className: "CanvasGroup") -> ((params: CanvasGroupProperties) -> CanvasGroup)))

type ClassNameConstructors14 = (
	((className: "Frame") -> ((params: FrameProperties) -> Frame))
	& ((className: "ImageButton") -> ((params: ImageButtonProperties) -> ImageButton))
	& ((className: "TextButton") -> ((params: TextButtonProperties) -> TextButton))
	& ((className: "ImageLabel") -> ((params: ImageLabelProperties) -> ImageLabel))
	& ((className: "TextLabel") -> ((params: TextLabelProperties) -> TextLabel)))

type ClassNameConstructors15 = (
	((className: "ScrollingFrame") -> ((params: ScrollingFrameProperties) -> ScrollingFrame))
	& ((className: "TextBox") -> ((params: TextBoxProperties) -> TextBox))
	& ((className: "VideoFrame") -> ((params: VideoFrameProperties) -> VideoFrame))
	& ((className: "ViewportFrame") -> ((params: ViewportFrameProperties) -> ViewportFrame))
	& ((className: "BillboardGui") -> ((params: BillboardGuiProperties) -> BillboardGui)))

type ClassNameConstructors16 = (
	((className: "ScreenGui") -> ((params: ScreenGuiProperties) -> ScreenGui))
	& ((className: "SurfaceGui") -> ((params: SurfaceGuiProperties) -> SurfaceGui))
	& ((className: "SelectionBox") -> ((params: SelectionBoxProperties) -> SelectionBox))
	& ((className: "BoxHandleAdornment") -> ((params: BoxHandleAdornmentProperties) -> BoxHandleAdornment))
	& ((className: "ConeHandleAdornment") -> ((params: ConeHandleAdornmentProperties) -> ConeHandleAdornment)))

type ClassNameConstructors17 = (
	((className: "CylinderHandleAdornment") -> ((params: CylinderHandleAdornmentProperties) -> CylinderHandleAdornment))
	& ((className: "ImageHandleAdornment") -> ((params: ImageHandleAdornmentProperties) -> ImageHandleAdornment))
	& ((className: "LineHandleAdornment") -> ((params: LineHandleAdornmentProperties) -> LineHandleAdornment))
	& ((className: "SphereHandleAdornment") -> ((params: SphereHandleAdornmentProperties) -> SphereHandleAdornment))
	& ((className: "WireframeHandleAdornment") -> ((params: WireframeHandleAdornmentProperties) -> WireframeHandleAdornment)))

type ClassNameConstructors18 = (
	((className: "ParabolaAdornment") -> ((params: ParabolaAdornmentProperties) -> ParabolaAdornment))
	& ((className: "SelectionSphere") -> ((params: SelectionSphereProperties) -> SelectionSphere))
	& ((className: "ArcHandles") -> ((params: ArcHandlesProperties) -> ArcHandles))
	& ((className: "Handles") -> ((params: HandlesProperties) -> Handles))
	& ((className: "SurfaceSelection") -> ((params: SurfaceSelectionProperties) -> SurfaceSelection)))

type ClassNameConstructors19 = (
	((className: "HeightmapImporterService") -> ((params: HeightmapImporterServiceProperties) -> HeightmapImporterService))
	& ((className: "HiddenSurfaceRemovalAsset") -> ((params: HiddenSurfaceRemovalAssetProperties) -> HiddenSurfaceRemovalAsset))
	& ((className: "Highlight") -> ((params: HighlightProperties) -> Highlight))
	& ((className: "Humanoid") -> ((params: HumanoidProperties) -> Humanoid))
	& ((className: "HumanoidDescription") -> ((params: HumanoidDescriptionProperties) -> HumanoidDescription)))

type ClassNameConstructors20 = (
	((className: "Motor6D") -> ((params: Motor6DProperties) -> Motor6D))
	& ((className: "VelocityMotor") -> ((params: VelocityMotorProperties) -> VelocityMotor))
	& ((className: "Weld") -> ((params: WeldProperties) -> Weld))
	& ((className: "PointLight") -> ((params: PointLightProperties) -> PointLight))
	& ((className: "SpotLight") -> ((params: SpotLightProperties) -> SpotLight)))

type ClassNameConstructors21 = (
	((className: "SurfaceLight") -> ((params: SurfaceLightProperties) -> SurfaceLight))
	& ((className: "Lighting") -> ((params: LightingProperties) -> Lighting))
	& ((className: "MaterialService") -> ((params: MaterialServiceProperties) -> MaterialService))
	& ((className: "MaterialVariant") -> ((params: MaterialVariantProperties) -> MaterialVariant))
	& ((className: "MemoryStoreService") -> ((params: MemoryStoreServiceProperties) -> MemoryStoreService)))

type ClassNameConstructors22 = (
	((className: "NoCollisionConstraint") -> ((params: NoCollisionConstraintProperties) -> NoCollisionConstraint))
	& ((className: "CornerWedgePart") -> ((params: CornerWedgePartProperties) -> CornerWedgePart))
	& ((className: "Part") -> ((params: PartProperties) -> Part))
	& ((className: "Seat") -> ((params: SeatProperties) -> Seat))
	& ((className: "SpawnLocation") -> ((params: SpawnLocationProperties) -> SpawnLocation)))

type ClassNameConstructors23 = (
	((className: "WedgePart") -> ((params: WedgePartProperties) -> WedgePart))
	& ((className: "MeshPart") -> ((params: MeshPartProperties) -> MeshPart))
	& ((className: "NegateOperation") -> ((params: NegateOperationProperties) -> NegateOperation))
	& ((className: "UnionOperation") -> ((params: UnionOperationProperties) -> UnionOperation))
	& ((className: "TrussPart") -> ((params: TrussPartProperties) -> TrussPart)))

type ClassNameConstructors24 = (
	((className: "VehicleSeat") -> ((params: VehicleSeatProperties) -> VehicleSeat))
	& ((className: "Model") -> ((params: ModelProperties) -> Model))
	& ((className: "Actor") -> ((params: ActorProperties) -> Actor))
	& ((className: "WorldModel") -> ((params: WorldModelProperties) -> WorldModel))
	& ((className: "ParticleEmitter") -> ((params: ParticleEmitterProperties) -> ParticleEmitter)))

type ClassNameConstructors25 = (
	((className: "PathfindingLink") -> ((params: PathfindingLinkProperties) -> PathfindingLink))
	& ((className: "PathfindingModifier") -> ((params: PathfindingModifierProperties) -> PathfindingModifier))
	& ((className: "Player") -> ((params: PlayerProperties) -> Player))
	& ((className: "Players") -> ((params: PlayersProperties) -> Players))
	& ((className: "BloomEffect") -> ((params: BloomEffectProperties) -> BloomEffect)))

type ClassNameConstructors26 = (
	((className: "BlurEffect") -> ((params: BlurEffectProperties) -> BlurEffect))
	& ((className: "ColorCorrectionEffect") -> ((params: ColorCorrectionEffectProperties) -> ColorCorrectionEffect))
	& ((className: "DepthOfFieldEffect") -> ((params: DepthOfFieldEffectProperties) -> DepthOfFieldEffect))
	& ((className: "SunRaysEffect") -> ((params: SunRaysEffectProperties) -> SunRaysEffect))
	& ((className: "ProximityPrompt") -> ((params: ProximityPromptProperties) -> ProximityPrompt)))

type ClassNameConstructors27 = (
	((className: "ProximityPromptService") -> ((params: ProximityPromptServiceProperties) -> ProximityPromptService))
	& ((className: "RemoteEvent") -> ((params: RemoteEventProperties) -> RemoteEvent))
	& ((className: "RemoteFunction") -> ((params: RemoteFunctionProperties) -> RemoteFunction))
	& ((className: "RotationCurve") -> ((params: RotationCurveProperties) -> RotationCurve))
	& ((className: "Sky") -> ((params: SkyProperties) -> Sky)))

type ClassNameConstructors28 = (
	((className: "Smoke") -> ((params: SmokeProperties) -> Smoke))
	& ((className: "Sound") -> ((params: SoundProperties) -> Sound))
	& ((className: "ChorusSoundEffect") -> ((params: ChorusSoundEffectProperties) -> ChorusSoundEffect))
	& ((className: "CompressorSoundEffect") -> ((params: CompressorSoundEffectProperties) -> CompressorSoundEffect))
	& ((className: "ChannelSelectorSoundEffect") -> ((params: ChannelSelectorSoundEffectProperties) -> ChannelSelectorSoundEffect)))

type ClassNameConstructors29 = (
	((className: "DistortionSoundEffect") -> ((params: DistortionSoundEffectProperties) -> DistortionSoundEffect))
	& ((className: "EchoSoundEffect") -> ((params: EchoSoundEffectProperties) -> EchoSoundEffect))
	& ((className: "EqualizerSoundEffect") -> ((params: EqualizerSoundEffectProperties) -> EqualizerSoundEffect))
	& ((className: "FlangeSoundEffect") -> ((params: FlangeSoundEffectProperties) -> FlangeSoundEffect))
	& ((className: "PitchShiftSoundEffect") -> ((params: PitchShiftSoundEffectProperties) -> PitchShiftSoundEffect)))

type ClassNameConstructors30 = (
	((className: "ReverbSoundEffect") -> ((params: ReverbSoundEffectProperties) -> ReverbSoundEffect))
	& ((className: "TremoloSoundEffect") -> ((params: TremoloSoundEffectProperties) -> TremoloSoundEffect))
	& ((className: "SoundGroup") -> ((params: SoundGroupProperties) -> SoundGroup))
	& ((className: "SoundService") -> ((params: SoundServiceProperties) -> SoundService))
	& ((className: "Sparkles") -> ((params: SparklesProperties) -> Sparkles)))

type ClassNameConstructors31 = (
	((className: "StarterGear") -> ((params: StarterGearProperties) -> StarterGear))
	& ((className: "StarterPack") -> ((params: StarterPackProperties) -> StarterPack))
	& ((className: "SurfaceAppearance") -> ((params: SurfaceAppearanceProperties) -> SurfaceAppearance))
	& ((className: "Team") -> ((params: TeamProperties) -> Team))
	& ((className: "TestService") -> ((params: TestServiceProperties) -> TestService)))

type ClassNameConstructors32 = (
	((className: "TextChannel") -> ((params: TextChannelProperties) -> TextChannel))
	& ((className: "TrackerStreamAnimation") -> ((params: TrackerStreamAnimationProperties) -> TrackerStreamAnimation))
	& ((className: "Trail") -> ((params: TrailProperties) -> Trail))
	& ((className: "UIAspectRatioConstraint") -> ((params: UIAspectRatioConstraintProperties) -> UIAspectRatioConstraint))
	& ((className: "UISizeConstraint") -> ((params: UISizeConstraintProperties) -> UISizeConstraint)))

type ClassNameConstructors33 = (
	((className: "UITextSizeConstraint") -> ((params: UITextSizeConstraintProperties) -> UITextSizeConstraint))
	& ((className: "UICorner") -> ((params: UICornerProperties) -> UICorner))
	& ((className: "UIGradient") -> ((params: UIGradientProperties) -> UIGradient))
	& ((className: "UIGridLayout") -> ((params: UIGridLayoutProperties) -> UIGridLayout))
	& ((className: "UIListLayout") -> ((params: UIListLayoutProperties) -> UIListLayout)))

type ClassNameConstructors34 = (
	((className: "UIPageLayout") -> ((params: UIPageLayoutProperties) -> UIPageLayout))
	& ((className: "UITableLayout") -> ((params: UITableLayoutProperties) -> UITableLayout))
	& ((className: "UIPadding") -> ((params: UIPaddingProperties) -> UIPadding))
	& ((className: "UIScale") -> ((params: UIScaleProperties) -> UIScale))
	& ((className: "UIStroke") -> ((params: UIStrokeProperties) -> UIStroke)))

type ClassNameConstructors35 = (
	((className: "BoolValue") -> ((params: BoolValueProperties) -> BoolValue))
	& ((className: "BrickColorValue") -> ((params: BrickColorValueProperties) -> BrickColorValue))
	& ((className: "CFrameValue") -> ((params: CFrameValueProperties) -> CFrameValue))
	& ((className: "Color3Value") -> ((params: Color3ValueProperties) -> Color3Value))
	& ((className: "IntValue") -> ((params: IntValueProperties) -> IntValue)))

type ClassNameConstructors36 = (
	((className: "NumberValue") -> ((params: NumberValueProperties) -> NumberValue))
	& ((className: "ObjectValue") -> ((params: ObjectValueProperties) -> ObjectValue))
	& ((className: "StringValue") -> ((params: StringValueProperties) -> StringValue))
	& ((className: "Vector3Value") -> ((params: Vector3ValueProperties) -> Vector3Value))
	& ((className: "Vector3Curve") -> ((params: Vector3CurveProperties) -> Vector3Curve)))

type ClassNameConstructors37 = (
	((className: "VirtualInputManager") -> ((params: VirtualInputManagerProperties) -> VirtualInputManager))
	& ((className: "VoiceChannel") -> ((params: VoiceChannelProperties) -> VoiceChannel))
	& ((className: "WeldConstraint") -> ((params: WeldConstraintProperties) -> WeldConstraint)))

 type ClassNameConstructorsBLLL = ClassNameConstructors8 & ClassNameConstructors24

 type ClassNameConstructorsALLLL = ClassNameConstructors0 & ClassNameConstructors32

 type ClassNameConstructorsBLLLL = ClassNameConstructors16

 type ClassNameConstructorsLLLL = ClassNameConstructorsALLLL & ClassNameConstructorsBLLLL

 type ClassNameConstructorsALLLR = ClassNameConstructors8

 type ClassNameConstructorsBLLLR = ClassNameConstructors24

 type ClassNameConstructorsLLLR = ClassNameConstructorsALLLR & ClassNameConstructorsBLLLR

 type ClassNameConstructorsLLL = ClassNameConstructorsLLLL & ClassNameConstructorsLLLR

 type ClassNameConstructorsBLLR = ClassNameConstructors12 & ClassNameConstructors28

 type ClassNameConstructorsALLRL = ClassNameConstructors4 & ClassNameConstructors36

 type ClassNameConstructorsBLLRL = ClassNameConstructors20

 type ClassNameConstructorsLLRL = ClassNameConstructorsALLRL & ClassNameConstructorsBLLRL

 type ClassNameConstructorsALLRR = ClassNameConstructors12

 type ClassNameConstructorsBLLRR = ClassNameConstructors28

 type ClassNameConstructorsLLRR = ClassNameConstructorsALLRR & ClassNameConstructorsBLLRR

 type ClassNameConstructorsLLR = ClassNameConstructorsLLRL & ClassNameConstructorsLLRR

 type ClassNameConstructorsLL = ClassNameConstructorsLLL & ClassNameConstructorsLLR

 type ClassNameConstructorsBLRL = ClassNameConstructors10 & ClassNameConstructors26

 type ClassNameConstructorsALRLL = ClassNameConstructors2 & ClassNameConstructors34

 type ClassNameConstructorsBLRLL = ClassNameConstructors18

 type ClassNameConstructorsLRLL = ClassNameConstructorsALRLL & ClassNameConstructorsBLRLL

 type ClassNameConstructorsALRLR = ClassNameConstructors10

 type ClassNameConstructorsBLRLR = ClassNameConstructors26

 type ClassNameConstructorsLRLR = ClassNameConstructorsALRLR & ClassNameConstructorsBLRLR

 type ClassNameConstructorsLRL = ClassNameConstructorsLRLL & ClassNameConstructorsLRLR

 type ClassNameConstructorsALRR = ClassNameConstructors6 & ClassNameConstructors22

 type ClassNameConstructorsBLRR = ClassNameConstructors14 & ClassNameConstructors30

 type ClassNameConstructorsLRR = ClassNameConstructorsALRR & ClassNameConstructorsBLRR

 type ClassNameConstructorsLR = ClassNameConstructorsLRL & ClassNameConstructorsLRR

 type ClassNameConstructorsL = ClassNameConstructorsLL & ClassNameConstructorsLR

 type ClassNameConstructorsBRLL = ClassNameConstructors9 & ClassNameConstructors25

 type ClassNameConstructorsARLLL = ClassNameConstructors1 & ClassNameConstructors33

 type ClassNameConstructorsBRLLL = ClassNameConstructors17

 type ClassNameConstructorsRLLL = ClassNameConstructorsARLLL & ClassNameConstructorsBRLLL

 type ClassNameConstructorsARLLR = ClassNameConstructors9

 type ClassNameConstructorsBRLLR = ClassNameConstructors25

 type ClassNameConstructorsRLLR = ClassNameConstructorsARLLR & ClassNameConstructorsBRLLR

 type ClassNameConstructorsRLL = ClassNameConstructorsRLLL & ClassNameConstructorsRLLR

 type ClassNameConstructorsBRLR = ClassNameConstructors13 & ClassNameConstructors29

 type ClassNameConstructorsARLRL = ClassNameConstructors5 & ClassNameConstructors37

 type ClassNameConstructorsBRLRL = ClassNameConstructors21

 type ClassNameConstructorsRLRL = ClassNameConstructorsARLRL & ClassNameConstructorsBRLRL

 type ClassNameConstructorsARLRR = ClassNameConstructors13

 type ClassNameConstructorsBRLRR = ClassNameConstructors29

 type ClassNameConstructorsRLRR = ClassNameConstructorsARLRR & ClassNameConstructorsBRLRR

 type ClassNameConstructorsRLR = ClassNameConstructorsRLRL & ClassNameConstructorsRLRR

 type ClassNameConstructorsRL = ClassNameConstructorsRLL & ClassNameConstructorsRLR

 type ClassNameConstructorsBRRL = ClassNameConstructors11 & ClassNameConstructors27

 type ClassNameConstructorsARRLL = ClassNameConstructors3 & ClassNameConstructors35

 type ClassNameConstructorsBRRLL = ClassNameConstructors19

 type ClassNameConstructorsRRLL = ClassNameConstructorsARRLL & ClassNameConstructorsBRRLL

 type ClassNameConstructorsARRLR = ClassNameConstructors11

 type ClassNameConstructorsBRRLR = ClassNameConstructors27

 type ClassNameConstructorsRRLR = ClassNameConstructorsARRLR & ClassNameConstructorsBRRLR

 type ClassNameConstructorsRRL = ClassNameConstructorsRRLL & ClassNameConstructorsRRLR

 type ClassNameConstructorsARRR = ClassNameConstructors7 & ClassNameConstructors23

 type ClassNameConstructorsBRRR = ClassNameConstructors15 & ClassNameConstructors31

 type ClassNameConstructorsRRR = ClassNameConstructorsARRR & ClassNameConstructorsBRRR

 type ClassNameConstructorsRR = ClassNameConstructorsRRL & ClassNameConstructorsRRR

 type ClassNameConstructorsR = ClassNameConstructorsRL & ClassNameConstructorsRR

 export type ClassNameConstructors = ClassNameConstructorsL & ClassNameConstructorsR

type ClassConstructors0 = (
	((Instance) -> ((params: InstanceProperties) -> Instance))
	& ((Accessory) -> ((params: AccessoryProperties) -> Accessory))
	& ((AdvancedDragger) -> ((params: AdvancedDraggerProperties) -> AdvancedDragger))
	& ((AnalyticsService) -> ((params: AnalyticsServiceProperties) -> AnalyticsService)))

type ClassConstructors1 = (
	((Animation) -> ((params: AnimationProperties) -> Animation))
	& ((CurveAnimation) -> ((params: CurveAnimationProperties) -> CurveAnimation))
	& ((KeyframeSequence) -> ((params: KeyframeSequenceProperties) -> KeyframeSequence))
	& ((AnimationController) -> ((params: AnimationControllerProperties) -> AnimationController))
	& ((AnimationRigData) -> ((params: AnimationRigDataProperties) -> AnimationRigData)))

type ClassConstructors2 = (
	((Animator) -> ((params: AnimatorProperties) -> Animator))
	& ((Atmosphere) -> ((params: AtmosphereProperties) -> Atmosphere))
	& ((Attachment) -> ((params: AttachmentProperties) -> Attachment))
	& ((Bone) -> ((params: BoneProperties) -> Bone))
	& ((Backpack) -> ((params: BackpackProperties) -> Backpack)))

type ClassConstructors3 = (
	((Tool) -> ((params: ToolProperties) -> Tool))
	& ((StarterGui) -> ((params: StarterGuiProperties) -> StarterGui))
	& ((WrapLayer) -> ((params: WrapLayerProperties) -> WrapLayer))
	& ((WrapTarget) -> ((params: WrapTargetProperties) -> WrapTarget))
	& ((Beam) -> ((params: BeamProperties) -> Beam)))

type ClassConstructors4 = (
	((BindableEvent) -> ((params: BindableEventProperties) -> BindableEvent))
	& ((BindableFunction) -> ((params: BindableFunctionProperties) -> BindableFunction))
	& ((BodyAngularVelocity) -> ((params: BodyAngularVelocityProperties) -> BodyAngularVelocity))
	& ((BodyForce) -> ((params: BodyForceProperties) -> BodyForce))
	& ((BodyGyro) -> ((params: BodyGyroProperties) -> BodyGyro)))

type ClassConstructors5 = (
	((BodyPosition) -> ((params: BodyPositionProperties) -> BodyPosition))
	& ((BodyThrust) -> ((params: BodyThrustProperties) -> BodyThrust))
	& ((BodyVelocity) -> ((params: BodyVelocityProperties) -> BodyVelocity))
	& ((Camera) -> ((params: CameraProperties) -> Camera))
	& ((BodyColors) -> ((params: BodyColorsProperties) -> BodyColors)))

type ClassConstructors6 = (
	((Pants) -> ((params: PantsProperties) -> Pants))
	& ((Shirt) -> ((params: ShirtProperties) -> Shirt))
	& ((ShirtGraphic) -> ((params: ShirtGraphicProperties) -> ShirtGraphic))
	& ((ClickDetector) -> ((params: ClickDetectorProperties) -> ClickDetector))
	& ((Clouds) -> ((params: CloudsProperties) -> Clouds)))

type ClassConstructors7 = (
	((Configuration) -> ((params: ConfigurationProperties) -> Configuration))
	& ((AlignOrientation) -> ((params: AlignOrientationProperties) -> AlignOrientation))
	& ((AlignPosition) -> ((params: AlignPositionProperties) -> AlignPosition))
	& ((AngularVelocity) -> ((params: AngularVelocityProperties) -> AngularVelocity))
	& ((BallSocketConstraint) -> ((params: BallSocketConstraintProperties) -> BallSocketConstraint)))

type ClassConstructors8 = (
	((HingeConstraint) -> ((params: HingeConstraintProperties) -> HingeConstraint))
	& ((LineForce) -> ((params: LineForceProperties) -> LineForce))
	& ((LinearVelocity) -> ((params: LinearVelocityProperties) -> LinearVelocity))
	& ((PlaneConstraint) -> ((params: PlaneConstraintProperties) -> PlaneConstraint))
	& ((RigidConstraint) -> ((params: RigidConstraintProperties) -> RigidConstraint)))

type ClassConstructors9 = (
	((RodConstraint) -> ((params: RodConstraintProperties) -> RodConstraint))
	& ((RopeConstraint) -> ((params: RopeConstraintProperties) -> RopeConstraint))
	& ((CylindricalConstraint) -> ((params: CylindricalConstraintProperties) -> CylindricalConstraint))
	& ((PrismaticConstraint) -> ((params: PrismaticConstraintProperties) -> PrismaticConstraint))
	& ((SpringConstraint) -> ((params: SpringConstraintProperties) -> SpringConstraint)))

type ClassConstructors10 = (
	((Torque) -> ((params: TorqueProperties) -> Torque))
	& ((TorsionSpringConstraint) -> ((params: TorsionSpringConstraintProperties) -> TorsionSpringConstraint))
	& ((UniversalConstraint) -> ((params: UniversalConstraintProperties) -> UniversalConstraint))
	& ((VectorForce) -> ((params: VectorForceProperties) -> VectorForce))
	& ((FileMesh) -> ((params: FileMeshProperties) -> FileMesh)))

type ClassConstructors11 = (
	((SpecialMesh) -> ((params: SpecialMeshProperties) -> SpecialMesh))
	& ((Dialog) -> ((params: DialogProperties) -> Dialog))
	& ((DialogChoice) -> ((params: DialogChoiceProperties) -> DialogChoice))
	& ((Dragger) -> ((params: DraggerProperties) -> Dragger))
	& ((Explosion) -> ((params: ExplosionProperties) -> Explosion)))

type ClassConstructors12 = (
	((FaceControls) -> ((params: FaceControlsProperties) -> FaceControls))
	& ((Decal) -> ((params: DecalProperties) -> Decal))
	& ((Texture) -> ((params: TextureProperties) -> Texture))
	& ((Fire) -> ((params: FireProperties) -> Fire))
	& ((FlyweightService) -> ((params: FlyweightServiceProperties) -> FlyweightService)))

type ClassConstructors13 = (
	((CSGDictionaryService) -> ((params: CSGDictionaryServiceProperties) -> CSGDictionaryService))
	& ((NonReplicatedCSGDictionaryService) -> ((params: NonReplicatedCSGDictionaryServiceProperties) -> NonReplicatedCSGDictionaryService))
	& ((Folder) -> ((params: FolderProperties) -> Folder))
	& ((ForceField) -> ((params: ForceFieldProperties) -> ForceField))
	& ((CanvasGroup) -> ((params: CanvasGroupProperties) -> CanvasGroup)))

type ClassConstructors14 = (
	((Frame) -> ((params: FrameProperties) -> Frame))
	& ((ImageButton) -> ((params: ImageButtonProperties) -> ImageButton))
	& ((TextButton) -> ((params: TextButtonProperties) -> TextButton))
	& ((ImageLabel) -> ((params: ImageLabelProperties) -> ImageLabel))
	& ((TextLabel) -> ((params: TextLabelProperties) -> TextLabel)))

type ClassConstructors15 = (
	((ScrollingFrame) -> ((params: ScrollingFrameProperties) -> ScrollingFrame))
	& ((TextBox) -> ((params: TextBoxProperties) -> TextBox))
	& ((VideoFrame) -> ((params: VideoFrameProperties) -> VideoFrame))
	& ((ViewportFrame) -> ((params: ViewportFrameProperties) -> ViewportFrame))
	& ((BillboardGui) -> ((params: BillboardGuiProperties) -> BillboardGui)))

type ClassConstructors16 = (
	((ScreenGui) -> ((params: ScreenGuiProperties) -> ScreenGui))
	& ((SurfaceGui) -> ((params: SurfaceGuiProperties) -> SurfaceGui))
	& ((SelectionBox) -> ((params: SelectionBoxProperties) -> SelectionBox))
	& ((BoxHandleAdornment) -> ((params: BoxHandleAdornmentProperties) -> BoxHandleAdornment))
	& ((ConeHandleAdornment) -> ((params: ConeHandleAdornmentProperties) -> ConeHandleAdornment)))

type ClassConstructors17 = (
	((CylinderHandleAdornment) -> ((params: CylinderHandleAdornmentProperties) -> CylinderHandleAdornment))
	& ((ImageHandleAdornment) -> ((params: ImageHandleAdornmentProperties) -> ImageHandleAdornment))
	& ((LineHandleAdornment) -> ((params: LineHandleAdornmentProperties) -> LineHandleAdornment))
	& ((SphereHandleAdornment) -> ((params: SphereHandleAdornmentProperties) -> SphereHandleAdornment))
	& ((WireframeHandleAdornment) -> ((params: WireframeHandleAdornmentProperties) -> WireframeHandleAdornment)))

type ClassConstructors18 = (
	((ParabolaAdornment) -> ((params: ParabolaAdornmentProperties) -> ParabolaAdornment))
	& ((SelectionSphere) -> ((params: SelectionSphereProperties) -> SelectionSphere))
	& ((ArcHandles) -> ((params: ArcHandlesProperties) -> ArcHandles))
	& ((Handles) -> ((params: HandlesProperties) -> Handles))
	& ((SurfaceSelection) -> ((params: SurfaceSelectionProperties) -> SurfaceSelection)))

type ClassConstructors19 = (
	((HeightmapImporterService) -> ((params: HeightmapImporterServiceProperties) -> HeightmapImporterService))
	& ((HiddenSurfaceRemovalAsset) -> ((params: HiddenSurfaceRemovalAssetProperties) -> HiddenSurfaceRemovalAsset))
	& ((Highlight) -> ((params: HighlightProperties) -> Highlight))
	& ((Humanoid) -> ((params: HumanoidProperties) -> Humanoid))
	& ((HumanoidDescription) -> ((params: HumanoidDescriptionProperties) -> HumanoidDescription)))

type ClassConstructors20 = (
	((Motor6D) -> ((params: Motor6DProperties) -> Motor6D))
	& ((VelocityMotor) -> ((params: VelocityMotorProperties) -> VelocityMotor))
	& ((Weld) -> ((params: WeldProperties) -> Weld))
	& ((PointLight) -> ((params: PointLightProperties) -> PointLight))
	& ((SpotLight) -> ((params: SpotLightProperties) -> SpotLight)))

type ClassConstructors21 = (
	((SurfaceLight) -> ((params: SurfaceLightProperties) -> SurfaceLight))
	& ((Lighting) -> ((params: LightingProperties) -> Lighting))
	& ((MaterialService) -> ((params: MaterialServiceProperties) -> MaterialService))
	& ((MaterialVariant) -> ((params: MaterialVariantProperties) -> MaterialVariant))
	& ((MemoryStoreService) -> ((params: MemoryStoreServiceProperties) -> MemoryStoreService)))

type ClassConstructors22 = (
	((NoCollisionConstraint) -> ((params: NoCollisionConstraintProperties) -> NoCollisionConstraint))
	& ((CornerWedgePart) -> ((params: CornerWedgePartProperties) -> CornerWedgePart))
	& ((Part) -> ((params: PartProperties) -> Part))
	& ((Seat) -> ((params: SeatProperties) -> Seat))
	& ((SpawnLocation) -> ((params: SpawnLocationProperties) -> SpawnLocation)))

type ClassConstructors23 = (
	((WedgePart) -> ((params: WedgePartProperties) -> WedgePart))
	& ((MeshPart) -> ((params: MeshPartProperties) -> MeshPart))
	& ((NegateOperation) -> ((params: NegateOperationProperties) -> NegateOperation))
	& ((UnionOperation) -> ((params: UnionOperationProperties) -> UnionOperation))
	& ((TrussPart) -> ((params: TrussPartProperties) -> TrussPart)))

type ClassConstructors24 = (
	((VehicleSeat) -> ((params: VehicleSeatProperties) -> VehicleSeat))
	& ((Model) -> ((params: ModelProperties) -> Model))
	& ((Actor) -> ((params: ActorProperties) -> Actor))
	& ((WorldModel) -> ((params: WorldModelProperties) -> WorldModel))
	& ((ParticleEmitter) -> ((params: ParticleEmitterProperties) -> ParticleEmitter)))

type ClassConstructors25 = (
	((PathfindingLink) -> ((params: PathfindingLinkProperties) -> PathfindingLink))
	& ((PathfindingModifier) -> ((params: PathfindingModifierProperties) -> PathfindingModifier))
	& ((Player) -> ((params: PlayerProperties) -> Player))
	& ((Players) -> ((params: PlayersProperties) -> Players))
	& ((BloomEffect) -> ((params: BloomEffectProperties) -> BloomEffect)))

type ClassConstructors26 = (
	((BlurEffect) -> ((params: BlurEffectProperties) -> BlurEffect))
	& ((ColorCorrectionEffect) -> ((params: ColorCorrectionEffectProperties) -> ColorCorrectionEffect))
	& ((DepthOfFieldEffect) -> ((params: DepthOfFieldEffectProperties) -> DepthOfFieldEffect))
	& ((SunRaysEffect) -> ((params: SunRaysEffectProperties) -> SunRaysEffect))
	& ((ProximityPrompt) -> ((params: ProximityPromptProperties) -> ProximityPrompt)))

type ClassConstructors27 = (
	((ProximityPromptService) -> ((params: ProximityPromptServiceProperties) -> ProximityPromptService))
	& ((RemoteEvent) -> ((params: RemoteEventProperties) -> RemoteEvent))
	& ((RemoteFunction) -> ((params: RemoteFunctionProperties) -> RemoteFunction))
	& ((RotationCurve) -> ((params: RotationCurveProperties) -> RotationCurve))
	& ((Sky) -> ((params: SkyProperties) -> Sky)))

type ClassConstructors28 = (
	((Smoke) -> ((params: SmokeProperties) -> Smoke))
	& ((Sound) -> ((params: SoundProperties) -> Sound))
	& ((ChorusSoundEffect) -> ((params: ChorusSoundEffectProperties) -> ChorusSoundEffect))
	& ((CompressorSoundEffect) -> ((params: CompressorSoundEffectProperties) -> CompressorSoundEffect))
	& ((ChannelSelectorSoundEffect) -> ((params: ChannelSelectorSoundEffectProperties) -> ChannelSelectorSoundEffect)))

type ClassConstructors29 = (
	((DistortionSoundEffect) -> ((params: DistortionSoundEffectProperties) -> DistortionSoundEffect))
	& ((EchoSoundEffect) -> ((params: EchoSoundEffectProperties) -> EchoSoundEffect))
	& ((EqualizerSoundEffect) -> ((params: EqualizerSoundEffectProperties) -> EqualizerSoundEffect))
	& ((FlangeSoundEffect) -> ((params: FlangeSoundEffectProperties) -> FlangeSoundEffect))
	& ((PitchShiftSoundEffect) -> ((params: PitchShiftSoundEffectProperties) -> PitchShiftSoundEffect)))

type ClassConstructors30 = (
	((ReverbSoundEffect) -> ((params: ReverbSoundEffectProperties) -> ReverbSoundEffect))
	& ((TremoloSoundEffect) -> ((params: TremoloSoundEffectProperties) -> TremoloSoundEffect))
	& ((SoundGroup) -> ((params: SoundGroupProperties) -> SoundGroup))
	& ((SoundService) -> ((params: SoundServiceProperties) -> SoundService))
	& ((Sparkles) -> ((params: SparklesProperties) -> Sparkles)))

type ClassConstructors31 = (
	((StarterGear) -> ((params: StarterGearProperties) -> StarterGear))
	& ((StarterPack) -> ((params: StarterPackProperties) -> StarterPack))
	& ((SurfaceAppearance) -> ((params: SurfaceAppearanceProperties) -> SurfaceAppearance))
	& ((Team) -> ((params: TeamProperties) -> Team))
	& ((TestService) -> ((params: TestServiceProperties) -> TestService)))

type ClassConstructors32 = (
	((TextChannel) -> ((params: TextChannelProperties) -> TextChannel))
	& ((TrackerStreamAnimation) -> ((params: TrackerStreamAnimationProperties) -> TrackerStreamAnimation))
	& ((Trail) -> ((params: TrailProperties) -> Trail))
	& ((UIAspectRatioConstraint) -> ((params: UIAspectRatioConstraintProperties) -> UIAspectRatioConstraint))
	& ((UISizeConstraint) -> ((params: UISizeConstraintProperties) -> UISizeConstraint)))

type ClassConstructors33 = (
	((UITextSizeConstraint) -> ((params: UITextSizeConstraintProperties) -> UITextSizeConstraint))
	& ((UICorner) -> ((params: UICornerProperties) -> UICorner))
	& ((UIGradient) -> ((params: UIGradientProperties) -> UIGradient))
	& ((UIGridLayout) -> ((params: UIGridLayoutProperties) -> UIGridLayout))
	& ((UIListLayout) -> ((params: UIListLayoutProperties) -> UIListLayout)))

type ClassConstructors34 = (
	((UIPageLayout) -> ((params: UIPageLayoutProperties) -> UIPageLayout))
	& ((UITableLayout) -> ((params: UITableLayoutProperties) -> UITableLayout))
	& ((UIPadding) -> ((params: UIPaddingProperties) -> UIPadding))
	& ((UIScale) -> ((params: UIScaleProperties) -> UIScale))
	& ((UIStroke) -> ((params: UIStrokeProperties) -> UIStroke)))

type ClassConstructors35 = (
	((BoolValue) -> ((params: BoolValueProperties) -> BoolValue))
	& ((BrickColorValue) -> ((params: BrickColorValueProperties) -> BrickColorValue))
	& ((CFrameValue) -> ((params: CFrameValueProperties) -> CFrameValue))
	& ((Color3Value) -> ((params: Color3ValueProperties) -> Color3Value))
	& ((IntValue) -> ((params: IntValueProperties) -> IntValue)))

type ClassConstructors36 = (
	((NumberValue) -> ((params: NumberValueProperties) -> NumberValue))
	& ((ObjectValue) -> ((params: ObjectValueProperties) -> ObjectValue))
	& ((StringValue) -> ((params: StringValueProperties) -> StringValue))
	& ((Vector3Value) -> ((params: Vector3ValueProperties) -> Vector3Value))
	& ((Vector3Curve) -> ((params: Vector3CurveProperties) -> Vector3Curve)))

type ClassConstructors37 = (
	((VirtualInputManager) -> ((params: VirtualInputManagerProperties) -> VirtualInputManager))
	& ((VoiceChannel) -> ((params: VoiceChannelProperties) -> VoiceChannel))
	& ((WeldConstraint) -> ((params: WeldConstraintProperties) -> WeldConstraint)))

 type ClassConstructorsBLLL = ClassConstructors8 & ClassConstructors24

 type ClassConstructorsALLLL = ClassConstructors0 & ClassConstructors32

 type ClassConstructorsBLLLL = ClassConstructors16

 type ClassConstructorsLLLL = ClassConstructorsALLLL & ClassConstructorsBLLLL

 type ClassConstructorsALLLR = ClassConstructors8

 type ClassConstructorsBLLLR = ClassConstructors24

 type ClassConstructorsLLLR = ClassConstructorsALLLR & ClassConstructorsBLLLR

 type ClassConstructorsLLL = ClassConstructorsLLLL & ClassConstructorsLLLR

 type ClassConstructorsBLLR = ClassConstructors12 & ClassConstructors28

 type ClassConstructorsALLRL = ClassConstructors4 & ClassConstructors36

 type ClassConstructorsBLLRL = ClassConstructors20

 type ClassConstructorsLLRL = ClassConstructorsALLRL & ClassConstructorsBLLRL

 type ClassConstructorsALLRR = ClassConstructors12

 type ClassConstructorsBLLRR = ClassConstructors28

 type ClassConstructorsLLRR = ClassConstructorsALLRR & ClassConstructorsBLLRR

 type ClassConstructorsLLR = ClassConstructorsLLRL & ClassConstructorsLLRR

 type ClassConstructorsLL = ClassConstructorsLLL & ClassConstructorsLLR

 type ClassConstructorsBLRL = ClassConstructors10 & ClassConstructors26

 type ClassConstructorsALRLL = ClassConstructors2 & ClassConstructors34

 type ClassConstructorsBLRLL = ClassConstructors18

 type ClassConstructorsLRLL = ClassConstructorsALRLL & ClassConstructorsBLRLL

 type ClassConstructorsALRLR = ClassConstructors10

 type ClassConstructorsBLRLR = ClassConstructors26

 type ClassConstructorsLRLR = ClassConstructorsALRLR & ClassConstructorsBLRLR

 type ClassConstructorsLRL = ClassConstructorsLRLL & ClassConstructorsLRLR

 type ClassConstructorsALRR = ClassConstructors6 & ClassConstructors22

 type ClassConstructorsBLRR = ClassConstructors14 & ClassConstructors30

 type ClassConstructorsLRR = ClassConstructorsALRR & ClassConstructorsBLRR

 type ClassConstructorsLR = ClassConstructorsLRL & ClassConstructorsLRR

 type ClassConstructorsL = ClassConstructorsLL & ClassConstructorsLR

 type ClassConstructorsBRLL = ClassConstructors9 & ClassConstructors25

 type ClassConstructorsARLLL = ClassConstructors1 & ClassConstructors33

 type ClassConstructorsBRLLL = ClassConstructors17

 type ClassConstructorsRLLL = ClassConstructorsARLLL & ClassConstructorsBRLLL

 type ClassConstructorsARLLR = ClassConstructors9

 type ClassConstructorsBRLLR = ClassConstructors25

 type ClassConstructorsRLLR = ClassConstructorsARLLR & ClassConstructorsBRLLR

 type ClassConstructorsRLL = ClassConstructorsRLLL & ClassConstructorsRLLR

 type ClassConstructorsBRLR = ClassConstructors13 & ClassConstructors29

 type ClassConstructorsARLRL = ClassConstructors5 & ClassConstructors37

 type ClassConstructorsBRLRL = ClassConstructors21

 type ClassConstructorsRLRL = ClassConstructorsARLRL & ClassConstructorsBRLRL

 type ClassConstructorsARLRR = ClassConstructors13

 type ClassConstructorsBRLRR = ClassConstructors29

 type ClassConstructorsRLRR = ClassConstructorsARLRR & ClassConstructorsBRLRR

 type ClassConstructorsRLR = ClassConstructorsRLRL & ClassConstructorsRLRR

 type ClassConstructorsRL = ClassConstructorsRLL & ClassConstructorsRLR

 type ClassConstructorsBRRL = ClassConstructors11 & ClassConstructors27

 type ClassConstructorsARRLL = ClassConstructors3 & ClassConstructors35

 type ClassConstructorsBRRLL = ClassConstructors19

 type ClassConstructorsRRLL = ClassConstructorsARRLL & ClassConstructorsBRRLL

 type ClassConstructorsARRLR = ClassConstructors11

 type ClassConstructorsBRRLR = ClassConstructors27

 type ClassConstructorsRRLR = ClassConstructorsARRLR & ClassConstructorsBRRLR

 type ClassConstructorsRRL = ClassConstructorsRRLL & ClassConstructorsRRLR

 type ClassConstructorsARRR = ClassConstructors7 & ClassConstructors23

 type ClassConstructorsBRRR = ClassConstructors15 & ClassConstructors31

 type ClassConstructorsRRR = ClassConstructorsARRR & ClassConstructorsBRRR

 type ClassConstructorsRR = ClassConstructorsRRL & ClassConstructorsRRR

 type ClassConstructorsR = ClassConstructorsRL & ClassConstructorsRR

 export type ClassConstructors = ClassConstructorsL & ClassConstructorsR

return {}