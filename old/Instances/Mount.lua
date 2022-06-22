--!strict

--[[
	Constructs and returns a new instance, with options for setting properties,
	event handlers and other attributes on the instance right away.
]]

local Package = script.Parent.Parent
local PubTypes = require(Package.PubTypes)
local defaultProps = require(Package.Instances.defaultProps)
local semiWeakRef = require(Package.Instances.semiWeakRef)
local applyInstanceProps = require(Package.Instances.applyInstanceProps)
local logError= require(Package.Logging.logError)

local function Mount(inst: Instance)
	return function(props: PubTypes.PropertyTable): Instance
		local instance = inst

		applyInstanceProps(props, semiWeakRef(instance))

		return instance
	end
end

return Mount