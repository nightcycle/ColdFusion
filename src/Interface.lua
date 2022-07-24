--!strict

local module = script.Parent
local State: any = require(module.State)
local Mount = require(module.Mount)
local Value: any = require(module.State.Value)
export type ValueState = Value.ValueState
export type State = State.State
local Computed: any = require(module.State.Computed)
local Property: any = require(module.State.Property)
local Attribute: any = require(module.State.Attribute)
local Tween: any = require(module.State.Tween)
local Util = require(module.Util)

return function()
	return {
		Value = function(...: any): ValueState
			return Util(Value, ...)
		end,
		Computed = function(...: any): State
			return Util(Computed, ...)
		end,
		Property = function(...: any): State
			return Util(Property, ...)
		end,
		Attribute = function(...: any): State
			return Util(Attribute, ...)
		end,
		Tween = function(...: any): State
			return Util(Tween, ...)
		end,
		new = function(className: string)
			return function(params: {[any]: any})
				local inst: Instance = Instance.new(className :: any)
				assert(inst:IsA("Instance"))
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