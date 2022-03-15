local runService = game:GetService("RunService")

-- Used to create a tunnel between client and server
local src = script.Parent.Parent
local packages = src.Parent
local maidConstructor = require(packages:WaitForChild("maid"))



local Fuse = {}
Fuse.__index = Fuse

function Fuse:Destroy()
	self._maid:Destroy()
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
			if newThing.Destroy then
				self._maid:GiveTask(newThing)
			end
			return newThing
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
	self._maid:GiveTask(obj:Connect(args[#args]))
end

return function(maid)
	local self = setmetatable({}, Fuse)
	self._maid = maid or maidConstructor.new()
	for k, const in pairs(require(script.Parent.Parent)) do
		self[k] = self:_new(k)
	end
	return self
end