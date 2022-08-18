local package = script
local packages = package.Parent

local Maid = require(packages.Maid)
type Maid = Maid.Maid

local SymbolFolder = script.Symbol
local Symbol = require(SymbolFolder)
local Event = require(SymbolFolder.Event)
local Changed = require(SymbolFolder.Changed)

local StateFolder = script.State
local State = require(StateFolder.State)
local Computed = require(StateFolder.Computed)
local Tween = require(StateFolder.Tween)
local Value = require(StateFolder.Value)
local Property = require(StateFolder.Property)
local Attribute = require(StateFolder.Attribute)

local Mount = require(script.Mount)


export type State<T> = State.State<T>
export type ValueState<T> = Value.ValueState<T>
export type Symbol = Symbol.Symbol

local Fuse = {}
Fuse.__index = Fuse

function Fuse:Destroy()
	if not self._IsAlive then return end
	self._IsAlive = false
	self._Maid:Destroy()
	setmetatable(self, nil)
	local tabl: any = self
	for k, v in pairs(tabl) do
		self[k] = nil
	end
	return nil
end

function Fuse.new(maid: Maid?)
	local self = {}
	self._IsAlive = true
	self._Maid = maid or Maid.new() :: Maid

	--Symbol
	self.fuse = Fuse.new(self._Maid)
	self.Event = Event.new
	self.Changed = Changed.new

	self.Computed = Computed.new
	self.Tween = Tween.new
	self.Property = Property.new
	self.Attribute = Attribute.new

	self.mount = Mount.fromInstance
	self.new = Mount.fromClassName

	setmetatable(self, Fuse)

end

return Fuse.new()