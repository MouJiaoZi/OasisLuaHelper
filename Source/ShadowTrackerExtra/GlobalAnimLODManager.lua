---@meta

---@class UGlobalAnimLODManager: UObject
---@field GlobalAnimLODCascadeWeakPtrs ULuaArrayHelper<USTExtraAnimFMObj_LODCascade>
local UGlobalAnimLODManager = {}

---@param DeltaTime number
function UGlobalAnimLODManager:OnPreGameTick(DeltaTime) end

---@param World UWorld
function UGlobalAnimLODManager:OnGameStateDestroy(World) end
