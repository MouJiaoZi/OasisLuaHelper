---@meta

---@class FRepairDurabilityConfig
---@field DurabilityPosition EAvatarDamagePosition
---@field RecoveryType EValueType
---@field RecoveryValue number
FRepairDurabilityConfig = {}


---@class UUAESkillAction_RepairDurability: UUAESkillAction
---@field DurabilityConfig ULuaArrayHelper<FRepairDurabilityConfig>
---@field bDataReportAsHeroSkill boolean
---@field HeroID number
---@field SkillID number
local UUAESkillAction_RepairDurability = {}
