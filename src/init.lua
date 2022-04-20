local Value = require(script:WaitForChild("State"):WaitForChild("Value"))
local Computed = require(script:WaitForChild("State"):WaitForChild("Computed"))
local Property = require(script:WaitForChild("State"):WaitForChild("Property"))
local Attribute = require(script:WaitForChild("State"):WaitForChild("Attribute"))
local Signal = require(script:WaitForChild("State"):WaitForChild("Signal"))
local Table = require(script:WaitForChild("State"):WaitForChild("Table"))
local OnChanged = require(script:WaitForChild("Instances"):WaitForChild("OnChanged"))
local Children = require(script:WaitForChild("Instances"):WaitForChild("Children"))
local Event = require(script:WaitForChild("Instances"):WaitForChild("Event"))
local New = require(script:WaitForChild("Instances"):WaitForChild("New"))
local Mount = require(script:WaitForChild("Instances"):WaitForChild("Mount"))
local Construct = require(script:WaitForChild("Instances"):WaitForChild("Construct"))

--[[
	@startuml
	!theme crt-amber
	!include State/Value.lua
	!include State/Table.lua
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
		Table: Table
		State(...): ValueState | AttributeState | SignalState | ComputedState | PropertyState | TableState
	}
	@enduml
]]--

return {
	mount = Mount,
	new = New,
	construct = Construct,
	Value = Value,
	Attribute = Attribute,
	Signal = Signal,
	Property = Property,
	Computed = Computed,
	Table = Table,
	Children = Children,
	Event = Event,
	OnChanged = OnChanged,
	State = function (...)
		local params = {...}
		local first = params[1]
		local second = params[2]
		local final = params[#params]

		if typeof(first) == "RBXScriptSignal"
		or (type(first) == "table" and
			(first.ClassName == "Signal"
				or (first._value ~= nil
				and typeof(first._value) == "RBXScriptSignal")
			)
		) then
			return Signal(...)
		elseif typeof(first) == "table" and #params == 1 then
			return Table(...)
		end

		if typeof(final) == "function" then
			return Computed(...)
		end
		
		if type(first) == "table" then
			return Table(...)
		elseif #params <= 1 then
			return Value(...)
		end

		if typeof(first) == "Instance" then
			if typeof(second) == "table" and second.type ~= "State" then
				return Mount(...)
			else
				local propSuccess = pcall(function()
					local v = first[second]
				end)
				if propSuccess then
					return Property(...)
				else
					return Attribute(...)
				end
			end
		end
	end,
}
