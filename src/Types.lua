-- local State = require(script.Parent:WaitForChild("State"))
-- type State<T> = State.State<T>
type State<T> = {
	Get: (self: State<T>) -> T,
}

type ParameterEntry<T> = (State<T> | T)?

type Symbol = {any}
type ParameterEntry<T> = (State<T> | T)?


type AnimationProperties = InstanceProperties & {
	AnimationId: ParameterEntry<string>?,
}

type AtmosphereProperties = InstanceProperties & {
	Color: ParameterEntry<Color3>?,
	Decay: ParameterEntry<Color3>?,
	Density: ParameterEntry<number>?,
	Glare: ParameterEntry<number>?,
	Haze: ParameterEntry<number>?,
	Offset: ParameterEntry<number>?,
}

type AttachmentProperties = InstanceProperties & {
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
}

type BoneProperties = AttachmentProperties & {
	Transform: ParameterEntry<CFrame>?,
	TransformedCFrame: ParameterEntry<CFrame>?,
	TransformedWorldCFrame: ParameterEntry<CFrame>?,
}

type ToolProperties = BackpackItemProperties & {
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
}

type StarterGuiProperties = BasePlayerGuiProperties & {
	ScreenOrientation: ParameterEntry<Enum.ScreenOrientation>?,
	ShowDevelopmentGui: ParameterEntry<boolean>?,
}

type WrapLayerProperties = BaseWrapProperties & {
	AutoSkin: ParameterEntry<Enum.WrapLayerAutoSkin>?,
	Enabled: ParameterEntry<boolean>?,
	Order: ParameterEntry<number>?,
	Puffiness: ParameterEntry<number>?,
	ReferenceOriginWorld: ParameterEntry<CFrame>?,
}

type BeamProperties = InstanceProperties & {
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
}

type BodyAngularVelocityProperties = BodyMoverProperties & {
	AngularVelocity: ParameterEntry<Vector3>?,
	MaxTorque: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
}

type BodyForceProperties = BodyMoverProperties & {
	Force: ParameterEntry<Vector3>?,
}

type BodyGyroProperties = BodyMoverProperties & {
	CFrame: ParameterEntry<CFrame>?,
	D: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
}

type BodyPositionProperties = BodyMoverProperties & {
	D: ParameterEntry<number>?,
	MaxForce: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Position: ParameterEntry<Vector3>?,
}

type BodyThrustProperties = BodyMoverProperties & {
	Force: ParameterEntry<Vector3>?,
	Location: ParameterEntry<Vector3>?,
}

type BodyVelocityProperties = BodyMoverProperties & {
	MaxForce: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Velocity: ParameterEntry<Vector3>?,
}

type CameraProperties = InstanceProperties & {
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
	NearPlaneZ: ParameterEntry<number>?,
	ViewportSize: ParameterEntry<Vector2>?,
}

type BodyColorsProperties = CharacterAppearanceProperties & {
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
}

type PantsProperties = ClothingProperties & {
	PantsTemplate: ParameterEntry<string>?,
}

type ShirtProperties = ClothingProperties & {
	ShirtTemplate: ParameterEntry<string>?,
}

type ShirtGraphicProperties = CharacterAppearanceProperties & {
	Color3: ParameterEntry<Color3>?,
	Graphic: ParameterEntry<string>?,
}

type ClickDetectorProperties = InstanceProperties & {
	CursorIcon: ParameterEntry<string>?,
	MaxActivationDistance: ParameterEntry<number>?,
}

type CloudsProperties = InstanceProperties & {
	Color: ParameterEntry<Color3>?,
	Cover: ParameterEntry<number>?,
	Density: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
}

type AlignOrientationProperties = ConstraintProperties & {
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
}

type AlignPositionProperties = ConstraintProperties & {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	MaxForce: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
	Mode: ParameterEntry<Enum.PositionAlignmentMode>?,
	Position: ParameterEntry<Vector3>?,
	ReactionForceEnabled: ParameterEntry<boolean>?,
	Responsiveness: ParameterEntry<number>?,
	RigidityEnabled: ParameterEntry<boolean>?,
}

type AngularVelocityProperties = ConstraintProperties & {
	AngularVelocity: ParameterEntry<Vector3>?,
	MaxTorque: ParameterEntry<number>?,
	ReactionTorqueEnabled: ParameterEntry<boolean>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
}

type BallSocketConstraintProperties = ConstraintProperties & {
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxFrictionTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	TwistLimitsEnabled: ParameterEntry<boolean>?,
	TwistLowerAngle: ParameterEntry<number>?,
	TwistUpperAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
}

type HingeConstraintProperties = ConstraintProperties & {
	ActuatorType: ParameterEntry<Enum.ActuatorType>?,
	AngularResponsiveness: ParameterEntry<number>?,
	AngularSpeed: ParameterEntry<number>?,
	AngularVelocity: ParameterEntry<number>?,
	CurrentAngle: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	LowerAngle: ParameterEntry<number>?,
	MotorMaxAcceleration: ParameterEntry<number>?,
	MotorMaxTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	ServoMaxTorque: ParameterEntry<number>?,
	TargetAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
}

type LineForceProperties = ConstraintProperties & {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	InverseSquareLaw: ParameterEntry<boolean>?,
	Magnitude: ParameterEntry<number>?,
	MaxForce: ParameterEntry<number>?,
	ReactionForceEnabled: ParameterEntry<boolean>?,
}

type LinearVelocityProperties = ConstraintProperties & {
	LineDirection: ParameterEntry<Vector3>?,
	LineVelocity: ParameterEntry<number>?,
	MaxForce: ParameterEntry<number>?,
	PlaneVelocity: ParameterEntry<Vector2>?,
	PrimaryTangentAxis: ParameterEntry<Vector3>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	SecondaryTangentAxis: ParameterEntry<Vector3>?,
	VectorVelocity: ParameterEntry<Vector3>?,
	VelocityConstraintMode: ParameterEntry<Enum.VelocityConstraintMode>?,
}

type RodConstraintProperties = ConstraintProperties & {
	CurrentDistance: ParameterEntry<number>?,
	Length: ParameterEntry<number>?,
	LimitAngle0: ParameterEntry<number>?,
	LimitAngle1: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	Thickness: ParameterEntry<number>?,
}

type RopeConstraintProperties = ConstraintProperties & {
	CurrentDistance: ParameterEntry<number>?,
	Length: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
	WinchEnabled: ParameterEntry<boolean>?,
	WinchForce: ParameterEntry<number>?,
	WinchResponsiveness: ParameterEntry<number>?,
	WinchSpeed: ParameterEntry<number>?,
	WinchTarget: ParameterEntry<number>?,
}

type CylindricalConstraintProperties = SlidingBallConstraintProperties & {
	AngularActuatorType: ParameterEntry<Enum.ActuatorType>?,
	AngularLimitsEnabled: ParameterEntry<boolean>?,
	AngularResponsiveness: ParameterEntry<number>?,
	AngularRestitution: ParameterEntry<number>?,
	AngularSpeed: ParameterEntry<number>?,
	AngularVelocity: ParameterEntry<number>?,
	CurrentAngle: ParameterEntry<number>?,
	InclinationAngle: ParameterEntry<number>?,
	LowerAngle: ParameterEntry<number>?,
	MotorMaxAngularAcceleration: ParameterEntry<number>?,
	MotorMaxTorque: ParameterEntry<number>?,
	RotationAxisVisible: ParameterEntry<boolean>?,
	ServoMaxTorque: ParameterEntry<number>?,
	TargetAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
	WorldRotationAxis: ParameterEntry<Vector3>?,
}

type SpringConstraintProperties = ConstraintProperties & {
	Coils: ParameterEntry<number>?,
	CurrentLength: ParameterEntry<number>?,
	Damping: ParameterEntry<number>?,
	FreeLength: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxForce: ParameterEntry<number>?,
	MaxLength: ParameterEntry<number>?,
	MinLength: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Stiffness: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
}

type TorqueProperties = ConstraintProperties & {
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
	Torque: ParameterEntry<Vector3>?,
}

type TorsionSpringConstraintProperties = ConstraintProperties & {
	Coils: ParameterEntry<number>?,
	CurrentAngle: ParameterEntry<number>?,
	Damping: ParameterEntry<number>?,
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxAngle: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	Stiffness: ParameterEntry<number>?,
}

type UniversalConstraintProperties = ConstraintProperties & {
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxAngle: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
}

type VectorForceProperties = ConstraintProperties & {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	Force: ParameterEntry<Vector3>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
}

type FileMeshProperties = DataModelMeshProperties & {
	MeshId: ParameterEntry<string>?,
	TextureId: ParameterEntry<string>?,
}

type SpecialMeshProperties = FileMeshProperties & {
	MeshType: ParameterEntry<Enum.MeshType>?,
}

type DialogProperties = InstanceProperties & {
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
}

type DialogChoiceProperties = InstanceProperties & {
	GoodbyeChoiceActive: ParameterEntry<boolean>?,
	GoodbyeDialog: ParameterEntry<string>?,
	ResponseDialog: ParameterEntry<string>?,
	UserDialog: ParameterEntry<string>?,
}

type ExplosionProperties = InstanceProperties & {
	BlastPressure: ParameterEntry<number>?,
	BlastRadius: ParameterEntry<number>?,
	DestroyJointRadiusPercent: ParameterEntry<number>?,
	ExplosionType: ParameterEntry<Enum.ExplosionType>?,
	Position: ParameterEntry<Vector3>?,
	TimeScale: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
}

type DecalProperties = FaceInstanceProperties & {
	Color3: ParameterEntry<Color3>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	Transparency: ParameterEntry<number>?,
	ZIndex: ParameterEntry<number>?,
}

type TextureProperties = DecalProperties & {
	OffsetStudsU: ParameterEntry<number>?,
	OffsetStudsV: ParameterEntry<number>?,
	StudsPerTileU: ParameterEntry<number>?,
	StudsPerTileV: ParameterEntry<number>?,
}

type FireProperties = InstanceProperties & {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Heat: ParameterEntry<number>?,
	SecondaryColor: ParameterEntry<Color3>?,
	Size: ParameterEntry<number>?,
	TimeScale: ParameterEntry<number>?,
}

type ForceFieldProperties = InstanceProperties & {
	Visible: ParameterEntry<boolean>?,
}

type CanvasGroupProperties = GuiObjectProperties & {
	GroupColor3: ParameterEntry<Color3>?,
	GroupTransparency: ParameterEntry<number>?,
}

type FrameProperties = GuiObjectProperties & {
	Style: ParameterEntry<Enum.FrameStyle>?,
}

type ImageButtonProperties = GuiButtonProperties & {
	HoverImage: ParameterEntry<string>?,
	Image: ParameterEntry<string>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageRectOffset: ParameterEntry<Vector2>?,
	ImageRectSize: ParameterEntry<Vector2>?,
	ImageTransparency: ParameterEntry<number>?,
	IsLoaded: ParameterEntry<boolean>?,
	PressedImage: ParameterEntry<string>?,
	ResampleMode: ParameterEntry<Enum.ResamplerMode>?,
	ScaleType: ParameterEntry<Enum.ScaleType>?,
	SliceCenter: ParameterEntry<Rect>?,
	SliceScale: ParameterEntry<number>?,
	TileSize: ParameterEntry<UDim2>?,
}

type TextButtonProperties = GuiButtonProperties & {
	ContentText: ParameterEntry<string>?,
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	LocalizedText: ParameterEntry<string>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	RichText: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextBounds: ParameterEntry<Vector2>?,
	TextColor3: ParameterEntry<Color3>?,
	TextFits: ParameterEntry<boolean>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
}

type ImageLabelProperties = GuiLabelProperties & {
	Image: ParameterEntry<string>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageRectOffset: ParameterEntry<Vector2>?,
	ImageRectSize: ParameterEntry<Vector2>?,
	ImageTransparency: ParameterEntry<number>?,
	IsLoaded: ParameterEntry<boolean>?,
	ResampleMode: ParameterEntry<Enum.ResamplerMode>?,
	ScaleType: ParameterEntry<Enum.ScaleType>?,
	SliceCenter: ParameterEntry<Rect>?,
	SliceScale: ParameterEntry<number>?,
	TileSize: ParameterEntry<UDim2>?,
}

type TextLabelProperties = GuiLabelProperties & {
	ContentText: ParameterEntry<string>?,
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	LocalizedText: ParameterEntry<string>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	RichText: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextBounds: ParameterEntry<Vector2>?,
	TextColor3: ParameterEntry<Color3>?,
	TextFits: ParameterEntry<boolean>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
}

type ScrollingFrameProperties = GuiObjectProperties & {
	AbsoluteCanvasSize: ParameterEntry<Vector2>?,
	AbsoluteWindowSize: ParameterEntry<Vector2>?,
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
}

type TextBoxProperties = GuiObjectProperties & {
	ClearTextOnFocus: ParameterEntry<boolean>?,
	ContentText: ParameterEntry<string>?,
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
	TextBounds: ParameterEntry<Vector2>?,
	TextColor3: ParameterEntry<Color3>?,
	TextEditable: ParameterEntry<boolean>?,
	TextFits: ParameterEntry<boolean>?,
	TextScaled: ParameterEntry<boolean>?,
	TextSize: ParameterEntry<number>?,
	TextStrokeColor3: ParameterEntry<Color3>?,
	TextStrokeTransparency: ParameterEntry<number>?,
	TextTransparency: ParameterEntry<number>?,
	TextTruncate: ParameterEntry<Enum.TextTruncate>?,
	TextWrapped: ParameterEntry<boolean>?,
	TextXAlignment: ParameterEntry<Enum.TextXAlignment>?,
	TextYAlignment: ParameterEntry<Enum.TextYAlignment>?,
}

type VideoFrameProperties = GuiObjectProperties & {
	IsLoaded: ParameterEntry<boolean>?,
	Looped: ParameterEntry<boolean>?,
	Playing: ParameterEntry<boolean>?,
	Resolution: ParameterEntry<Vector2>?,
	TimeLength: ParameterEntry<number>?,
	TimePosition: ParameterEntry<number>?,
	Video: ParameterEntry<string>?,
	Volume: ParameterEntry<number>?,
}

type ViewportFrameProperties = GuiObjectProperties & {
	Ambient: ParameterEntry<Color3>?,
	CurrentCamera: ParameterEntry<Camera>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageTransparency: ParameterEntry<number>?,
	LightColor: ParameterEntry<Color3>?,
	LightDirection: ParameterEntry<Vector3>?,
}

type BillboardGuiProperties = LayerCollectorProperties & {
	Active: ParameterEntry<boolean>?,
	Adornee: ParameterEntry<Instance>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	Brightness: ParameterEntry<number>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	CurrentDistance: ParameterEntry<number>?,
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
}

type ScreenGuiProperties = LayerCollectorProperties & {
	DisplayOrder: ParameterEntry<number>?,
	IgnoreGuiInset: ParameterEntry<boolean>?,
}

type SurfaceGuiProperties = SurfaceGuiBaseProperties & {
	AlwaysOnTop: ParameterEntry<boolean>?,
	Brightness: ParameterEntry<number>?,
	CanvasSize: ParameterEntry<Vector2>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	LightInfluence: ParameterEntry<number>?,
	PixelsPerStud: ParameterEntry<number>?,
	SizingMode: ParameterEntry<Enum.SurfaceGuiSizingMode>?,
	ToolPunchThroughDistance: ParameterEntry<number>?,
	ZOffset: ParameterEntry<number>?,
}

type SelectionBoxProperties = InstanceAdornmentProperties & {
	LineThickness: ParameterEntry<number>?,
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
}

type BoxHandleAdornmentProperties = HandleAdornmentProperties & {
	Size: ParameterEntry<Vector3>?,
}

type ConeHandleAdornmentProperties = HandleAdornmentProperties & {
	Height: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
}

type CylinderHandleAdornmentProperties = HandleAdornmentProperties & {
	Angle: ParameterEntry<number>?,
	Height: ParameterEntry<number>?,
	InnerRadius: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
}

type ImageHandleAdornmentProperties = HandleAdornmentProperties & {
	Image: ParameterEntry<string>?,
	Size: ParameterEntry<Vector2>?,
}

type LineHandleAdornmentProperties = HandleAdornmentProperties & {
	Length: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
}

type SphereHandleAdornmentProperties = HandleAdornmentProperties & {
	Radius: ParameterEntry<number>?,
}

type SelectionSphereProperties = PVAdornmentProperties & {
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
}

type ArcHandlesProperties = HandlesBaseProperties & {
	Axes: ParameterEntry<Axes>?,
}

type HandlesProperties = HandlesBaseProperties & {
	Faces: ParameterEntry<Faces>?,
	Style: ParameterEntry<Enum.HandlesStyle>?,
}

type SurfaceSelectionProperties = PartAdornmentProperties & {
	TargetSurface: ParameterEntry<Enum.NormalId>?,
}

type HighlightProperties = InstanceProperties & {
	Adornee: ParameterEntry<Instance>?,
	DepthMode: ParameterEntry<Enum.HighlightDepthMode>?,
	Enabled: ParameterEntry<boolean>?,
	FillColor: ParameterEntry<Color3>?,
	FillTransparency: ParameterEntry<number>?,
	OutlineColor: ParameterEntry<Color3>?,
	OutlineTransparency: ParameterEntry<number>?,
}

type HumanoidProperties = InstanceProperties & {
	AutoJumpEnabled: ParameterEntry<boolean>?,
	AutoRotate: ParameterEntry<boolean>?,
	AutomaticScalingEnabled: ParameterEntry<boolean>?,
	BreakJointsOnDeath: ParameterEntry<boolean>?,
	CameraOffset: ParameterEntry<Vector3>?,
	DisplayDistanceType: ParameterEntry<Enum.HumanoidDisplayDistanceType>?,
	DisplayName: ParameterEntry<string>?,
	FloorMaterial: ParameterEntry<Enum.Material>?,
	Health: ParameterEntry<number>?,
	HealthDisplayDistance: ParameterEntry<number>?,
	HealthDisplayType: ParameterEntry<Enum.HumanoidHealthDisplayType>?,
	HipHeight: ParameterEntry<number>?,
	Jump: ParameterEntry<boolean>?,
	JumpHeight: ParameterEntry<number>?,
	JumpPower: ParameterEntry<number>?,
	MaxHealth: ParameterEntry<number>?,
	MaxSlopeAngle: ParameterEntry<number>?,
	MoveDirection: ParameterEntry<Vector3>?,
	NameDisplayDistance: ParameterEntry<number>?,
	NameOcclusion: ParameterEntry<Enum.NameOcclusion>?,
	PlatformStand: ParameterEntry<boolean>?,
	RequiresNeck: ParameterEntry<boolean>?,
	RigType: ParameterEntry<Enum.HumanoidRigType>?,
	RootPart: ParameterEntry<BasePart>?,
	SeatPart: ParameterEntry<BasePart>?,
	Sit: ParameterEntry<boolean>?,
	TargetPoint: ParameterEntry<Vector3>?,
	UseJumpPower: ParameterEntry<boolean>?,
	WalkSpeed: ParameterEntry<number>?,
	WalkToPart: ParameterEntry<BasePart>?,
	WalkToPoint: ParameterEntry<Vector3>?,
}

type HumanoidDescriptionProperties = InstanceProperties & {
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
}

type Motor6DProperties = MotorProperties & {
	Transform: ParameterEntry<CFrame>?,
}

type VelocityMotorProperties = JointInstanceProperties & {
	CurrentAngle: ParameterEntry<number>?,
	DesiredAngle: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
}

type PointLightProperties = LightProperties & {
	Range: ParameterEntry<number>?,
}

type SpotLightProperties = LightProperties & {
	Angle: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Range: ParameterEntry<number>?,
}

type SurfaceLightProperties = LightProperties & {
	Angle: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Range: ParameterEntry<number>?,
}

type LightingProperties = InstanceProperties & {
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
}

type MaterialServiceProperties = InstanceProperties & {
}

type MaterialVariantProperties = InstanceProperties & {
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	MaterialPattern: ParameterEntry<Enum.MaterialPattern>?,
	StudsPerTile: ParameterEntry<number>?,
}

type NoCollisionConstraintProperties = InstanceProperties & {
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
}

type PartProperties = FormFactorPartProperties & {
	Shape: ParameterEntry<Enum.PartType>?,
}

type SeatProperties = PartProperties & {
	Disabled: ParameterEntry<boolean>?,
	Occupant: ParameterEntry<Humanoid>?,
}

type SpawnLocationProperties = PartProperties & {
	AllowTeamChangeOnTouch: ParameterEntry<boolean>?,
	Duration: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Neutral: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
}

type MeshPartProperties = TriangleMeshPartProperties & {
	TextureID: ParameterEntry<string>?,
}

type TrussPartProperties = BasePartProperties & {
	Style: ParameterEntry<Enum.Style>?,
}

type VehicleSeatProperties = BasePartProperties & {
	AreHingesDetected: ParameterEntry<number>?,
	Disabled: ParameterEntry<boolean>?,
	HeadsUpDisplay: ParameterEntry<boolean>?,
	MaxSpeed: ParameterEntry<number>?,
	Occupant: ParameterEntry<Humanoid>?,
	Steer: ParameterEntry<number>?,
	SteerFloat: ParameterEntry<number>?,
	Throttle: ParameterEntry<number>?,
	ThrottleFloat: ParameterEntry<number>?,
	Torque: ParameterEntry<number>?,
	TurnSpeed: ParameterEntry<number>?,
}

type ModelProperties = PVInstanceProperties & {
	PrimaryPart: ParameterEntry<BasePart>?,
	WorldPivot: ParameterEntry<CFrame>?,
}

type ParticleEmitterProperties = InstanceProperties & {
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
}

type PathfindingLinkProperties = InstanceProperties & {
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	IsBidirectional: ParameterEntry<boolean>?,
	Label: ParameterEntry<string>?,
}

type PathfindingModifierProperties = InstanceProperties & {
	Label: ParameterEntry<string>?,
	PassThrough: ParameterEntry<boolean>?,
}

type PlayerProperties = InstanceProperties & {
	AccountAge: ParameterEntry<number>?,
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
	FollowUserId: ParameterEntry<number>?,
	HealthDisplayDistance: ParameterEntry<number>?,
	LocaleId: ParameterEntry<string>?,
	MembershipType: ParameterEntry<Enum.MembershipType>?,
	NameDisplayDistance: ParameterEntry<number>?,
	Neutral: ParameterEntry<boolean>?,
	ReplicationFocus: ParameterEntry<Instance>?,
	RespawnLocation: ParameterEntry<SpawnLocation>?,
	Team: ParameterEntry<Team>?,
	TeamColor: ParameterEntry<BrickColor>?,
	UserId: ParameterEntry<number>?,
}

type PlayersProperties = InstanceProperties & {
	BubbleChat: ParameterEntry<boolean>?,
	CharacterAutoLoads: ParameterEntry<boolean>?,
	ClassicChat: ParameterEntry<boolean>?,
	LocalPlayer: ParameterEntry<Player>?,
	MaxPlayers: ParameterEntry<number>?,
	PreferredPlayers: ParameterEntry<number>?,
	RespawnTime: ParameterEntry<number>?,
}

type BloomEffectProperties = PostEffectProperties & {
	Intensity: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	Threshold: ParameterEntry<number>?,
}

type BlurEffectProperties = PostEffectProperties & {
	Size: ParameterEntry<number>?,
}

type ColorCorrectionEffectProperties = PostEffectProperties & {
	Brightness: ParameterEntry<number>?,
	Contrast: ParameterEntry<number>?,
	Saturation: ParameterEntry<number>?,
	TintColor: ParameterEntry<Color3>?,
}

type DepthOfFieldEffectProperties = PostEffectProperties & {
	FarIntensity: ParameterEntry<number>?,
	FocusDistance: ParameterEntry<number>?,
	InFocusRadius: ParameterEntry<number>?,
	NearIntensity: ParameterEntry<number>?,
}

type SunRaysEffectProperties = PostEffectProperties & {
	Intensity: ParameterEntry<number>?,
	Spread: ParameterEntry<number>?,
}

type ProximityPromptProperties = InstanceProperties & {
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
}

type RotationCurveProperties = InstanceProperties & {
	Length: ParameterEntry<number>?,
}

type SkyProperties = InstanceProperties & {
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
}

type SmokeProperties = InstanceProperties & {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Opacity: ParameterEntry<number>?,
	RiseVelocity: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	TimeScale: ParameterEntry<number>?,
}

type SoundProperties = InstanceProperties & {
	IsLoaded: ParameterEntry<boolean>?,
	IsPaused: ParameterEntry<boolean>?,
	IsPlaying: ParameterEntry<boolean>?,
	Looped: ParameterEntry<boolean>?,
	PlayOnRemove: ParameterEntry<boolean>?,
	PlaybackLoudness: ParameterEntry<number>?,
	PlaybackSpeed: ParameterEntry<number>?,
	Playing: ParameterEntry<boolean>?,
	RollOffMaxDistance: ParameterEntry<number>?,
	RollOffMinDistance: ParameterEntry<number>?,
	RollOffMode: ParameterEntry<Enum.RollOffMode>?,
	SoundGroup: ParameterEntry<SoundGroup>?,
	SoundId: ParameterEntry<string>?,
	TimeLength: ParameterEntry<number>?,
	TimePosition: ParameterEntry<number>?,
	Volume: ParameterEntry<number>?,
}

type ChorusSoundEffectProperties = SoundEffectProperties & {
	Depth: ParameterEntry<number>?,
	Mix: ParameterEntry<number>?,
	Rate: ParameterEntry<number>?,
}

type CompressorSoundEffectProperties = SoundEffectProperties & {
	Attack: ParameterEntry<number>?,
	GainMakeup: ParameterEntry<number>?,
	Ratio: ParameterEntry<number>?,
	Release: ParameterEntry<number>?,
	SideChain: ParameterEntry<Instance>?,
	Threshold: ParameterEntry<number>?,
}

type ChannelSelectorSoundEffectProperties = CustomSoundEffectProperties & {
	Channel: ParameterEntry<number>?,
}

type DistortionSoundEffectProperties = SoundEffectProperties & {
	Level: ParameterEntry<number>?,
}

type EchoSoundEffectProperties = SoundEffectProperties & {
	Delay: ParameterEntry<number>?,
	DryLevel: ParameterEntry<number>?,
	Feedback: ParameterEntry<number>?,
	WetLevel: ParameterEntry<number>?,
}

type EqualizerSoundEffectProperties = SoundEffectProperties & {
	HighGain: ParameterEntry<number>?,
	LowGain: ParameterEntry<number>?,
	MidGain: ParameterEntry<number>?,
}

type FlangeSoundEffectProperties = SoundEffectProperties & {
	Depth: ParameterEntry<number>?,
	Mix: ParameterEntry<number>?,
	Rate: ParameterEntry<number>?,
}

type PitchShiftSoundEffectProperties = SoundEffectProperties & {
	Octave: ParameterEntry<number>?,
}

type ReverbSoundEffectProperties = SoundEffectProperties & {
	DecayTime: ParameterEntry<number>?,
	Density: ParameterEntry<number>?,
	Diffusion: ParameterEntry<number>?,
	DryLevel: ParameterEntry<number>?,
	WetLevel: ParameterEntry<number>?,
}

type TremoloSoundEffectProperties = SoundEffectProperties & {
	Depth: ParameterEntry<number>?,
	Duty: ParameterEntry<number>?,
	Frequency: ParameterEntry<number>?,
}

type SoundGroupProperties = InstanceProperties & {
	Volume: ParameterEntry<number>?,
}

type SoundServiceProperties = InstanceProperties & {
	AmbientReverb: ParameterEntry<Enum.ReverbType>?,
	DistanceFactor: ParameterEntry<number>?,
	DopplerScale: ParameterEntry<number>?,
	RespectFilteringEnabled: ParameterEntry<boolean>?,
	RolloffScale: ParameterEntry<number>?,
}

type SparklesProperties = InstanceProperties & {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	SparkleColor: ParameterEntry<Color3>?,
	TimeScale: ParameterEntry<number>?,
}

type StarterPackProperties = InstanceProperties & {
}

type TeamProperties = InstanceProperties & {
	AutoAssignable: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
}

type TrailProperties = InstanceProperties & {
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
}

type UIAspectRatioConstraintProperties = UIConstraintProperties & {
	AspectRatio: ParameterEntry<number>?,
	AspectType: ParameterEntry<Enum.AspectType>?,
	DominantAxis: ParameterEntry<Enum.DominantAxis>?,
}

type UISizeConstraintProperties = UIConstraintProperties & {
	MaxSize: ParameterEntry<Vector2>?,
	MinSize: ParameterEntry<Vector2>?,
}

type UITextSizeConstraintProperties = UIConstraintProperties & {
	MaxTextSize: ParameterEntry<number>?,
	MinTextSize: ParameterEntry<number>?,
}

type UICornerProperties = UIComponentProperties & {
	CornerRadius: ParameterEntry<UDim>?,
}

type UIGradientProperties = UIComponentProperties & {
	Color: ParameterEntry<ColorSequence>?,
	Enabled: ParameterEntry<boolean>?,
	Offset: ParameterEntry<Vector2>?,
	Rotation: ParameterEntry<number>?,
	Transparency: ParameterEntry<NumberSequence>?,
}

type UIGridLayoutProperties = UIGridStyleLayoutProperties & {
	AbsoluteCellCount: ParameterEntry<Vector2>?,
	AbsoluteCellSize: ParameterEntry<Vector2>?,
	CellPadding: ParameterEntry<UDim2>?,
	CellSize: ParameterEntry<UDim2>?,
	FillDirectionMaxCells: ParameterEntry<number>?,
	StartCorner: ParameterEntry<Enum.StartCorner>?,
}

type UIListLayoutProperties = UIGridStyleLayoutProperties & {
	Padding: ParameterEntry<UDim>?,
}

type UIPageLayoutProperties = UIGridStyleLayoutProperties & {
	Animated: ParameterEntry<boolean>?,
	Circular: ParameterEntry<boolean>?,
	CurrentPage: ParameterEntry<GuiObject>?,
	EasingDirection: ParameterEntry<Enum.EasingDirection>?,
	EasingStyle: ParameterEntry<Enum.EasingStyle>?,
	GamepadInputEnabled: ParameterEntry<boolean>?,
	Padding: ParameterEntry<UDim>?,
	ScrollWheelInputEnabled: ParameterEntry<boolean>?,
	TouchInputEnabled: ParameterEntry<boolean>?,
	TweenTime: ParameterEntry<number>?,
}

type UITableLayoutProperties = UIGridStyleLayoutProperties & {
	FillEmptySpaceColumns: ParameterEntry<boolean>?,
	FillEmptySpaceRows: ParameterEntry<boolean>?,
	MajorAxis: ParameterEntry<Enum.TableMajorAxis>?,
	Padding: ParameterEntry<UDim2>?,
}

type UIPaddingProperties = UIComponentProperties & {
	PaddingBottom: ParameterEntry<UDim>?,
	PaddingLeft: ParameterEntry<UDim>?,
	PaddingRight: ParameterEntry<UDim>?,
	PaddingTop: ParameterEntry<UDim>?,
}

type UIScaleProperties = UIComponentProperties & {
	Scale: ParameterEntry<number>?,
}

type UIStrokeProperties = UIComponentProperties & {
	ApplyStrokeMode: ParameterEntry<Enum.ApplyStrokeMode>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	LineJoinMode: ParameterEntry<Enum.LineJoinMode>?,
	Thickness: ParameterEntry<number>?,
	Transparency: ParameterEntry<number>?,
}

type BoolValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<boolean>?,
}

type BrickColorValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<BrickColor>?,
}

type CFrameValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<CFrame>?,
}

type Color3ValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<Color3>?,
}

type IntValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<number>?,
}

type NumberValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<number>?,
}

type ObjectValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<Instance>?,
}

type StringValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<string>?,
}

type Vector3ValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<Vector3>?,
}

type WeldConstraintProperties = InstanceProperties & {
	Active: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
}
export type ClassNameConstructors = (

	(className: "Animation") -> ((AnimationProperties) -> Animation)
	& (className: "Atmosphere") -> ((AtmosphereProperties) -> Atmosphere)
	& (className: "Attachment") -> ((AttachmentProperties) -> Attachment)
	& (className: "Bone") -> ((BoneProperties) -> Bone)
	& (className: "Tool") -> ((ToolProperties) -> Tool)
	& (className: "StarterGui") -> ((StarterGuiProperties) -> StarterGui)
	& (className: "WrapLayer") -> ((WrapLayerProperties) -> WrapLayer)
	& (className: "Beam") -> ((BeamProperties) -> Beam)
	& (className: "BodyAngularVelocity") -> ((BodyAngularVelocityProperties) -> BodyAngularVelocity)
	& (className: "BodyForce") -> ((BodyForceProperties) -> BodyForce)
	& (className: "BodyGyro") -> ((BodyGyroProperties) -> BodyGyro)
	& (className: "BodyPosition") -> ((BodyPositionProperties) -> BodyPosition)
	& (className: "BodyThrust") -> ((BodyThrustProperties) -> BodyThrust)
	& (className: "BodyVelocity") -> ((BodyVelocityProperties) -> BodyVelocity)
	& (className: "Camera") -> ((CameraProperties) -> Camera)
	& (className: "BodyColors") -> ((BodyColorsProperties) -> BodyColors)
	& (className: "Pants") -> ((PantsProperties) -> Pants)
	& (className: "Shirt") -> ((ShirtProperties) -> Shirt)
	& (className: "ShirtGraphic") -> ((ShirtGraphicProperties) -> ShirtGraphic)
	& (className: "ClickDetector") -> ((ClickDetectorProperties) -> ClickDetector)
	& (className: "Clouds") -> ((CloudsProperties) -> Clouds)
	& (className: "AlignOrientation") -> ((AlignOrientationProperties) -> AlignOrientation)
	& (className: "AlignPosition") -> ((AlignPositionProperties) -> AlignPosition)
	& (className: "AngularVelocity") -> ((AngularVelocityProperties) -> AngularVelocity)
	& (className: "BallSocketConstraint") -> ((BallSocketConstraintProperties) -> BallSocketConstraint)
	& (className: "HingeConstraint") -> ((HingeConstraintProperties) -> HingeConstraint)
	& (className: "LineForce") -> ((LineForceProperties) -> LineForce)
	& (className: "LinearVelocity") -> ((LinearVelocityProperties) -> LinearVelocity)
	& (className: "RodConstraint") -> ((RodConstraintProperties) -> RodConstraint)
	& (className: "RopeConstraint") -> ((RopeConstraintProperties) -> RopeConstraint)
	& (className: "CylindricalConstraint") -> ((CylindricalConstraintProperties) -> CylindricalConstraint)
	& (className: "SpringConstraint") -> ((SpringConstraintProperties) -> SpringConstraint)
	& (className: "Torque") -> ((TorqueProperties) -> Torque)
	& (className: "TorsionSpringConstraint") -> ((TorsionSpringConstraintProperties) -> TorsionSpringConstraint)
	& (className: "UniversalConstraint") -> ((UniversalConstraintProperties) -> UniversalConstraint)
	& (className: "VectorForce") -> ((VectorForceProperties) -> VectorForce)
	& (className: "FileMesh") -> ((FileMeshProperties) -> FileMesh)
	& (className: "SpecialMesh") -> ((SpecialMeshProperties) -> SpecialMesh)
	& (className: "Dialog") -> ((DialogProperties) -> Dialog)
	& (className: "DialogChoice") -> ((DialogChoiceProperties) -> DialogChoice)
	& (className: "Explosion") -> ((ExplosionProperties) -> Explosion)
	& (className: "Decal") -> ((DecalProperties) -> Decal)
	& (className: "Texture") -> ((TextureProperties) -> Texture)
	& (className: "Fire") -> ((FireProperties) -> Fire)
	& (className: "ForceField") -> ((ForceFieldProperties) -> ForceField)
	& (className: "CanvasGroup") -> ((CanvasGroupProperties) -> CanvasGroup)
	& (className: "Frame") -> ((FrameProperties) -> Frame)
	& (className: "ImageButton") -> ((ImageButtonProperties) -> ImageButton)
	& (className: "TextButton") -> ((TextButtonProperties) -> TextButton)
	& (className: "ImageLabel") -> ((ImageLabelProperties) -> ImageLabel)
	& (className: "TextLabel") -> ((TextLabelProperties) -> TextLabel)
	& (className: "ScrollingFrame") -> ((ScrollingFrameProperties) -> ScrollingFrame)
	& (className: "TextBox") -> ((TextBoxProperties) -> TextBox)
	& (className: "VideoFrame") -> ((VideoFrameProperties) -> VideoFrame)
	& (className: "ViewportFrame") -> ((ViewportFrameProperties) -> ViewportFrame)
	& (className: "BillboardGui") -> ((BillboardGuiProperties) -> BillboardGui)
	& (className: "ScreenGui") -> ((ScreenGuiProperties) -> ScreenGui)
	& (className: "SurfaceGui") -> ((SurfaceGuiProperties) -> SurfaceGui)
	& (className: "SelectionBox") -> ((SelectionBoxProperties) -> SelectionBox)
	& (className: "BoxHandleAdornment") -> ((BoxHandleAdornmentProperties) -> BoxHandleAdornment)
	& (className: "ConeHandleAdornment") -> ((ConeHandleAdornmentProperties) -> ConeHandleAdornment)
	& (className: "CylinderHandleAdornment") -> ((CylinderHandleAdornmentProperties) -> CylinderHandleAdornment)
	& (className: "ImageHandleAdornment") -> ((ImageHandleAdornmentProperties) -> ImageHandleAdornment)
	& (className: "LineHandleAdornment") -> ((LineHandleAdornmentProperties) -> LineHandleAdornment)
	& (className: "SphereHandleAdornment") -> ((SphereHandleAdornmentProperties) -> SphereHandleAdornment)
	& (className: "SelectionSphere") -> ((SelectionSphereProperties) -> SelectionSphere)
	& (className: "ArcHandles") -> ((ArcHandlesProperties) -> ArcHandles)
	& (className: "Handles") -> ((HandlesProperties) -> Handles)
	& (className: "SurfaceSelection") -> ((SurfaceSelectionProperties) -> SurfaceSelection)
	& (className: "Highlight") -> ((HighlightProperties) -> Highlight)
	& (className: "Humanoid") -> ((HumanoidProperties) -> Humanoid)
	& (className: "HumanoidDescription") -> ((HumanoidDescriptionProperties) -> HumanoidDescription)
	& (className: "Motor6D") -> ((Motor6DProperties) -> Motor6D)
	& (className: "VelocityMotor") -> ((VelocityMotorProperties) -> VelocityMotor)
	& (className: "PointLight") -> ((PointLightProperties) -> PointLight)
	& (className: "SpotLight") -> ((SpotLightProperties) -> SpotLight)
	& (className: "SurfaceLight") -> ((SurfaceLightProperties) -> SurfaceLight)
	& (className: "Lighting") -> ((LightingProperties) -> Lighting)
	& (className: "MaterialService") -> ((MaterialServiceProperties) -> MaterialService)
	& (className: "MaterialVariant") -> ((MaterialVariantProperties) -> MaterialVariant)
	& (className: "NoCollisionConstraint") -> ((NoCollisionConstraintProperties) -> NoCollisionConstraint)
	& (className: "Part") -> ((PartProperties) -> Part)
	& (className: "Seat") -> ((SeatProperties) -> Seat)
	& (className: "SpawnLocation") -> ((SpawnLocationProperties) -> SpawnLocation)
	& (className: "MeshPart") -> ((MeshPartProperties) -> MeshPart)
	& (className: "TrussPart") -> ((TrussPartProperties) -> TrussPart)
	& (className: "VehicleSeat") -> ((VehicleSeatProperties) -> VehicleSeat)
	& (className: "Model") -> ((ModelProperties) -> Model)
	& (className: "ParticleEmitter") -> ((ParticleEmitterProperties) -> ParticleEmitter)
	& (className: "PathfindingLink") -> ((PathfindingLinkProperties) -> PathfindingLink)
	& (className: "PathfindingModifier") -> ((PathfindingModifierProperties) -> PathfindingModifier)
	& (className: "Player") -> ((PlayerProperties) -> Player)
	& (className: "Players") -> ((PlayersProperties) -> Players)
	& (className: "BloomEffect") -> ((BloomEffectProperties) -> BloomEffect)
	& (className: "BlurEffect") -> ((BlurEffectProperties) -> BlurEffect)
	& (className: "ColorCorrectionEffect") -> ((ColorCorrectionEffectProperties) -> ColorCorrectionEffect)
	& (className: "DepthOfFieldEffect") -> ((DepthOfFieldEffectProperties) -> DepthOfFieldEffect)
	& (className: "SunRaysEffect") -> ((SunRaysEffectProperties) -> SunRaysEffect)
	& (className: "ProximityPrompt") -> ((ProximityPromptProperties) -> ProximityPrompt)
	& (className: "RotationCurve") -> ((RotationCurveProperties) -> RotationCurve)
	& (className: "Sky") -> ((SkyProperties) -> Sky)
	& (className: "Smoke") -> ((SmokeProperties) -> Smoke)
	& (className: "Sound") -> ((SoundProperties) -> Sound)
	& (className: "ChorusSoundEffect") -> ((ChorusSoundEffectProperties) -> ChorusSoundEffect)
	& (className: "CompressorSoundEffect") -> ((CompressorSoundEffectProperties) -> CompressorSoundEffect)
	& (className: "ChannelSelectorSoundEffect") -> ((ChannelSelectorSoundEffectProperties) -> ChannelSelectorSoundEffect)
	& (className: "DistortionSoundEffect") -> ((DistortionSoundEffectProperties) -> DistortionSoundEffect)
	& (className: "EchoSoundEffect") -> ((EchoSoundEffectProperties) -> EchoSoundEffect)
	& (className: "EqualizerSoundEffect") -> ((EqualizerSoundEffectProperties) -> EqualizerSoundEffect)
	& (className: "FlangeSoundEffect") -> ((FlangeSoundEffectProperties) -> FlangeSoundEffect)
	& (className: "PitchShiftSoundEffect") -> ((PitchShiftSoundEffectProperties) -> PitchShiftSoundEffect)
	& (className: "ReverbSoundEffect") -> ((ReverbSoundEffectProperties) -> ReverbSoundEffect)
	& (className: "TremoloSoundEffect") -> ((TremoloSoundEffectProperties) -> TremoloSoundEffect)
	& (className: "SoundGroup") -> ((SoundGroupProperties) -> SoundGroup)
	& (className: "SoundService") -> ((SoundServiceProperties) -> SoundService)
	& (className: "Sparkles") -> ((SparklesProperties) -> Sparkles)
	& (className: "StarterPack") -> ((StarterPackProperties) -> StarterPack)
	& (className: "Team") -> ((TeamProperties) -> Team)
	& (className: "Trail") -> ((TrailProperties) -> Trail)
	& (className: "UIAspectRatioConstraint") -> ((UIAspectRatioConstraintProperties) -> UIAspectRatioConstraint)
	& (className: "UISizeConstraint") -> ((UISizeConstraintProperties) -> UISizeConstraint)
	& (className: "UITextSizeConstraint") -> ((UITextSizeConstraintProperties) -> UITextSizeConstraint)
	& (className: "UICorner") -> ((UICornerProperties) -> UICorner)
	& (className: "UIGradient") -> ((UIGradientProperties) -> UIGradient)
	& (className: "UIGridLayout") -> ((UIGridLayoutProperties) -> UIGridLayout)
	& (className: "UIListLayout") -> ((UIListLayoutProperties) -> UIListLayout)
	& (className: "UIPageLayout") -> ((UIPageLayoutProperties) -> UIPageLayout)
	& (className: "UITableLayout") -> ((UITableLayoutProperties) -> UITableLayout)
	& (className: "UIPadding") -> ((UIPaddingProperties) -> UIPadding)
	& (className: "UIScale") -> ((UIScaleProperties) -> UIScale)
	& (className: "UIStroke") -> ((UIStrokeProperties) -> UIStroke)
	& (className: "BoolValue") -> ((BoolValueProperties) -> BoolValue)
	& (className: "BrickColorValue") -> ((BrickColorValueProperties) -> BrickColorValue)
	& (className: "CFrameValue") -> ((CFrameValueProperties) -> CFrameValue)
	& (className: "Color3Value") -> ((Color3ValueProperties) -> Color3Value)
	& (className: "IntValue") -> ((IntValueProperties) -> IntValue)
	& (className: "NumberValue") -> ((NumberValueProperties) -> NumberValue)
	& (className: "ObjectValue") -> ((ObjectValueProperties) -> ObjectValue)
	& (className: "StringValue") -> ((StringValueProperties) -> StringValue)
	& (className: "Vector3Value") -> ((Vector3ValueProperties) -> Vector3Value)
	& (className: "WeldConstraint") -> ((WeldConstraintProperties) -> WeldConstraint)
)

return {}
