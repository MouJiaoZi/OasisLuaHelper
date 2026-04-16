---@meta

---@class UDamageType_TakeDamageType: USTExtraDamageType
local UDamageType_TakeDamageType = {}


---@class UUAESkillAction_TakeDamage: UUAESkillAction
---@field DamageAmount number
---@field DamageAmountHeadshot number
---@field HitRate number
---@field bIsCheckBackAttack boolean
---@field BackDamageCoefficient number
---@field BackAttackAngle number @Angle : (0 - 90) *
---@field VictimBuffName string
---@field SpecificItemID number
---@field ItemType number
---@field SubDamageType EMeleeDamageSubType
---@field PreSetDamageTypeTags ULuaArrayHelper<string>
---@field bSkipIsInFight boolean
---@field bGetOwnerController boolean
---@field DamageTypeClass UDamageType
---@field PreTakeDamageActionList ULuaArrayHelper<UUTSkillAction>
local UUAESkillAction_TakeDamage = {}
