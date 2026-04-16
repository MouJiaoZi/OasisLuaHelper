---@meta

---@class UGameplayTask_WaitDynamicStateRemoved: UUAEGameplayTask
---@field Removed FWaitGameplayTagDelegate
local UGameplayTask_WaitDynamicStateRemoved = {}

---@param PBComp UPersistBaseComponent
---@param Tag FGameplayTag
function UGameplayTask_WaitDynamicStateRemoved:LeaveDynamicState(PBComp, Tag) end
