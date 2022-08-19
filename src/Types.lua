
local StateFolder = script.Parent.State
local State = require(StateFolder.State)

local Symbol = require(script.Parent.Symbol)

type State<T> = State.State<T>
type ParameterEntry<T> = (State<T> | T)?
type Symbol = Symbol.Symbol


type InstanceProperties = {
	Archivable: ParameterEntry<boolean>?,
	ClassName: ParameterEntry<string>?,
	Name: ParameterEntry<string>?,
	Parent: ParameterEntry<Instance>?,
	Children: {Instance}?,
	Attributes: {[string]: ParameterEntry<
		string | 
		boolean | 
		number |
		UDim |
		UDim2 |
		BrickColor |
		Color3 |
		Vector2 |
		Vector3 |
		NumberSequence |
		ColorSequence |
		NumberRange |
		Rect | nil
	>}?,
	[Symbol]: ((...any) -> any?),
			
}

type AccoutrementProperties = InstanceProperties & {
	AttachmentForward: ParameterEntry<Vector3>?,
	AttachmentPoint: ParameterEntry<CFrame>?,
	AttachmentPos: ParameterEntry<Vector3>?,
	AttachmentRight: ParameterEntry<Vector3>?,
	AttachmentUp: ParameterEntry<Vector3>?,
}

type AccessoryProperties = AccoutrementProperties & {
}

type HatProperties = AccoutrementProperties & {
}

type AdServiceProperties = InstanceProperties & {
}

type AdvancedDraggerProperties = InstanceProperties & {
}

type AnalyticsServiceProperties = InstanceProperties & {
}

type AnimationProperties = InstanceProperties & {
	AnimationId: ParameterEntry<string>?,
}

type AnimationClipProperties = InstanceProperties & {
	Loop: ParameterEntry<boolean>?,
	Priority: ParameterEntry<Enum.AnimationPriority>?,
}

type CurveAnimationProperties = AnimationClipProperties & {
}

type KeyframeSequenceProperties = AnimationClipProperties & {
}

type AnimationClipProviderProperties = InstanceProperties & {
}

type AnimationControllerProperties = InstanceProperties & {
}

type AnimationFromVideoCreatorServiceProperties = InstanceProperties & {
}

type AnimationFromVideoCreatorStudioServiceProperties = InstanceProperties & {
}

type AnimationRigDataProperties = InstanceProperties & {
}

type AnimationStreamTrackProperties = InstanceProperties & {
	IsPlaying: ParameterEntry<boolean>?,
	Priority: ParameterEntry<Enum.AnimationPriority>?,
	WeightCurrent: ParameterEntry<number>?,
	WeightTarget: ParameterEntry<number>?,
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

type AnimatorProperties = InstanceProperties & {
}

type AppUpdateServiceProperties = InstanceProperties & {
}

type AssetCounterServiceProperties = InstanceProperties & {
}

type AssetDeliveryProxyProperties = InstanceProperties & {
}

type AssetImportServiceProperties = InstanceProperties & {
}

type AssetImportSessionProperties = InstanceProperties & {
}

type AssetManagerServiceProperties = InstanceProperties & {
}

type AssetServiceProperties = InstanceProperties & {
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

type AvatarEditorServiceProperties = InstanceProperties & {
}

type AvatarImportServiceProperties = InstanceProperties & {
}

type BackpackProperties = InstanceProperties & {
}

type BackpackItemProperties = InstanceProperties & {
	TextureId: ParameterEntry<string>?,
}

type HopperBinProperties = BackpackItemProperties & {
	Active: ParameterEntry<boolean>?,
	BinType: ParameterEntry<Enum.BinType>?,
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

type FlagProperties = ToolProperties & {
	TeamColor: ParameterEntry<BrickColor>?,
}

type BadgeServiceProperties = InstanceProperties & {
}

type BasePlayerGuiProperties = InstanceProperties & {
}

type CoreGuiProperties = BasePlayerGuiProperties & {
	Version: ParameterEntry<number>?,
}

type PlayerGuiProperties = BasePlayerGuiProperties & {
	CurrentScreenOrientation: ParameterEntry<Enum.ScreenOrientation>?,
	ScreenOrientation: ParameterEntry<Enum.ScreenOrientation>?,
	SelectionImageObject: ParameterEntry<GuiObject>?,
}

type StarterGuiProperties = BasePlayerGuiProperties & {
	ScreenOrientation: ParameterEntry<Enum.ScreenOrientation>?,
	ShowDevelopmentGui: ParameterEntry<boolean>?,
}

type BaseWrapProperties = InstanceProperties & {
	CageOriginWorld: ParameterEntry<CFrame>?,
	ImportOriginWorld: ParameterEntry<CFrame>?,
}

type WrapLayerProperties = BaseWrapProperties & {
	AutoSkin: ParameterEntry<Enum.WrapLayerAutoSkin>?,
	Enabled: ParameterEntry<boolean>?,
	Order: ParameterEntry<number>?,
	Puffiness: ParameterEntry<number>?,
	ReferenceOriginWorld: ParameterEntry<CFrame>?,
}

type WrapTargetProperties = BaseWrapProperties & {
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

type BindableEventProperties = InstanceProperties & {
}

type BindableFunctionProperties = InstanceProperties & {
}

type BodyMoverProperties = InstanceProperties & {
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

type RocketPropulsionProperties = BodyMoverProperties & {
	CartoonFactor: ParameterEntry<number>?,
	MaxSpeed: ParameterEntry<number>?,
	MaxThrust: ParameterEntry<number>?,
	MaxTorque: ParameterEntry<Vector3>?,
	Target: ParameterEntry<BasePart>?,
	TargetOffset: ParameterEntry<Vector3>?,
	TargetRadius: ParameterEntry<number>?,
	ThrustD: ParameterEntry<number>?,
	ThrustP: ParameterEntry<number>?,
	TurnD: ParameterEntry<number>?,
	TurnP: ParameterEntry<number>?,
}

type BreakpointProperties = InstanceProperties & {
}

type BreakpointManagerProperties = InstanceProperties & {
}

type BrowserServiceProperties = InstanceProperties & {
}

type BulkImportServiceProperties = InstanceProperties & {
}

type CacheableContentProviderProperties = InstanceProperties & {
}

type HSRDataContentProviderProperties = CacheableContentProviderProperties & {
}

type MeshContentProviderProperties = CacheableContentProviderProperties & {
}

type SolidModelContentProviderProperties = CacheableContentProviderProperties & {
}

type CalloutServiceProperties = InstanceProperties & {
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

type ChangeHistoryServiceProperties = InstanceProperties & {
}

type CharacterAppearanceProperties = InstanceProperties & {
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

type CharacterMeshProperties = CharacterAppearanceProperties & {
	BaseTextureId: ParameterEntry<number>?,
	BodyPart: ParameterEntry<Enum.BodyPart>?,
	MeshId: ParameterEntry<number>?,
	OverlayTextureId: ParameterEntry<number>?,
}

type ClothingProperties = CharacterAppearanceProperties & {
	Color3: ParameterEntry<Color3>?,
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

type SkinProperties = CharacterAppearanceProperties & {
	SkinColor: ParameterEntry<BrickColor>?,
}

type ChatProperties = InstanceProperties & {
	BubbleChatEnabled: ParameterEntry<boolean>?,
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

type ClusterPacketCacheProperties = InstanceProperties & {
}

type CollectionServiceProperties = InstanceProperties & {
}

type CommandInstanceProperties = InstanceProperties & {
	AllowGUIAccessPoints: ParameterEntry<boolean>?,
	DisplayName: ParameterEntry<string>?,
	Name: ParameterEntry<string>?,
}

type CommandServiceProperties = InstanceProperties & {
}

type ConfigurationProperties = InstanceProperties & {
}

type ConfigureServerServiceProperties = InstanceProperties & {
}

type ConstraintProperties = InstanceProperties & {
	Active: ParameterEntry<boolean>?,
	Attachment0: ParameterEntry<Attachment>?,
	Attachment1: ParameterEntry<Attachment>?,
	Color: ParameterEntry<BrickColor>?,
	Enabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
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

type PlaneConstraintProperties = ConstraintProperties & {
}

type PlaneProperties = PlaneConstraintProperties & {
}

type RigidConstraintProperties = ConstraintProperties & {
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

type SlidingBallConstraintProperties = ConstraintProperties & {
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

type PrismaticConstraintProperties = SlidingBallConstraintProperties & {
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

type ContentProviderProperties = InstanceProperties & {
	BaseUrl: ParameterEntry<string>?,
	RequestQueueSize: ParameterEntry<number>?,
}

type ContextActionServiceProperties = InstanceProperties & {
}

type ControllerProperties = InstanceProperties & {
}

type HumanoidControllerProperties = ControllerProperties & {
}

type SkateboardControllerProperties = ControllerProperties & {
	Steer: ParameterEntry<number>?,
	Throttle: ParameterEntry<number>?,
}

type VehicleControllerProperties = ControllerProperties & {
}

type ControllerBaseProperties = InstanceProperties & {
	MoveSpeedFactor: ParameterEntry<number>?,
	RigidityEnabled: ParameterEntry<boolean>?,
}

type AirControllerProperties = ControllerBaseProperties & {
	CancelAirMomentum: ParameterEntry<boolean>?,
	MoveMaxForce: ParameterEntry<number>?,
	OrientationMaxTorque: ParameterEntry<number>?,
	OrientationSpeed: ParameterEntry<number>?,
	VectorForce: ParameterEntry<Vector3>?,
}

type ClimbControllerProperties = ControllerBaseProperties & {
	AccelerationTime: ParameterEntry<number>?,
	MoveMaxForce: ParameterEntry<number>?,
	OrientationMaxTorque: ParameterEntry<number>?,
	OrientationSpeed: ParameterEntry<number>?,
}

type GroundControllerProperties = ControllerBaseProperties & {
	AccelerationLean: ParameterEntry<number>?,
	AccelerationTime: ParameterEntry<number>?,
	AlignSpeed: ParameterEntry<number>?,
	AlignTorque: ParameterEntry<number>?,
	DecelerationTime: ParameterEntry<number>?,
	Friction: ParameterEntry<number>?,
	FrictionWeight: ParameterEntry<number>?,
	MaxSlopeAngle: ParameterEntry<number>?,
	StandForce: ParameterEntry<number>?,
	StandSpeed: ParameterEntry<number>?,
	TurningFactor: ParameterEntry<number>?,
}

type SwimControllerProperties = ControllerBaseProperties & {
	AccelerationTime: ParameterEntry<number>?,
	OrientationMaxTorque: ParameterEntry<number>?,
	OrientationSpeed: ParameterEntry<number>?,
}

type ControllerManagerProperties = InstanceProperties & {
	ActiveController: ParameterEntry<ControllerBase>?,
	BaseMoveSpeed: ParameterEntry<number>?,
	HipHeight: ParameterEntry<number>?,
}

type ControllerServiceProperties = InstanceProperties & {
}

type CookiesServiceProperties = InstanceProperties & {
}

type CorePackagesProperties = InstanceProperties & {
}

type CoreScriptSyncServiceProperties = InstanceProperties & {
}

type CrossDMScriptChangeListenerProperties = InstanceProperties & {
}

type CustomEventProperties = InstanceProperties & {
}

type CustomEventReceiverProperties = InstanceProperties & {
	Source: ParameterEntry<Instance>?,
}

type DataModelMeshProperties = InstanceProperties & {
	Offset: ParameterEntry<Vector3>?,
	Scale: ParameterEntry<Vector3>?,
	VertexColor: ParameterEntry<Vector3>?,
}

type BevelMeshProperties = DataModelMeshProperties & {
}

type BlockMeshProperties = BevelMeshProperties & {
}

type CylinderMeshProperties = BevelMeshProperties & {
}

type FileMeshProperties = DataModelMeshProperties & {
	MeshId: ParameterEntry<string>?,
	TextureId: ParameterEntry<string>?,
}

type SpecialMeshProperties = FileMeshProperties & {
	MeshType: ParameterEntry<Enum.MeshType>?,
}

type DataModelPatchServiceProperties = InstanceProperties & {
}

type DataModelSessionProperties = InstanceProperties & {
}

type DataStoreIncrementOptionsProperties = InstanceProperties & {
}

type DataStoreInfoProperties = InstanceProperties & {
	CreatedTime: ParameterEntry<number>?,
	DataStoreName: ParameterEntry<string>?,
	UpdatedTime: ParameterEntry<number>?,
}

type DataStoreKeyProperties = InstanceProperties & {
	KeyName: ParameterEntry<string>?,
}

type DataStoreKeyInfoProperties = InstanceProperties & {
	CreatedTime: ParameterEntry<number>?,
	UpdatedTime: ParameterEntry<number>?,
	Version: ParameterEntry<string>?,
}

type DataStoreObjectVersionInfoProperties = InstanceProperties & {
	CreatedTime: ParameterEntry<number>?,
	IsDeleted: ParameterEntry<boolean>?,
	Version: ParameterEntry<string>?,
}

type DataStoreOptionsProperties = InstanceProperties & {
	AllScopes: ParameterEntry<boolean>?,
}

type DataStoreServiceProperties = InstanceProperties & {
}

type DataStoreSetOptionsProperties = InstanceProperties & {
}

type DebrisProperties = InstanceProperties & {
}

type DebugSettingsProperties = InstanceProperties & {
	DataModel: ParameterEntry<number>?,
	InstanceCount: ParameterEntry<number>?,
	IsScriptStackTracingEnabled: ParameterEntry<boolean>?,
	JobCount: ParameterEntry<number>?,
	PlayerCount: ParameterEntry<number>?,
	ReportSoundWarnings: ParameterEntry<boolean>?,
	RobloxVersion: ParameterEntry<string>?,
	TickCountPreciseOverride: ParameterEntry<Enum.TickCountSampleMethod>?,
}

type DebuggablePluginWatcherProperties = InstanceProperties & {
}

type DebuggerBreakpointProperties = InstanceProperties & {
	Condition: ParameterEntry<string>?,
	ContinueExecution: ParameterEntry<boolean>?,
	IsEnabled: ParameterEntry<boolean>?,
	Line: ParameterEntry<number>?,
	LogExpression: ParameterEntry<string>?,
	isContextDependentBreakpoint: ParameterEntry<boolean>?,
}

type DebuggerConnectionProperties = InstanceProperties & {
}

type LocalDebuggerConnectionProperties = DebuggerConnectionProperties & {
}

type DebuggerConnectionManagerProperties = InstanceProperties & {
}

type DebuggerLuaResponseProperties = InstanceProperties & {
}

type DebuggerManagerProperties = InstanceProperties & {
	DebuggingEnabled: ParameterEntry<boolean>?,
}

type DebuggerUIServiceProperties = InstanceProperties & {
}

type DebuggerVariableProperties = InstanceProperties & {
}

type DebuggerWatchProperties = InstanceProperties & {
	Expression: ParameterEntry<string>?,
}

type DeviceIdServiceProperties = InstanceProperties & {
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

type DraftsServiceProperties = InstanceProperties & {
}

type DraggerProperties = InstanceProperties & {
}

type DraggerServiceProperties = InstanceProperties & {
	AlignDraggedObjects: ParameterEntry<boolean>?,
	AngleSnapEnabled: ParameterEntry<boolean>?,
	AngleSnapIncrement: ParameterEntry<number>?,
	AnimateHover: ParameterEntry<boolean>?,
	CollisionsEnabled: ParameterEntry<boolean>?,
	DraggerCoordinateSpace: ParameterEntry<Enum.DraggerCoordinateSpace>?,
	DraggerMovementMode: ParameterEntry<Enum.DraggerMovementMode>?,
	GeometrySnapColor: ParameterEntry<Color3>?,
	HoverAnimateFrequency: ParameterEntry<number>?,
	HoverThickness: ParameterEntry<number>?,
	JointsEnabled: ParameterEntry<boolean>?,
	LinearSnapEnabled: ParameterEntry<boolean>?,
	LinearSnapIncrement: ParameterEntry<number>?,
	ShowHover: ParameterEntry<boolean>?,
	ShowPivotIndicator: ParameterEntry<boolean>?,
}

type EulerRotationCurveProperties = InstanceProperties & {
	RotationOrder: ParameterEntry<Enum.RotationOrder>?,
}

type EventIngestServiceProperties = InstanceProperties & {
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

type FaceAnimatorServiceProperties = InstanceProperties & {
}

type FaceControlsProperties = InstanceProperties & {
}

type FaceInstanceProperties = InstanceProperties & {
	Face: ParameterEntry<Enum.NormalId>?,
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

type FacialAnimationRecordingServiceProperties = InstanceProperties & {
}

type FacialAnimationStreamingServiceProperties = InstanceProperties & {
}

type FeatureProperties = InstanceProperties & {
	FaceId: ParameterEntry<Enum.NormalId>?,
	InOut: ParameterEntry<Enum.InOut>?,
	LeftRight: ParameterEntry<Enum.LeftRight>?,
	TopBottom: ParameterEntry<Enum.TopBottom>?,
}

type HoleProperties = FeatureProperties & {
}

type MotorFeatureProperties = FeatureProperties & {
}

type FileProperties = InstanceProperties & {
}

type FireProperties = InstanceProperties & {
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Heat: ParameterEntry<number>?,
	SecondaryColor: ParameterEntry<Color3>?,
	Size: ParameterEntry<number>?,
	TimeScale: ParameterEntry<number>?,
}

type FlagStandServiceProperties = InstanceProperties & {
}

type FloatCurveProperties = InstanceProperties & {
	Length: ParameterEntry<number>?,
}

type FlyweightServiceProperties = InstanceProperties & {
}

type CSGDictionaryServiceProperties = FlyweightServiceProperties & {
}

type NonReplicatedCSGDictionaryServiceProperties = FlyweightServiceProperties & {
}

type FolderProperties = InstanceProperties & {
}

type ForceFieldProperties = InstanceProperties & {
	Visible: ParameterEntry<boolean>?,
}

type FriendServiceProperties = InstanceProperties & {
}

type FunctionalTestProperties = InstanceProperties & {
	Description: ParameterEntry<string>?,
}

type GamePassServiceProperties = InstanceProperties & {
}

type GameSettingsProperties = InstanceProperties & {
	VideoCaptureEnabled: ParameterEntry<boolean>?,
}

type GamepadServiceProperties = InstanceProperties & {
}

type GeometryProperties = InstanceProperties & {
}

type GetTextBoundsParamsProperties = InstanceProperties & {
	Font: ParameterEntry<Font>?,
	Size: ParameterEntry<number>?,
	Text: ParameterEntry<string>?,
	Width: ParameterEntry<number>?,
}

type GlobalDataStoreProperties = InstanceProperties & {
}

type DataStoreProperties = GlobalDataStoreProperties & {
}

type OrderedDataStoreProperties = GlobalDataStoreProperties & {
}

type GoogleAnalyticsConfigurationProperties = InstanceProperties & {
}

type GroupServiceProperties = InstanceProperties & {
}

type GuiBaseProperties = InstanceProperties & {
}

type GuiBase2dProperties = GuiBaseProperties & {
	AbsolutePosition: ParameterEntry<Vector2>?,
	AbsoluteRotation: ParameterEntry<number>?,
	AbsoluteSize: ParameterEntry<Vector2>?,
	AutoLocalize: ParameterEntry<boolean>?,
	RootLocalizationTable: ParameterEntry<LocalizationTable>?,
	SelectionBehaviorDown: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: ParameterEntry<Enum.SelectionBehavior>?,
	SelectionGroup: ParameterEntry<boolean>?,
}

type GuiObjectProperties = GuiBase2dProperties & {
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

type CanvasGroupProperties = GuiObjectProperties & {
	GroupColor3: ParameterEntry<Color3>?,
	GroupTransparency: ParameterEntry<number>?,
}

type FrameProperties = GuiObjectProperties & {
	Style: ParameterEntry<Enum.FrameStyle>?,
}

type GuiButtonProperties = GuiObjectProperties & {
	AutoButtonColor: ParameterEntry<boolean>?,
	Modal: ParameterEntry<boolean>?,
	Selected: ParameterEntry<boolean>?,
	Style: ParameterEntry<Enum.ButtonStyle>?,
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

type GuiLabelProperties = GuiObjectProperties & {
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

type LayerCollectorProperties = GuiBase2dProperties & {
	Enabled: ParameterEntry<boolean>?,
	ResetOnSpawn: ParameterEntry<boolean>?,
	ZIndexBehavior: ParameterEntry<Enum.ZIndexBehavior>?,
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

type PluginGuiProperties = LayerCollectorProperties & {
	Title: ParameterEntry<string>?,
}

type DockWidgetPluginGuiProperties = PluginGuiProperties & {
	HostWidgetWasRestored: ParameterEntry<boolean>?,
}

type QWidgetPluginGuiProperties = PluginGuiProperties & {
}

type ScreenGuiProperties = LayerCollectorProperties & {
	DisplayOrder: ParameterEntry<number>?,
	IgnoreGuiInset: ParameterEntry<boolean>?,
}

type GuiMainProperties = ScreenGuiProperties & {
}

type SurfaceGuiBaseProperties = LayerCollectorProperties & {
	Active: ParameterEntry<boolean>?,
	Adornee: ParameterEntry<Instance>?,
	Face: ParameterEntry<Enum.NormalId>?,
}

type AdGuiProperties = SurfaceGuiBaseProperties & {
	AdShape: ParameterEntry<Enum.AdShape>?,
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

type GuiBase3dProperties = GuiBaseProperties & {
	Color3: ParameterEntry<Color3>?,
	Transparency: ParameterEntry<number>?,
	Visible: ParameterEntry<boolean>?,
}

type FloorWireProperties = GuiBase3dProperties & {
	CycleOffset: ParameterEntry<number>?,
	From: ParameterEntry<BasePart>?,
	StudsBetweenTextures: ParameterEntry<number>?,
	Texture: ParameterEntry<string>?,
	TextureSize: ParameterEntry<Vector2>?,
	To: ParameterEntry<BasePart>?,
	Velocity: ParameterEntry<number>?,
	WireRadius: ParameterEntry<number>?,
}

type InstanceAdornmentProperties = GuiBase3dProperties & {
	Adornee: ParameterEntry<Instance>?,
}

type SelectionBoxProperties = InstanceAdornmentProperties & {
	LineThickness: ParameterEntry<number>?,
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
}

type PVAdornmentProperties = GuiBase3dProperties & {
	Adornee: ParameterEntry<PVInstance>?,
}

type HandleAdornmentProperties = PVAdornmentProperties & {
	AdornCullingMode: ParameterEntry<Enum.AdornCullingMode>?,
	AlwaysOnTop: ParameterEntry<boolean>?,
	CFrame: ParameterEntry<CFrame>?,
	SizeRelativeOffset: ParameterEntry<Vector3>?,
	ZIndex: ParameterEntry<number>?,
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

type WireframeHandleAdornmentProperties = HandleAdornmentProperties & {
}

type ParabolaAdornmentProperties = PVAdornmentProperties & {
}

type SelectionSphereProperties = PVAdornmentProperties & {
	SurfaceColor3: ParameterEntry<Color3>?,
	SurfaceTransparency: ParameterEntry<number>?,
}

type PartAdornmentProperties = GuiBase3dProperties & {
	Adornee: ParameterEntry<BasePart>?,
}

type HandlesBaseProperties = PartAdornmentProperties & {
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

type SelectionLassoProperties = GuiBase3dProperties & {
	Humanoid: ParameterEntry<Humanoid>?,
}

type SelectionPartLassoProperties = SelectionLassoProperties & {
	Part: ParameterEntry<BasePart>?,
}

type SelectionPointLassoProperties = SelectionLassoProperties & {
	Point: ParameterEntry<Vector3>?,
}

type GuiServiceProperties = InstanceProperties & {
	AutoSelectGuiEnabled: ParameterEntry<boolean>?,
	CoreGuiNavigationEnabled: ParameterEntry<boolean>?,
	GuiNavigationEnabled: ParameterEntry<boolean>?,
	MenuIsOpen: ParameterEntry<boolean>?,
	SelectedObject: ParameterEntry<GuiObject>?,
	TouchControlsEnabled: ParameterEntry<boolean>?,
}

type GuidRegistryServiceProperties = InstanceProperties & {
}

type HapticServiceProperties = InstanceProperties & {
}

type HeightmapImporterServiceProperties = InstanceProperties & {
}

type HiddenSurfaceRemovalAssetProperties = InstanceProperties & {
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

type HopperProperties = InstanceProperties & {
}

type HttpRbxApiServiceProperties = InstanceProperties & {
}

type HttpRequestProperties = InstanceProperties & {
}

type HttpServiceProperties = InstanceProperties & {
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

type ILegacyStudioBridgeProperties = InstanceProperties & {
}

type LegacyStudioBridgeProperties = ILegacyStudioBridgeProperties & {
}

type IXPServiceProperties = InstanceProperties & {
}

type ImporterBaseSettingsProperties = InstanceProperties & {
	Id: ParameterEntry<string>?,
	ImportName: ParameterEntry<string>?,
	ShouldImport: ParameterEntry<boolean>?,
}

type ImporterAnimationSettingsProperties = ImporterBaseSettingsProperties & {
}

type ImporterGroupSettingsProperties = ImporterBaseSettingsProperties & {
	Anchored: ParameterEntry<boolean>?,
	ImportAsModelAsset: ParameterEntry<boolean>?,
	InsertInWorkspace: ParameterEntry<boolean>?,
}

type ImporterJointSettingsProperties = ImporterBaseSettingsProperties & {
}

type ImporterMaterialSettingsProperties = ImporterBaseSettingsProperties & {
	DiffuseFilePath: ParameterEntry<string>?,
	IsPbr: ParameterEntry<boolean>?,
	MetalnessFilePath: ParameterEntry<string>?,
	NormalFilePath: ParameterEntry<string>?,
	RoughnessFilePath: ParameterEntry<string>?,
}

type ImporterMeshSettingsProperties = ImporterBaseSettingsProperties & {
	Anchored: ParameterEntry<boolean>?,
	CageManifold: ParameterEntry<boolean>?,
	CageMeshIntersectedPreview: ParameterEntry<boolean>?,
	CageMeshNotIntersected: ParameterEntry<boolean>?,
	CageNoOverlappingVertices: ParameterEntry<boolean>?,
	CageNonManifoldPreview: ParameterEntry<boolean>?,
	CageOverlappingVerticesPreview: ParameterEntry<boolean>?,
	CageUVMatched: ParameterEntry<boolean>?,
	CageUVMisMatchedPreview: ParameterEntry<boolean>?,
	Dimensions: ParameterEntry<Vector3>?,
	DoubleSided: ParameterEntry<boolean>?,
	IgnoreVertexColors: ParameterEntry<boolean>?,
	IrrelevantCageModifiedPreview: ParameterEntry<boolean>?,
	MeshHoleDetectedPreview: ParameterEntry<boolean>?,
	MeshNoHoleDetected: ParameterEntry<boolean>?,
	NoIrrelevantCageModified: ParameterEntry<boolean>?,
	NoOuterCageFarExtendedFromMesh: ParameterEntry<boolean>?,
	OuterCageFarExtendedFromMeshPreview: ParameterEntry<boolean>?,
	PolygonCount: ParameterEntry<number>?,
	UseImportedPivot: ParameterEntry<boolean>?,
}

type ImporterRootSettingsProperties = ImporterBaseSettingsProperties & {
	Anchored: ParameterEntry<boolean>?,
	FileDimensions: ParameterEntry<Vector3>?,
	ImportAsModelAsset: ParameterEntry<boolean>?,
	InsertInWorkspace: ParameterEntry<boolean>?,
	InsertWithScenePosition: ParameterEntry<boolean>?,
	InvertNegativeFaces: ParameterEntry<boolean>?,
	MergeMeshes: ParameterEntry<boolean>?,
	PolygonCount: ParameterEntry<number>?,
	RigType: ParameterEntry<Enum.RigType>?,
	ScaleUnit: ParameterEntry<Enum.MeshScaleUnit>?,
	UseSceneOriginAsPivot: ParameterEntry<boolean>?,
	WorldForward: ParameterEntry<Enum.NormalId>?,
	WorldUp: ParameterEntry<Enum.NormalId>?,
}

type IncrementalPatchBuilderProperties = InstanceProperties & {
}

type InputObjectProperties = InstanceProperties & {
	Delta: ParameterEntry<Vector3>?,
	KeyCode: ParameterEntry<Enum.KeyCode>?,
	Position: ParameterEntry<Vector3>?,
	UserInputState: ParameterEntry<Enum.UserInputState>?,
	UserInputType: ParameterEntry<Enum.UserInputType>?,
}

type InsertServiceProperties = InstanceProperties & {
}

type JointInstanceProperties = InstanceProperties & {
	Active: ParameterEntry<boolean>?,
	C0: ParameterEntry<CFrame>?,
	C1: ParameterEntry<CFrame>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
}

type DynamicRotateProperties = JointInstanceProperties & {
	BaseAngle: ParameterEntry<number>?,
}

type RotatePProperties = DynamicRotateProperties & {
}

type RotateVProperties = DynamicRotateProperties & {
}

type GlueProperties = JointInstanceProperties & {
	F0: ParameterEntry<Vector3>?,
	F1: ParameterEntry<Vector3>?,
	F2: ParameterEntry<Vector3>?,
	F3: ParameterEntry<Vector3>?,
}

type ManualSurfaceJointInstanceProperties = JointInstanceProperties & {
}

type ManualGlueProperties = ManualSurfaceJointInstanceProperties & {
}

type ManualWeldProperties = ManualSurfaceJointInstanceProperties & {
}

type MotorProperties = JointInstanceProperties & {
	CurrentAngle: ParameterEntry<number>?,
	DesiredAngle: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
}

type Motor6DProperties = MotorProperties & {
	Transform: ParameterEntry<CFrame>?,
}

type RotateProperties = JointInstanceProperties & {
}

type SnapProperties = JointInstanceProperties & {
}

type VelocityMotorProperties = JointInstanceProperties & {
	CurrentAngle: ParameterEntry<number>?,
	DesiredAngle: ParameterEntry<number>?,
	MaxVelocity: ParameterEntry<number>?,
}

type WeldProperties = JointInstanceProperties & {
}

type JointsServiceProperties = InstanceProperties & {
}

type KeyboardServiceProperties = InstanceProperties & {
}

type KeyframeProperties = InstanceProperties & {
	Time: ParameterEntry<number>?,
}

type KeyframeMarkerProperties = InstanceProperties & {
	Value: ParameterEntry<string>?,
}

type KeyframeSequenceProviderProperties = InstanceProperties & {
}

type LSPFileSyncServiceProperties = InstanceProperties & {
}

type LanguageServiceProperties = InstanceProperties & {
}

type LightProperties = InstanceProperties & {
	Brightness: ParameterEntry<number>?,
	Color: ParameterEntry<Color3>?,
	Enabled: ParameterEntry<boolean>?,
	Shadows: ParameterEntry<boolean>?,
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

type LocalStorageServiceProperties = InstanceProperties & {
}

type AppStorageServiceProperties = LocalStorageServiceProperties & {
}

type UserStorageServiceProperties = LocalStorageServiceProperties & {
}

type LocalizationServiceProperties = InstanceProperties & {
	RobloxLocaleId: ParameterEntry<string>?,
	SystemLocaleId: ParameterEntry<string>?,
}

type LocalizationTableProperties = InstanceProperties & {
	SourceLocaleId: ParameterEntry<string>?,
}

type LodDataEntityProperties = InstanceProperties & {
	EntityLodEnabled: ParameterEntry<boolean>?,
}

type LodDataServiceProperties = InstanceProperties & {
}

type LogServiceProperties = InstanceProperties & {
}

type LoginServiceProperties = InstanceProperties & {
}

type LuaSettingsProperties = InstanceProperties & {
}

type LuaSourceContainerProperties = InstanceProperties & {
}

type BaseScriptProperties = LuaSourceContainerProperties & {
	Disabled: ParameterEntry<boolean>?,
	LinkedSource: ParameterEntry<string>?,
}

type CoreScriptProperties = BaseScriptProperties & {
}

type ScriptProperties = BaseScriptProperties & {
}

type LocalScriptProperties = ScriptProperties & {
}

type ModuleScriptProperties = LuaSourceContainerProperties & {
	LinkedSource: ParameterEntry<string>?,
}

type LuaWebServiceProperties = InstanceProperties & {
}

type LuauScriptAnalyzerServiceProperties = InstanceProperties & {
}

type MarkerCurveProperties = InstanceProperties & {
	Length: ParameterEntry<number>?,
}

type MarketplaceServiceProperties = InstanceProperties & {
}

type MaterialServiceProperties = InstanceProperties & {
}

type MaterialVariantProperties = InstanceProperties & {
	CustomPhysicalProperties: ParameterEntry<PhysicalProperties>?,
	MaterialPattern: ParameterEntry<Enum.MaterialPattern>?,
	StudsPerTile: ParameterEntry<number>?,
}

type MemStorageConnectionProperties = InstanceProperties & {
}

type MemStorageServiceProperties = InstanceProperties & {
}

type MemoryStoreQueueProperties = InstanceProperties & {
}

type MemoryStoreServiceProperties = InstanceProperties & {
}

type MemoryStoreSortedMapProperties = InstanceProperties & {
}

type MessageProperties = InstanceProperties & {
	Text: ParameterEntry<string>?,
}

type HintProperties = MessageProperties & {
}

type MessageBusConnectionProperties = InstanceProperties & {
}

type MessageBusServiceProperties = InstanceProperties & {
}

type MessagingServiceProperties = InstanceProperties & {
}

type MetaBreakpointProperties = InstanceProperties & {
}

type MetaBreakpointContextProperties = InstanceProperties & {
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

type PlayerMouseProperties = MouseProperties & {
}

type PluginMouseProperties = MouseProperties & {
}

type MouseServiceProperties = InstanceProperties & {
}

type MultipleDocumentInterfaceInstanceProperties = InstanceProperties & {
}

type NetworkMarkerProperties = InstanceProperties & {
}

type NetworkPeerProperties = InstanceProperties & {
}

type NetworkClientProperties = NetworkPeerProperties & {
}

type NetworkServerProperties = NetworkPeerProperties & {
}

type NetworkReplicatorProperties = InstanceProperties & {
}

type ClientReplicatorProperties = NetworkReplicatorProperties & {
}

type ServerReplicatorProperties = NetworkReplicatorProperties & {
}

type NetworkSettingsProperties = InstanceProperties & {
	IncomingReplicationLag: ParameterEntry<number>?,
	PrintJoinSizeBreakdown: ParameterEntry<boolean>?,
	PrintPhysicsErrors: ParameterEntry<boolean>?,
	PrintStreamInstanceQuota: ParameterEntry<boolean>?,
	RandomizeJoinInstanceOrder: ParameterEntry<boolean>?,
	RenderStreamedRegions: ParameterEntry<boolean>?,
	ShowActiveAnimationAsset: ParameterEntry<boolean>?,
}

type NoCollisionConstraintProperties = InstanceProperties & {
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
}

type NotificationServiceProperties = InstanceProperties & {
}

type PVInstanceProperties = InstanceProperties & {
}

type BasePartProperties = PVInstanceProperties & {
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

type CornerWedgePartProperties = BasePartProperties & {
}

type FormFactorPartProperties = BasePartProperties & {
}

type PartProperties = FormFactorPartProperties & {
	Shape: ParameterEntry<Enum.PartType>?,
}

type FlagStandProperties = PartProperties & {
	TeamColor: ParameterEntry<BrickColor>?,
}

type PlatformProperties = PartProperties & {
}

type SeatProperties = PartProperties & {
	Disabled: ParameterEntry<boolean>?,
	Occupant: ParameterEntry<Humanoid>?,
}

type SkateboardPlatformProperties = PartProperties & {
	Controller: ParameterEntry<SkateboardController>?,
	ControllingHumanoid: ParameterEntry<Humanoid>?,
	Steer: ParameterEntry<number>?,
	StickyWheels: ParameterEntry<boolean>?,
	Throttle: ParameterEntry<number>?,
}

type SpawnLocationProperties = PartProperties & {
	AllowTeamChangeOnTouch: ParameterEntry<boolean>?,
	Duration: ParameterEntry<number>?,
	Enabled: ParameterEntry<boolean>?,
	Neutral: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
}

type WedgePartProperties = FormFactorPartProperties & {
}

type TerrainProperties = BasePartProperties & {
	MaxExtents: ParameterEntry<Region3int16>?,
	WaterColor: ParameterEntry<Color3>?,
	WaterReflectance: ParameterEntry<number>?,
	WaterTransparency: ParameterEntry<number>?,
	WaterWaveSize: ParameterEntry<number>?,
	WaterWaveSpeed: ParameterEntry<number>?,
}

type TriangleMeshPartProperties = BasePartProperties & {
	MeshSize: ParameterEntry<Vector3>?,
}

type MeshPartProperties = TriangleMeshPartProperties & {
	TextureID: ParameterEntry<string>?,
}

type PartOperationProperties = TriangleMeshPartProperties & {
	TriangleCount: ParameterEntry<number>?,
	UsePartColor: ParameterEntry<boolean>?,
}

type NegateOperationProperties = PartOperationProperties & {
}

type UnionOperationProperties = PartOperationProperties & {
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

type ActorProperties = ModelProperties & {
}

type StatusProperties = ModelProperties & {
}

type WorldRootProperties = ModelProperties & {
}

type WorkspaceProperties = WorldRootProperties & {
	AllowThirdPartySales: ParameterEntry<boolean>?,
	ClientAnimatorThrottling: ParameterEntry<Enum.ClientAnimatorThrottlingMode>?,
	CurrentCamera: ParameterEntry<Camera>?,
	DistributedGameTime: ParameterEntry<number>?,
	GlobalWind: ParameterEntry<Vector3>?,
	Gravity: ParameterEntry<number>?,
	Retargeting: ParameterEntry<Enum.AnimatorRetargetingMode>?,
	Terrain: ParameterEntry<Terrain>?,
}

type WorldModelProperties = WorldRootProperties & {
}

type PackageLinkProperties = InstanceProperties & {
	PackageId: ParameterEntry<string>?,
}

type PackageServiceProperties = InstanceProperties & {
}

type PackageUIServiceProperties = InstanceProperties & {
}

type PagesProperties = InstanceProperties & {
	IsFinished: ParameterEntry<boolean>?,
}

type CatalogPagesProperties = PagesProperties & {
}

type DataStoreKeyPagesProperties = PagesProperties & {
}

type DataStoreListingPagesProperties = PagesProperties & {
}

type DataStorePagesProperties = PagesProperties & {
}

type DataStoreVersionPagesProperties = PagesProperties & {
}

type FriendPagesProperties = PagesProperties & {
}

type InventoryPagesProperties = PagesProperties & {
}

type EmotesPagesProperties = InventoryPagesProperties & {
}

type OutfitPagesProperties = PagesProperties & {
}

type StandardPagesProperties = PagesProperties & {
}

type PartOperationAssetProperties = InstanceProperties & {
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

type PatchMappingProperties = InstanceProperties & {
	FlattenTree: ParameterEntry<boolean>?,
	PatchId: ParameterEntry<string>?,
	TargetPath: ParameterEntry<string>?,
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

type PathfindingServiceProperties = InstanceProperties & {
}

type PausedStateProperties = InstanceProperties & {
}

type PausedStateBreakpointProperties = PausedStateProperties & {
}

type PausedStateExceptionProperties = PausedStateProperties & {
}

type PermissionsServiceProperties = InstanceProperties & {
}

type PhysicsServiceProperties = InstanceProperties & {
}

type PhysicsSettingsProperties = InstanceProperties & {
	AllowSleep: ParameterEntry<boolean>?,
	AreAnchorsShown: ParameterEntry<boolean>?,
	AreAssembliesShown: ParameterEntry<boolean>?,
	AreAwakePartsHighlighted: ParameterEntry<boolean>?,
	AreBodyTypesShown: ParameterEntry<boolean>?,
	AreContactIslandsShown: ParameterEntry<boolean>?,
	AreContactPointsShown: ParameterEntry<boolean>?,
	AreJointCoordinatesShown: ParameterEntry<boolean>?,
	AreMechanismsShown: ParameterEntry<boolean>?,
	AreModelCoordsShown: ParameterEntry<boolean>?,
	AreOwnersShown: ParameterEntry<boolean>?,
	ArePartCoordsShown: ParameterEntry<boolean>?,
	AreRegionsShown: ParameterEntry<boolean>?,
	AreTerrainReplicationRegionsShown: ParameterEntry<boolean>?,
	AreUnalignedPartsShown: ParameterEntry<boolean>?,
	AreWorldCoordsShown: ParameterEntry<boolean>?,
	DisableCSGv2: ParameterEntry<boolean>?,
	ForceCSGv2: ParameterEntry<boolean>?,
	IsInterpolationThrottleShown: ParameterEntry<boolean>?,
	IsReceiveAgeShown: ParameterEntry<boolean>?,
	IsTreeShown: ParameterEntry<boolean>?,
	PhysicsEnvironmentalThrottle: ParameterEntry<Enum.EnviromentalPhysicsThrottle>?,
	ShowDecompositionGeometry: ParameterEntry<boolean>?,
	ThrottleAdjustTime: ParameterEntry<number>?,
	UseCSGv2: ParameterEntry<boolean>?,
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

type PlayerEmulatorServiceProperties = InstanceProperties & {
}

type PlayerScriptsProperties = InstanceProperties & {
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

type PluginProperties = InstanceProperties & {
	CollisionEnabled: ParameterEntry<boolean>?,
	GridSize: ParameterEntry<number>?,
}

type PluginActionProperties = InstanceProperties & {
	ActionId: ParameterEntry<string>?,
	AllowBinding: ParameterEntry<boolean>?,
	StatusTip: ParameterEntry<string>?,
	Text: ParameterEntry<string>?,
}

type PluginDebugServiceProperties = InstanceProperties & {
}

type PluginDragEventProperties = InstanceProperties & {
	Data: ParameterEntry<string>?,
	MimeType: ParameterEntry<string>?,
	Position: ParameterEntry<Vector2>?,
	Sender: ParameterEntry<string>?,
}

type PluginGuiServiceProperties = InstanceProperties & {
}

type PluginManagementServiceProperties = InstanceProperties & {
}

type PluginManagerProperties = InstanceProperties & {
}

type PluginManagerInterfaceProperties = InstanceProperties & {
}

type PluginMenuProperties = InstanceProperties & {
	Icon: ParameterEntry<string>?,
	Title: ParameterEntry<string>?,
}

type PluginPolicyServiceProperties = InstanceProperties & {
}

type PluginToolbarProperties = InstanceProperties & {
}

type PluginToolbarButtonProperties = InstanceProperties & {
	ClickableWhenViewportHidden: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Icon: ParameterEntry<string>?,
}

type PointsServiceProperties = InstanceProperties & {
}

type PolicyServiceProperties = InstanceProperties & {
}

type PoseBaseProperties = InstanceProperties & {
	EasingDirection: ParameterEntry<Enum.PoseEasingDirection>?,
	EasingStyle: ParameterEntry<Enum.PoseEasingStyle>?,
	Weight: ParameterEntry<number>?,
}

type NumberPoseProperties = PoseBaseProperties & {
	Value: ParameterEntry<number>?,
}

type PoseProperties = PoseBaseProperties & {
	CFrame: ParameterEntry<CFrame>?,
}

type PostEffectProperties = InstanceProperties & {
	Enabled: ParameterEntry<boolean>?,
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

type ProcessInstancePhysicsServiceProperties = InstanceProperties & {
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

type ProximityPromptServiceProperties = InstanceProperties & {
	Enabled: ParameterEntry<boolean>?,
	MaxPromptsVisible: ParameterEntry<number>?,
}

type PublishServiceProperties = InstanceProperties & {
}

type RbxAnalyticsServiceProperties = InstanceProperties & {
}

type ReflectionMetadataProperties = InstanceProperties & {
}

type ReflectionMetadataCallbacksProperties = InstanceProperties & {
}

type ReflectionMetadataClassesProperties = InstanceProperties & {
}

type ReflectionMetadataEnumsProperties = InstanceProperties & {
}

type ReflectionMetadataEventsProperties = InstanceProperties & {
}

type ReflectionMetadataFunctionsProperties = InstanceProperties & {
}

type ReflectionMetadataItemProperties = InstanceProperties & {
	Browsable: ParameterEntry<boolean>?,
	ClassCategory: ParameterEntry<string>?,
	ClientOnly: ParameterEntry<boolean>?,
	Constraint: ParameterEntry<string>?,
	Deprecated: ParameterEntry<boolean>?,
	EditingDisabled: ParameterEntry<boolean>?,
	EditorType: ParameterEntry<string>?,
	FFlag: ParameterEntry<string>?,
	IsBackend: ParameterEntry<boolean>?,
	PropertyOrder: ParameterEntry<number>?,
	ScriptContext: ParameterEntry<string>?,
	ServerOnly: ParameterEntry<boolean>?,
	SliderScaling: ParameterEntry<string>?,
	UIMaximum: ParameterEntry<number>?,
	UIMinimum: ParameterEntry<number>?,
	UINumTicks: ParameterEntry<number>?,
}

type ReflectionMetadataClassProperties = ReflectionMetadataItemProperties & {
	ExplorerImageIndex: ParameterEntry<number>?,
	ExplorerOrder: ParameterEntry<number>?,
	Insertable: ParameterEntry<boolean>?,
	PreferredParent: ParameterEntry<string>?,
}

type ReflectionMetadataEnumProperties = ReflectionMetadataItemProperties & {
}

type ReflectionMetadataEnumItemProperties = ReflectionMetadataItemProperties & {
}

type ReflectionMetadataMemberProperties = ReflectionMetadataItemProperties & {
}

type ReflectionMetadataPropertiesProperties = InstanceProperties & {
}

type ReflectionMetadataYieldFunctionsProperties = InstanceProperties & {
}

type RemoteDebuggerServerProperties = InstanceProperties & {
}

type RemoteEventProperties = InstanceProperties & {
}

type RemoteFunctionProperties = InstanceProperties & {
}

type RenderSettingsProperties = InstanceProperties & {
	AutoFRMLevel: ParameterEntry<number>?,
	EagerBulkExecution: ParameterEntry<boolean>?,
	EditQualityLevel: ParameterEntry<Enum.QualityLevel>?,
	EnableFRM: ParameterEntry<boolean>?,
	ExportMergeByMaterial: ParameterEntry<boolean>?,
	FrameRateManager: ParameterEntry<Enum.FramerateManagerMode>?,
	GraphicsMode: ParameterEntry<Enum.GraphicsMode>?,
	MeshCacheSize: ParameterEntry<number>?,
	MeshPartDetailLevel: ParameterEntry<Enum.MeshPartDetailLevel>?,
	QualityLevel: ParameterEntry<Enum.QualityLevel>?,
	ReloadAssets: ParameterEntry<boolean>?,
	RenderCSGTrianglesDebug: ParameterEntry<boolean>?,
	ShowBoundingBoxes: ParameterEntry<boolean>?,
}

type RenderingTestProperties = InstanceProperties & {
	CFrame: ParameterEntry<CFrame>?,
	ComparisonDiffThreshold: ParameterEntry<number>?,
	ComparisonMethod: ParameterEntry<Enum.RenderingTestComparisonMethod>?,
	ComparisonPsnrThreshold: ParameterEntry<number>?,
	Description: ParameterEntry<string>?,
	FieldOfView: ParameterEntry<number>?,
	Orientation: ParameterEntry<Vector3>?,
	Position: ParameterEntry<Vector3>?,
	QualityLevel: ParameterEntry<number>?,
	ShouldSkip: ParameterEntry<boolean>?,
	Ticket: ParameterEntry<string>?,
}

type ReplicatedFirstProperties = InstanceProperties & {
}

type ReplicatedStorageProperties = InstanceProperties & {
}

type RobloxPluginGuiServiceProperties = InstanceProperties & {
}

type RobloxReplicatedStorageProperties = InstanceProperties & {
}

type RotationCurveProperties = InstanceProperties & {
	Length: ParameterEntry<number>?,
}

type RtMessagingServiceProperties = InstanceProperties & {
}

type RunServiceProperties = InstanceProperties & {
}

type RuntimeScriptServiceProperties = InstanceProperties & {
}

type ScreenshotHudProperties = InstanceProperties & {
	CameraButtonIcon: ParameterEntry<string>?,
	CameraButtonPosition: ParameterEntry<UDim2>?,
	CloseButtonPosition: ParameterEntry<UDim2>?,
	CloseWhenScreenshotTaken: ParameterEntry<boolean>?,
	ExperienceNameOverlayEnabled: ParameterEntry<boolean>?,
	OverlayFont: ParameterEntry<Enum.Font>?,
	UsernameOverlayEnabled: ParameterEntry<boolean>?,
	Visible: ParameterEntry<boolean>?,
}

type ScriptChangeServiceProperties = InstanceProperties & {
}

type ScriptCloneWatcherProperties = InstanceProperties & {
}

type ScriptCloneWatcherHelperProperties = InstanceProperties & {
}

type ScriptContextProperties = InstanceProperties & {
}

type ScriptDebuggerProperties = InstanceProperties & {
	CurrentLine: ParameterEntry<number>?,
	IsDebugging: ParameterEntry<boolean>?,
	IsPaused: ParameterEntry<boolean>?,
	Script: ParameterEntry<Instance>?,
}

type ScriptDocumentProperties = InstanceProperties & {
}

type ScriptEditorServiceProperties = InstanceProperties & {
}

type ScriptRegistrationServiceProperties = InstanceProperties & {
}

type ScriptServiceProperties = InstanceProperties & {
}

type SelectionProperties = InstanceProperties & {
	SelectionThickness: ParameterEntry<number>?,
}

type ServerScriptServiceProperties = InstanceProperties & {
}

type ServerStorageProperties = InstanceProperties & {
}

type ServiceProviderProperties = InstanceProperties & {
}

type DataModelProperties = ServiceProviderProperties & {
	CreatorId: ParameterEntry<number>?,
	CreatorType: ParameterEntry<Enum.CreatorType>?,
	GameId: ParameterEntry<number>?,
	Genre: ParameterEntry<Enum.Genre>?,
	JobId: ParameterEntry<string>?,
	PlaceId: ParameterEntry<number>?,
	PlaceVersion: ParameterEntry<number>?,
	PrivateServerId: ParameterEntry<string>?,
	PrivateServerOwnerId: ParameterEntry<number>?,
	Workspace: ParameterEntry<Workspace>?,
}

type GenericSettingsProperties = ServiceProviderProperties & {
}

type AnalysticsSettingsProperties = GenericSettingsProperties & {
}

type GlobalSettingsProperties = GenericSettingsProperties & {
}

type UserSettingsProperties = GenericSettingsProperties & {
}

type SessionServiceProperties = InstanceProperties & {
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

type SnippetServiceProperties = InstanceProperties & {
}

type SocialServiceProperties = InstanceProperties & {
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

type SoundEffectProperties = InstanceProperties & {
	Enabled: ParameterEntry<boolean>?,
	Priority: ParameterEntry<number>?,
}

type AssetSoundEffectProperties = SoundEffectProperties & {
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

type CustomSoundEffectProperties = SoundEffectProperties & {
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

type SpawnerServiceProperties = InstanceProperties & {
}

type SpeakerProperties = InstanceProperties & {
	ChannelCount: ParameterEntry<number>?,
	PlaybackLoudness: ParameterEntry<number>?,
	RollOffMaxDistance: ParameterEntry<number>?,
	RollOffMinDistance: ParameterEntry<number>?,
	RollOffMode: ParameterEntry<Enum.RollOffMode>?,
	SoundGroup: ParameterEntry<SoundGroup>?,
	Source: ParameterEntry<Instance>?,
	Volume: ParameterEntry<number>?,
}

type StackFrameProperties = InstanceProperties & {
}

type StandalonePluginScriptsProperties = InstanceProperties & {
}

type StarterGearProperties = InstanceProperties & {
}

type StarterPackProperties = InstanceProperties & {
}

type StarterPlayerProperties = InstanceProperties & {
	AutoJumpEnabled: ParameterEntry<boolean>?,
	CameraMaxZoomDistance: ParameterEntry<number>?,
	CameraMinZoomDistance: ParameterEntry<number>?,
	CameraMode: ParameterEntry<Enum.CameraMode>?,
	CharacterJumpHeight: ParameterEntry<number>?,
	CharacterJumpPower: ParameterEntry<number>?,
	CharacterMaxSlopeAngle: ParameterEntry<number>?,
	CharacterUseJumpPower: ParameterEntry<boolean>?,
	CharacterWalkSpeed: ParameterEntry<number>?,
	DevCameraOcclusionMode: ParameterEntry<Enum.DevCameraOcclusionMode>?,
	DevComputerCameraMovementMode: ParameterEntry<Enum.DevComputerCameraMovementMode>?,
	DevComputerMovementMode: ParameterEntry<Enum.DevComputerMovementMode>?,
	DevTouchCameraMovementMode: ParameterEntry<Enum.DevTouchCameraMovementMode>?,
	DevTouchMovementMode: ParameterEntry<Enum.DevTouchMovementMode>?,
	EnableMouseLockOption: ParameterEntry<boolean>?,
	HealthDisplayDistance: ParameterEntry<number>?,
	LoadCharacterAppearance: ParameterEntry<boolean>?,
	NameDisplayDistance: ParameterEntry<number>?,
	UserEmotesEnabled: ParameterEntry<boolean>?,
}

type StarterPlayerScriptsProperties = InstanceProperties & {
}

type StarterCharacterScriptsProperties = StarterPlayerScriptsProperties & {
}

type StatsProperties = InstanceProperties & {
	ContactsCount: ParameterEntry<number>?,
	DataReceiveKbps: ParameterEntry<number>?,
	DataSendKbps: ParameterEntry<number>?,
	HeartbeatTimeMs: ParameterEntry<number>?,
	InstanceCount: ParameterEntry<number>?,
	MovingPrimitivesCount: ParameterEntry<number>?,
	PhysicsReceiveKbps: ParameterEntry<number>?,
	PhysicsSendKbps: ParameterEntry<number>?,
	PhysicsStepTimeMs: ParameterEntry<number>?,
	PrimitivesCount: ParameterEntry<number>?,
}

type StatsItemProperties = InstanceProperties & {
}

type RunningAverageItemDoubleProperties = StatsItemProperties & {
}

type RunningAverageItemIntProperties = StatsItemProperties & {
}

type RunningAverageTimeIntervalItemProperties = StatsItemProperties & {
}

type TotalCountTimeIntervalItemProperties = StatsItemProperties & {
}

type StopWatchReporterProperties = InstanceProperties & {
}

type StudioAssetServiceProperties = InstanceProperties & {
}

type StudioDataProperties = InstanceProperties & {
}

type StudioDeviceEmulatorServiceProperties = InstanceProperties & {
}

type StudioHighDpiServiceProperties = InstanceProperties & {
}

type StudioPublishServiceProperties = InstanceProperties & {
}

type StudioScriptDebugEventListenerProperties = InstanceProperties & {
}

type StudioServiceProperties = InstanceProperties & {
	ActiveScript: ParameterEntry<Instance>?,
	DraggerSolveConstraints: ParameterEntry<boolean>?,
	DrawConstraintsOnTop: ParameterEntry<boolean>?,
	GridSize: ParameterEntry<number>?,
	RotateIncrement: ParameterEntry<number>?,
	ShowConstraintDetails: ParameterEntry<boolean>?,
	StudioLocaleId: ParameterEntry<string>?,
	UseLocalSpace: ParameterEntry<boolean>?,
}

type StudioThemeProperties = InstanceProperties & {
}

type SurfaceAppearanceProperties = InstanceProperties & {
}

type TaskSchedulerProperties = InstanceProperties & {
	SchedulerDutyCycle: ParameterEntry<number>?,
	SchedulerRate: ParameterEntry<number>?,
	ThreadPoolConfig: ParameterEntry<Enum.ThreadPoolConfig>?,
	ThreadPoolSize: ParameterEntry<number>?,
}

type TeamProperties = InstanceProperties & {
	AutoAssignable: ParameterEntry<boolean>?,
	TeamColor: ParameterEntry<BrickColor>?,
}

type TeamCreateServiceProperties = InstanceProperties & {
}

type TeamsProperties = InstanceProperties & {
}

type TeleportAsyncResultProperties = InstanceProperties & {
	PrivateServerId: ParameterEntry<string>?,
	ReservedServerAccessCode: ParameterEntry<string>?,
}

type TeleportOptionsProperties = InstanceProperties & {
	ReservedServerAccessCode: ParameterEntry<string>?,
	ServerInstanceId: ParameterEntry<string>?,
	ShouldReserveServer: ParameterEntry<boolean>?,
}

type TeleportServiceProperties = InstanceProperties & {
}

type TemporaryCageMeshProviderProperties = InstanceProperties & {
}

type TemporaryScriptServiceProperties = InstanceProperties & {
}

type TerrainDetailProperties = InstanceProperties & {
	Face: ParameterEntry<Enum.TerrainFace>?,
	MaterialPattern: ParameterEntry<Enum.MaterialPattern>?,
	StudsPerTile: ParameterEntry<number>?,
}

type TerrainRegionProperties = InstanceProperties & {
	SizeInCells: ParameterEntry<Vector3>?,
}

type TestServiceProperties = InstanceProperties & {
	AutoRuns: ParameterEntry<boolean>?,
	Description: ParameterEntry<string>?,
	ErrorCount: ParameterEntry<number>?,
	ExecuteWithStudioRun: ParameterEntry<boolean>?,
	Is30FpsThrottleEnabled: ParameterEntry<boolean>?,
	IsPhysicsEnvironmentalThrottled: ParameterEntry<boolean>?,
	IsSleepAllowed: ParameterEntry<boolean>?,
	NumberOfPlayers: ParameterEntry<number>?,
	SimulateSecondsLag: ParameterEntry<number>?,
	TestCount: ParameterEntry<number>?,
	Timeout: ParameterEntry<number>?,
	WarnCount: ParameterEntry<number>?,
}

type TextBoxServiceProperties = InstanceProperties & {
}

type TextChannelProperties = InstanceProperties & {
}

type TextChatCommandProperties = InstanceProperties & {
	Enabled: ParameterEntry<boolean>?,
	PrimaryAlias: ParameterEntry<string>?,
	SecondaryAlias: ParameterEntry<string>?,
}

type TextChatConfigurationsProperties = InstanceProperties & {
}

type ChatInputBarConfigurationProperties = TextChatConfigurationsProperties & {
	AbsolutePosition: ParameterEntry<Vector2>?,
	AbsoluteSize: ParameterEntry<Vector2>?,
	Enabled: ParameterEntry<boolean>?,
	TargetTextChannel: ParameterEntry<TextChannel>?,
}

type ChatWindowConfigurationProperties = TextChatConfigurationsProperties & {
	AbsolutePosition: ParameterEntry<Vector2>?,
	AbsoluteSize: ParameterEntry<Vector2>?,
	Enabled: ParameterEntry<boolean>?,
}

type TextChatMessageProperties = InstanceProperties & {
	MessageId: ParameterEntry<string>?,
	Metadata: ParameterEntry<string>?,
	PrefixText: ParameterEntry<string>?,
	Status: ParameterEntry<Enum.TextChatMessageStatus>?,
	Text: ParameterEntry<string>?,
	TextChannel: ParameterEntry<TextChannel>?,
	TextSource: ParameterEntry<TextSource>?,
	Timestamp: ParameterEntry<DateTime>?,
}

type TextChatMessagePropertiesProperties = InstanceProperties & {
	PrefixText: ParameterEntry<string>?,
	Text: ParameterEntry<string>?,
}

type TextChatServiceProperties = InstanceProperties & {
}

type TextFilterResultProperties = InstanceProperties & {
}

type TextServiceProperties = InstanceProperties & {
}

type TextSourceProperties = InstanceProperties & {
	CanSend: ParameterEntry<boolean>?,
	UserId: ParameterEntry<number>?,
}

type ThirdPartyUserServiceProperties = InstanceProperties & {
}

type ThreadStateProperties = InstanceProperties & {
}

type TimerServiceProperties = InstanceProperties & {
}

type ToastNotificationServiceProperties = InstanceProperties & {
}

type TouchInputServiceProperties = InstanceProperties & {
}

type TouchTransmitterProperties = InstanceProperties & {
}

type TracerServiceProperties = InstanceProperties & {
}

type TrackerStreamAnimationProperties = InstanceProperties & {
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

type TranslatorProperties = InstanceProperties & {
	LocaleId: ParameterEntry<string>?,
}

type TweenBaseProperties = InstanceProperties & {
	PlaybackState: ParameterEntry<Enum.PlaybackState>?,
}

type TweenProperties = TweenBaseProperties & {
	Instance: ParameterEntry<Instance>?,
	TweenInfo: ParameterEntry<TweenInfo>?,
}

type TweenServiceProperties = InstanceProperties & {
}

type UGCValidationServiceProperties = InstanceProperties & {
}

type UIBaseProperties = InstanceProperties & {
}

type UIComponentProperties = UIBaseProperties & {
}

type UIConstraintProperties = UIComponentProperties & {
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

type UILayoutProperties = UIComponentProperties & {
}

type UIGridStyleLayoutProperties = UILayoutProperties & {
	AbsoluteContentSize: ParameterEntry<Vector2>?,
	FillDirection: ParameterEntry<Enum.FillDirection>?,
	HorizontalAlignment: ParameterEntry<Enum.HorizontalAlignment>?,
	SortOrder: ParameterEntry<Enum.SortOrder>?,
	VerticalAlignment: ParameterEntry<Enum.VerticalAlignment>?,
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

type UnvalidatedAssetServiceProperties = InstanceProperties & {
}

type UserGameSettingsProperties = InstanceProperties & {
	ComputerCameraMovementMode: ParameterEntry<Enum.ComputerCameraMovementMode>?,
	ComputerMovementMode: ParameterEntry<Enum.ComputerMovementMode>?,
	ControlMode: ParameterEntry<Enum.ControlMode>?,
	GamepadCameraSensitivity: ParameterEntry<number>?,
	MouseSensitivity: ParameterEntry<number>?,
	RCCProfilerRecordFrameRate: ParameterEntry<number>?,
	RCCProfilerRecordTimeFrame: ParameterEntry<number>?,
	RotationType: ParameterEntry<Enum.RotationType>?,
	SavedQualityLevel: ParameterEntry<Enum.SavedQualitySetting>?,
	TouchCameraMovementMode: ParameterEntry<Enum.TouchCameraMovementMode>?,
	TouchMovementMode: ParameterEntry<Enum.TouchMovementMode>?,
}

type UserInputServiceProperties = InstanceProperties & {
	AccelerometerEnabled: ParameterEntry<boolean>?,
	GamepadEnabled: ParameterEntry<boolean>?,
	GyroscopeEnabled: ParameterEntry<boolean>?,
	KeyboardEnabled: ParameterEntry<boolean>?,
	MouseBehavior: ParameterEntry<Enum.MouseBehavior>?,
	MouseDeltaSensitivity: ParameterEntry<number>?,
	MouseEnabled: ParameterEntry<boolean>?,
	MouseIconEnabled: ParameterEntry<boolean>?,
	OnScreenKeyboardPosition: ParameterEntry<Vector2>?,
	OnScreenKeyboardSize: ParameterEntry<Vector2>?,
	OnScreenKeyboardVisible: ParameterEntry<boolean>?,
	TouchEnabled: ParameterEntry<boolean>?,
	VREnabled: ParameterEntry<boolean>?,
}

type UserServiceProperties = InstanceProperties & {
}

type VRServiceProperties = InstanceProperties & {
	GuiInputUserCFrame: ParameterEntry<Enum.UserCFrame>?,
	VREnabled: ParameterEntry<boolean>?,
}

type ValueBaseProperties = InstanceProperties & {
}

type BinaryStringValueProperties = ValueBaseProperties & {
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

type DoubleConstrainedValueProperties = ValueBaseProperties & {
	ConstrainedValue: ParameterEntry<number>?,
	MaxValue: ParameterEntry<number>?,
	MinValue: ParameterEntry<number>?,
	Value: ParameterEntry<number>?,
}

type IntConstrainedValueProperties = ValueBaseProperties & {
	ConstrainedValue: ParameterEntry<number>?,
	MaxValue: ParameterEntry<number>?,
	MinValue: ParameterEntry<number>?,
	Value: ParameterEntry<number>?,
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

type RayValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<Ray>?,
}

type StringValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<string>?,
}

type Vector3ValueProperties = ValueBaseProperties & {
	Value: ParameterEntry<Vector3>?,
}

type Vector3CurveProperties = InstanceProperties & {
}

type VersionControlServiceProperties = InstanceProperties & {
}

type VideoCaptureServiceProperties = InstanceProperties & {
}

type VirtualInputManagerProperties = InstanceProperties & {
}

type VirtualUserProperties = InstanceProperties & {
}

type VisibilityServiceProperties = InstanceProperties & {
}

type VisitProperties = InstanceProperties & {
}

type VoiceChannelProperties = InstanceProperties & {
}

type VoiceChatInternalProperties = InstanceProperties & {
}

type VoiceChatServiceProperties = InstanceProperties & {
}

type VoiceSourceProperties = InstanceProperties & {
	UserId: ParameterEntry<number>?,
}

type WeldConstraintProperties = InstanceProperties & {
	Active: ParameterEntry<boolean>?,
	Enabled: ParameterEntry<boolean>?,
	Part0: ParameterEntry<BasePart>?,
	Part1: ParameterEntry<BasePart>?,
}

type ClassNameConstructors0 = (
	(className: "Instance") -> ((InstanceProperties) -> Instance)
	& (className: "Accessory") -> ((AccessoryProperties) -> Accessory)
	& (className: "AdvancedDragger") -> ((AdvancedDraggerProperties) -> AdvancedDragger)
	& (className: "AnalyticsService") -> ((AnalyticsServiceProperties) -> AnalyticsService)
	& (className: "Animation") -> ((AnimationProperties) -> Animation)
	& (className: "CurveAnimation") -> ((CurveAnimationProperties) -> CurveAnimation)
	& (className: "KeyframeSequence") -> ((KeyframeSequenceProperties) -> KeyframeSequence)
	& (className: "AnimationController") -> ((AnimationControllerProperties) -> AnimationController)
	& (className: "AnimationRigData") -> ((AnimationRigDataProperties) -> AnimationRigData))

type ClassNameConstructors1 = (
	(className: "Animator") -> ((AnimatorProperties) -> Animator)
	& (className: "Atmosphere") -> ((AtmosphereProperties) -> Atmosphere)
	& (className: "Attachment") -> ((AttachmentProperties) -> Attachment)
	& (className: "Bone") -> ((BoneProperties) -> Bone)
	& (className: "Backpack") -> ((BackpackProperties) -> Backpack)
	& (className: "Tool") -> ((ToolProperties) -> Tool)
	& (className: "StarterGui") -> ((StarterGuiProperties) -> StarterGui)
	& (className: "WrapLayer") -> ((WrapLayerProperties) -> WrapLayer)
	& (className: "WrapTarget") -> ((WrapTargetProperties) -> WrapTarget)
	& (className: "Beam") -> ((BeamProperties) -> Beam))

type ClassNameConstructors2 = (
	(className: "BindableEvent") -> ((BindableEventProperties) -> BindableEvent)
	& (className: "BindableFunction") -> ((BindableFunctionProperties) -> BindableFunction)
	& (className: "BodyAngularVelocity") -> ((BodyAngularVelocityProperties) -> BodyAngularVelocity)
	& (className: "BodyForce") -> ((BodyForceProperties) -> BodyForce)
	& (className: "BodyGyro") -> ((BodyGyroProperties) -> BodyGyro)
	& (className: "BodyPosition") -> ((BodyPositionProperties) -> BodyPosition)
	& (className: "BodyThrust") -> ((BodyThrustProperties) -> BodyThrust)
	& (className: "BodyVelocity") -> ((BodyVelocityProperties) -> BodyVelocity)
	& (className: "Camera") -> ((CameraProperties) -> Camera)
	& (className: "BodyColors") -> ((BodyColorsProperties) -> BodyColors))

type ClassNameConstructors3 = (
	(className: "Pants") -> ((PantsProperties) -> Pants)
	& (className: "Shirt") -> ((ShirtProperties) -> Shirt)
	& (className: "ShirtGraphic") -> ((ShirtGraphicProperties) -> ShirtGraphic)
	& (className: "ClickDetector") -> ((ClickDetectorProperties) -> ClickDetector)
	& (className: "Clouds") -> ((CloudsProperties) -> Clouds)
	& (className: "Configuration") -> ((ConfigurationProperties) -> Configuration)
	& (className: "AlignOrientation") -> ((AlignOrientationProperties) -> AlignOrientation)
	& (className: "AlignPosition") -> ((AlignPositionProperties) -> AlignPosition)
	& (className: "AngularVelocity") -> ((AngularVelocityProperties) -> AngularVelocity)
	& (className: "BallSocketConstraint") -> ((BallSocketConstraintProperties) -> BallSocketConstraint))

type ClassNameConstructors4 = (
	(className: "HingeConstraint") -> ((HingeConstraintProperties) -> HingeConstraint)
	& (className: "LineForce") -> ((LineForceProperties) -> LineForce)
	& (className: "LinearVelocity") -> ((LinearVelocityProperties) -> LinearVelocity)
	& (className: "PlaneConstraint") -> ((PlaneConstraintProperties) -> PlaneConstraint)
	& (className: "RigidConstraint") -> ((RigidConstraintProperties) -> RigidConstraint)
	& (className: "RodConstraint") -> ((RodConstraintProperties) -> RodConstraint)
	& (className: "RopeConstraint") -> ((RopeConstraintProperties) -> RopeConstraint)
	& (className: "CylindricalConstraint") -> ((CylindricalConstraintProperties) -> CylindricalConstraint)
	& (className: "PrismaticConstraint") -> ((PrismaticConstraintProperties) -> PrismaticConstraint)
	& (className: "SpringConstraint") -> ((SpringConstraintProperties) -> SpringConstraint))

type ClassNameConstructors5 = (
	(className: "Torque") -> ((TorqueProperties) -> Torque)
	& (className: "TorsionSpringConstraint") -> ((TorsionSpringConstraintProperties) -> TorsionSpringConstraint)
	& (className: "UniversalConstraint") -> ((UniversalConstraintProperties) -> UniversalConstraint)
	& (className: "VectorForce") -> ((VectorForceProperties) -> VectorForce)
	& (className: "FileMesh") -> ((FileMeshProperties) -> FileMesh)
	& (className: "SpecialMesh") -> ((SpecialMeshProperties) -> SpecialMesh)
	& (className: "Dialog") -> ((DialogProperties) -> Dialog)
	& (className: "DialogChoice") -> ((DialogChoiceProperties) -> DialogChoice)
	& (className: "Dragger") -> ((DraggerProperties) -> Dragger)
	& (className: "Explosion") -> ((ExplosionProperties) -> Explosion))

type ClassNameConstructors6 = (
	(className: "FaceControls") -> ((FaceControlsProperties) -> FaceControls)
	& (className: "Decal") -> ((DecalProperties) -> Decal)
	& (className: "Texture") -> ((TextureProperties) -> Texture)
	& (className: "Fire") -> ((FireProperties) -> Fire)
	& (className: "FlyweightService") -> ((FlyweightServiceProperties) -> FlyweightService)
	& (className: "CSGDictionaryService") -> ((CSGDictionaryServiceProperties) -> CSGDictionaryService)
	& (className: "NonReplicatedCSGDictionaryService") -> ((NonReplicatedCSGDictionaryServiceProperties) -> NonReplicatedCSGDictionaryService)
	& (className: "Folder") -> ((FolderProperties) -> Folder)
	& (className: "ForceField") -> ((ForceFieldProperties) -> ForceField)
	& (className: "CanvasGroup") -> ((CanvasGroupProperties) -> CanvasGroup))

type ClassNameConstructors7 = (
	(className: "Frame") -> ((FrameProperties) -> Frame)
	& (className: "ImageButton") -> ((ImageButtonProperties) -> ImageButton)
	& (className: "TextButton") -> ((TextButtonProperties) -> TextButton)
	& (className: "ImageLabel") -> ((ImageLabelProperties) -> ImageLabel)
	& (className: "TextLabel") -> ((TextLabelProperties) -> TextLabel)
	& (className: "ScrollingFrame") -> ((ScrollingFrameProperties) -> ScrollingFrame)
	& (className: "TextBox") -> ((TextBoxProperties) -> TextBox)
	& (className: "VideoFrame") -> ((VideoFrameProperties) -> VideoFrame)
	& (className: "ViewportFrame") -> ((ViewportFrameProperties) -> ViewportFrame)
	& (className: "BillboardGui") -> ((BillboardGuiProperties) -> BillboardGui))

type ClassNameConstructors8 = (
	(className: "ScreenGui") -> ((ScreenGuiProperties) -> ScreenGui)
	& (className: "SurfaceGui") -> ((SurfaceGuiProperties) -> SurfaceGui)
	& (className: "SelectionBox") -> ((SelectionBoxProperties) -> SelectionBox)
	& (className: "BoxHandleAdornment") -> ((BoxHandleAdornmentProperties) -> BoxHandleAdornment)
	& (className: "ConeHandleAdornment") -> ((ConeHandleAdornmentProperties) -> ConeHandleAdornment)
	& (className: "CylinderHandleAdornment") -> ((CylinderHandleAdornmentProperties) -> CylinderHandleAdornment)
	& (className: "ImageHandleAdornment") -> ((ImageHandleAdornmentProperties) -> ImageHandleAdornment)
	& (className: "LineHandleAdornment") -> ((LineHandleAdornmentProperties) -> LineHandleAdornment)
	& (className: "SphereHandleAdornment") -> ((SphereHandleAdornmentProperties) -> SphereHandleAdornment)
	& (className: "WireframeHandleAdornment") -> ((WireframeHandleAdornmentProperties) -> WireframeHandleAdornment))

type ClassNameConstructors9 = (
	(className: "ParabolaAdornment") -> ((ParabolaAdornmentProperties) -> ParabolaAdornment)
	& (className: "SelectionSphere") -> ((SelectionSphereProperties) -> SelectionSphere)
	& (className: "ArcHandles") -> ((ArcHandlesProperties) -> ArcHandles)
	& (className: "Handles") -> ((HandlesProperties) -> Handles)
	& (className: "SurfaceSelection") -> ((SurfaceSelectionProperties) -> SurfaceSelection)
	& (className: "HeightmapImporterService") -> ((HeightmapImporterServiceProperties) -> HeightmapImporterService)
	& (className: "HiddenSurfaceRemovalAsset") -> ((HiddenSurfaceRemovalAssetProperties) -> HiddenSurfaceRemovalAsset)
	& (className: "Highlight") -> ((HighlightProperties) -> Highlight)
	& (className: "Humanoid") -> ((HumanoidProperties) -> Humanoid)
	& (className: "HumanoidDescription") -> ((HumanoidDescriptionProperties) -> HumanoidDescription))

type ClassNameConstructors10 = (
	(className: "Motor6D") -> ((Motor6DProperties) -> Motor6D)
	& (className: "VelocityMotor") -> ((VelocityMotorProperties) -> VelocityMotor)
	& (className: "Weld") -> ((WeldProperties) -> Weld)
	& (className: "PointLight") -> ((PointLightProperties) -> PointLight)
	& (className: "SpotLight") -> ((SpotLightProperties) -> SpotLight)
	& (className: "SurfaceLight") -> ((SurfaceLightProperties) -> SurfaceLight)
	& (className: "Lighting") -> ((LightingProperties) -> Lighting)
	& (className: "MaterialService") -> ((MaterialServiceProperties) -> MaterialService)
	& (className: "MaterialVariant") -> ((MaterialVariantProperties) -> MaterialVariant)
	& (className: "MemoryStoreService") -> ((MemoryStoreServiceProperties) -> MemoryStoreService))

type ClassNameConstructors11 = (
	(className: "NoCollisionConstraint") -> ((NoCollisionConstraintProperties) -> NoCollisionConstraint)
	& (className: "CornerWedgePart") -> ((CornerWedgePartProperties) -> CornerWedgePart)
	& (className: "Part") -> ((PartProperties) -> Part)
	& (className: "Seat") -> ((SeatProperties) -> Seat)
	& (className: "SpawnLocation") -> ((SpawnLocationProperties) -> SpawnLocation)
	& (className: "WedgePart") -> ((WedgePartProperties) -> WedgePart)
	& (className: "MeshPart") -> ((MeshPartProperties) -> MeshPart)
	& (className: "NegateOperation") -> ((NegateOperationProperties) -> NegateOperation)
	& (className: "UnionOperation") -> ((UnionOperationProperties) -> UnionOperation)
	& (className: "TrussPart") -> ((TrussPartProperties) -> TrussPart))

type ClassNameConstructors12 = (
	(className: "VehicleSeat") -> ((VehicleSeatProperties) -> VehicleSeat)
	& (className: "Model") -> ((ModelProperties) -> Model)
	& (className: "Actor") -> ((ActorProperties) -> Actor)
	& (className: "WorldModel") -> ((WorldModelProperties) -> WorldModel)
	& (className: "ParticleEmitter") -> ((ParticleEmitterProperties) -> ParticleEmitter)
	& (className: "PathfindingLink") -> ((PathfindingLinkProperties) -> PathfindingLink)
	& (className: "PathfindingModifier") -> ((PathfindingModifierProperties) -> PathfindingModifier)
	& (className: "Player") -> ((PlayerProperties) -> Player)
	& (className: "Players") -> ((PlayersProperties) -> Players)
	& (className: "BloomEffect") -> ((BloomEffectProperties) -> BloomEffect))

type ClassNameConstructors13 = (
	(className: "BlurEffect") -> ((BlurEffectProperties) -> BlurEffect)
	& (className: "ColorCorrectionEffect") -> ((ColorCorrectionEffectProperties) -> ColorCorrectionEffect)
	& (className: "DepthOfFieldEffect") -> ((DepthOfFieldEffectProperties) -> DepthOfFieldEffect)
	& (className: "SunRaysEffect") -> ((SunRaysEffectProperties) -> SunRaysEffect)
	& (className: "ProximityPrompt") -> ((ProximityPromptProperties) -> ProximityPrompt)
	& (className: "ProximityPromptService") -> ((ProximityPromptServiceProperties) -> ProximityPromptService)
	& (className: "RemoteEvent") -> ((RemoteEventProperties) -> RemoteEvent)
	& (className: "RemoteFunction") -> ((RemoteFunctionProperties) -> RemoteFunction)
	& (className: "RotationCurve") -> ((RotationCurveProperties) -> RotationCurve)
	& (className: "Sky") -> ((SkyProperties) -> Sky))

type ClassNameConstructors14 = (
	(className: "Smoke") -> ((SmokeProperties) -> Smoke)
	& (className: "Sound") -> ((SoundProperties) -> Sound)
	& (className: "ChorusSoundEffect") -> ((ChorusSoundEffectProperties) -> ChorusSoundEffect)
	& (className: "CompressorSoundEffect") -> ((CompressorSoundEffectProperties) -> CompressorSoundEffect)
	& (className: "ChannelSelectorSoundEffect") -> ((ChannelSelectorSoundEffectProperties) -> ChannelSelectorSoundEffect)
	& (className: "DistortionSoundEffect") -> ((DistortionSoundEffectProperties) -> DistortionSoundEffect)
	& (className: "EchoSoundEffect") -> ((EchoSoundEffectProperties) -> EchoSoundEffect)
	& (className: "EqualizerSoundEffect") -> ((EqualizerSoundEffectProperties) -> EqualizerSoundEffect)
	& (className: "FlangeSoundEffect") -> ((FlangeSoundEffectProperties) -> FlangeSoundEffect)
	& (className: "PitchShiftSoundEffect") -> ((PitchShiftSoundEffectProperties) -> PitchShiftSoundEffect))

type ClassNameConstructors15 = (
	(className: "ReverbSoundEffect") -> ((ReverbSoundEffectProperties) -> ReverbSoundEffect)
	& (className: "TremoloSoundEffect") -> ((TremoloSoundEffectProperties) -> TremoloSoundEffect)
	& (className: "SoundGroup") -> ((SoundGroupProperties) -> SoundGroup)
	& (className: "SoundService") -> ((SoundServiceProperties) -> SoundService)
	& (className: "Sparkles") -> ((SparklesProperties) -> Sparkles)
	& (className: "StarterGear") -> ((StarterGearProperties) -> StarterGear)
	& (className: "StarterPack") -> ((StarterPackProperties) -> StarterPack)
	& (className: "SurfaceAppearance") -> ((SurfaceAppearanceProperties) -> SurfaceAppearance)
	& (className: "Team") -> ((TeamProperties) -> Team)
	& (className: "TestService") -> ((TestServiceProperties) -> TestService))

type ClassNameConstructors16 = (
	(className: "TextChannel") -> ((TextChannelProperties) -> TextChannel)
	& (className: "TrackerStreamAnimation") -> ((TrackerStreamAnimationProperties) -> TrackerStreamAnimation)
	& (className: "Trail") -> ((TrailProperties) -> Trail)
	& (className: "UIAspectRatioConstraint") -> ((UIAspectRatioConstraintProperties) -> UIAspectRatioConstraint)
	& (className: "UISizeConstraint") -> ((UISizeConstraintProperties) -> UISizeConstraint)
	& (className: "UITextSizeConstraint") -> ((UITextSizeConstraintProperties) -> UITextSizeConstraint)
	& (className: "UICorner") -> ((UICornerProperties) -> UICorner)
	& (className: "UIGradient") -> ((UIGradientProperties) -> UIGradient)
	& (className: "UIGridLayout") -> ((UIGridLayoutProperties) -> UIGridLayout)
	& (className: "UIListLayout") -> ((UIListLayoutProperties) -> UIListLayout))

type ClassNameConstructors17 = (
	(className: "UIPageLayout") -> ((UIPageLayoutProperties) -> UIPageLayout)
	& (className: "UITableLayout") -> ((UITableLayoutProperties) -> UITableLayout)
	& (className: "UIPadding") -> ((UIPaddingProperties) -> UIPadding)
	& (className: "UIScale") -> ((UIScaleProperties) -> UIScale)
	& (className: "UIStroke") -> ((UIStrokeProperties) -> UIStroke)
	& (className: "BoolValue") -> ((BoolValueProperties) -> BoolValue)
	& (className: "BrickColorValue") -> ((BrickColorValueProperties) -> BrickColorValue)
	& (className: "CFrameValue") -> ((CFrameValueProperties) -> CFrameValue)
	& (className: "Color3Value") -> ((Color3ValueProperties) -> Color3Value)
	& (className: "IntValue") -> ((IntValueProperties) -> IntValue))

type ClassNameConstructors18 = (
	(className: "NumberValue") -> ((NumberValueProperties) -> NumberValue)
	& (className: "ObjectValue") -> ((ObjectValueProperties) -> ObjectValue)
	& (className: "StringValue") -> ((StringValueProperties) -> StringValue)
	& (className: "Vector3Value") -> ((Vector3ValueProperties) -> Vector3Value)
	& (className: "Vector3Curve") -> ((Vector3CurveProperties) -> Vector3Curve)
	& (className: "VirtualInputManager") -> ((VirtualInputManagerProperties) -> VirtualInputManager)
	& (className: "VoiceChannel") -> ((VoiceChannelProperties) -> VoiceChannel)
	& (className: "WeldConstraint") -> ((WeldConstraintProperties) -> WeldConstraint))

export type ClassNameConstructors = ClassNameConstructors0 & ClassNameConstructors1 & ClassNameConstructors2 & ClassNameConstructors3 & ClassNameConstructors4 & ClassNameConstructors5 & ClassNameConstructors6 & ClassNameConstructors7 & ClassNameConstructors8 & ClassNameConstructors9 & ClassNameConstructors10 & ClassNameConstructors11 & ClassNameConstructors12 & ClassNameConstructors13 & ClassNameConstructors14 & ClassNameConstructors15 & ClassNameConstructors16 & ClassNameConstructors17 & ClassNameConstructors18

type ClassConstructors0 = (
	(Instance) -> ((InstanceProperties) -> Instance)
	& (Accessory) -> ((AccessoryProperties) -> Accessory)
	& (AdvancedDragger) -> ((AdvancedDraggerProperties) -> AdvancedDragger)
	& (AnalyticsService) -> ((AnalyticsServiceProperties) -> AnalyticsService)
	& (Animation) -> ((AnimationProperties) -> Animation)
	& (CurveAnimation) -> ((CurveAnimationProperties) -> CurveAnimation)
	& (KeyframeSequence) -> ((KeyframeSequenceProperties) -> KeyframeSequence)
	& (AnimationController) -> ((AnimationControllerProperties) -> AnimationController)
	& (AnimationRigData) -> ((AnimationRigDataProperties) -> AnimationRigData))

type ClassConstructors1 = (
	(Animator) -> ((AnimatorProperties) -> Animator)
	& (Atmosphere) -> ((AtmosphereProperties) -> Atmosphere)
	& (Attachment) -> ((AttachmentProperties) -> Attachment)
	& (Bone) -> ((BoneProperties) -> Bone)
	& (Backpack) -> ((BackpackProperties) -> Backpack)
	& (Tool) -> ((ToolProperties) -> Tool)
	& (StarterGui) -> ((StarterGuiProperties) -> StarterGui)
	& (WrapLayer) -> ((WrapLayerProperties) -> WrapLayer)
	& (WrapTarget) -> ((WrapTargetProperties) -> WrapTarget)
	& (Beam) -> ((BeamProperties) -> Beam))

type ClassConstructors2 = (
	(BindableEvent) -> ((BindableEventProperties) -> BindableEvent)
	& (BindableFunction) -> ((BindableFunctionProperties) -> BindableFunction)
	& (BodyAngularVelocity) -> ((BodyAngularVelocityProperties) -> BodyAngularVelocity)
	& (BodyForce) -> ((BodyForceProperties) -> BodyForce)
	& (BodyGyro) -> ((BodyGyroProperties) -> BodyGyro)
	& (BodyPosition) -> ((BodyPositionProperties) -> BodyPosition)
	& (BodyThrust) -> ((BodyThrustProperties) -> BodyThrust)
	& (BodyVelocity) -> ((BodyVelocityProperties) -> BodyVelocity)
	& (Camera) -> ((CameraProperties) -> Camera)
	& (BodyColors) -> ((BodyColorsProperties) -> BodyColors))

type ClassConstructors3 = (
	(Pants) -> ((PantsProperties) -> Pants)
	& (Shirt) -> ((ShirtProperties) -> Shirt)
	& (ShirtGraphic) -> ((ShirtGraphicProperties) -> ShirtGraphic)
	& (ClickDetector) -> ((ClickDetectorProperties) -> ClickDetector)
	& (Clouds) -> ((CloudsProperties) -> Clouds)
	& (Configuration) -> ((ConfigurationProperties) -> Configuration)
	& (AlignOrientation) -> ((AlignOrientationProperties) -> AlignOrientation)
	& (AlignPosition) -> ((AlignPositionProperties) -> AlignPosition)
	& (AngularVelocity) -> ((AngularVelocityProperties) -> AngularVelocity)
	& (BallSocketConstraint) -> ((BallSocketConstraintProperties) -> BallSocketConstraint))

type ClassConstructors4 = (
	(HingeConstraint) -> ((HingeConstraintProperties) -> HingeConstraint)
	& (LineForce) -> ((LineForceProperties) -> LineForce)
	& (LinearVelocity) -> ((LinearVelocityProperties) -> LinearVelocity)
	& (PlaneConstraint) -> ((PlaneConstraintProperties) -> PlaneConstraint)
	& (RigidConstraint) -> ((RigidConstraintProperties) -> RigidConstraint)
	& (RodConstraint) -> ((RodConstraintProperties) -> RodConstraint)
	& (RopeConstraint) -> ((RopeConstraintProperties) -> RopeConstraint)
	& (CylindricalConstraint) -> ((CylindricalConstraintProperties) -> CylindricalConstraint)
	& (PrismaticConstraint) -> ((PrismaticConstraintProperties) -> PrismaticConstraint)
	& (SpringConstraint) -> ((SpringConstraintProperties) -> SpringConstraint))

type ClassConstructors5 = (
	(Torque) -> ((TorqueProperties) -> Torque)
	& (TorsionSpringConstraint) -> ((TorsionSpringConstraintProperties) -> TorsionSpringConstraint)
	& (UniversalConstraint) -> ((UniversalConstraintProperties) -> UniversalConstraint)
	& (VectorForce) -> ((VectorForceProperties) -> VectorForce)
	& (FileMesh) -> ((FileMeshProperties) -> FileMesh)
	& (SpecialMesh) -> ((SpecialMeshProperties) -> SpecialMesh)
	& (Dialog) -> ((DialogProperties) -> Dialog)
	& (DialogChoice) -> ((DialogChoiceProperties) -> DialogChoice)
	& (Dragger) -> ((DraggerProperties) -> Dragger)
	& (Explosion) -> ((ExplosionProperties) -> Explosion))

type ClassConstructors6 = (
	(FaceControls) -> ((FaceControlsProperties) -> FaceControls)
	& (Decal) -> ((DecalProperties) -> Decal)
	& (Texture) -> ((TextureProperties) -> Texture)
	& (Fire) -> ((FireProperties) -> Fire)
	& (FlyweightService) -> ((FlyweightServiceProperties) -> FlyweightService)
	& (CSGDictionaryService) -> ((CSGDictionaryServiceProperties) -> CSGDictionaryService)
	& (NonReplicatedCSGDictionaryService) -> ((NonReplicatedCSGDictionaryServiceProperties) -> NonReplicatedCSGDictionaryService)
	& (Folder) -> ((FolderProperties) -> Folder)
	& (ForceField) -> ((ForceFieldProperties) -> ForceField)
	& (CanvasGroup) -> ((CanvasGroupProperties) -> CanvasGroup))

type ClassConstructors7 = (
	(Frame) -> ((FrameProperties) -> Frame)
	& (ImageButton) -> ((ImageButtonProperties) -> ImageButton)
	& (TextButton) -> ((TextButtonProperties) -> TextButton)
	& (ImageLabel) -> ((ImageLabelProperties) -> ImageLabel)
	& (TextLabel) -> ((TextLabelProperties) -> TextLabel)
	& (ScrollingFrame) -> ((ScrollingFrameProperties) -> ScrollingFrame)
	& (TextBox) -> ((TextBoxProperties) -> TextBox)
	& (VideoFrame) -> ((VideoFrameProperties) -> VideoFrame)
	& (ViewportFrame) -> ((ViewportFrameProperties) -> ViewportFrame)
	& (BillboardGui) -> ((BillboardGuiProperties) -> BillboardGui))

type ClassConstructors8 = (
	(ScreenGui) -> ((ScreenGuiProperties) -> ScreenGui)
	& (SurfaceGui) -> ((SurfaceGuiProperties) -> SurfaceGui)
	& (SelectionBox) -> ((SelectionBoxProperties) -> SelectionBox)
	& (BoxHandleAdornment) -> ((BoxHandleAdornmentProperties) -> BoxHandleAdornment)
	& (ConeHandleAdornment) -> ((ConeHandleAdornmentProperties) -> ConeHandleAdornment)
	& (CylinderHandleAdornment) -> ((CylinderHandleAdornmentProperties) -> CylinderHandleAdornment)
	& (ImageHandleAdornment) -> ((ImageHandleAdornmentProperties) -> ImageHandleAdornment)
	& (LineHandleAdornment) -> ((LineHandleAdornmentProperties) -> LineHandleAdornment)
	& (SphereHandleAdornment) -> ((SphereHandleAdornmentProperties) -> SphereHandleAdornment)
	& (WireframeHandleAdornment) -> ((WireframeHandleAdornmentProperties) -> WireframeHandleAdornment))

type ClassConstructors9 = (
	(ParabolaAdornment) -> ((ParabolaAdornmentProperties) -> ParabolaAdornment)
	& (SelectionSphere) -> ((SelectionSphereProperties) -> SelectionSphere)
	& (ArcHandles) -> ((ArcHandlesProperties) -> ArcHandles)
	& (Handles) -> ((HandlesProperties) -> Handles)
	& (SurfaceSelection) -> ((SurfaceSelectionProperties) -> SurfaceSelection)
	& (HeightmapImporterService) -> ((HeightmapImporterServiceProperties) -> HeightmapImporterService)
	& (HiddenSurfaceRemovalAsset) -> ((HiddenSurfaceRemovalAssetProperties) -> HiddenSurfaceRemovalAsset)
	& (Highlight) -> ((HighlightProperties) -> Highlight)
	& (Humanoid) -> ((HumanoidProperties) -> Humanoid)
	& (HumanoidDescription) -> ((HumanoidDescriptionProperties) -> HumanoidDescription))

type ClassConstructors10 = (
	(Motor6D) -> ((Motor6DProperties) -> Motor6D)
	& (VelocityMotor) -> ((VelocityMotorProperties) -> VelocityMotor)
	& (Weld) -> ((WeldProperties) -> Weld)
	& (PointLight) -> ((PointLightProperties) -> PointLight)
	& (SpotLight) -> ((SpotLightProperties) -> SpotLight)
	& (SurfaceLight) -> ((SurfaceLightProperties) -> SurfaceLight)
	& (Lighting) -> ((LightingProperties) -> Lighting)
	& (MaterialService) -> ((MaterialServiceProperties) -> MaterialService)
	& (MaterialVariant) -> ((MaterialVariantProperties) -> MaterialVariant)
	& (MemoryStoreService) -> ((MemoryStoreServiceProperties) -> MemoryStoreService))

type ClassConstructors11 = (
	(NoCollisionConstraint) -> ((NoCollisionConstraintProperties) -> NoCollisionConstraint)
	& (CornerWedgePart) -> ((CornerWedgePartProperties) -> CornerWedgePart)
	& (Part) -> ((PartProperties) -> Part)
	& (Seat) -> ((SeatProperties) -> Seat)
	& (SpawnLocation) -> ((SpawnLocationProperties) -> SpawnLocation)
	& (WedgePart) -> ((WedgePartProperties) -> WedgePart)
	& (MeshPart) -> ((MeshPartProperties) -> MeshPart)
	& (NegateOperation) -> ((NegateOperationProperties) -> NegateOperation)
	& (UnionOperation) -> ((UnionOperationProperties) -> UnionOperation)
	& (TrussPart) -> ((TrussPartProperties) -> TrussPart))

type ClassConstructors12 = (
	(VehicleSeat) -> ((VehicleSeatProperties) -> VehicleSeat)
	& (Model) -> ((ModelProperties) -> Model)
	& (Actor) -> ((ActorProperties) -> Actor)
	& (WorldModel) -> ((WorldModelProperties) -> WorldModel)
	& (ParticleEmitter) -> ((ParticleEmitterProperties) -> ParticleEmitter)
	& (PathfindingLink) -> ((PathfindingLinkProperties) -> PathfindingLink)
	& (PathfindingModifier) -> ((PathfindingModifierProperties) -> PathfindingModifier)
	& (Player) -> ((PlayerProperties) -> Player)
	& (Players) -> ((PlayersProperties) -> Players)
	& (BloomEffect) -> ((BloomEffectProperties) -> BloomEffect))

type ClassConstructors13 = (
	(BlurEffect) -> ((BlurEffectProperties) -> BlurEffect)
	& (ColorCorrectionEffect) -> ((ColorCorrectionEffectProperties) -> ColorCorrectionEffect)
	& (DepthOfFieldEffect) -> ((DepthOfFieldEffectProperties) -> DepthOfFieldEffect)
	& (SunRaysEffect) -> ((SunRaysEffectProperties) -> SunRaysEffect)
	& (ProximityPrompt) -> ((ProximityPromptProperties) -> ProximityPrompt)
	& (ProximityPromptService) -> ((ProximityPromptServiceProperties) -> ProximityPromptService)
	& (RemoteEvent) -> ((RemoteEventProperties) -> RemoteEvent)
	& (RemoteFunction) -> ((RemoteFunctionProperties) -> RemoteFunction)
	& (RotationCurve) -> ((RotationCurveProperties) -> RotationCurve)
	& (Sky) -> ((SkyProperties) -> Sky))

type ClassConstructors14 = (
	(Smoke) -> ((SmokeProperties) -> Smoke)
	& (Sound) -> ((SoundProperties) -> Sound)
	& (ChorusSoundEffect) -> ((ChorusSoundEffectProperties) -> ChorusSoundEffect)
	& (CompressorSoundEffect) -> ((CompressorSoundEffectProperties) -> CompressorSoundEffect)
	& (ChannelSelectorSoundEffect) -> ((ChannelSelectorSoundEffectProperties) -> ChannelSelectorSoundEffect)
	& (DistortionSoundEffect) -> ((DistortionSoundEffectProperties) -> DistortionSoundEffect)
	& (EchoSoundEffect) -> ((EchoSoundEffectProperties) -> EchoSoundEffect)
	& (EqualizerSoundEffect) -> ((EqualizerSoundEffectProperties) -> EqualizerSoundEffect)
	& (FlangeSoundEffect) -> ((FlangeSoundEffectProperties) -> FlangeSoundEffect)
	& (PitchShiftSoundEffect) -> ((PitchShiftSoundEffectProperties) -> PitchShiftSoundEffect))

type ClassConstructors15 = (
	(ReverbSoundEffect) -> ((ReverbSoundEffectProperties) -> ReverbSoundEffect)
	& (TremoloSoundEffect) -> ((TremoloSoundEffectProperties) -> TremoloSoundEffect)
	& (SoundGroup) -> ((SoundGroupProperties) -> SoundGroup)
	& (SoundService) -> ((SoundServiceProperties) -> SoundService)
	& (Sparkles) -> ((SparklesProperties) -> Sparkles)
	& (StarterGear) -> ((StarterGearProperties) -> StarterGear)
	& (StarterPack) -> ((StarterPackProperties) -> StarterPack)
	& (SurfaceAppearance) -> ((SurfaceAppearanceProperties) -> SurfaceAppearance)
	& (Team) -> ((TeamProperties) -> Team)
	& (TestService) -> ((TestServiceProperties) -> TestService))

type ClassConstructors16 = (
	(TextChannel) -> ((TextChannelProperties) -> TextChannel)
	& (TrackerStreamAnimation) -> ((TrackerStreamAnimationProperties) -> TrackerStreamAnimation)
	& (Trail) -> ((TrailProperties) -> Trail)
	& (UIAspectRatioConstraint) -> ((UIAspectRatioConstraintProperties) -> UIAspectRatioConstraint)
	& (UISizeConstraint) -> ((UISizeConstraintProperties) -> UISizeConstraint)
	& (UITextSizeConstraint) -> ((UITextSizeConstraintProperties) -> UITextSizeConstraint)
	& (UICorner) -> ((UICornerProperties) -> UICorner)
	& (UIGradient) -> ((UIGradientProperties) -> UIGradient)
	& (UIGridLayout) -> ((UIGridLayoutProperties) -> UIGridLayout)
	& (UIListLayout) -> ((UIListLayoutProperties) -> UIListLayout))

type ClassConstructors17 = (
	(UIPageLayout) -> ((UIPageLayoutProperties) -> UIPageLayout)
	& (UITableLayout) -> ((UITableLayoutProperties) -> UITableLayout)
	& (UIPadding) -> ((UIPaddingProperties) -> UIPadding)
	& (UIScale) -> ((UIScaleProperties) -> UIScale)
	& (UIStroke) -> ((UIStrokeProperties) -> UIStroke)
	& (BoolValue) -> ((BoolValueProperties) -> BoolValue)
	& (BrickColorValue) -> ((BrickColorValueProperties) -> BrickColorValue)
	& (CFrameValue) -> ((CFrameValueProperties) -> CFrameValue)
	& (Color3Value) -> ((Color3ValueProperties) -> Color3Value)
	& (IntValue) -> ((IntValueProperties) -> IntValue))

type ClassConstructors18 = (
	(NumberValue) -> ((NumberValueProperties) -> NumberValue)
	& (ObjectValue) -> ((ObjectValueProperties) -> ObjectValue)
	& (StringValue) -> ((StringValueProperties) -> StringValue)
	& (Vector3Value) -> ((Vector3ValueProperties) -> Vector3Value)
	& (Vector3Curve) -> ((Vector3CurveProperties) -> Vector3Curve)
	& (VirtualInputManager) -> ((VirtualInputManagerProperties) -> VirtualInputManager)
	& (VoiceChannel) -> ((VoiceChannelProperties) -> VoiceChannel)
	& (WeldConstraint) -> ((WeldConstraintProperties) -> WeldConstraint))

export type ClassConstructors = ClassConstructors0 & ClassConstructors1 & ClassConstructors2 & ClassConstructors3 & ClassConstructors4 & ClassConstructors5 & ClassConstructors6 & ClassConstructors7 & ClassConstructors8 & ClassConstructors9 & ClassConstructors10 & ClassConstructors11 & ClassConstructors12 & ClassConstructors13 & ClassConstructors14 & ClassConstructors15 & ClassConstructors16 & ClassConstructors17 & ClassConstructors18

return {}