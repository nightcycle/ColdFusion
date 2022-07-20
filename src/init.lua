--!strict
local Interface = require(script.Interface)
local Fuse = require(script.Fuse)

export type ValueState = Interface.ValueState
export type State = Interface.State
export type Fuse = Fuse.Fuse

local liveInterface = Interface()
liveInterface.fuse = Fuse

return liveInterface