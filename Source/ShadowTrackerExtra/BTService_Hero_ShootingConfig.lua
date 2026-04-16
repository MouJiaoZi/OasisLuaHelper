---@meta

---@class FAIShootingConfigItem
---@field TimePoint number
---@field FireHitRate number
---@field DamageScale number
FAIShootingConfigItem = {}


---@class UBTService_Hero_ShootingConfig: UBTService
---@field FakeAIShootingConfig ULuaArrayHelper<FAIShootingConfigItem>
---@field MonsterShootingConfig ULuaArrayHelper<FAIShootingConfigItem>
local UBTService_Hero_ShootingConfig = {}
