--!strict
type State<T> = {
	_Value: T,
	Get: (self: any) -> T,
}
type CanBeState<T> = State<T> | T

type GuiBase2dProperties = {
	[string]: nil,
	AutoLocalize: CanBeState<boolean>?,
	RootLocalizationTable: CanBeState<LocalizationTable>?,
	SelectionBehaviorDown: CanBeState<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: CanBeState<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: CanBeState<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: CanBeState<Enum.SelectionBehavior>?,
	SelectionGroup: CanBeState<boolean>?,
} & InstanceProperties

type InstanceProperties = {
	[string]: nil,
	Archivable: CanBeState<boolean>?,
	Name: CanBeState<string>?,
	Parent: CanBeState<Instance>?,
}

type GuiBase3dProperties = {
	[string]: nil,
	Color3: CanBeState<Color3>?,
	Transparency: CanBeState<number>?,
	Visible: CanBeState<boolean>?,
} & InstanceProperties

type FloorWireProperties = {
	[string]: nil,
	CycleOffset: CanBeState<number>?,
	From: CanBeState<BasePart>?,
	StudsBetweenTextures: CanBeState<number>?,
	Texture: CanBeState<string>?,
	TextureSize: CanBeState<Vector2>?,
	To: CanBeState<BasePart>?,
	Velocity: CanBeState<number>?,
	WireRadius: CanBeState<number>?,
} & GuiBase3dProperties

type InstanceAdornmentProperties = {
	[string]: nil,
	Adornee: CanBeState<Instance>?,
} & GuiBase3dProperties

type SelectionBoxProperties = {
	[string]: nil,
	LineThickness: CanBeState<number>?,
	SurfaceColor3: CanBeState<Color3>?,
	SurfaceTransparency: CanBeState<number>?,
} & InstanceAdornmentProperties

type PVAdornmentProperties = {
	[string]: nil,
	Adornee: CanBeState<PVInstance>?,
} & GuiBase3dProperties

type HandleAdornmentProperties = {
	[string]: nil,
	AdornCullingMode: CanBeState<Enum.AdornCullingMode>?,
	AlwaysOnTop: CanBeState<boolean>?,
	CFrame: CanBeState<CFrame>?,
	SizeRelativeOffset: CanBeState<Vector3>?,
	ZIndex: CanBeState<number>?,
} & PVAdornmentProperties

type BoxHandleAdornmentProperties = {
	[string]: nil,
	Size: CanBeState<Vector3>?,
} & HandleAdornmentProperties

type ConeHandleAdornmentProperties = {
	[string]: nil,
	Height: CanBeState<number>?,
	Radius: CanBeState<number>?,
} & HandleAdornmentProperties

type CylinderHandleAdornmentProperties = {
	[string]: nil,
	Angle: CanBeState<number>?,
	Height: CanBeState<number>?,
	InnerRadius: CanBeState<number>?,
	Radius: CanBeState<number>?,
} & HandleAdornmentProperties

type ImageHandleAdornmentProperties = {
	[string]: nil,
	Image: CanBeState<string>?,
	Size: CanBeState<Vector2>?,
} & HandleAdornmentProperties

type LineHandleAdornmentProperties = {
	[string]: nil,
	Length: CanBeState<number>?,
	Thickness: CanBeState<number>?,
} & HandleAdornmentProperties

type SphereHandleAdornmentProperties = {
	[string]: nil,
	Radius: CanBeState<number>?,
} & HandleAdornmentProperties

type WireframeHandleAdornmentProperties = {
	[string]: nil,
	Scale: CanBeState<Vector3>?,
} & HandleAdornmentProperties

type SelectionSphereProperties = {
	[string]: nil,
	SurfaceColor3: CanBeState<Color3>?,
	SurfaceTransparency: CanBeState<number>?,
} & PVAdornmentProperties

type PartAdornmentProperties = {
	[string]: nil,
	Adornee: CanBeState<BasePart>?,
} & GuiBase3dProperties

type ArcHandlesProperties = {
	[string]: nil,
	Axes: CanBeState<Axes>?,
} & PartAdornmentProperties

type HandlesProperties = {
	[string]: nil,
	Faces: CanBeState<Faces>?,
	Style: CanBeState<Enum.HandlesStyle>?,
} & PartAdornmentProperties

type SurfaceSelectionProperties = {
	[string]: nil,
	TargetSurface: CanBeState<Enum.NormalId>?,
} & PartAdornmentProperties

type SelectionLassoProperties = {
	[string]: nil,
	Humanoid: CanBeState<Humanoid>?,
} & GuiBase3dProperties

type SelectionPartLassoProperties = {
	[string]: nil,
	Part: CanBeState<BasePart>?,
} & SelectionLassoProperties

type SelectionPointLassoProperties = {
	[string]: nil,
	Point: CanBeState<Vector3>?,
} & SelectionLassoProperties

type GuiObjectProperties = {
	[string]: nil,
	Active: CanBeState<boolean>?,
	AnchorPoint: CanBeState<Vector2>?,
	AutomaticSize: CanBeState<Enum.AutomaticSize>?,
	BackgroundColor3: CanBeState<Color3>?,
	BackgroundTransparency: CanBeState<number>?,
	BorderColor3: CanBeState<Color3>?,
	BorderMode: CanBeState<Enum.BorderMode>?,
	BorderSizePixel: CanBeState<number>?,
	ClipsDescendants: CanBeState<boolean>?,
	LayoutOrder: CanBeState<number>?,
	NextSelectionDown: CanBeState<GuiObject>?,
	NextSelectionLeft: CanBeState<GuiObject>?,
	NextSelectionRight: CanBeState<GuiObject>?,
	NextSelectionUp: CanBeState<GuiObject>?,
	Position: CanBeState<UDim2>?,
	Rotation: CanBeState<number>?,
	Selectable: CanBeState<boolean>?,
	SelectionImageObject: CanBeState<GuiObject>?,
	SelectionOrder: CanBeState<number>?,
	Size: CanBeState<UDim2>?,
	SizeConstraint: CanBeState<Enum.SizeConstraint>?,
	Visible: CanBeState<boolean>?,
	ZIndex: CanBeState<number>?,
} & GuiBase2dProperties

type CanvasGroupProperties = {
	[string]: nil,
	GroupColor3: CanBeState<Color3>?,
	GroupTransparency: CanBeState<number>?,
} & GuiObjectProperties

type FrameProperties = {
	[string]: nil,
	Style: CanBeState<Enum.FrameStyle>?,
} & GuiObjectProperties

type GuiButtonProperties = {
	[string]: nil,
	AutoButtonColor: CanBeState<boolean>?,
	Modal: CanBeState<boolean>?,
	Selected: CanBeState<boolean>?,
	Style: CanBeState<Enum.ButtonStyle>?,
} & GuiObjectProperties

type ImageButtonProperties = {
	[string]: nil,
	HoverImage: CanBeState<string>?,
	Image: CanBeState<string>?,
	ImageColor3: CanBeState<Color3>?,
	ImageRectOffset: CanBeState<Vector2>?,
	ImageRectSize: CanBeState<Vector2>?,
	ImageTransparency: CanBeState<number>?,
	PressedImage: CanBeState<string>?,
	ResampleMode: CanBeState<Enum.ResamplerMode>?,
	ScaleType: CanBeState<Enum.ScaleType>?,
	SliceCenter: CanBeState<Rect>?,
	SliceScale: CanBeState<number>?,
	TileSize: CanBeState<UDim2>?,
} & GuiButtonProperties

type TextButtonProperties = {
	[string]: nil,
	FontFace: CanBeState<Enum.Font>?,
	LineHeight: CanBeState<number>?,
	MaxVisibleGraphemes: CanBeState<number>?,
	RichText: CanBeState<boolean>?,
	Text: CanBeState<string>?,
	TextColor3: CanBeState<Color3>?,
	TextScaled: CanBeState<boolean>?,
	TextSize: CanBeState<number>?,
	TextStrokeColor3: CanBeState<Color3>?,
	TextStrokeTransparency: CanBeState<number>?,
	TextTransparency: CanBeState<number>?,
	TextTruncate: CanBeState<Enum.TextTruncate>?,
	TextWrapped: CanBeState<boolean>?,
	TextXAlignment: CanBeState<Enum.TextXAlignment>?,
	TextYAlignment: CanBeState<Enum.TextYAlignment>?,
} & GuiButtonProperties

type ImageLabelProperties = {
	[string]: nil,
	Image: CanBeState<string>?,
	ImageColor3: CanBeState<Color3>?,
	ImageRectOffset: CanBeState<Vector2>?,
	ImageRectSize: CanBeState<Vector2>?,
	ImageTransparency: CanBeState<number>?,
	ResampleMode: CanBeState<Enum.ResamplerMode>?,
	ScaleType: CanBeState<Enum.ScaleType>?,
	SliceCenter: CanBeState<Rect>?,
	SliceScale: CanBeState<number>?,
	TileSize: CanBeState<UDim2>?,
} & GuiObjectProperties

type TextLabelProperties = {
	[string]: nil,
	FontFace: CanBeState<Enum.Font>?,
	LineHeight: CanBeState<number>?,
	MaxVisibleGraphemes: CanBeState<number>?,
	RichText: CanBeState<boolean>?,
	Text: CanBeState<string>?,
	TextColor3: CanBeState<Color3>?,
	TextScaled: CanBeState<boolean>?,
	TextSize: CanBeState<number>?,
	TextStrokeColor3: CanBeState<Color3>?,
	TextStrokeTransparency: CanBeState<number>?,
	TextTransparency: CanBeState<number>?,
	TextTruncate: CanBeState<Enum.TextTruncate>?,
	TextWrapped: CanBeState<boolean>?,
	TextXAlignment: CanBeState<Enum.TextXAlignment>?,
	TextYAlignment: CanBeState<Enum.TextYAlignment>?,
} & GuiObjectProperties

type ScrollingFrameProperties = {
	[string]: nil,
	AutomaticCanvasSize: CanBeState<Enum.AutomaticSize>?,
	BottomImage: CanBeState<string>?,
	CanvasPosition: CanBeState<Vector2>?,
	CanvasSize: CanBeState<UDim2>?,
	ElasticBehavior: CanBeState<Enum.ElasticBehavior>?,
	HorizontalScrollBarInset: CanBeState<Enum.ScrollBarInset>?,
	MidImage: CanBeState<string>?,
	ScrollBarImageColor3: CanBeState<Color3>?,
	ScrollBarImageTransparency: CanBeState<number>?,
	ScrollBarThickness: CanBeState<number>?,
	ScrollingDirection: CanBeState<Enum.ScrollingDirection>?,
	ScrollingEnabled: CanBeState<boolean>?,
	TopImage: CanBeState<string>?,
	VerticalScrollBarInset: CanBeState<Enum.ScrollBarInset>?,
	VerticalScrollBarPosition: CanBeState<Enum.VerticalScrollBarPosition>?,
} & GuiObjectProperties

type TextBoxProperties = {
	[string]: nil,
	ClearTextOnFocus: CanBeState<boolean>?,
	CursorPosition: CanBeState<number>?,
	FontFace: CanBeState<Enum.Font>?,
	LineHeight: CanBeState<number>?,
	MaxVisibleGraphemes: CanBeState<number>?,
	MultiLine: CanBeState<boolean>?,
	PlaceholderColor3: CanBeState<Color3>?,
	PlaceholderText: CanBeState<string>?,
	RichText: CanBeState<boolean>?,
	SelectionStart: CanBeState<number>?,
	ShowNativeInput: CanBeState<boolean>?,
	Text: CanBeState<string>?,
	TextColor3: CanBeState<Color3>?,
	TextEditable: CanBeState<boolean>?,
	TextScaled: CanBeState<boolean>?,
	TextSize: CanBeState<number>?,
	TextStrokeColor3: CanBeState<Color3>?,
	TextStrokeTransparency: CanBeState<number>?,
	TextTransparency: CanBeState<number>?,
	TextTruncate: CanBeState<Enum.TextTruncate>?,
	TextWrapped: CanBeState<boolean>?,
	TextXAlignment: CanBeState<Enum.TextXAlignment>?,
	TextYAlignment: CanBeState<Enum.TextYAlignment>?,
} & GuiObjectProperties

type VideoFrameProperties = {
	[string]: nil,
	Looped: CanBeState<boolean>?,
	Playing: CanBeState<boolean>?,
	TimePosition: CanBeState<number>?,
	Video: CanBeState<string>?,
	Volume: CanBeState<number>?,
} & GuiObjectProperties

type ViewportFrameProperties = {
	[string]: nil,
	Ambient: CanBeState<Color3>?,
	CurrentCamera: CanBeState<Camera>?,
	ImageColor3: CanBeState<Color3>?,
	ImageTransparency: CanBeState<number>?,
	LightColor: CanBeState<Color3>?,
	LightDirection: CanBeState<Vector3>?,
} & GuiObjectProperties

type LayerCollectorProperties = {
	[string]: nil,
	Enabled: CanBeState<boolean>?,
	ResetOnSpawn: CanBeState<boolean>?,
	ZIndexBehavior: CanBeState<Enum.ZIndexBehavior>?,
} & GuiBase2dProperties

type BillboardGuiProperties = {
	[string]: nil,
	Active: CanBeState<boolean>?,
	Adornee: CanBeState<Instance>?,
	AlwaysOnTop: CanBeState<boolean>?,
	Brightness: CanBeState<number>?,
	ClipsDescendants: CanBeState<boolean>?,
	DistanceLowerLimit: CanBeState<number>?,
	DistanceStep: CanBeState<number>?,
	DistanceUpperLimit: CanBeState<number>?,
	ExtentsOffset: CanBeState<Vector3>?,
	ExtentsOffsetWorldSpace: CanBeState<Vector3>?,
	LightInfluence: CanBeState<number>?,
	MaxDistance: CanBeState<number>?,
	PlayerToHideFrom: CanBeState<Instance>?,
	Size: CanBeState<UDim2>?,
	SizeOffset: CanBeState<Vector2>?,
	StudsOffset: CanBeState<Vector3>?,
	StudsOffsetWorldSpace: CanBeState<Vector3>?,
} & LayerCollectorProperties

type PluginGuiProperties = {
	[string]: nil,
	Title: CanBeState<string>?,
} & LayerCollectorProperties

type ScreenGuiProperties = {
	[string]: nil,
	ClipToDeviceSafeArea: CanBeState<boolean>?,
	DisplayOrder: CanBeState<number>?,
	IgnoreGuiInset: CanBeState<boolean>?,
	SafeAreaCompatibility: CanBeState<Enum.SafeAreaCompatibility>?,
	ScreenInsets: CanBeState<Enum.ScreenInsets>?,
} & LayerCollectorProperties

type SurfaceGuiBaseProperties = {
	[string]: nil,
	Active: CanBeState<boolean>?,
	Adornee: CanBeState<Instance>?,
	Face: CanBeState<Enum.NormalId>?,
} & LayerCollectorProperties

type AdGuiProperties = {
	[string]: nil,
	AdShape: CanBeState<Enum.AdShape>?,
} & SurfaceGuiBaseProperties

type SurfaceGuiProperties = {
	[string]: nil,
	AlwaysOnTop: CanBeState<boolean>?,
	Brightness: CanBeState<number>?,
	CanvasSize: CanBeState<Vector2>?,
	ClipsDescendants: CanBeState<boolean>?,
	LightInfluence: CanBeState<number>?,
	PixelsPerStud: CanBeState<number>?,
	SizingMode: CanBeState<Enum.SurfaceGuiSizingMode>?,
	ToolPunchThroughDistance: CanBeState<number>?,
	ZOffset: CanBeState<number>?,
} & SurfaceGuiBaseProperties

type TextureGuiExperimentalProperties = {
	[string]: nil,
	Size: CanBeState<Vector2>?,
} & LayerCollectorProperties

type HighlightProperties = {
	[string]: nil,
	Adornee: CanBeState<Instance>?,
	DepthMode: CanBeState<Enum.HighlightDepthMode>?,
	Enabled: CanBeState<boolean>?,
	FillColor: CanBeState<Color3>?,
	FillTransparency: CanBeState<number>?,
	OutlineColor: CanBeState<Color3>?,
	OutlineTransparency: CanBeState<number>?,
} & InstanceProperties

type UIAspectRatioConstraintProperties = {
	[string]: nil,
	AspectRatio: CanBeState<number>?,
	AspectType: CanBeState<Enum.AspectType>?,
	DominantAxis: CanBeState<Enum.DominantAxis>?,
} & InstanceProperties

type UISizeConstraintProperties = {
	[string]: nil,
	MaxSize: CanBeState<Vector2>?,
	MinSize: CanBeState<Vector2>?,
} & InstanceProperties

type UITextSizeConstraintProperties = {
	[string]: nil,
	MaxTextSize: CanBeState<number>?,
	MinTextSize: CanBeState<number>?,
} & InstanceProperties

type UICornerProperties = {
	[string]: nil,
	CornerRadius: CanBeState<UDim>?,
} & InstanceProperties

type UIGradientProperties = {
	[string]: nil,
	Color: CanBeState<ColorSequence>?,
	Enabled: CanBeState<boolean>?,
	Offset: CanBeState<Vector2>?,
	Rotation: CanBeState<number>?,
	Transparency: CanBeState<NumberSequence>?,
} & InstanceProperties

type UIGridStyleLayoutProperties = {
	[string]: nil,
	FillDirection: CanBeState<Enum.FillDirection>?,
	HorizontalAlignment: CanBeState<Enum.HorizontalAlignment>?,
	SortOrder: CanBeState<Enum.SortOrder>?,
	VerticalAlignment: CanBeState<Enum.VerticalAlignment>?,
} & InstanceProperties

type UIGridLayoutProperties = {
	[string]: nil,
	CellPadding: CanBeState<UDim2>?,
	CellSize: CanBeState<UDim2>?,
	FillDirectionMaxCells: CanBeState<number>?,
	StartCorner: CanBeState<Enum.StartCorner>?,
} & UIGridStyleLayoutProperties

type UIListLayoutProperties = {
	[string]: nil,
	Padding: CanBeState<UDim>?,
} & UIGridStyleLayoutProperties

type UIPageLayoutProperties = {
	[string]: nil,
	Animated: CanBeState<boolean>?,
	Circular: CanBeState<boolean>?,
	EasingDirection: CanBeState<Enum.EasingDirection>?,
	EasingStyle: CanBeState<Enum.EasingStyle>?,
	GamepadInputEnabled: CanBeState<boolean>?,
	Padding: CanBeState<UDim>?,
	ScrollWheelInputEnabled: CanBeState<boolean>?,
	TouchInputEnabled: CanBeState<boolean>?,
	TweenTime: CanBeState<number>?,
} & UIGridStyleLayoutProperties

type UITableLayoutProperties = {
	[string]: nil,
	FillEmptySpaceColumns: CanBeState<boolean>?,
	FillEmptySpaceRows: CanBeState<boolean>?,
	MajorAxis: CanBeState<Enum.TableMajorAxis>?,
	Padding: CanBeState<UDim2>?,
} & UIGridStyleLayoutProperties

type UIPaddingProperties = {
	[string]: nil,
	PaddingBottom: CanBeState<UDim>?,
	PaddingLeft: CanBeState<UDim>?,
	PaddingRight: CanBeState<UDim>?,
	PaddingTop: CanBeState<UDim>?,
} & InstanceProperties

type UIScaleProperties = {
	[string]: nil,
	Scale: CanBeState<number>?,
} & InstanceProperties

type UIStrokeProperties = {
	[string]: nil,
	ApplyStrokeMode: CanBeState<Enum.ApplyStrokeMode>?,
	Color: CanBeState<Color3>?,
	Enabled: CanBeState<boolean>?,
	LineJoinMode: CanBeState<Enum.LineJoinMode>?,
	Thickness: CanBeState<number>?,
	Transparency: CanBeState<number>?,
} & InstanceProperties

type GuiBase2dEvents = {
	[string]: nil,
	SelectionChanged: ((amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> nil)?,
} & InstanceEvents

type InstanceEvents = {
	[string]: nil,
	AncestryChanged: ((child: Instance, parent: Instance) -> nil)?,
	AttributeChanged: ((attribute: string) -> nil)?,
	Changed: ((property: string) -> nil)?,
	ChildAdded: ((child: Instance) -> nil)?,
	ChildRemoved: ((child: Instance) -> nil)?,
	DescendantAdded: ((descendant: Instance) -> nil)?,
	DescendantRemoving: ((descendant: Instance) -> nil)?,
	Destroying: (() -> nil)?,
}

type HandleAdornmentEvents = {
	[string]: nil,
	MouseButton1Down: (() -> nil)?,
	MouseButton1Up: (() -> nil)?,
	MouseEnter: (() -> nil)?,
	MouseLeave: (() -> nil)?,
} & InstanceEvents

type ArcHandlesEvents = {
	[string]: nil,
	MouseButton1Down: ((axis: Enum.Axis) -> nil)?,
	MouseButton1Up: ((axis: Enum.Axis) -> nil)?,
	MouseDrag: ((axis: Enum.Axis, relativeAngle: number, deltaRadius: number) -> nil)?,
	MouseEnter: ((axis: Enum.Axis) -> nil)?,
	MouseLeave: ((axis: Enum.Axis) -> nil)?,
} & InstanceEvents

type HandlesEvents = {
	[string]: nil,
	MouseButton1Down: ((face: Enum.NormalId) -> nil)?,
	MouseButton1Up: ((face: Enum.NormalId) -> nil)?,
	MouseDrag: ((face: Enum.NormalId, distance: number) -> nil)?,
	MouseEnter: ((face: Enum.NormalId) -> nil)?,
	MouseLeave: ((face: Enum.NormalId) -> nil)?,
} & InstanceEvents

type GuiObjectEvents = {
	[string]: nil,
	InputBegan: ((input: InputObject) -> nil)?,
	InputChanged: ((input: InputObject) -> nil)?,
	InputEnded: ((input: InputObject) -> nil)?,
	MouseEnter: ((x: number, y: number) -> nil)?,
	MouseLeave: ((x: number, y: number) -> nil)?,
	MouseMoved: ((x: number, y: number) -> nil)?,
	MouseWheelBackward: ((x: number, y: number) -> nil)?,
	MouseWheelForward: ((x: number, y: number) -> nil)?,
	SelectionGained: (() -> nil)?,
	SelectionLost: (() -> nil)?,
	TouchLongPress: ((touchPositions: {[number]: any}, state: Enum.UserInputState) -> nil)?,
	TouchPan: ((touchPositions: {[number]: any}, totalTranslation: Vector2, velocity: Vector2, state: Enum.UserInputState) -> nil)?,
	TouchPinch: ((touchPositions: {[number]: any}, scale: number, velocity: number, state: Enum.UserInputState) -> nil)?,
	TouchRotate: ((touchPositions: {[number]: any}, rotation: number, velocity: number, state: Enum.UserInputState) -> nil)?,
	TouchSwipe: ((swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> nil)?,
	TouchTap: ((touchPositions: {[number]: any}) -> nil)?,
} & GuiBase2dEvents

type GuiButtonEvents = {
	[string]: nil,
	Activated: ((inputObject: InputObject, clickCount: number) -> nil)?,
	MouseButton1Click: (() -> nil)?,
	MouseButton1Down: ((x: number, y: number) -> nil)?,
	MouseButton1Up: ((x: number, y: number) -> nil)?,
	MouseButton2Click: (() -> nil)?,
	MouseButton2Down: ((x: number, y: number) -> nil)?,
	MouseButton2Up: ((x: number, y: number) -> nil)?,
} & GuiObjectEvents

type TextBoxEvents = {
	[string]: nil,
	FocusLost: ((enterPressed: boolean, inputThatCausedFocusLoss: InputObject) -> nil)?,
	Focused: (() -> nil)?,
	ReturnPressedFromOnScreenKeyboard: (() -> nil)?,
} & GuiObjectEvents

type VideoFrameEvents = {
	[string]: nil,
	DidLoop: ((video: string) -> nil)?,
	Ended: ((video: string) -> nil)?,
	Loaded: ((video: string) -> nil)?,
	Paused: ((video: string) -> nil)?,
	Played: ((video: string) -> nil)?,
} & GuiObjectEvents

type PluginGuiEvents = {
	[string]: nil,
	PluginDragDropped: ((dragData: {[any]: any}) -> nil)?,
	PluginDragEntered: ((dragData: {[any]: any}) -> nil)?,
	PluginDragLeft: ((dragData: {[any]: any}) -> nil)?,
	PluginDragMoved: ((dragData: {[any]: any}) -> nil)?,
	WindowFocusReleased: (() -> nil)?,
	WindowFocused: (() -> nil)?,
} & GuiBase2dEvents

type UIPageLayoutEvents = {
	[string]: nil,
	PageEnter: ((page: Instance) -> nil)?,
	PageLeave: ((page: Instance) -> nil)?,
	Stopped: ((currentPage: Instance) -> nil)?,
} & InstanceEvents

export type InstanceConstructor = (
	((className: "SelectionBox") -> (properties: {
		Properties: SelectionBoxProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> SelectionBox)
	& ((className: "BoxHandleAdornment") -> (properties: {
		Properties: BoxHandleAdornmentProperties?,
		Children: {[number]: Instance}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> BoxHandleAdornment)
	& ((className: "ConeHandleAdornment") -> (properties: {
		Properties: ConeHandleAdornmentProperties?,
		Children: {[number]: Instance}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ConeHandleAdornment)
	& ((className: "CylinderHandleAdornment") -> (properties: {
		Properties: CylinderHandleAdornmentProperties?,
		Children: {[number]: Instance}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> CylinderHandleAdornment)
	& ((className: "ImageHandleAdornment") -> (properties: {
		Properties: ImageHandleAdornmentProperties?,
		Children: {[number]: Instance}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ImageHandleAdornment)
	& ((className: "LineHandleAdornment") -> (properties: {
		Properties: LineHandleAdornmentProperties?,
		Children: {[number]: Instance}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> LineHandleAdornment)
	& ((className: "SphereHandleAdornment") -> (properties: {
		Properties: SphereHandleAdornmentProperties?,
		Children: {[number]: Instance}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> SphereHandleAdornment)
	& ((className: "WireframeHandleAdornment") -> (properties: {
		Properties: WireframeHandleAdornmentProperties?,
		Children: {[number]: Instance}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> WireframeHandleAdornment)
	& ((className: "SelectionSphere") -> (properties: {
		Properties: SelectionSphereProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> SelectionSphere)
	& ((className: "ArcHandles") -> (properties: {
		Properties: ArcHandlesProperties?,
		Children: {[number]: Instance}?,
		Events: ArcHandlesEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ArcHandles)
	& ((className: "Handles") -> (properties: {
		Properties: HandlesProperties?,
		Children: {[number]: Instance}?,
		Events: HandlesEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> Handles)
	& ((className: "SurfaceSelection") -> (properties: {
		Properties: SurfaceSelectionProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> SurfaceSelection)
	& ((className: "CanvasGroup") -> (properties: {
		Properties: CanvasGroupProperties?,
		Children: {[number]: Instance}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> CanvasGroup)
	& ((className: "Frame") -> (properties: {
		Properties: FrameProperties?,
		Children: {[number]: Instance}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> Frame)
	& ((className: "ImageButton") -> (properties: {
		Properties: ImageButtonProperties?,
		Children: {[number]: Instance}?,
		Events: GuiButtonEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ImageButton)
	& ((className: "TextButton") -> (properties: {
		Properties: TextButtonProperties?,
		Children: {[number]: Instance}?,
		Events: GuiButtonEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> TextButton)
	& ((className: "ImageLabel") -> (properties: {
		Properties: ImageLabelProperties?,
		Children: {[number]: Instance}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ImageLabel)
	& ((className: "TextLabel") -> (properties: {
		Properties: TextLabelProperties?,
		Children: {[number]: Instance}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> TextLabel)
	& ((className: "ScrollingFrame") -> (properties: {
		Properties: ScrollingFrameProperties?,
		Children: {[number]: Instance}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ScrollingFrame)
	& ((className: "TextBox") -> (properties: {
		Properties: TextBoxProperties?,
		Children: {[number]: Instance}?,
		Events: TextBoxEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> TextBox)
	& ((className: "VideoFrame") -> (properties: {
		Properties: VideoFrameProperties?,
		Children: {[number]: Instance}?,
		Events: VideoFrameEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> VideoFrame)
	& ((className: "ViewportFrame") -> (properties: {
		Properties: ViewportFrameProperties?,
		Children: {[number]: Instance}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ViewportFrame)
	& ((className: "BillboardGui") -> (properties: {
		Properties: BillboardGuiProperties?,
		Children: {[number]: Instance}?,
		Events: GuiBase2dEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> BillboardGui)
	& ((className: "AdGui") -> (properties: {
		Properties: AdGuiProperties?,
		Children: {[number]: Instance}?,
		Events: GuiBase2dEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> AdGui)
	& ((className: "SurfaceGui") -> (properties: {
		Properties: SurfaceGuiProperties?,
		Children: {[number]: Instance}?,
		Events: GuiBase2dEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> SurfaceGui)
	& ((className: "TextureGuiExperimental") -> (properties: {
		Properties: TextureGuiExperimentalProperties?,
		Children: {[number]: Instance}?,
		Events: GuiBase2dEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> TextureGuiExperimental)
	& ((className: "Highlight") -> (properties: {
		Properties: HighlightProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> Highlight)
	& ((className: "UIAspectRatioConstraint") -> (properties: {
		Properties: UIAspectRatioConstraintProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIAspectRatioConstraint)
	& ((className: "UISizeConstraint") -> (properties: {
		Properties: UISizeConstraintProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UISizeConstraint)
	& ((className: "UITextSizeConstraint") -> (properties: {
		Properties: UITextSizeConstraintProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UITextSizeConstraint)
	& ((className: "UICorner") -> (properties: {
		Properties: UICornerProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UICorner)
	& ((className: "UIGradient") -> (properties: {
		Properties: UIGradientProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIGradient)
	& ((className: "UIGridLayout") -> (properties: {
		Properties: UIGridLayoutProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIGridLayout)
	& ((className: "UIListLayout") -> (properties: {
		Properties: UIListLayoutProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIListLayout)
	& ((className: "UIPageLayout") -> (properties: {
		Properties: UIPageLayoutProperties?,
		Children: {[number]: Instance}?,
		Events: UIPageLayoutEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIPageLayout)
	& ((className: "UITableLayout") -> (properties: {
		Properties: UITableLayoutProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UITableLayout)
	& ((className: "UIPadding") -> (properties: {
		Properties: UIPaddingProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIPadding)
	& ((className: "UIScale") -> (properties: {
		Properties: UIScaleProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIScale)
	& ((className: "UIStroke") -> (properties: {
		Properties: UIStrokeProperties?,
		Children: {[number]: Instance}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIStroke)
	& ((className: "ArcHandles") -> (properties: {
		Properties: ArcHandlesProperties?,
		Children: {[number]: Instance}?,
		Events: ArcHandlesEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ArcHandles)
	& ((className: "Handles") -> (properties: {
		Properties: HandlesProperties?,
		Children: {[number]: Instance}?,
		Events: HandlesEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> Handles)
	& ((className: "TextBox") -> (properties: {
		Properties: TextBoxProperties?,
		Children: {[number]: Instance}?,
		Events: TextBoxEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> TextBox)
	& ((className: "VideoFrame") -> (properties: {
		Properties: VideoFrameProperties?,
		Children: {[number]: Instance}?,
		Events: VideoFrameEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> VideoFrame)
	& ((className: "UIPageLayout") -> (properties: {
		Properties: UIPageLayoutProperties?,
		Children: {[number]: Instance}?,
		Events: UIPageLayoutEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> UIPageLayout)
	& ((className: string) -> (properties: {
		Properties: {[string]: CanBeState<any>}?,
		Children: {[number]: any}?,
		Events: {[string]: () -> nil}?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> Instance)
)

export type InstanceMounter = (
	((inst: SelectionBox) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & SelectionBoxProperties) -> SelectionBox)
	& ((inst: BoxHandleAdornment) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & BoxHandleAdornmentProperties) -> BoxHandleAdornment)
	& ((inst: ConeHandleAdornment) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ConeHandleAdornmentProperties) -> ConeHandleAdornment)
	& ((inst: CylinderHandleAdornment) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & CylinderHandleAdornmentProperties) -> CylinderHandleAdornment)
	& ((inst: ImageHandleAdornment) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ImageHandleAdornmentProperties) -> ImageHandleAdornment)
	& ((inst: LineHandleAdornment) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & LineHandleAdornmentProperties) -> LineHandleAdornment)
	& ((inst: SphereHandleAdornment) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & SphereHandleAdornmentProperties) -> SphereHandleAdornment)
	& ((inst: WireframeHandleAdornment) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandleAdornmentEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & WireframeHandleAdornmentProperties) -> WireframeHandleAdornment)
	& ((inst: SelectionSphere) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & SelectionSphereProperties) -> SelectionSphere)
	& ((inst: ArcHandles) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: ArcHandlesEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ArcHandlesProperties) -> ArcHandles)
	& ((inst: Handles) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandlesEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & HandlesProperties) -> Handles)
	& ((inst: SurfaceSelection) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & SurfaceSelectionProperties) -> SurfaceSelection)
	& ((inst: CanvasGroup) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & CanvasGroupProperties) -> CanvasGroup)
	& ((inst: Frame) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & FrameProperties) -> Frame)
	& ((inst: ImageButton) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiButtonEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ImageButtonProperties) -> ImageButton)
	& ((inst: TextButton) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiButtonEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & TextButtonProperties) -> TextButton)
	& ((inst: ImageLabel) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ImageLabelProperties) -> ImageLabel)
	& ((inst: TextLabel) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & TextLabelProperties) -> TextLabel)
	& ((inst: ScrollingFrame) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ScrollingFrameProperties) -> ScrollingFrame)
	& ((inst: TextBox) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: TextBoxEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & TextBoxProperties) -> TextBox)
	& ((inst: VideoFrame) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: VideoFrameEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & VideoFrameProperties) -> VideoFrame)
	& ((inst: ViewportFrame) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ViewportFrameProperties) -> ViewportFrame)
	& ((inst: BillboardGui) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiBase2dEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & BillboardGuiProperties) -> BillboardGui)
	& ((inst: AdGui) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiBase2dEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & AdGuiProperties) -> AdGui)
	& ((inst: SurfaceGui) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiBase2dEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & SurfaceGuiProperties) -> SurfaceGui)
	& ((inst: TextureGuiExperimental) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiBase2dEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & TextureGuiExperimentalProperties) -> TextureGuiExperimental)
	& ((inst: Highlight) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & HighlightProperties) -> Highlight)
	& ((inst: UIAspectRatioConstraint) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIAspectRatioConstraintProperties) -> UIAspectRatioConstraint)
	& ((inst: UISizeConstraint) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UISizeConstraintProperties) -> UISizeConstraint)
	& ((inst: UITextSizeConstraint) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UITextSizeConstraintProperties) -> UITextSizeConstraint)
	& ((inst: UICorner) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UICornerProperties) -> UICorner)
	& ((inst: UIGradient) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIGradientProperties) -> UIGradient)
	& ((inst: UIGridLayout) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIGridLayoutProperties) -> UIGridLayout)
	& ((inst: UIListLayout) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIListLayoutProperties) -> UIListLayout)
	& ((inst: UIPageLayout) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: UIPageLayoutEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIPageLayoutProperties) -> UIPageLayout)
	& ((inst: UITableLayout) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UITableLayoutProperties) -> UITableLayout)
	& ((inst: UIPadding) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIPaddingProperties) -> UIPadding)
	& ((inst: UIScale) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIScaleProperties) -> UIScale)
	& ((inst: UIStroke) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: InstanceEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIStrokeProperties) -> UIStroke)
	& ((inst: ArcHandles) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: ArcHandlesEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ArcHandlesProperties) -> ArcHandles)
	& ((inst: Handles) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: HandlesEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & HandlesProperties) -> Handles)
	& ((inst: TextBox) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: TextBoxEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & TextBoxProperties) -> TextBox)
	& ((inst: VideoFrame) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: VideoFrameEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & VideoFrameProperties) -> VideoFrame)
	& ((inst: UIPageLayout) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: UIPageLayoutEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & UIPageLayoutProperties) -> UIPageLayout)
	& ((inst: Instance) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: {[string]: () -> nil}?,
		Attributes: {[string]: CanBeState<any>}?,
		[string]: CanBeState<any>,
	}) -> Instance)
)
return {}
