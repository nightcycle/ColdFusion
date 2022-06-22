local Value = require(script:WaitForChild("State"):WaitForChild("Value"))
local Computed = require(script:WaitForChild("State"):WaitForChild("Computed"))
local Property = require(script:WaitForChild("State"):WaitForChild("Property"))
local Attribute = require(script:WaitForChild("State"):WaitForChild("Attribute"))
local Signal = require(script:WaitForChild("State"):WaitForChild("Signal"))
local OnChanged = require(script:WaitForChild("Instances"):WaitForChild("OnChanged"))
local Children = require(script:WaitForChild("Instances"):WaitForChild("Children"))
local Event = require(script:WaitForChild("Instances"):WaitForChild("Event"))
local New = require(script:WaitForChild("Instances"):WaitForChild("New"))
local Mount = require(script:WaitForChild("Instances"):WaitForChild("Mount"))
local Construct = require(script:WaitForChild("Instances"):WaitForChild("Construct"))
local Fuse = require(script:WaitForChild("Instances"):WaitForChild("Fuse"))

--[[
	@startuml
	!theme crt-amber
	!include State/Value.lua
	!include State/Signal.lua
	!include State/Property.lua
	!include State/Computed.lua
	!include State/Attribute.lua
	!include State/Abstract.lua
	interface ColdFusion {
		mount(inst: Instance): Constructor
		new(className: string): Constructor
		construct(obj: Object): self
		Value: ValueState
		Attribute: AttributeState
		Signal: SignalState
		Computed: ComputedState
		Property: PropertyState
		State(...): ValueState | AttributeState | SignalState | ComputedState | PropertyState | TableState
	}
	@enduml
]]--

return {
	mount = Mount,
	new = New,
	construct = Construct,
	fuse = Fuse,
	Value = Value,
	Attribute = Attribute,
	Signal = Signal,
	Property = Property,
	Computed = Computed,
	Children = Children,
	Event = Event,
	OnChanged = OnChanged,
}
