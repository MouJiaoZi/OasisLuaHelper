---@meta

---@class UPESkillEvent_StateChange: UPESkillEventBase
---@field StateTags FGameplayTagContainer
local UPESkillEvent_StateChange = {}

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function UPESkillEvent_StateChange:OnPersistCompDynamicStateEnter(PersistComp, State) end
