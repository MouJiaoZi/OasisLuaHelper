---@meta

---查找逃跑点
---@class UBTTask_FindEscapePoint: UBTTaskNode
---@field InSearchRadius number
---@field InReferEnemyNum number
---@field InEscapeDistance number
---@field InSampleStep number
---@field InMaxSampleTimes number
---@field InFindFloorHeightOffset number
---@field OutEscapePoint any
---@field bDrawDebugLine boolean
local UBTTask_FindEscapePoint = {}
