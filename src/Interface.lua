--!strict

local module = script.Parent
local State = require(module.State)
local Mount = require(module.Mount)
local Value = require(module.State.Value)
export type ValueState = Value.ValueState
export type State = State.State
local Computed = require(module.State.Computed)
local Property = require(module.State.Property)
local Attribute = require(module.State.Attribute)
local Tween = require(module.State.Tween)
local Util = require(module.Util)

return function()
	return {
		Value = function(...: any)
			return Util(Value, ...)
		end,
		Computed = function(...: any)
			return Util(Computed, ...)
		end,
		Property = function(...: any)
			return Util(Property, ...)
		end,
		Attribute = function(...: any)
			return Util(Attribute, ...)
		end,
		Tween = function(...: any)
			return Util(Tween, ...)
		end,
		new = function(className: string)
			return function(params: {[any]: any})
				local inst = Instance.new(className :: any)
				return Mount(inst, params)
			end
		end,
		mount = Mount,
		Event = require(module:WaitForChild("Event")),
		Children = require(module:WaitForChild("Children")),
		Changed = require(module:WaitForChild("Changed")),
		fuse = nil :: any?,
	}
end