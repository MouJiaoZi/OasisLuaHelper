---@meta

---@class UBTTask_AnimalFindDirectedPoint: UBTTaskNode
---@field DistanceRange FVector2D
---@field AngleRange FVector2D
---@field TraceHeightOffset number
---@field TryFindLocNum number
---@field bDoWaterTest boolean
---@field bDoNavmeshProjectTest boolean
---@field ProjectFilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field bDoLimitFindPointArea boolean
---@field TargetBlackboardKey any
---@field OutputBlackboardKey any
local UBTTask_AnimalFindDirectedPoint = {}
