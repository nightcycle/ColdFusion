--!strict

--[[
	A common interface for accessing the values of state objects or constants.
]]

local Package = script.Parent.Parent
local xtypeof = require(Package.Utility.xtypeof)

local function unwrap<T>(item, useDependency: boolean?): T
	return if xtypeof(item) == "State" then (item):Get(useDependency) else (item :: T)
end

return unwrap