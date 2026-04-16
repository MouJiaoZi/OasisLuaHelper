---@meta

---Allows manipulation of volume and pitch over a set time period
---@class USoundNodeEnveloper: USoundNode
---@field LoopStart number
---@field LoopEnd number
---@field DurationAfterLoop number
---@field LoopCount number
---@field bLoopIndefinitely number
---@field bLoop number
---@field VolumeCurve FRuntimeFloatCurve
---@field PitchCurve FRuntimeFloatCurve
---@field PitchMin number
---@field PitchMax number
---@field VolumeMin number
---@field VolumeMax number
local USoundNodeEnveloper = {}
