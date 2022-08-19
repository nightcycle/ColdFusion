--!strict
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

export type Fuse = {
	_IsAlive: boolean,
	_Maid: Maid,
	Destroy: (Fuse) -> nil,
	fuse: (Maid?) -> Fuse,
	Event: Event.Constructor,
	Changed: Changed.Constructor,
	Computed: Computed.Constructor,
	Tween: Tween.Constructor,
	Value: Value.Constructor,
	Property: Property.Constructor,
	Attribute: Attribute.Constructor,
	mount: Mount.ClassConstructor,
	new: Mount.ClassNameConstructor,
}

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

function Fuse.fuse(maid: Maid?): Fuse
	local self = {}
	self._IsAlive = true
	self._Maid = maid or Maid.new() :: Maid

	--Symbol
	self.fuse = Fuse.fuse(self._Maid)

	self.Event = function(...)
		local symbol = Event.new(...)
		self._Maid:GiveTask(symbol)
		return symbol
	end :: Event.Constructor

	self.Changed = function(...)
		local symbol = Changed.new(...)
		self._Maid:GiveTask(symbol)
		return symbol
	end :: Changed.Constructor

	self.Computed = function<T, G...>(...)
		local state = Computed.new(...)
		self._Maid:GiveTask(state)
		return state
	end :: Computed.Constructor

	self.Tween = function<T>(...)
		local state = Tween.new(...)
		self._Maid:GiveTask(state)
		return state
	end :: Tween.Constructor

	self.Property = function<T>(...)
		local state = Property.new(...)
		self._Maid:GiveTask(state)
		return state
	end :: Property.Constructor

	self.Attribute = function<T>(...)
		local state = Attribute.new(...)
		self._Maid:GiveTask(state)
		return state
	end :: Attribute.Constructor

	self.Value = function<T>(...)
		local state = Value.new(...)
		self._Maid:GiveTask(state)
		return state
	end :: Value.Constructor
	self.new = function(...)
		local constFunc = Mount.fromInstance(...)
		return function(...)
			local inst = constFunc(...)
			self._Maid:GiveTask(inst)
			return inst
		end
	end :: Mount.ClassNameConstructor
	self.mount = Mount.fromInstance

	self.import = function<T>(unknown: (T | State<T>)?): State<T>
		if unknown == nil or typeof(unknown) ~= "table" then
			local v: any = unknown
			local state: any = State.new(v)
			self._Maid:GiveTask(state)
			return state
		else
			assert(typeof(unknown) == "table")

			if unknown.Get then
				return unknown
			else
				local v: any = unknown
				local state: any = State.new(v)
				self._Maid:GiveTask(state)
				return state
			end
		end
	end

	setmetatable(self, Fuse)

	local f: any = self
	return f
end

return Fuse.fuse()