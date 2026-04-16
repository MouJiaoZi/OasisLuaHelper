---@meta

---@class AStreamVolumeEx: AActor
---@field StreamInLevels ULuaArrayHelper<string>
---@field StreamOutLevels ULuaArrayHelper<string>
---@field NewWCStreamDistFactor number
---@field bVolumeDisabled boolean
local AStreamVolumeEx = {}

function AStreamVolumeEx:OnVolumeRegistered() end

function AStreamVolumeEx:OnVolumeUnregistered() end
