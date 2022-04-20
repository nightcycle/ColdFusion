--!nonstrict

--[[
	Constructs and returns objects which can be used to model independent
	reactive state.
]]

local Package = script.Parent.Parent
local useDependency = require(Package.Dependencies.useDependency)
local initDependency = require(Package.Dependencies.initDependency)
local updateAll = require(Package.Dependencies.updateAll)

local Abstract = require(script.Parent:WaitForChild("Abstract"))
local Value = require(script.Parent:WaitForChild("Value"))
local class = {}
setmetatable(class, Abstract)

function class:__index(k)
	local _value = rawget(self, "_value")
	
	-- print("Table Index", k, self, class)
	if rawget(self, k) then
		-- print("A")
		return rawget(self, k)
	elseif class[k] then
		-- print("B")
		return class[k]
	elseif _value and _value[k] then
		-- print("C")
		return rawget(self, "_frontEnd")[k]
	else
		-- print("D")
		self[k] = nil
	end
end

function class:__newindex(k, v)
	-- print("New Index", k, self)
	local _value = rawget(self, "_value")
	if _value == nil then rawset(self, "_value", {}) _value = rawget(self, "_value") end
	local _frontEnd = rawget(self, "_frontEnd")
	if _frontEnd == nil then rawset(self, "_frontEnd", {}) _frontEnd = rawget(self, "_frontEnd") end
	local _Maid = rawget(self, "_Maid")
	local _cleanUp = rawget(self, "_cleanUp")

	_value[k] = v
	if _frontEnd[k] then
		_frontEnd[k]:Set(v)
	else
		local val = Value(v):IsDeep()
		_frontEnd[k] = val
		_Maid["key"..k.."FrontEnd"] = val
	end
	if typeof(v) == "table" and v.type == "State" then
		v:Connect(function(new, old)
			_frontEnd[k]:Set(v, true)
		end)
	end
	if _cleanUp then
		-- print("MAID", _Maid, k, v)
		_Maid["key"..k] = v
	end
end

function class:Get() --allows for iteration through things as needed
	return self._frontEnd
end

function class:Clear() --erases frontend and backend
	for k, v in pairs(self._value) do
		self._value[k] = nil
		self._Maid["key"..k] = nil
		self._frontEnd[k] = nil
		self._Maid["key"..k.."FrontEnd"] = nil
	end
end

function class:Destroy()
	-- print("Destroying")
	if self._destroyed == true then return end
	self._destroyed = true
	if self._cleanUp == false then
		self:Clear(false)
	else
		self:Clear(true)
	end
	if self._Maid then
		self._Maid:Destroy()
	end
	for k, v in pairs(self._frontEnd) do
		v:Destroy()
	end
	setmetatable(self, nil)
end

local function Table<T>(initialTable)
	local self = Abstract.new("Table", {})
	self._value = {}
	self._frontEnd = {}
	setmetatable(self, class)
	for k, v in pairs(initialTable) do
		self[k] = v
	end
	initDependency(self)
	return self
end

return Table