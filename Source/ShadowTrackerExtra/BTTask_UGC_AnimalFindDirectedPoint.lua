---@meta

---@class UBTTask_UGC_AnimalFindDirectedPoint: UBTTaskNode
---@field TargetBlackboardKey any
---@field OutputBlackboardKey any
---@field DistanceRange FVector2D
---@field AngleRange FVector2D @朝向逃离目标的方向为0度
---@field FindFloorTraceChannel ECollisionChannel
---@field FindFloorQueryMobilityType EOverrideQueryMobilityType
---@field FindFloorHeightOffsetUp number
---@field FindFloorHeightOffsetDown number
---@field bDoNavmeshProjectTest boolean
---@field ProjectFilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field bAllowPointInWater boolean
---@field ValidTargetLocZOffset number
---@field TryFindLocNum number
local UBTTask_UGC_AnimalFindDirectedPoint = {}
