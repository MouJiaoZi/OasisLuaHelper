---@meta

---@class FUGCMobSpawnParam
---@field CampID number
---@field MobClass AUGCGenericCharacter
FUGCMobSpawnParam = {}


---@class FUGCMobSpawnConfig
---@field SpawnParam FUGCMobSpawnParam
---@field Weight number
---@field AttrConfigList ULuaArrayHelper<FGameAttributeValueConfig>
FUGCMobSpawnConfig = {}


---@class FUGCMobGroupData
---@field GroupID number
---@field MobConfigList ULuaArrayHelper<FUGCMobSpawnConfig>
FUGCMobGroupData = {}


---@class UUGCMobGroupDataTable: UUAEDataTable
local UUGCMobGroupDataTable = {}
