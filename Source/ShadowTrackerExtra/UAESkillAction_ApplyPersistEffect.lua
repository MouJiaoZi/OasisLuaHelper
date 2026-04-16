---@meta

---@class FSAApplyPersistEffectInstanceStruct
---@field PersistEffectInstance UPersistEffectBase
FSAApplyPersistEffectInstanceStruct = {}


---@class UUAESkillAction_ApplyPersistEffect: UUAESkillActionBP
---@field PersistEffectClass UPersistEffectBase
---@field bWhetherStopEffectAfterStopSkill boolean
---@field bWhetherStopEffectAfterPhaseStop boolean
local UUAESkillAction_ApplyPersistEffect = {}

---@param PersistEffect UPersistEffectBase
---@param Reason EPersistEffectUnApplyReason
function UUAESkillAction_ApplyPersistEffect:OnUnApplyPersistEffect(PersistEffect, Reason) end
