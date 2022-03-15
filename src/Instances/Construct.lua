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
	["nil"] = "ObjectValue",
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

	local function valueContainer(inst, key, value)
		local valMaid = maidConstructor.new()
		local signal = signalConstructor.new()
		
		local readFromStateEnabled = value.kind == "Value"
		or value.kind == "Computed"
		or value.kind == "Receiver"
		or value.kind == "Attribute"
		or value.kind == "Property"
		or value.kind == "Signal"

		local writeToStateEnabled = value.kind == "Value"
		-- print("Containing value", inst:GetFullName(), key, value)
		return {
			_maid = valMaid,
			signal = signal,
			Destroy = function(s)
				valMaid:Destroy()
			end,
			Build = Computed(value, function(val)
				-- print("Val changed", key, val)
				if not readFromStateEnabled then return end
				-- print("1", key, val)
				local typ = typeof(val)
				local isAttribute = attributeTypes[typ]
				local isObject = valueTypes[typ]
				-- print("Is", key, val, isAttribute, isObject)
				if isAttribute then
					-- print("1A", key, val)
					valMaid.ObjectChanged = nil
					valMaid.Object = nil
					inst:SetAttribute(key, val)
					if writeToStateEnabled then
						valMaid.AttributeChanged = inst:GetAttributeChangedSignal(key):Connect(function()
							signal:Fire(inst:GetAttribute(key))
						end)
					end
				elseif isObject then
					-- print("1B", key, val)
					valMaid.AttributeChanged = nil
					inst:SetAttribute(key, nil)
					if not valMaid.Object or valMaid.Object.ClassName ~= isObject then
						valMaid.Object = Instance.new(isObject, inst)
						valMaid.Object.Name = key
					end
					valMaid.Object.Value = val
					if writeToStateEnabled then
						valMaid.ObjectChanged = valMaid.Object:GetPropertyChangedSignal("Value"):Connect(function()
							signal:Fire(valMaid.Object.Value)
						end)
					end
				else
					-- print("1C", key, val)
					valMaid.ObjectChanged = nil
					valMaid.AttributeChanged = nil
					valMaid.Object = nil
				end

				if writeToStateEnabled then
					-- print("Write", key, val)
					valMaid.Signal = signal:Connect(function(v)
						-- print("Sig", key, v)
						value:Set(v)
					end)
				end
			end),
		}

	end

	local function setProperty(inst, key, value)
		-- print("Setting property", inst:GetFullName(), key, value)
		if not inst then
			-- print("Not inst")
			self._maid["se_"..key] = nil
			self._maid["s_"..key] = nil
			self._maid["v_"..key] = nil
			return
		end
		if value.kind == "Observe" then
			-- print("Is observer")
			setEvent(inst, key, value)
		else
			local val = valueContainer(inst, key, value)
			self._maid["vc_"..key] = val
			self._maid["s_"..key] = Observe(value):Connect(function()
				if val and val.Build then
					val.Build:Get()
				end
			end)
			-- local sig, getFunc, setFunc = setValue(inst, key, value)
			-- if value.kind == "Value"
			-- or value.kind == "Computed"
			-- or value.kind == "Receiver"
			-- or value.kind == "Attribute"
			-- or value.kind == "Property"
			-- or value.kind == "Signal" then
			-- 	self._maid["s_"..key] = Observe(value):Connect(function()
			-- 		local v = value:Get()
			-- 		setFunc(v)
			-- 	end)
			-- end
			-- if value.kind == "Value" then
			-- 	self._maid["se_"..key] = sig:Connect(function()
			-- 		value:Set(getFunc())
			-- 	end)
			-- end
		end
	end

	-- print("Constructing", self)
	for key, value in pairs(self) do
		-- print("Key", key, "Value", value)
		if string.sub(key, 1, 1) ~= "_" then
			Computed(_Instance, function(inst)
				-- print("Computing ", key)
				if typeof(value) == "function" then
					-- print("Function", key)
					if key ~= "new" then
						setFunction(inst, key, value)
					end
				elseif typeof(value) == "RBXScriptSignal" or (type(value) == "table" and value.ClassName == "Signal") then
					-- print("Event", key)
					setEvent(inst, key, value)
				elseif typeof(value) == "table" and value.type == "State" then
					-- print("Property", key)
					if key ~= "Instance" then
						setProperty(inst, key, value)
					end
				end
			end)
		end
	end

	return _Instance
end