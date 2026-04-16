---@meta

---伤害类型
---@class ERestrictedDamageType
---@field Default number @//*UGC* 默认类型
---@field ShootDamage number @//*UGC* 枪械伤害
---@field MeleeDamage number @//*UGC* 近战伤害
---@field SkillDamage number @//*UGC* 技能伤害
---@field VehicleDamage number @//*UGC* 载具伤害
ERestrictedDamageType = {}


---@class FRestrictedDamageTypeData
---@field CurDamageType ERestrictedDamageType
---@field DamageTypeTags ULuaArrayHelper<FGameplayTag>
---@field DamageTypeClass UDamageType
FRestrictedDamageTypeData = {}
