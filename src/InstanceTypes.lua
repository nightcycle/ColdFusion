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

type ViewportFrameProperties = {
	[string]: nil,
	Ambient: CanBeState<Color3>?,
	CurrentCamera: CanBeState<Camera>?,
	ImageColor3: CanBeState<Color3>?,
	ImageTransparency: CanBeState<number>?,
	LightColor: CanBeState<Color3>?,
	LightDirection: CanBeState<Vector3>?,
} & GuiObjectProperties

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

export type InstanceConstructor = (
	((className: "Frame") -> (properties: {
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
	& ((className: "ViewportFrame") -> (properties: {
		Properties: ViewportFrameProperties?,
		Children: {[number]: Instance}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> ViewportFrame)
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
	& ((className: string) -> (properties: {
		Properties: {[string]: CanBeState<any>}?,
		Children: {[number]: any}?,
		Events: {[string]: () -> nil}?,
		Attributes: {[string]: CanBeState<any>}?,
	}) -> Instance)
)

export type InstanceMounter = (
	((inst: Frame) -> (properties: {
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
	& ((inst: ViewportFrame) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: GuiObjectEvents?,
		Attributes: {[string]: CanBeState<any>}?,
	} & ViewportFrameProperties) -> ViewportFrame)
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
	& ((inst: Instance) -> (properties: {
		Children: {[number]: CanBeState<Instance?>}?,
		Events: {[string]: () -> nil}?,
		Attributes: {[string]: CanBeState<any>}?,
		[string]: CanBeState<any>,
	}) -> Instance)
)
return {}
