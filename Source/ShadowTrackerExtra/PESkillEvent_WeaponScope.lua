---@meta

---@class UPESkillEvent_WeaponScope: UPESkillEvent_WeaponBase
---@field bListenScopeIn boolean @是否监听开镜事件(false则监听关镜事件)
local UPESkillEvent_WeaponScope = {}

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function UPESkillEvent_WeaponScope:OnPersistCompDynamicStateEnter(PersistComp, State) end

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function UPESkillEvent_WeaponScope:OnPersistCompDynamicStateExit(PersistComp, State) end
