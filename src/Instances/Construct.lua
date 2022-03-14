-- constructs an OOP instance
local src = script.Parent.Parent
local packages = src.Parent
local maidConstructor = require(packages:WaitForChild("maid"))
local signalConstructor = require(packages:WaitForChild("signal"))
local Computed = require(src.State.Computed)
local Value = require(src.State.Value)
local Observe = require(src.State.Observe)

local attributeTypes = {
	string = true,
	boolean = true,
	number = true,
	UDim = true,
	UDim2 = true,
	BrickColor = true,
	Color3 = true,
	Vector2 = true,
	Vector3 = true,
	NumberSequence = true,
	ColorSequence = true,
	NumberRange = true,
	Rect = true,
}

local valueTypes = {
	boolean = "BoolValue",
	BrickColor = "BrickColorValue",
	CFrame = "CFrameValue",
	Color3 = "Color3Value",
	number = "NumberValue",
	Instance = "ObjectValue",
	Ray = "RayValue",
	string = "StringValue",
	Vector3 = "Vector3Value",
}

local metaTags = {
	__index = true,
	__newindex = true,
	__call = true,
	__concat = true,
	__unm = true,
	__add = true,
	__sub = true,
	__mul = true,
	__div = true,
	__mod = true,
	__pow = true,
	__tostring = true,
	__metatable = true,
	__eq = true,
	__lt = true,
	__le = true,
	__mode = true,
	__len = true,
}

function assembleObject(tabl)
	local object = {}
	local meta = getmetatable(tabl)
	if meta then
		meta = assembleObject(meta)
	end
	for k, v in pairs(getmetatable(tabl) or {}) do
		if not metaTags[k] then
			object[k] = v
		end
	end
	for k, v in pairs(tabl) do
		object[k] = v
	end
	return object
end

return function(object)
	local self = assembleObject(object)

	local maid = self._maid
	assert(maid ~= nil, "No maid found")

	local _Instance
	if object.Instance ~= nil then
		if typeof(object.Instance) == "Instance" then
			_Instance = Value(object.Instance)
			maid:GiveTask(object.Instance.Destroying:Connect(function()
				_Instance:set(nil)
				maid:Destroy()
			end))
		else
			_Instance = object.Instance
		end
	else
		_Instance = Computed(function()
			local inst = self:Build()
			self._maid.Instance = inst
			return inst
		end)
	end

	local function setFunction(inst, key, value)
		if not inst then
			self._maid["f_"..key] = nil
		end
		local bindableFunction = Instance.new("BindableFunction", inst)
		bindableFunction.Name = key
		self._maid["f_"..key] = bindableFunction
		bindableFunction.OnInvoke = function(...)
			value(...)
		end
	end

	local function setEvent(inst, key, value)
		if not inst then
			self._maid["f_"..key] = nil
			self._maid["f_event_"..key] = nil
		end
		local bindableEvent = Instance.new("BindableEvent", inst)
		bindableEvent.Name = key
		self._maid["f_"..key] = bindableEvent
		self._maid["f_event_"..key] = value:Connect(function(...)
			bindableEvent:Fire(...)
		end)
	end

	local function setValue(inst, key, value)
		if attributeTypes[typeof(value)] then
			inst:SetAttribute(key, value)
			return inst:GetAttributeChangedSignal(key), function()
				return inst:GetAttribute(key)
			end, function(v)
				inst:SetAttribute(key, v)
			end
		elseif valueTypes[typeof(value)] then
			local valObj = Instance.new(valueTypes[typeof(value)], inst)
			valObj.Name = key
			self._maid["v_"..key] = valObj
			return valObj.Changed, function()
				return valObj.Value
			end, function(v)
				valObj.Value = v
			end
		else
			local sig = signalConstructor.new()
			self._maid["v_"..key] = sig
			return sig, function()
				
			end, function()
				
			end
		end
	end

	local function setProperty(inst, key, value)
		if not inst then
			self._maid["se_"..key] = nil
			self._maid["s_"..key] = nil
			self._maid["v_"..key] = nil
			return
		end
		if value.kind == "Observe" then
			setEvent(inst, key, value)
		else
			local sig, getFunc, setFunc = setValue(inst, key, value:Get())
			if value.kind == "Value"
			or value.kind == "Computed"
			or value.kind == "Receiver"
			or value.kind == "Signal" then
				self._maid["s_"..key] = Observe(value):Connect(function()
					local v = value:Get()
					setFunc(v)
				end)
			end
			if value.kind == "Value" then
				self._maid["se_"..key] = sig:Connect(function()
					value:Set(getFunc())
				end)
			end
		end
	end

	for key, value in pairs(self) do
		if string.sub(key, 1, 1) ~= "_" then
			Computed(_Instance, function(inst)
				if typeof(value) == "function" then
					if key ~= "new" then
						setFunction(inst, key, value)
					end
				elseif typeof(value) == "RBXScriptSignal" or (type(value) == "table" and value.ClassName == "Signal") then
					setEvent(inst, key, value)
				elseif typeof(value) == "table" and value.type == "State" then
					if key ~= "Instance" then
						setProperty(inst, key, value)
					end
				end
			end)
		end
	end

	return _Instance
end