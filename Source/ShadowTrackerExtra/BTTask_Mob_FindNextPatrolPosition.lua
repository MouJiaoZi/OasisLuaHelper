---@meta

---怪物在出生点附近巡逻移动
---@class UBTTask_Mob_FindNextPatrolPosition: UBTTaskNode
---@field SearchDistanceFromSpawnPoint number @巡逻位置搜索半径(相对与出生点)
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field MaxSearchTime number @最大搜索次数
---@field bIgnorePointInBuilding boolean @忽略建筑内的点
---@field TraceHeightOffset number
---@field bDebugDraw boolean
local UBTTask_Mob_FindNextPatrolPosition = {}
