---@meta

---@class UGlobalTriggerManagerSafety: UObject
---@field ZoneList ULuaArrayHelper<AGlobalTriggerVolumeSafety>
local UGlobalTriggerManagerSafety = {}

function UGlobalTriggerManagerSafety:DestroyManager() end

---@param World UWorld
function UGlobalTriggerManagerSafety:OnGameStateDestroy(World) end

function UGlobalTriggerManagerSafety:OnPreGarbageCollect() end
