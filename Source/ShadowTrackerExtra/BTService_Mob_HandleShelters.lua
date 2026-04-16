---@meta

---@class EShelterType
---@field EnemyType_Building number @建造物
---@field EnemyType_Vehicle number @载具
EShelterType = {}


---@class UBTService_Mob_HandleShelters: UBTService
---@field ShelterTypes ULuaArrayHelper<EShelterType>
---@field bUseIgnoreShelterInEnemyDistance boolean
---@field IgnoreShelterInEnemyDistance number
---@field bUseSweepForVisibility boolean
---@field VisibilitySweepChannel ECollisionChannel
---@field VisibilityQueryMobilityType EOverrideQueryMobilityType
---@field VisibilitySweepRadiusScale number
---@field CheckDistance number
---@field CheckDegree number
---@field TagList ULuaArrayHelper<string>
---@field WaitTime number
---@field DeleteTime number
---@field UsedByPlayerAI boolean
local UBTService_Mob_HandleShelters = {}
