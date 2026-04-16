---@meta

---@class UGameplayTask_RegisterDynamicState: UUAEGameplayTask
---@field OnFail FRegistDynamicStateDelegate
---@field OnInterrupted FRegistDynamicStateDelegate
local UGameplayTask_RegisterDynamicState = {}

---@param PBComp UPersistBaseComponent
---@param Tag FGameplayTag
function UGameplayTask_RegisterDynamicState:OnInterrupt(PBComp, Tag) end
