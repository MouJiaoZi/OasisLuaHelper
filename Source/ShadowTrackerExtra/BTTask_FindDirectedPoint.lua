---@meta

---寻找指定角度内直线可达点
---@class UBTTask_FindDirectedPoint: UBTTaskNode
---@field DistanceRange FVector2D
---@field AngleRange FVector2D
---@field TraceHeightOffset number
---@field TryFindLocNum number
---@field bDoWaterTest boolean
---@field bDoNavmeshProjectTest boolean
---@field ProjectFilterClass UNavigationQueryFilter
---@field bDoVisibilityTest boolean
---@field TargetLocRelativeHeight number
---@field TargetBlackboardKey any
---@field OutputBlackboardKey any
local UBTTask_FindDirectedPoint = {}
