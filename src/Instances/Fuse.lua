local runService = game:GetService("RunService")

-- Used to create a tunnel between client and server
local src = script.Parent.Parent
local packages = src.Parent
local maidConstructor = require(packages:WaitForChild("maid"))

local Fuse = {}
Fuse.__index = Fuse

function Fuse:Destroy()
	self._Maid:Destroy()
end

function Fuse:_new(key)
	local fusion = require(script.Parent.Parent)
	local const = fusion[key]
	local obj = {
		Constructor = const
	}
	setmetatable(obj, {
		__call = function(s, ...)
			local newThing = const(...)
			if typeof(newThing) == "function" then
				local secConst = newThing
				local interceptor = {}
				local meta = {
					__call = function(i, ...)
						local inst = secConst(...)
						self._Maid:GiveTask(inst)
						return inst
					end
				}
				setmetatable(interceptor, meta)
				return interceptor
			elseif newThing.type == "State" then
				local state = newThing
				self._Maid:GiveTask(state)
				return state
			end
		end
	})
	return obj
end

function Fuse:Connect(key, ...)
	local args = {...}
	local params = {}
	for i=1, #args - 1 do
		table.insert(params, args[i])
	end
	local obj = self:_new(key)(unpack(args))
	self._Maid:GiveTask(obj:Connect(args[#args]))
end

return function(maid)
	local self = setmetatable({}, Fuse)
	self._Maid = maid or maidConstructor.new()
	for k, const in pairs(require(script.Parent.Parent)) do
		self[k] = self:_new(k)
	end
	self._Maid:GiveTask(self)
	return self
end