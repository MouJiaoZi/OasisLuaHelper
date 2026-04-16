---@meta

---@class UPESkillTask_TakeDamage: UPESkillTaskPeriod
---@field TargetType EPESkillSelectTarget
---@field DamageTypeConfig FRestrictedDamageTypeData
---@field DamageValueWrapper FGameMagnitudeWrapper
---@field AttrFromCauserOrTarget EPEMagnitudeWrapperAttrSourceType
---@field DamageTypeClass USTExtraDamageType_PersistEffect @伤害类型(临时兼容和平原有功能，逐步替换，谨慎使用)
---@field bAutoCalcItemID boolean @自动识别当前近战武器物品ID
---@field SourceItemID number @伤害来源物品ID
local UPESkillTask_TakeDamage = {}
