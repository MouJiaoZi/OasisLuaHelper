---@meta

---@class UEffectModifier_PassiveSkill: UEffectModifier_GenericParam
---@field PassiveSkillClass UPESkillPassiveSkill
---@field PassiveSkillAutoReflectParams ULuaArrayHelper<FEffectModifierAutoReflectParamInfo>
local UEffectModifier_PassiveSkill = {}

function UEffectModifier_PassiveSkill:ServerInitPassiveSkillParams_BP() end
