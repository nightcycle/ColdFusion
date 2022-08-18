-- local State = require(script.Parent.State.State)
type State<T> = {Get: (self: State<T>) -> T}--State.State<T>

-- local Symbol = require(script.Parent.Symbol)

type ParameterEntry<T> = (State<T> | T)?

type Symbol = {any}

type InstanceProperties = {
	Archivable: ParameterEntry<boolean>?,
	ClassName: ParameterEntry<string>?,
	Name: ParameterEntry<string>?,
	RobloxLocked: ParameterEntry<boolean>?,
	SourceAssetId: ParameterEntry<number>?,
	Parent: ParameterEntry<Instance?>?,
	Children: {Instance}?,
} & {
	[Symbol]: any?,
}

type AccoutrementProperties = InstanceProperties & {
	AttachmentForward: ParameterEntry<Vector3>?,
	AttachmentPoint: ParameterEntry<CFrame>?,
	AttachmentPos: ParameterEntry<Vector3>?,
	AttachmentRight: ParameterEntry<Vector3>?,
	AttachmentUp: ParameterEntry<Vector3>?,
} 

type AccessoryProperties = AccoutrementProperties & {
	AccessoryType: ParameterEntry<Enum.AccessoryType>?
} 

type AnimationProperties = InstanceProperties & {
	AnimationId: ParameterEntry<string>?,
} 

type AnimationTrackProperties = InstanceProperties & {
	Animation: ParameterEntry<Animation>?,
	IsPlaying: ParameterEntry<boolean>?,
	Length: ParameterEntry<number>?,
	Looped: ParameterEntry<boolean>?,
	Priority: ParameterEntry<Enum.AnimationPriority>?,
	Speed: ParameterEntry<number>?,
	TimePosition: ParameterEntry<number>?,
	WeightCurrent: ParameterEntry<number>?,
	WeightTarget: ParameterEntry<number>?,
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
	IsCFrameDriven: ParameterEntry<boolean>?,
	Transform: ParameterEntry<CFrame>?,
	TransformedCFrame: ParameterEntry<CFrame>?,
	TransformedWorldCFrame: ParameterEntry<CFrame>?,
} 

type BackpackItemProperties = InstanceProperties & {
	TextureId: ParameterEntry<string>?,
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

type BaseWrapProperties = InstanceProperties & {
	CageMeshId: ParameterEntry<string>?,
	CageOrigin: ParameterEntry<CFrame>?,
	CageOriginWorld: ParameterEntry<CFrame>?,
	HSRAssetId: ParameterEntry<string>?,
	ImportOrigin: ParameterEntry<CFrame>?,
	ImportOriginWorld: ParameterEntry<CFrame>?,
} 

type WrapLayerProperties =  BaseWrapProperties & {
	AutoSkin: ParameterEntry<Enum.WrapLayerAutoSkin>?,
	BindOffset: ParameterEntry<CFrame>?,
	Color: ParameterEntry<Color3>?,
	DebugMode: ParameterEntry<Enum.WrapLayerDebugMode>?,
	Enabled: ParameterEntry<boolean>?,
	Order: ParameterEntry<number>?,
	Puffiness: ParameterEntry<number>?,
	ReferenceMeshId: ParameterEntry<string>?,
	ReferenceOrigin: ParameterEntry<CFrame>?,
	ReferenceOriginWorld: ParameterEntry<CFrame>?,
	ShrinkFactor: ParameterEntry<number>?,
} 

type WrapTargetProperties =  BaseWrapProperties & {
	Color: ParameterEntry<Color3>?,
	DebugMode: ParameterEntry<Enum.WrapTargetDebugMode>?,
	Stiffness: ParameterEntry<number>?,
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

type BindableEventProperties = InstanceProperties & {} 

type BindableFunctionProperties = InstanceProperties & {
	OnInvoke: ParameterEntry<((...any) -> ...any)>?
} 

type BodyMoverProperties = InstanceProperties & {} 

type BodyAngularVelocityProperties =  BodyMoverProperties & {
	AngularVelocity: ParameterEntry<Vector3>?,
	MaxTorque: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
} 

type BodyForceProperties =  BodyMoverProperties & {
	Force: ParameterEntry<Vector3>?,
} 

type BodyGyroProperties =  BodyMoverProperties & {
	CFrame: ParameterEntry<CFrame>?,
	D: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
} 

type BodyPositionProperties =  BodyMoverProperties & {
	D: ParameterEntry<number>?,
	MaxForce: ParameterEntry<Vector3>?,
	P: ParameterEntry<number>?,
	Position: ParameterEntry<Vector3>?,
} 

type BodyThrustProperties = BodyMoverProperties & {
	Force: ParameterEntry<Vector3>?,
	Location: ParameterEntry<Vector3>?,
} 

type BodyVelocityProperties =  BodyMoverProperties & {
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

type CharacterAppearanceProperties = InstanceProperties & {} 

type BodyColorsProperties =  CharacterAppearanceProperties & {
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

type ClothingProperties =  CharacterAppearanceProperties & {
	Color3: ParameterEntry<Color3>?,
} 

type PantsProperties =  ClothingProperties & {
	PantsTemplate: ParameterEntry<string>?,
} 

type ShirtProperties =  ClothingProperties & {
	ShirtTemplate: ParameterEntry<string>?,
} 

type ShirtGraphicProperties =  CharacterAppearanceProperties & {
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

type ConfigurationProperties = InstanceProperties & {} 

type ConstraintProperties = InstanceProperties & {
	Active: ParameterEntry<boolean>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
} 

type AlignOrientationProperties =  ConstraintProperties & {
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

type AngularVelocityProperties =  ConstraintProperties & {
	AngularVelocity: ParameterEntry<Vector3>?,
	MaxTorque: ParameterEntry<number>?,
	ReactionTorqueEnabled: ParameterEntry<boolean>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
} 

type BallSocketConstraintProperties =  ConstraintProperties & {
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxFrictionTorque: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
	TwistLimitsEnabled: ParameterEntry<boolean>?,
	TwistLowerAngle: ParameterEntry<number>?,
	TwistUpperAngle: ParameterEntry<number>?,
	UpperAngle: ParameterEntry<number>?,
} 

type HingeConstraintProperties =  ConstraintProperties & {
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

type LineForceProperties =  ConstraintProperties & {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	InverseSquareLaw: ParameterEntry<boolean>?,
	Magnitude: ParameterEntry<number>?,
	MaxForce: ParameterEntry<number>?,
	ReactionForceEnabled: ParameterEntry<boolean>?,
} 

type LinearVelocityProperties =  ConstraintProperties & {
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

type PlaneConstraintProperties =  ConstraintProperties & {} 

type RigidConstraintProperties =  ConstraintProperties & {} 

type RodConstraintProperties =  ConstraintProperties & {
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

type SlidingBallConstraintProperties =  ConstraintProperties & {
	ActuatorType: ParameterEntry<Enum.ActuatorType>?,
	CurrentPosition: ParameterEntry<number>?,
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
} 

type CylindricalConstraintProperties =  SlidingBallConstraintProperties & {
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

type PrismaticConstraintProperties =  SlidingBallConstraintProperties & {} 

type SpringConstraintProperties =  ConstraintProperties & {
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

type TorsionSpringConstraintProperties =  ConstraintProperties & {
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

type UniversalConstraintProperties =  ConstraintProperties & {
	LimitsEnabled: ParameterEntry<boolean>?,
	MaxAngle: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
	Restitution: ParameterEntry<number>?,
} 

type VectorForceProperties =  ConstraintProperties & {
	ApplyAtCenterOfMass: ParameterEntry<boolean>?,
	Force: ParameterEntry<Vector3>?,
	RelativeTo: ParameterEntry<Enum.ActuatorRelativeTo>?,
} 

type FileMeshProperties =  DataModelMesh & {
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

type FaceControlsProperties = InstanceProperties & {
	ChinRaiser: ParameterEntry<number>?,
	ChinRaiserUpperLip: ParameterEntry<number>?,
	Corrugator: ParameterEntry<number>?,
	EyesLookDown: ParameterEntry<number>?,
	EyesLookLeft: ParameterEntry<number>?,
	EyesLookRight: ParameterEntry<number>?,
	EyesLookUp: ParameterEntry<number>?,
	FlatPucker: ParameterEntry<number>?,
	Funneler: ParameterEntry<number>?,
	JawDrop: ParameterEntry<number>?,
	JawLeft: ParameterEntry<number>?,
	JawRight: ParameterEntry<number>?,
	LeftBrowLowerer: ParameterEntry<number>?,
	LeftCheekPuff: ParameterEntry<number>?,
	LeftCheekRaiser: ParameterEntry<number>?,
	LeftDimpler: ParameterEntry<number>?,
	LeftEyeClosed: ParameterEntry<number>?,
	LeftEyeUpperLidRaiser: ParameterEntry<number>?,
	LeftInnerBrowRaiser: ParameterEntry<number>?,
	LeftLipCornerDown: ParameterEntry<number>?,
	LeftLipCornerPuller: ParameterEntry<number>?,
	LeftLipStretcher: ParameterEntry<number>?,
	LeftLowerLipDepressor: ParameterEntry<number>?,
	LeftNoseWrinkler: ParameterEntry<number>?,
	LeftOuterBrowRaiser: ParameterEntry<number>?,
	LeftUpperLipRaiser: ParameterEntry<number>?,
	LipPresser: ParameterEntry<number>?,
	LipsTogether: ParameterEntry<number>?,
	LowerLipSuck: ParameterEntry<number>?,
	MouthLeft: ParameterEntry<number>?,
	MouthRight: ParameterEntry<number>?,
	Pucker: ParameterEntry<number>?,
	RightBrowLowerer: ParameterEntry<number>?,
	RightCheekPuff: ParameterEntry<number>?,
	RightCheekRaiser: ParameterEntry<number>?,
	RightDimpler: ParameterEntry<number>?,
	RightEyeClosed: ParameterEntry<number>?,
	RightEyeUpperLidRaiser: ParameterEntry<number>?,
	RightInnerBrowRaiser: ParameterEntry<number>?,
	RightLipCornerDown: ParameterEntry<number>?,
	RightLipCornerPuller: ParameterEntry<number>?,
	RightLipStretcher: ParameterEntry<number>?,
	RightLowerLipDepressor: ParameterEntry<number>?,
	RightNoseWrinkler: ParameterEntry<number>?,
	RightOuterBrowRaiser: ParameterEntry<number>?,
	RightUpperLipRaiser: ParameterEntry<number>?,
	TongueDown: ParameterEntry<number>?,
	TongueOut: ParameterEntry<number>?,
	TongueUp: ParameterEntry<number>?,
	UpperLipSuck: ParameterEntry<number>?,
} 

type FaceInstanceProperties = InstanceProperties & {
	Face: ParameterEntry<Enum.NormalId>?,
} 

type DecalProperties =  FaceInstance & {
	Color3: ParameterEntry<Color3>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	Transparency: ParameterEntry<number>?,
	ZIndex: ParameterEntry<number>?,
} 

type TextureProperties =  DecalProperties & {
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

type FolderProperties = InstanceProperties & {} 

type ForceFieldProperties = InstanceProperties & {
	Visible: ParameterEntry<boolean>?,
} 

type GuiBaseProperties = InstanceProperties & {} 

type GuiBase2dProperties =  GuiBaseProperties & {
	AbsolutePosition: ParameterEntry<Vector2>?,
	AbsoluteRotation: ParameterEntry<number>?,
	AbsoluteSize: ParameterEntry<Vector2>?,
	AutoLocalize: ParameterEntry<boolean>?,
	ClippedRect: ParameterEntry<Rect>?,
	IsNotOccluded: ParameterEntry<boolean>?,
	RawRect2D: ParameterEntry<Rect>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
	TotalGroupScale: ParameterEntry<number>?,
} 

type GuiObjectProperties =  GuiBase2dProperties & {
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
} 

type CanvasGroupProperties =  GuiObjectProperties & {
	GroupColor3: ParameterEntry<Color3>?,
	GroupTransparency: ParameterEntry<number>?,
} 

type FrameProperties =  GuiObjectProperties & {
	Style: ParameterEntry<Enum.FrameStyle>?,
} 

type GuiButtonProperties =  GuiObjectProperties & {
	AutoButtonColor: ParameterEntry<boolean>?,
	Modal: ParameterEntry<boolean>?,
	Selected: ParameterEntry<boolean>?,
	Style: ParameterEntry<Enum.ButtonStyle>?,
} 

type ImageButtonProperties =  GuiButtonProperties & {
	stringImageSize: ParameterEntry<Vector2>?,
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

type TextButtonProperties =  GuiButtonProperties & {
	stringText: ParameterEntry<string>?,
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

type GuiLabelProperties =  GuiObjectProperties & {} 

type ImageLabelProperties =  GuiLabelProperties & {
	stringImageSize: ParameterEntry<Vector2>?,
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

type TextLabelProperties =  GuiLabelProperties & {
	stringText: ParameterEntry<string>?,
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

type ScrollingFrameProperties =  GuiObjectProperties & {
	AbsoluteCanvasSize: ParameterEntry<Vector2>?,
	AbsoluteWindowSize: ParameterEntry<Vector2>?,
	AutomaticCanvasSize: ParameterEntry<Enum.AutomaticSize>?,
	BottomImage: ParameterEntry<string>?,
	CanvasPosition: ParameterEntry<Vector2>?,
	CanvasSize: ParameterEntry<UDim2>?,
	ElasticBehavior: ParameterEntry<Enum.ElasticBehavior>?,
	HorizontalBarRect: ParameterEntry<Rect>?,
	HorizontalScrollBarInset: ParameterEntry<Enum.ScrollBarInset>?,
	MaxCanvasPosition: ParameterEntry<Vector2>?,
	MidImage: ParameterEntry<string>?,
	ScrollBarImageColor3: ParameterEntry<Color3>?,
	ScrollBarImageTransparency: ParameterEntry<number>?,
	ScrollBarThickness: ParameterEntry<number>?,
	ScrollVelocity: ParameterEntry<Vector2>?,
	ScrollingDirection: ParameterEntry<Enum.ScrollingDirection>?,
	ScrollingEnabled: ParameterEntry<boolean>?,
	TopImage: ParameterEntry<string>?,
	VerticalBarRect: ParameterEntry<Rect>?,
	VerticalScrollBarInset: ParameterEntry<Enum.ScrollBarInset>?,
	VerticalScrollBarPosition: ParameterEntry<Enum.VerticalScrollBarPosition>?,
} 

type TextBoxProperties =  GuiObjectProperties & {
	ClearTextOnFocus: ParameterEntry<boolean>?,
	stringText: ParameterEntry<string>?,
	CursorPosition: ParameterEntry<number>?,
	Font: ParameterEntry<Enum.Font>?,
	FontFace: ParameterEntry<Font>?,
	LineHeight: ParameterEntry<number>?,
	ManualFocusRelease: ParameterEntry<boolean>?,
	MaxVisibleGraphemes: ParameterEntry<number>?,
	MultiLine: ParameterEntry<boolean>?,
	OverlayNativeInput: ParameterEntry<boolean>?,
	PlaceholderColor3: ParameterEntry<Color3>?,
	PlaceholderText: ParameterEntry<string>?,
	ReturnKeyType: ParameterEntry<Enum.ReturnKeyType>?,
	RichText: ParameterEntry<boolean>?,
	SelectionStart: ParameterEntry<number>?,
	ShowNativeInput: ParameterEntry<boolean>?,
	Text: ParameterEntry<string>?,
	TextBounds: ParameterEntry<Vector2>?,
	TextColor3: ParameterEntry<Color3>?,
	TextEditable: ParameterEntry<boolean>?,
	TextFits: ParameterEntry<boolean>?,
	TextInputType: ParameterEntry<Enum.TextInputType>?,
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

type VideoFrameProperties =  GuiObjectProperties & {
	IsLoaded: ParameterEntry<boolean>?,
	Looped: ParameterEntry<boolean>?,
	Playing: ParameterEntry<boolean>?,
	Resolution: ParameterEntry<Vector2>?,
	TimeLength: ParameterEntry<number>?,
	TimePosition: ParameterEntry<number>?,
	Video: ParameterEntry<string>?,
	Volume: ParameterEntry<number>?,
} 

type ViewportFrameProperties =  GuiObjectProperties & {
	Ambient: ParameterEntry<Color3>?,
	CurrentCamera: ParameterEntry<Camera>?,
	ImageColor3: ParameterEntry<Color3>?,
	ImageTransparency: ParameterEntry<number>?,
	LightColor: ParameterEntry<Color3>?,
	LightDirection: ParameterEntry<Vector3>?,
} 

type LayerCollectorProperties =  GuiBase2dProperties & {
	Enabled: ParameterEntry<boolean>?,
	ResetOnSpawn: ParameterEntry<boolean>?,
	ZIndexBehavior: ParameterEntry<Enum.ZIndexBehavior>?,
} 

type BillboardGuiProperties =  LayerCollectorProperties & {
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
	Size: ParameterEntry<UDim2>?,
	SizeOffset: ParameterEntry<Vector2>?,
	StudsOffset: ParameterEntry<Vector3>?,
	StudsOffsetWorldSpace: ParameterEntry<Vector3>?,
} 

type PluginGuiProperties =  LayerCollectorProperties & {
	Title: ParameterEntry<string>?,
} 

type DockWidgetPluginGuiProperties =  PluginGuiProperties & {
	HostWidgetWasRestored: ParameterEntry<boolean>?,
} 

type QWidgetPluginGuiProperties =  PluginGuiProperties & {} 

type ScreenGuiProperties =  LayerCollectorProperties & {
	DisplayOrder: ParameterEntry<number>?,
	IgnoreGuiInset: ParameterEntry<boolean>?,
	OnTopOfCoreBlur: ParameterEntry<boolean>?,
} 

type SurfaceGuiProperties =  LayerCollectorProperties & {
	Active: ParameterEntry<boolean>?,
	Adornee: ParameterEntry<Instance>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	Brightness: ParameterEntry<number>?,
	CanvasSize: ParameterEntry<Vector2>?,
	ClipsDescendants: ParameterEntry<boolean>?,
	Face: ParameterEntry<Enum.NormalId>?,
	LightInfluence: ParameterEntry<number>?,
	PixelsPerStud: ParameterEntry<number>?,
	SizingMode: ParameterEntry<Enum.SurfaceGuiSizingMode>?,
	ToolPunchThroughDistance: ParameterEntry<number>?,
	ZOffset: ParameterEntry<number>?,
} 

type GuiBase3dProperties =  GuiBaseProperties & {
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
} 

type InstanceAdornmentProperties =  GuiBase3dProperties & {
	Adornee: ParameterEntry<Instance>?,
} 

type SelectionBoxProperties =  InstanceAdornmentProperties & {
	LineThickness: ParameterEntry<number>?,
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
} 

type PVAdornmentProperties =  GuiBase3dProperties & {
	Adornee: ParameterEntry<PVInstance>?,
} 

type HandleAdornmentProperties =  PVAdornmentProperties & {
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
}

type BoxHandleAdornmentProperties =  HandleAdornmentProperties & {
	Size: ParameterEntry<Vector3>?,
} 

type ConeHandleAdornmentProperties =  HandleAdornmentProperties & {
	Height: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
} 

type CylinderHandleAdornmentProperties =  HandleAdornmentProperties & {
	Angle: ParameterEntry<number>?,
	Height: ParameterEntry<number>?,
	InnerRadius: ParameterEntry<number>?,
	Radius: ParameterEntry<number>?,
} 

type ImageHandleAdornmentProperties =  HandleAdornmentProperties & {
	Image: ParameterEntry<string>?,
	Size: ParameterEntry<Vector2>?,
} 

type LineHandleAdornmentProperties =  HandleAdornmentProperties & {
	Length: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
} 

type SphereHandleAdornmentProperties =  HandleAdornmentProperties & {
	Radius: ParameterEntry<number>?,
} 

type WireframeHandleAdornmentProperties =  HandleAdornmentProperties & {} 

type ParabolaAdornmentProperties =  PVAdornmentProperties & {
	A: ParameterEntry<number>?,
	B: ParameterEntry<number>?,
	C: ParameterEntry<number>?,
	Range: ParameterEntry<number>?,
	Thickness: ParameterEntry<number>?,
} 

type SelectionSphereProperties =  PVAdornmentProperties & {
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
} 

type PartAdornmentProperties =  GuiBase3dProperties & {
	Adornee: ParameterEntry<BasePart>?,
} 

type HandlesBaseProperties =  PartAdornmentProperties & {} 

type ArcHandlesProperties =  HandlesBaseProperties & {
	Axes: ParameterEntry<Axes>?,
} 

type HandlesProperties = HandlesBaseProperties & {
	Faces: ParameterEntry<Faces>?,
	Style: ParameterEntry<Enum.HandlesStyle>?,
} 

type SurfaceSelectionProperties = PartAdornmentProperties & {
	TargetSurface: ParameterEntry<Enum.NormalId>?,
} 

type SelectionLassoProperties =  GuiBase3dProperties & {
	Humanoid: ParameterEntry<Humanoid>?,
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
	AccessoryBlob: ParameterEntry<string>?,
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
	NumberEmotesLoaded: ParameterEntry<number>?,
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

type JointInstanceProperties = InstanceProperties & {
	Active: ParameterEntry<boolean>?,
	C0: ParameterEntry<CFrame>?,
	C1: ParameterEntry<CFrame>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
} 

type DynamicRotateProperties =  JointInstanceProperties & {
	BaseAngle: ParameterEntry<number>?,
} 

type MotorProperties =  JointInstanceProperties & {
	CurrentAngle: ParameterEntry<number>?,
	DesiredAngle: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
} 

type Motor6DProperties =  MotorProperties & {
	ChildName: ParameterEntry<string>?,
	ParentName: ParameterEntry<string>?,
	Transform: ParameterEntry<CFrame>?,
} 

type WeldProperties =  JointInstanceProperties & {} 

type LightProperties = InstanceProperties & {
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Shadows: ParameterEntry<boolean>?,
} 

type PointLightProperties =  LightProperties & {
	Range: ParameterEntry<number>?,
} 

type SpotLightProperties =  LightProperties & {
	Angle: ParameterEntry<number>?,
	Face: ParameterEntry<Enum.NormalId>?,
	Range: ParameterEntry<number>?,
} 

type SurfaceLightProperties =  LightProperties & {
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
	Technology: ParameterEntry<Enum.Technology>?,
	TempUseNewSkyRemovalBehaviour: ParameterEntry<boolean>?,
	TimeOfDay: ParameterEntry<string>?,
} 

type LocalizationTableProperties = InstanceProperties & {
	SourceLocaleId: ParameterEntry<string>?,
} 

type MaterialServiceProperties = InstanceProperties & {
	AsphaltName: ParameterEntry<string>?,
	BasaltName: ParameterEntry<string>?,
	BrickName: ParameterEntry<string>?,
	CobblestoneName: ParameterEntry<string>?,
	ConcreteName: ParameterEntry<string>?,
	CorrodedMetalName: ParameterEntry<string>?,
	CrackedLavaName: ParameterEntry<string>?,
	DiamondPlateName: ParameterEntry<string>?,
	FabricName: ParameterEntry<string>?,
	FoilName: ParameterEntry<string>?,
	GlacierName: ParameterEntry<string>?,
	GraniteName: ParameterEntry<string>?,
	GrassName: ParameterEntry<string>?,
	GroundName: ParameterEntry<string>?,
	IceName: ParameterEntry<string>?,
	LeafyGrassName: ParameterEntry<string>?,
	LimestoneName: ParameterEntry<string>?,
	MarbleName: ParameterEntry<string>?,
	MetalName: ParameterEntry<string>?,
	MudName: ParameterEntry<string>?,
	PavementName: ParameterEntry<string>?,
	PebbleName: ParameterEntry<string>?,
	PlasticName: ParameterEntry<string>?,
	RockName: ParameterEntry<string>?,
	SaltName: ParameterEntry<string>?,
	SandName: ParameterEntry<string>?,
	SandstoneName: ParameterEntry<string>?,
	SlateName: ParameterEntry<string>?,
	SmoothPlasticName: ParameterEntry<string>?,
	SnowName: ParameterEntry<string>?,
	Use2022Materials: ParameterEntry<boolean>?,
	WoodName: ParameterEntry<string>?,
	WoodPlanksName: ParameterEntry<string>?,
	hasPropertyWarningInStudio: ParameterEntry<boolean>?,
} 

type MaterialVariantProperties = InstanceProperties & {
	BaseMaterial: ParameterEntry<Enum.Material>?,
	ColorMap: ParameterEntry<string>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	MaterialPattern: ParameterEntry<Enum.MaterialPattern>?,
	MetalnessMap: ParameterEntry<string>?,
	NormalMap: ParameterEntry<string>?,
	RoughnessMap: ParameterEntry<string>?,
	StudsPerTile: ParameterEntry<number>?,
} 

type MouseProperties = InstanceProperties & {
	Hit: ParameterEntry<CFrame>?,
	Icon: ParameterEntry<string>?,
	Origin: ParameterEntry<CFrame>?,
	Target: ParameterEntry<BasePart>?,
	TargetFilter: ParameterEntry<Instance>?,
	TargetSurface: ParameterEntry<Enum.NormalId>?,
	UnitRay: ParameterEntry<Ray>?,
	ViewSizeX: ParameterEntry<number>?,
	ViewSizeY: ParameterEntry<number>?,
	X: ParameterEntry<number>?,
	Y: ParameterEntry<number>?,
} 

type PVInstanceProperties = InstanceProperties & {
	Origin_Orientation: ParameterEntry<Vector3>?,
	Origin_Position: ParameterEntry<Vector3>?,
	Pivot_Offset_Orientation: ParameterEntry<Vector3>?,
	Pivot_Offset_Position: ParameterEntry<Vector3>?,
} 

type BasePartProperties =  PVInstanceProperties & {
	Anchored: ParameterEntry<boolean>?,
	AssemblyAngularVelocity: ParameterEntry<Vector3>?,
	AssemblyCenterOfMass: ParameterEntry<Vector3>?,
	AssemblyLinearVelocity: ParameterEntry<Vector3>?,
	AssemblyMass: ParameterEntry<number>?,
	AssemblyRootPart: ParameterEntry<BasePart>?,
	BackSurface: ParameterEntry<Enum.SurfaceType>?,
	BottomSurface: ParameterEntry<Enum.SurfaceType>?,
	BrickColor: ParameterEntry<BrickColor>?,
	CFrame: ParameterEntry<CFrame>?,
	CanCollide: ParameterEntry<boolean>?,
	CanQuery: ParameterEntry<boolean>?,
	CanTouch: ParameterEntry<boolean>?,
	CastShadow: ParameterEntry<boolean>?,
	CenterOfMass: ParameterEntry<Vector3>?,
	CollisionGroup: ParameterEntry<string>?,
	CollisionGroupId: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	FrontSurface: ParameterEntry<Enum.SurfaceType>?,
	LeftSurface: ParameterEntry<Enum.SurfaceType>?,
	LocalTransparencyModifier: ParameterEntry<number>?,
	Locked: ParameterEntry<boolean>?,
	Mass: ParameterEntry<number>?,
	Massless: ParameterEntry<boolean>?,
	Material: ParameterEntry<Enum.Material>?,
	MaterialVariant: ParameterEntry<string>?,
	Orientation: ParameterEntry<Vector3>?,
	PivotOffset: ParameterEntry<CFrame>?,
	Position: ParameterEntry<Vector3>?,
	ReceiveAge: ParameterEntry<number>?,
	Reflectance: ParameterEntry<number>?,
	ResizeIncrement: ParameterEntry<number>?,
	ResizeableFaces: ParameterEntry<Faces>?,
	RightSurface: ParameterEntry<Enum.SurfaceType>?,
	RootPriority: ParameterEntry<number>?,
	Rotation: ParameterEntry<Vector3>?,
	Size: ParameterEntry<Vector3>?,
	TopSurface: ParameterEntry<Enum.SurfaceType>?,
	Transparency: ParameterEntry<number>?,
} 

type CornerWedgePartProperties =  BasePartProperties & {} 

type FormFactorPartProperties =  BasePartProperties & {} 

type PartProperties =  FormFactorPartProperties & {
	Shape: ParameterEntry<Enum.PartType>?,
} 

type PlatformProperties =  PartProperties & {} 

type SeatProperties =  PartProperties & {
	Disabled: ParameterEntry<boolean>?,
	Occupant: ParameterEntry<Humanoid>?,
} 

type SpawnLocationProperties =  PartProperties & {
	AllowTeamChangeOnTouch: ParameterEntry<boolean>?,
	Duration: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Neutral: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
} 

type WedgePartProperties =  FormFactorPartProperties & {
} 

type TrussPartProperties =  BasePartProperties & {
	Style: ParameterEntry<Enum.Style>?,
} 

type VehicleSeatProperties =  BasePartProperties & {
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

type ModelProperties =  PVInstanceProperties & {
	LevelOfDetail: ParameterEntry<Enum.ModelLevelOfDetail>?,
	World_Pivot_Orientation: ParameterEntry<Vector3>?,
	World_Pivot_Position: ParameterEntry<Vector3>?,
	WorldPivot: ParameterEntry<CFrame>?,
	PrimaryPart: ParameterEntry<BasePart?>?
} 

type ActorProperties =  ModelProperties & {} 

type WorldRootProperties =  ModelProperties & {} 

type WorldModelProperties =  WorldRootProperties & {} 

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

type PathProperties = InstanceProperties & {
	Status: ParameterEntry<Enum.PathStatus>?,
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
	ChatMode: ParameterEntry<Enum.ChatMode>?,
	DevCameraOcclusionMode: ParameterEntry<Enum.DevCameraOcclusionMode>?,
	DevComputerCameraMode: ParameterEntry<Enum.DevComputerCameraMovementMode>?,
	DevComputerMovementMode: ParameterEntry<Enum.DevComputerMovementMode>?,
	DevEnableMouseLock: ParameterEntry<boolean>?,
	DevTouchCameraMode: ParameterEntry<Enum.DevTouchCameraMovementMode>?,
	DevTouchMovementMode: ParameterEntry<Enum.DevTouchMovementMode>?,
	DisplayName: ParameterEntry<string>?,
	FollowUserId: ParameterEntry<number>?,
	GameplayPaused: ParameterEntry<boolean>?,
	Guest: ParameterEntry<boolean>?,
	HealthDisplayDistance: ParameterEntry<number>?,
	LocaleId: ParameterEntry<string>?,
	MaximumSimulationRadius: ParameterEntry<number>?,
	MembershipType: ParameterEntry<Enum.MembershipType>?,
	NameDisplayDistance: ParameterEntry<number>?,
	Neutral: ParameterEntry<boolean>?,
	OsPlatform: ParameterEntry<string>?,
	PlatformName: ParameterEntry<string>?,
	ReplicationFocus: ParameterEntry<Instance>?,
	RespawnLocation: ParameterEntry<SpawnLocation>?,
	SimulationRadius: ParameterEntry<number>?,
	Team: ParameterEntry<Team>?,
	TeamColor: ParameterEntry<BrickColor>?,
	Teleported: ParameterEntry<boolean>?,
	TeleportedIn: ParameterEntry<boolean>?,
	UserId: ParameterEntry<number>?,
	VRDevice: ParameterEntry<string>?,
} 

type PlayersProperties = InstanceProperties & {
	BubbleChat: ParameterEntry<boolean>?,
	CharacterAutoLoads: ParameterEntry<boolean>?,
	ClassicChat: ParameterEntry<boolean>?,
	LocalPlayer: ParameterEntry<Player>?,
	MaxPlayers: ParameterEntry<number>?,
	MaxPlayersInternal: ParameterEntry<number>?,
	PreferredPlayers: ParameterEntry<number>?,
	PreferredPlayersInternal: ParameterEntry<number>?,
	RespawnTime: ParameterEntry<number>?,
} 

type PluginActionProperties = InstanceProperties & {
	ActionId: ParameterEntry<string>?,
	AllowBinding: ParameterEntry<boolean>?,
	Checked: ParameterEntry<boolean>?,
	DefaultShortcut: ParameterEntry<string>?,
	Enabled: ParameterEntry<boolean>?,
	StatusTip: ParameterEntry<string>?,
	Text: ParameterEntry<string>?,
} 

type PluginMenuProperties = InstanceProperties & {
	Icon: ParameterEntry<string>?,
	Title: ParameterEntry<string>?,
} 

type PluginToolbarProperties = InstanceProperties & {} 

type PluginToolbarButtonProperties = InstanceProperties & {
	ClickableWhenViewportHidden: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Icon: ParameterEntry<string>?,
} 

type PostEffectProperties = InstanceProperties & {
	Enabled: ParameterEntry<boolean>?,
} 

type BloomEffectProperties =  PostEffectProperties & {
	Intensity: ParameterEntry<number>?,
	Size: ParameterEntry<number>?,
	Threshold: ParameterEntry<number>?,
} 

type BlurEffectProperties =  PostEffectProperties & {
	Size: ParameterEntry<number>?,
} 

type ColorCorrectionEffectProperties =  PostEffectProperties & {
	Brightness: ParameterEntry<number>?,
	Contrast: ParameterEntry<number>?,
	Saturation: ParameterEntry<number>?,
	TintColor: ParameterEntry<Color3>?,
} 

type DepthOfFieldEffectProperties =  PostEffectProperties & {
	FarIntensity: ParameterEntry<number>?,
	FocusDistance: ParameterEntry<number>?,
	InFocusRadius: ParameterEntry<number>?,
	NearIntensity: ParameterEntry<number>?,
} 

type SunRaysEffectProperties =  PostEffectProperties & {
	Intensity: ParameterEntry<number>?,
	Spread: ParameterEntry<number>?,
} 

type RemoteEventProperties = InstanceProperties & {} 

type RemoteFunctionProperties = InstanceProperties & {
	OnClientInvoke: ParameterEntry<((...any) -> ...any)>?,
	OnServerInvoke: ParameterEntry<((player: Player, ...any) -> (...any))>?,
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
	ChannelCount: ParameterEntry<number>?,
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
	UsageContextPermission: ParameterEntry<Enum.UsageContext>?,
	Volume: ParameterEntry<number>?,
} 

type SoundEffectProperties = InstanceProperties & {
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
} 

type AssetSoundEffectProperties =  SoundEffectProperties & {} 

type ChorusSoundEffectProperties =  SoundEffectProperties & {
	Depth: ParameterEntry<number>?,
	Mix: ParameterEntry<number>?,
	Rate: ParameterEntry<number>?,
} 

type CompressorSoundEffectProperties =  SoundEffectProperties & {
	Attack: ParameterEntry<number>?,
	GainMakeup: ParameterEntry<number>?,
	Ratio: ParameterEntry<number>?,
	Release: ParameterEntry<number>?,
	SideChain: ParameterEntry<Instance>?,
	Threshold: ParameterEntry<number>?,
} 

type CustomSoundEffectProperties =  SoundEffectProperties & {} 

type ChannelSelectorSoundEffectProperties =  CustomSoundEffectProperties & {
	Channel: ParameterEntry<number>?,
} 

type DistortionSoundEffectProperties =  SoundEffectProperties & {
	Level: ParameterEntry<number>?,
} 

type EchoSoundEffectProperties =  SoundEffectProperties & {
	Delay: ParameterEntry<number>?,
	DryLevel: ParameterEntry<number>?,
	Feedback: ParameterEntry<number>?,
	WetLevel: ParameterEntry<number>?,
} 

type EqualizerSoundEffectProperties =  SoundEffectProperties & {
	HighGain: ParameterEntry<number>?,
	LowGain: ParameterEntry<number>?,
	MidGain: ParameterEntry<number>?,
} 

type FlangeSoundEffectProperties =  SoundEffectProperties & {
	Depth: ParameterEntry<number>?,
	Mix: ParameterEntry<number>?,
	Rate: ParameterEntry<number>?,
} 

type PitchShiftSoundEffectProperties =  SoundEffectProperties & {
	Octave: ParameterEntry<number>?,
} 

type ReverbSoundEffectProperties =  SoundEffectProperties & {
	DecayTime: ParameterEntry<number>?,
	Density: ParameterEntry<number>?,
	Diffusion: ParameterEntry<number>?,
	DryLevel: ParameterEntry<number>?,
	WetLevel: ParameterEntry<number>?,
} 

type TremoloSoundEffectProperties =  SoundEffectProperties & {
	Depth: ParameterEntry<number>?,
	Duty: ParameterEntry<number>?,
	Frequency: ParameterEntry<number>?,
} 

type SoundGroupProperties = InstanceProperties & {
	Volume: ParameterEntry<number>?,
} 

type SparklesProperties = InstanceProperties & {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	SparkleColor: ParameterEntry<Color3>?,
	TimeScale: ParameterEntry<number>?,
} 

type SurfaceAppearanceProperties = InstanceProperties & {
	AlphaMode: ParameterEntry<Enum.AlphaMode>?,
	ColorMap: ParameterEntry<string>?,
	MetalnessMap: ParameterEntry<string>?,
	NormalMap: ParameterEntry<string>?,
	RoughnessMap: ParameterEntry<string>?,
	TexturePack: ParameterEntry<string>?,
} 

type TeamProperties = InstanceProperties & {
	AutoAssignable: ParameterEntry<boolean>?,
	ChildOrder: ParameterEntry<number>?,
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

type UIBaseProperties = InstanceProperties & {} 

type UIComponentProperties =  UIBaseProperties & {} 

type UIConstraintProperties =  UIComponentProperties & {} 

type UIAspectRatioConstraintProperties =  UIConstraintProperties & {
	AspectRatio: ParameterEntry<number>?,
	AspectType: ParameterEntry<Enum.AspectType>?,
	DominantAxis: ParameterEntry<Enum.DominantAxis>?,
} 

type UISizeConstraintProperties =  UIConstraintProperties & {
	MaxSize: ParameterEntry<Vector2>?,
	MinSize: ParameterEntry<Vector2>?,
} 

type UITextSizeConstraintProperties =  UIConstraintProperties & {
	MaxTextSize: ParameterEntry<number>?,
	MinTextSize: ParameterEntry<number>?,
} 

type UICornerProperties =  UIComponentProperties & {
	CornerRadius: ParameterEntry<UDim>?,
} 

type UIGradientProperties =  UIComponentProperties & {
	Color: ParameterEntry<ColorSequence>?,
	Enabled: ParameterEntry<boolean>?,
	Offset: ParameterEntry<Vector2>?,
	Rotation: ParameterEntry<number>?,
	Transparency: ParameterEntry<NumberSequence>?,
} 

type UILayoutProperties =  UIComponentProperties & {} 

type UIGridStyleLayoutProperties =  UILayoutProperties & {
	AbsolutestringSize: ParameterEntry<Vector2>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
} 

type UIGridLayoutProperties =  UIGridStyleLayoutProperties & {
	AbsoluteCellCount: ParameterEntry<Vector2>?,
	AbsoluteCellSize: ParameterEntry<Vector2>?,
	CellPadding: ParameterEntry<UDim2>?,
	CellSize: ParameterEntry<UDim2>?,
	FillDirectionMaxCells: ParameterEntry<number>?,
	StartCorner: ParameterEntry<Enum.StartCorner>?,
} 

type UIListLayoutProperties =  UIGridStyleLayoutProperties & {
	Padding: ParameterEntry<UDim>?,
} 

type UIPageLayoutProperties =  UIGridStyleLayoutProperties & {
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

type UITableLayoutProperties =  UIGridStyleLayoutProperties & {
	FillEmptySpaceColumns: ParameterEntry<boolean>?,
	FillEmptySpaceRows: ParameterEntry<boolean>?,
	MajorAxis: ParameterEntry<Enum.TableMajorAxis>?,
	Padding: ParameterEntry<UDim2>?,
} 

type UIPaddingProperties =  UIComponentProperties & {
	PaddingBottom: ParameterEntry<UDim>?,
	PaddingLeft: ParameterEntry<UDim>?,
	PaddingRight: ParameterEntry<UDim>?,
	PaddingTop: ParameterEntry<UDim>?,
} 

type UIScaleProperties =  UIComponentProperties & {
	Scale: ParameterEntry<number>?,
} 

type UIStrokeProperties =  UIComponentProperties & {
	ApplyStrokeMode: ParameterEntry<Enum.ApplyStrokeMode>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	LineJoinMode: ParameterEntry<Enum.LineJoinMode>?,
	Thickness: ParameterEntry<number>?,
	Transparency: ParameterEntry<number>?,
} 

type ValueBaseProperties = InstanceProperties & {} 

type BinaryStringValueProperties =  ValueBaseProperties & {} 

type BoolValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<boolean>?,
} 

type BrickColorValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<BrickColor>?,
} 

type CFrameValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<CFrame>?,
} 

type Color3ValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<Color3>?,
} 

type IntValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<number>?,
} 

type NumberValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<number>?,
} 

type ObjectValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<Instance>?,
} 

type RayValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<Ray>?,
} 

type StringValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<string>?,
} 

type Vector3ValueProperties =  ValueBaseProperties & {
	Value: ParameterEntry<Vector3>?,
} 

type WeldConstraintProperties = InstanceProperties & {
	Active: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
}

export type ClassNameConstructor = (("Accessory") ->  ((AccessoryProperties) -> Accessory ))
& ((className: "Animation") ->  ((AnimationProperties) -> Animation ))
& ((className: "AnimationTrack") ->  ((AnimationTrackProperties) -> AnimationTrack ))
& ((className: "Atmosphere") ->  ((AtmosphereProperties) -> Atmosphere ))
& ((className: "Attachment") ->  ((AttachmentProperties) -> Attachment ))
& ((className: "Bone") ->  ((BoneProperties) -> Bone ))
-- & ((className: "BackpackItem") ->  ((BackpackItemProperties) -> BackpackItem ))
& ((className: "Tool") ->  ((ToolProperties) -> Tool ))
& ((className: "BaseWrap") ->  ((BaseWrapProperties) -> BaseWrap ))
& ((className: "WrapLayer") ->  ((WrapLayerProperties) -> WrapLayer ))
& ((className: "WrapTarget") ->  ((WrapTargetProperties) -> WrapTarget ))
& ((className: "Beam") ->  ((BeamProperties) -> Beam ))
& ((className: "BindableEvent") ->  ((BindableEventProperties) -> BindableEvent ))
& ((className: "BindableFunction") ->  ((BindableFunctionProperties) -> BindableFunction ))
& ((className: "BodyMover") ->  ((BodyMoverProperties) -> BodyMover ))
& ((className: "BodyAngularVelocity") ->  ((BodyAngularVelocityProperties) -> BodyAngularVelocity ))
& ((className: "BodyForce") ->  ((BodyForceProperties) -> BodyForce ))
& ((className: "BodyGyro") ->  ((BodyGyroProperties) -> BodyGyro ))
& ((className: "BodyPosition") ->  ((BodyPositionProperties) -> BodyPosition ))
& ((className: "BodyThrust") ->  ((BodyThrustProperties) -> BodyThrust ))
& ((className: "BodyVelocity") ->  ((BodyVelocityProperties) -> BodyVelocity ))
& ((className: "Camera") ->  ((CameraProperties) -> Camera ))
& ((className: "CharacterAppearance") ->  ((CharacterAppearanceProperties) -> CharacterAppearance ))
& ((className: "BodyColors") ->  ((BodyColorsProperties) -> BodyColors ))
& ((className: "Clothing") ->  ((ClothingProperties) -> Clothing ))
& ((className: "Pants") ->  ((PantsProperties) -> Pants ))
& ((className: "Shirt") ->  ((ShirtProperties) -> Shirt ))
& ((className: "ShirtGraphic") ->  ((ShirtGraphicProperties) -> ShirtGraphic ))
& ((className: "ClickDetector") ->  ((ClickDetectorProperties) -> ClickDetector ))
& ((className: "Clouds") ->  ((CloudsProperties) -> Clouds ))
& ((className: "Configuration") ->  ((ConfigurationProperties) -> Configuration ))
-- & ((className: "Constraint") ->  ((ConstraintProperties) -> Constraint ))
& ((className: "AlignOrientation") ->  ((AlignOrientationProperties) -> AlignOrientation ))
& ((className: "AlignPosition") ->  ((AlignPositionProperties) -> AlignPosition ))
& ((className: "AngularVelocity") ->  ((AngularVelocityProperties) -> AngularVelocity ))
& ((className: "BallSocketConstraint") ->  ((BallSocketConstraintProperties) -> BallSocketConstraint ))
& ((className: "HingeConstraint") ->  ((HingeConstraintProperties) -> HingeConstraint ))
& ((className: "LineForce") ->  ((LineForceProperties) -> LineForce ))
& ((className: "LinearVelocity") ->  ((LinearVelocityProperties) -> LinearVelocity ))
& ((className: "PlaneConstraint") ->  ((PlaneConstraintProperties) -> PlaneConstraint ))
& ((className: "RigidConstraint") ->  ((RigidConstraintProperties) -> RigidConstraint ))
& ((className: "RodConstraint") ->  ((RodConstraintProperties) -> RodConstraint ))
& ((className: "RopeConstraint") ->  ((RopeConstraintProperties) -> RopeConstraint ))
& ((className: "SlidingBallConstraint") ->  ((SlidingBallConstraintProperties) -> SlidingBallConstraint ))
& ((className: "CylindricalConstraint") ->  ((CylindricalConstraintProperties) -> CylindricalConstraint ))
& ((className: "PrismaticConstraint") ->  ((PrismaticConstraintProperties) -> PrismaticConstraint ))
& ((className: "SpringConstraint") ->  ((SpringConstraintProperties) -> SpringConstraint ))
& ((className: "Torque") ->  ((TorqueProperties) -> Torque ))
& ((className: "TorsionSpringConstraint") ->  ((TorsionSpringConstraintProperties) -> TorsionSpringConstraint ))
& ((className: "UniversalConstraint") ->  ((UniversalConstraintProperties) -> UniversalConstraint ))
& ((className: "VectorForce") ->  ((VectorForceProperties) -> VectorForce ))
& ((className: "FileMesh") ->  ((FileMeshProperties) -> FileMesh ))
& ((className: "SpecialMesh") ->  ((SpecialMeshProperties) -> SpecialMesh ))
& ((className: "Dialog") ->  ((DialogProperties) -> Dialog ))
& ((className: "DialogChoice") ->  ((DialogChoiceProperties) -> DialogChoice ))
& ((className: "Explosion") ->  ((ExplosionProperties) -> Explosion ))
& ((className: "FaceControls") ->  ((FaceControlsProperties) -> FaceControls ))
& ((className: "FaceInstance") ->  ((FaceInstanceProperties) -> FaceInstance ))
& ((className: "Decal") ->  ((DecalProperties) -> Decal ))
& ((className: "Texture") ->  ((TextureProperties) -> Texture ))
& ((className: "Fire") ->  ((FireProperties) -> Fire ))
& ((className: "Folder") ->  ((FolderProperties) -> Folder ))
& ((className: "ForceField") ->  ((ForceFieldProperties) -> ForceField ))
-- & ((className: "GuiBase") ->  ((GuiBaseProperties) -> GuiBase ))
-- & ((className: "GuiBase2d") ->  ((GuiBase2dProperties) -> GuiBase2d ))
-- & ((className: "GuiObject") ->  ((GuiObjectProperties) -> GuiObject ))
& ((className: "CanvasGroup") ->  ((CanvasGroupProperties) -> CanvasGroup ))
& ((className: "Frame") ->  ((FrameProperties) -> Frame ))
-- & ((className: "GuiButton") ->  ((GuiButtonProperties) -> GuiButton ))
& ((className: "ImageButton") ->  ((ImageButtonProperties) -> ImageButton ))
& ((className: "TextButton") ->  ((TextButtonProperties) -> TextButton ))
-- & ((className: "GuiLabel") ->  ((GuiLabelProperties) -> GuiLabel ))
& ((className: "ImageLabel") ->  ((ImageLabelProperties) -> ImageLabel ))
& ((className: "TextLabel") ->  ((TextLabelProperties) -> TextLabel ))
& ((className: "ScrollingFrame") ->  ((ScrollingFrameProperties) -> ScrollingFrame ))
& ((className: "TextBox") ->  ((TextBoxProperties) -> TextBox ))
& ((className: "VideoFrame") ->  ((VideoFrameProperties) -> VideoFrame ))
& ((className: "ViewportFrame") ->  ((ViewportFrameProperties) -> ViewportFrame ))
-- & ((className: "LayerCollector") ->  ((LayerCollectorProperties) -> LayerCollector ))
& ((className: "BillboardGui") ->  ((BillboardGuiProperties) -> BillboardGui ))
& ((className: "PluginGui") ->  ((PluginGuiProperties) -> PluginGui ))
& ((className: "DockWidgetPluginGui") ->  ((DockWidgetPluginGuiProperties) -> DockWidgetPluginGui ))
& ((className: "QWidgetPluginGui") ->  ((QWidgetPluginGuiProperties) -> QWidgetPluginGui ))
& ((className: "ScreenGui") ->  ((ScreenGuiProperties) -> ScreenGui ))
& ((className: "SurfaceGui") ->  ((SurfaceGuiProperties) -> SurfaceGui ))
& ((className: "GuiBase3d") ->  ((GuiBase3dProperties) -> GuiBase3d ))
-- & ((className: "InstanceAdornment") ->  ((InstanceAdornmentProperties) -> InstanceAdornment ))
& ((className: "SelectionBox") ->  ((SelectionBoxProperties) -> SelectionBox ))
-- & ((className: "PVAdornment") ->  ((PVAdornmentProperties) -> PVAdornment ))
& ((className: "HandleAdornment") ->  ((HandleAdornmentProperties) -> HandleAdornment ))
& ((className: "BoxHandleAdornment") ->  ((BoxHandleAdornmentProperties) -> BoxHandleAdornment ))
& ((className: "ConeHandleAdornment") ->  ((ConeHandleAdornmentProperties) -> ConeHandleAdornment ))
& ((className: "CylinderHandleAdornment") ->  ((CylinderHandleAdornmentProperties) -> CylinderHandleAdornment ))
& ((className: "ImageHandleAdornment") ->  ((ImageHandleAdornmentProperties) -> ImageHandleAdornment ))
& ((className: "LineHandleAdornment") ->  ((LineHandleAdornmentProperties) -> LineHandleAdornment ))
& ((className: "SphereHandleAdornment") ->  ((SphereHandleAdornmentProperties) -> SphereHandleAdornment ))
& ((className: "WireframeHandleAdornment") ->  ((WireframeHandleAdornmentProperties) -> WireframeHandleAdornment ))
& ((className: "ParabolaAdornment") ->  ((ParabolaAdornmentProperties) -> ParabolaAdornment ))
& ((className: "SelectionSphere") ->  ((SelectionSphereProperties) -> SelectionSphere ))
& ((className: "PartAdornment") ->  ((PartAdornmentProperties) -> PartAdornment ))
& ((className: "HandlesBase") ->  ((HandlesBaseProperties) -> HandlesBase ))
& ((className: "ArcHandles") ->  ((ArcHandlesProperties) -> ArcHandles ))
& ((className: "Handles") ->  ((HandlesProperties) -> Handles ))
& ((className: "SurfaceSelection") ->  ((SurfaceSelectionProperties) -> SurfaceSelection ))
& ((className: "SelectionLasso") ->  ((SelectionLassoProperties) -> SelectionLasso ))
& ((className: "Highlight") ->  ((HighlightProperties) -> Highlight ))
& ((className: "Humanoid") ->  ((HumanoidProperties) -> Humanoid ))
& ((className: "HumanoidDescription") ->  ((HumanoidDescriptionProperties) -> HumanoidDescription ))
& ((className: "JointInstance") ->  ((JointInstanceProperties) -> JointInstance ))
& ((className: "DynamicRotate") ->  ((DynamicRotateProperties) -> DynamicRotate ))
& ((className: "Motor") ->  ((MotorProperties) -> Motor ))
& ((className: "Motor6D") ->  ((Motor6DProperties) -> Motor6D ))
& ((className: "Weld") ->  ((WeldProperties) -> Weld ))
& ((className: "Light") ->  ((LightProperties) -> Light ))
& ((className: "PointLight") ->  ((PointLightProperties) -> PointLight ))
& ((className: "SpotLight") ->  ((SpotLightProperties) -> SpotLight ))
& ((className: "SurfaceLight") ->  ((SurfaceLightProperties) -> SurfaceLight ))
& ((className: "Lighting") ->  ((LightingProperties) -> Lighting ))
& ((className: "LocalizationTable") ->  ((LocalizationTableProperties) -> LocalizationTable ))
& ((className: "MaterialService") ->  ((MaterialServiceProperties) -> MaterialService ))
& ((className: "MaterialVariant") ->  ((MaterialVariantProperties) -> MaterialVariant ))
& ((className: "Mouse") ->  ((MouseProperties) -> Mouse ))
-- & ((className: "PVInstance") ->  ((PVInstanceProperties) -> PVInstance ))
& ((className: "BasePart") ->  ((BasePartProperties) -> BasePart ))
& ((className: "CornerWedgePart") ->  ((CornerWedgePartProperties) -> CornerWedgePart ))
& ((className: "FormFactorPart") ->  ((FormFactorPartProperties) -> FormFactorPart ))
& ((className: "Part") ->  ((PartProperties) -> Part ))
& ((className: "Platform") ->  ((PlatformProperties) -> Platform ))
& ((className: "Seat") ->  ((SeatProperties) -> Seat ))
& ((className: "SpawnLocation") ->  ((SpawnLocationProperties) -> SpawnLocation ))
& ((className: "WedgePart") ->  ((WedgePartProperties) -> WedgePart ))
& ((className: "TrussPart") ->  ((TrussPartProperties) -> TrussPart ))
& ((className: "VehicleSeat") ->  ((VehicleSeatProperties) -> VehicleSeat ))
& ((className: "Model") ->  ((ModelProperties) -> Model ))
& ((className: "Actor") ->  ((ActorProperties) -> Actor ))
-- & ((className: "WorldRoot") ->  ((WorldRootProperties) -> WorldRoot ))
-- & ((className: "WorldModel") ->  ((WorldModelProperties) -> WorldModel ))
& ((className: "ParticleEmitter") ->  ((ParticleEmitterProperties) -> ParticleEmitter ))
& ((className: "Path") ->  ((PathProperties) -> Path ))
& ((className: "PathfindingLink") ->  ((PathfindingLinkProperties) -> PathfindingLink ))
& ((className: "PathfindingModifier") ->  ((PathfindingModifierProperties) -> PathfindingModifier ))
& ((className: "Player") ->  ((PlayerProperties) -> Player ))
& ((className: "Players") ->  ((PlayersProperties) -> Players ))
& ((className: "PluginAction") ->  ((PluginActionProperties) -> PluginAction ))
& ((className: "PluginMenu") ->  ((PluginMenuProperties) -> PluginMenu ))
& ((className: "PluginToolbar") ->  ((PluginToolbarProperties) -> PluginToolbar ))
& ((className: "PluginToolbarButton") ->  ((PluginToolbarButtonProperties) -> PluginToolbarButton ))
& ((className: "PostEffect") ->  ((PostEffectProperties) -> PostEffect ))
& ((className: "BloomEffect") ->  ((BloomEffectProperties) -> BloomEffect ))
& ((className: "BlurEffect") ->  ((BlurEffectProperties) -> BlurEffect ))
& ((className: "ColorCorrectionEffect") ->  ((ColorCorrectionEffectProperties) -> ColorCorrectionEffect ))
& ((className: "DepthOfFieldEffect") ->  ((DepthOfFieldEffectProperties) -> DepthOfFieldEffect ))
& ((className: "SunRaysEffect") ->  ((SunRaysEffectProperties) -> SunRaysEffect ))
& ((className: "RemoteEvent") ->  ((RemoteEventProperties) -> RemoteEvent ))
& ((className: "RemoteFunction") ->  ((RemoteFunctionProperties) -> RemoteFunction ))
& ((className: "Sky") ->  ((SkyProperties) -> Sky ))
& ((className: "Smoke") ->  ((SmokeProperties) -> Smoke ))
& ((className: "Sound") ->  ((SoundProperties) -> Sound ))
-- & ((className: "SoundEffect") ->  ((SoundEffectProperties) -> SoundEffect ))
& ((className: "AssetSoundEffect") ->  ((AssetSoundEffectProperties) -> AssetSoundEffect ))
& ((className: "ChorusSoundEffect") ->  ((ChorusSoundEffectProperties) -> ChorusSoundEffect ))
& ((className: "CompressorSoundEffect") ->  ((CompressorSoundEffectProperties) -> CompressorSoundEffect ))
& ((className: "CustomSoundEffect") ->  ((CustomSoundEffectProperties) -> CustomSoundEffect ))
& ((className: "ChannelSelectorSoundEffect") ->  ((ChannelSelectorSoundEffectProperties) -> ChannelSelectorSoundEffect ))
& ((className: "DistortionSoundEffect") ->  ((DistortionSoundEffectProperties) -> DistortionSoundEffect ))
& ((className: "EchoSoundEffect") ->  ((EchoSoundEffectProperties) -> EchoSoundEffect ))
& ((className: "EqualizerSoundEffect") ->  ((EqualizerSoundEffectProperties) -> EqualizerSoundEffect ))
& ((className: "FlangeSoundEffect") ->  ((FlangeSoundEffectProperties) -> FlangeSoundEffect ))
& ((className: "PitchShiftSoundEffect") ->  ((PitchShiftSoundEffectProperties) -> PitchShiftSoundEffect ))
& ((className: "ReverbSoundEffect") ->  ((ReverbSoundEffectProperties) -> ReverbSoundEffect ))
& ((className: "TremoloSoundEffect") ->  ((TremoloSoundEffectProperties) -> TremoloSoundEffect ))
& ((className: "SoundGroup") ->  ((SoundGroupProperties) -> SoundGroup ))
& ((className: "Sparkles") ->  ((SparklesProperties) -> Sparkles ))
& ((className: "SurfaceAppearance") ->  ((SurfaceAppearanceProperties) -> SurfaceAppearance ))
& ((className: "Team") ->  ((TeamProperties) -> Team ))
& ((className: "Trail") ->  ((TrailProperties) -> Trail ))
-- & ((className: "UIBase") ->  ((UIBaseProperties) -> UIBase ))
-- & ((className: "UIComponent") ->  ((UIComponentProperties) -> UIComponent ))
-- & ((className: "UIConstraint") ->  ((UIConstraintProperties) -> UIConstraint ))
& ((className: "UIAspectRatioConstraint") ->  ((UIAspectRatioConstraintProperties) -> UIAspectRatioConstraint ))
& ((className: "UISizeConstraint") ->  ((UISizeConstraintProperties) -> UISizeConstraint ))
& ((className: "UITextSizeConstraint") ->  ((UITextSizeConstraintProperties) -> UITextSizeConstraint ))
& ((className: "UICorner") ->  ((UICornerProperties) -> UICorner ))
& ((className: "UIGradient") ->  ((UIGradientProperties) -> UIGradient ))
& ((className: "UILayout") ->  ((UILayoutProperties) -> UILayout ))
& ((className: "UIGridStyleLayout") ->  ((UIGridStyleLayoutProperties) -> UIGridStyleLayout ))
& ((className: "UIGridLayout") ->  ((UIGridLayoutProperties) -> UIGridLayout ))
& ((className: "UIListLayout") ->  ((UIListLayoutProperties) -> UIListLayout ))
& ((className: "UIPageLayout") ->  ((UIPageLayoutProperties) -> UIPageLayout ))
& ((className: "UITableLayout") ->  ((UITableLayoutProperties) -> UITableLayout ))
& ((className: "UIPadding") ->  ((UIPaddingProperties) -> UIPadding ))
& ((className: "UIScale") ->  ((UIScaleProperties) -> UIScale ))
& ((className: "UIStroke") ->  ((UIStrokeProperties) -> UIStroke ))
-- & ((className: "ValueBase") ->  ((ValueBaseProperties) -> ValueBase ))
& ((className: "BinaryStringValue") ->  ((BinaryStringValueProperties) -> BinaryStringValue ))
& ((className: "BoolValue") ->  ((BoolValueProperties) -> BoolValue ))
& ((className: "BrickColorValue") ->  ((BrickColorValueProperties) -> BrickColorValue ))
& ((className: "CFrameValue") ->  ((CFrameValueProperties) -> CFrameValue ))
& ((className: "Color3Value") ->  ((Color3ValueProperties) -> Color3Value ))
& ((className: "IntValue") ->  ((IntValueProperties) -> IntValue ))
& ((className: "NumberValue") ->  ((NumberValueProperties) -> NumberValue ))
& ((className: "ObjectValue") ->  ((ObjectValueProperties) -> ObjectValue ))
& ((className: "RayValue") ->  ((RayValueProperties) -> RayValue ))
& ((className: "StringValue") ->  ((StringValueProperties) -> StringValue ))
& ((className: "Vector3Value") ->  ((Vector3ValueProperties) -> Vector3Value ))
& ((className: "WeldConstraint") ->  ((WeldConstraintProperties) -> WeldConstraint ))
-- ((Instance) ->  ((InstanceProperties) -> Instance))
-- & ((Accoutrement) ->  ((AccoutrementProperties) -> Accoutrement ))
export type ClassConstructor = ((Accessory) ->  ((AccessoryProperties) -> Accessory ))
& ((Animation) ->  ((AnimationProperties) -> Animation ))
& ((AnimationTrack) ->  ((AnimationTrackProperties) -> AnimationTrack ))
& ((Atmosphere) ->  ((AtmosphereProperties) -> Atmosphere ))
& ((Attachment) ->  ((AttachmentProperties) -> Attachment ))
& ((Bone) ->  ((BoneProperties) -> Bone ))
-- & ((BackpackItem) ->  ((BackpackItemProperties) -> BackpackItem ))
& ((Tool) ->  ((ToolProperties) -> Tool ))
& ((BaseWrap) ->  ((BaseWrapProperties) -> BaseWrap ))
& ((WrapLayer) ->  ((WrapLayerProperties) -> WrapLayer ))
& ((WrapTarget) ->  ((WrapTargetProperties) -> WrapTarget ))
& ((Beam) ->  ((BeamProperties) -> Beam ))
& ((BindableEvent) ->  ((BindableEventProperties) -> BindableEvent ))
& ((BindableFunction) ->  ((BindableFunctionProperties) -> BindableFunction ))
& ((BodyMover) ->  ((BodyMoverProperties) -> BodyMover ))
& ((BodyAngularVelocity) ->  ((BodyAngularVelocityProperties) -> BodyAngularVelocity ))
& ((BodyForce) ->  ((BodyForceProperties) -> BodyForce ))
& ((BodyGyro) ->  ((BodyGyroProperties) -> BodyGyro ))
& ((BodyPosition) ->  ((BodyPositionProperties) -> BodyPosition ))
& ((BodyThrust) ->  ((BodyThrustProperties) -> BodyThrust ))
& ((BodyVelocity) ->  ((BodyVelocityProperties) -> BodyVelocity ))
& ((Camera) ->  ((CameraProperties) -> Camera ))
& ((CharacterAppearance) ->  ((CharacterAppearanceProperties) -> CharacterAppearance ))
& ((BodyColors) ->  ((BodyColorsProperties) -> BodyColors ))
& ((Clothing) ->  ((ClothingProperties) -> Clothing ))
& ((Pants) ->  ((PantsProperties) -> Pants ))
& ((Shirt) ->  ((ShirtProperties) -> Shirt ))
& ((ShirtGraphic) ->  ((ShirtGraphicProperties) -> ShirtGraphic ))
& ((ClickDetector) ->  ((ClickDetectorProperties) -> ClickDetector ))
& ((Clouds) ->  ((CloudsProperties) -> Clouds ))
& ((Configuration) ->  ((ConfigurationProperties) -> Configuration ))
-- & ((Constraint) ->  ((ConstraintProperties) -> Constraint ))
& ((AlignOrientation) ->  ((AlignOrientationProperties) -> AlignOrientation ))
& ((AlignPosition) ->  ((AlignPositionProperties) -> AlignPosition ))
& ((AngularVelocity) ->  ((AngularVelocityProperties) -> AngularVelocity ))
& ((BallSocketConstraint) ->  ((BallSocketConstraintProperties) -> BallSocketConstraint ))
& ((HingeConstraint) ->  ((HingeConstraintProperties) -> HingeConstraint ))
& ((LineForce) ->  ((LineForceProperties) -> LineForce ))
& ((LinearVelocity) ->  ((LinearVelocityProperties) -> LinearVelocity ))
& ((PlaneConstraint) ->  ((PlaneConstraintProperties) -> PlaneConstraint ))
& ((RigidConstraint) ->  ((RigidConstraintProperties) -> RigidConstraint ))
& ((RodConstraint) ->  ((RodConstraintProperties) -> RodConstraint ))
& ((RopeConstraint) ->  ((RopeConstraintProperties) -> RopeConstraint ))
& ((SlidingBallConstraint) ->  ((SlidingBallConstraintProperties) -> SlidingBallConstraint ))
& ((CylindricalConstraint) ->  ((CylindricalConstraintProperties) -> CylindricalConstraint ))
& ((PrismaticConstraint) ->  ((PrismaticConstraintProperties) -> PrismaticConstraint ))
& ((SpringConstraint) ->  ((SpringConstraintProperties) -> SpringConstraint ))
& ((Torque) ->  ((TorqueProperties) -> Torque ))
& ((TorsionSpringConstraint) ->  ((TorsionSpringConstraintProperties) -> TorsionSpringConstraint ))
& ((UniversalConstraint) ->  ((UniversalConstraintProperties) -> UniversalConstraint ))
& ((VectorForce) ->  ((VectorForceProperties) -> VectorForce ))
& ((FileMesh) ->  ((FileMeshProperties) -> FileMesh ))
& ((SpecialMesh) ->  ((SpecialMeshProperties) -> SpecialMesh ))
& ((Dialog) ->  ((DialogProperties) -> Dialog ))
& ((DialogChoice) ->  ((DialogChoiceProperties) -> DialogChoice ))
& ((Explosion) ->  ((ExplosionProperties) -> Explosion ))
& ((FaceControls) ->  ((FaceControlsProperties) -> FaceControls ))
& ((FaceInstance) ->  ((FaceInstanceProperties) -> FaceInstance ))
& ((Decal) ->  ((DecalProperties) -> Decal ))
& ((Texture) ->  ((TextureProperties) -> Texture ))
& ((Fire) ->  ((FireProperties) -> Fire ))
& ((Folder) ->  ((FolderProperties) -> Folder ))
& ((ForceField) ->  ((ForceFieldProperties) -> ForceField ))
-- & ((GuiBase) ->  ((GuiBaseProperties) -> GuiBase ))
-- & ((GuiBase2d) ->  ((GuiBase2dProperties) -> GuiBase2d ))
-- & ((GuiObject) ->  ((GuiObjectProperties) -> GuiObject ))
& ((CanvasGroup) ->  ((CanvasGroupProperties) -> CanvasGroup ))
& ((Frame) ->  ((FrameProperties) -> Frame ))
-- & ((GuiButton) ->  ((GuiButtonProperties) -> GuiButton ))
& ((ImageButton) ->  ((ImageButtonProperties) -> ImageButton ))
& ((TextButton) ->  ((TextButtonProperties) -> TextButton ))
-- & ((GuiLabel) ->  ((GuiLabelProperties) -> GuiLabel ))
& ((ImageLabel) ->  ((ImageLabelProperties) -> ImageLabel ))
& ((TextLabel) ->  ((TextLabelProperties) -> TextLabel ))
& ((ScrollingFrame) ->  ((ScrollingFrameProperties) -> ScrollingFrame ))
& ((TextBox) ->  ((TextBoxProperties) -> TextBox ))
& ((VideoFrame) ->  ((VideoFrameProperties) -> VideoFrame ))
& ((ViewportFrame) ->  ((ViewportFrameProperties) -> ViewportFrame ))
-- & ((LayerCollector) ->  ((LayerCollectorProperties) -> LayerCollector ))
& ((BillboardGui) ->  ((BillboardGuiProperties) -> BillboardGui ))
& ((PluginGui) ->  ((PluginGuiProperties) -> PluginGui ))
& ((DockWidgetPluginGui) ->  ((DockWidgetPluginGuiProperties) -> DockWidgetPluginGui ))
& ((QWidgetPluginGui) ->  ((QWidgetPluginGuiProperties) -> QWidgetPluginGui ))
& ((ScreenGui) ->  ((ScreenGuiProperties) -> ScreenGui ))
& ((SurfaceGui) ->  ((SurfaceGuiProperties) -> SurfaceGui ))
& ((GuiBase3d) ->  ((GuiBase3dProperties) -> GuiBase3d ))
-- & ((InstanceAdornment) ->  ((InstanceAdornmentProperties) -> InstanceAdornment ))
& ((SelectionBox) ->  ((SelectionBoxProperties) -> SelectionBox ))
-- & ((PVAdornment) ->  ((PVAdornmentProperties) -> PVAdornment ))
& ((HandleAdornment) ->  ((HandleAdornmentProperties) -> HandleAdornment ))
& ((BoxHandleAdornment) ->  ((BoxHandleAdornmentProperties) -> BoxHandleAdornment ))
& ((ConeHandleAdornment) ->  ((ConeHandleAdornmentProperties) -> ConeHandleAdornment ))
& ((CylinderHandleAdornment) ->  ((CylinderHandleAdornmentProperties) -> CylinderHandleAdornment ))
& ((ImageHandleAdornment) ->  ((ImageHandleAdornmentProperties) -> ImageHandleAdornment ))
& ((LineHandleAdornment) ->  ((LineHandleAdornmentProperties) -> LineHandleAdornment ))
& ((SphereHandleAdornment) ->  ((SphereHandleAdornmentProperties) -> SphereHandleAdornment ))
& ((WireframeHandleAdornment) ->  ((WireframeHandleAdornmentProperties) -> WireframeHandleAdornment ))
& ((ParabolaAdornment) ->  ((ParabolaAdornmentProperties) -> ParabolaAdornment ))
& ((SelectionSphere) ->  ((SelectionSphereProperties) -> SelectionSphere ))
& ((PartAdornment) ->  ((PartAdornmentProperties) -> PartAdornment ))
& ((HandlesBase) ->  ((HandlesBaseProperties) -> HandlesBase ))
& ((ArcHandles) ->  ((ArcHandlesProperties) -> ArcHandles ))
& ((Handles) ->  ((HandlesProperties) -> Handles ))
& ((SurfaceSelection) ->  ((SurfaceSelectionProperties) -> SurfaceSelection ))
& ((SelectionLasso) ->  ((SelectionLassoProperties) -> SelectionLasso ))
& ((Highlight) ->  ((HighlightProperties) -> Highlight ))
& ((Humanoid) ->  ((HumanoidProperties) -> Humanoid ))
& ((HumanoidDescription) ->  ((HumanoidDescriptionProperties) -> HumanoidDescription ))
& ((JointInstance) ->  ((JointInstanceProperties) -> JointInstance ))
& ((DynamicRotate) ->  ((DynamicRotateProperties) -> DynamicRotate ))
& ((Motor) ->  ((MotorProperties) -> Motor ))
& ((Motor6D) ->  ((Motor6DProperties) -> Motor6D ))
& ((Weld) ->  ((WeldProperties) -> Weld ))
& ((Light) ->  ((LightProperties) -> Light ))
& ((PointLight) ->  ((PointLightProperties) -> PointLight ))
& ((SpotLight) ->  ((SpotLightProperties) -> SpotLight ))
& ((SurfaceLight) ->  ((SurfaceLightProperties) -> SurfaceLight ))
& ((Lighting) ->  ((LightingProperties) -> Lighting ))
& ((LocalizationTable) ->  ((LocalizationTableProperties) -> LocalizationTable ))
& ((MaterialService) ->  ((MaterialServiceProperties) -> MaterialService ))
& ((MaterialVariant) ->  ((MaterialVariantProperties) -> MaterialVariant ))
& ((Mouse) ->  ((MouseProperties) -> Mouse ))
-- & ((PVInstance) ->  ((PVInstanceProperties) -> PVInstance ))
& ((BasePart) ->  ((BasePartProperties) -> BasePart ))
& ((CornerWedgePart) ->  ((CornerWedgePartProperties) -> CornerWedgePart ))
& ((FormFactorPart) ->  ((FormFactorPartProperties) -> FormFactorPart ))
& ((Part) ->  ((PartProperties) -> Part ))
& ((Platform) ->  ((PlatformProperties) -> Platform ))
& ((Seat) ->  ((SeatProperties) -> Seat ))
& ((SpawnLocation) ->  ((SpawnLocationProperties) -> SpawnLocation ))
& ((WedgePart) ->  ((WedgePartProperties) -> WedgePart ))
& ((TrussPart) ->  ((TrussPartProperties) -> TrussPart ))
& ((VehicleSeat) ->  ((VehicleSeatProperties) -> VehicleSeat ))
& ((Model) ->  ((ModelProperties) -> Model ))
& ((Actor) ->  ((ActorProperties) -> Actor ))
-- & ((WorldRoot) ->  ((WorldRootProperties) -> WorldRoot ))
-- & ((WorldModel) ->  ((WorldModelProperties) -> WorldModel ))
& ((ParticleEmitter) ->  ((ParticleEmitterProperties) -> ParticleEmitter ))
& ((Path) ->  ((PathProperties) -> Path ))
& ((PathfindingLink) ->  ((PathfindingLinkProperties) -> PathfindingLink ))
& ((PathfindingModifier) ->  ((PathfindingModifierProperties) -> PathfindingModifier ))
& ((Player) ->  ((PlayerProperties) -> Player ))
& ((Players) ->  ((PlayersProperties) -> Players ))
& ((PluginAction) ->  ((PluginActionProperties) -> PluginAction ))
& ((PluginMenu) ->  ((PluginMenuProperties) -> PluginMenu ))
& ((PluginToolbar) ->  ((PluginToolbarProperties) -> PluginToolbar ))
& ((PluginToolbarButton) ->  ((PluginToolbarButtonProperties) -> PluginToolbarButton ))
& ((PostEffect) ->  ((PostEffectProperties) -> PostEffect ))
& ((BloomEffect) ->  ((BloomEffectProperties) -> BloomEffect ))
& ((BlurEffect) ->  ((BlurEffectProperties) -> BlurEffect ))
& ((ColorCorrectionEffect) ->  ((ColorCorrectionEffectProperties) -> ColorCorrectionEffect ))
& ((DepthOfFieldEffect) ->  ((DepthOfFieldEffectProperties) -> DepthOfFieldEffect ))
& ((SunRaysEffect) ->  ((SunRaysEffectProperties) -> SunRaysEffect ))
& ((RemoteEvent) ->  ((RemoteEventProperties) -> RemoteEvent ))
& ((RemoteFunction) ->  ((RemoteFunctionProperties) -> RemoteFunction ))
& ((Sky) ->  ((SkyProperties) -> Sky ))
& ((Smoke) ->  ((SmokeProperties) -> Smoke ))
& ((Sound) ->  ((SoundProperties) -> Sound ))
-- & ((SoundEffect) ->  ((SoundEffectProperties) -> SoundEffect ))
& ((AssetSoundEffect) ->  ((AssetSoundEffectProperties) -> AssetSoundEffect ))
& ((ChorusSoundEffect) ->  ((ChorusSoundEffectProperties) -> ChorusSoundEffect ))
& ((CompressorSoundEffect) ->  ((CompressorSoundEffectProperties) -> CompressorSoundEffect ))
& ((CustomSoundEffect) ->  ((CustomSoundEffectProperties) -> CustomSoundEffect ))
& ((ChannelSelectorSoundEffect) ->  ((ChannelSelectorSoundEffectProperties) -> ChannelSelectorSoundEffect ))
& ((DistortionSoundEffect) ->  ((DistortionSoundEffectProperties) -> DistortionSoundEffect ))
& ((EchoSoundEffect) ->  ((EchoSoundEffectProperties) -> EchoSoundEffect ))
& ((EqualizerSoundEffect) ->  ((EqualizerSoundEffectProperties) -> EqualizerSoundEffect ))
& ((FlangeSoundEffect) ->  ((FlangeSoundEffectProperties) -> FlangeSoundEffect ))
& ((PitchShiftSoundEffect) ->  ((PitchShiftSoundEffectProperties) -> PitchShiftSoundEffect ))
& ((ReverbSoundEffect) ->  ((ReverbSoundEffectProperties) -> ReverbSoundEffect ))
& ((TremoloSoundEffect) ->  ((TremoloSoundEffectProperties) -> TremoloSoundEffect ))
& ((SoundGroup) ->  ((SoundGroupProperties) -> SoundGroup ))
& ((Sparkles) ->  ((SparklesProperties) -> Sparkles ))
& ((SurfaceAppearance) ->  ((SurfaceAppearanceProperties) -> SurfaceAppearance ))
& ((Team) ->  ((TeamProperties) -> Team ))
& ((Trail) ->  ((TrailProperties) -> Trail ))
-- & ((UIBase) ->  ((UIBaseProperties) -> UIBase ))
-- & ((UIComponent) ->  ((UIComponentProperties) -> UIComponent ))
-- & ((UIConstraint) ->  ((UIConstraintProperties) -> UIConstraint ))
& ((UIAspectRatioConstraint) ->  ((UIAspectRatioConstraintProperties) -> UIAspectRatioConstraint ))
& ((UISizeConstraint) ->  ((UISizeConstraintProperties) -> UISizeConstraint ))
& ((UITextSizeConstraint) ->  ((UITextSizeConstraintProperties) -> UITextSizeConstraint ))
& ((UICorner) ->  ((UICornerProperties) -> UICorner ))
& ((UIGradient) ->  ((UIGradientProperties) -> UIGradient ))
& ((UILayout) ->  ((UILayoutProperties) -> UILayout ))
& ((UIGridStyleLayout) ->  ((UIGridStyleLayoutProperties) -> UIGridStyleLayout ))
& ((UIGridLayout) ->  ((UIGridLayoutProperties) -> UIGridLayout ))
& ((UIListLayout) ->  ((UIListLayoutProperties) -> UIListLayout ))
& ((UIPageLayout) ->  ((UIPageLayoutProperties) -> UIPageLayout ))
& ((UITableLayout) ->  ((UITableLayoutProperties) -> UITableLayout ))
& ((UIPadding) ->  ((UIPaddingProperties) -> UIPadding ))
& ((UIScale) ->  ((UIScaleProperties) -> UIScale ))
& ((UIStroke) ->  ((UIStrokeProperties) -> UIStroke ))
-- & ((ValueBase) ->  ((ValueBaseProperties) -> ValueBase ))
& ((BinaryStringValue) ->  ((BinaryStringValueProperties) -> BinaryStringValue ))
& ((BoolValue) ->  ((BoolValueProperties) -> BoolValue ))
& ((BrickColorValue) ->  ((BrickColorValueProperties) -> BrickColorValue ))
& ((CFrameValue) ->  ((CFrameValueProperties) -> CFrameValue ))
& ((Color3Value) ->  ((Color3ValueProperties) -> Color3Value ))
& ((IntValue) ->  ((IntValueProperties) -> IntValue ))
& ((NumberValue) ->  ((NumberValueProperties) -> NumberValue ))
& ((ObjectValue) ->  ((ObjectValueProperties) -> ObjectValue ))
& ((RayValue) ->  ((RayValueProperties) -> RayValue ))
& ((StringValue) ->  ((StringValueProperties) -> StringValue ))
& ((Vector3Value) ->  ((Vector3ValueProperties) -> Vector3Value ))
& ((WeldConstraint) ->  ((WeldConstraintProperties) -> WeldConstraint ))


return {}