---@meta

---@class AStreamVolumeExManager: AActor
---@field bManullyActivate boolean
---@field bCriticalLevelIgnore boolean
---@field VolumeActors ULuaArrayHelper<AStreamVolumeEx>
---@field NameToLevelMap ULuaMapHelper<string, ULevelStreaming>
local AStreamVolumeExManager = {}

---@param InTag string
function AStreamVolumeExManager:Activate(InTag) end

---@param InActor AStreamVolumeEx
function AStreamVolumeExManager:RegisterVolume(InActor) end

---@param InActor AStreamVolumeEx
function AStreamVolumeExManager:UnRegisterVolume(InActor) end

---@param Locations ULuaArrayHelper<FVector>
---@param bNativeTick boolean
function AStreamVolumeExManager:UpdateWithSpecificLoc(Locations, bNativeTick) end
