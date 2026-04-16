---@meta

---@class FTriggerAction_TakeDamageConfig
---@field Type EDamageType
---@field Value number
FTriggerAction_TakeDamageConfig = {}


---@class UTriggerAction_TakeDamage: UTriggerAction
---@field SkipNearDeath boolean
---@field DamageConfigs ULuaArrayHelper<FTriggerAction_TakeDamageConfig>
local UTriggerAction_TakeDamage = {}
