---@meta

---@class UUTSkillAppearance_MeleeAttackBase: UUTSkillAction
---@field bOpenAsynchronousLock_Appearance boolean
local UUTSkillAppearance_MeleeAttackBase = {}

---@param SkillManagerComponent UUTSkillManagerComponent
---@param AttackInfos ULuaArrayHelper<FOnMeleeAttackInfoSkillV1>
function UUTSkillAppearance_MeleeAttackBase:BP_DoMeleeHurtAppearance(SkillManagerComponent, AttackInfos) end
