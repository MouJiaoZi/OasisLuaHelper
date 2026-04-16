---@meta

---@class ALostTomb_StreamVolumeManager: AStreamVolumeExManager
---@field bActivateBySubModeID boolean
---@field bDelaySetDistanceStreamingEnabled boolean
---@field bActiveForceUpdateWithSpecificLoc boolean
---@field LostTomb_StreamVolumeActors ULuaArrayHelper<ALostTomb_StreamVolume>
local ALostTomb_StreamVolumeManager = {}

---@param DataTable UUAEDataTable
function ALostTomb_StreamVolumeManager:OnTableLoaded(DataTable) end

---@param InSubModeID string
function ALostTomb_StreamVolumeManager:ActivateBySubModeID(InSubModeID) end

---@param InActor ALostTomb_StreamVolume
function ALostTomb_StreamVolumeManager:RegisterLTVolume(InActor) end

---@param InActor ALostTomb_StreamVolume
function ALostTomb_StreamVolumeManager:UnRegisterLTVolume(InActor) end
