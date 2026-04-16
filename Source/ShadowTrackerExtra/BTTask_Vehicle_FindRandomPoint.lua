---@meta

---@class UBTTask_Vehicle_FindRandomPoint: UBTTaskNode
---@field SearchRadiusRange FVector2D
---@field TraceHeightOffset number
---@field TryFindLocNum number
---@field bDoNavmeshProjectTest boolean
---@field ProjectFilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field bDoOnlyStaticTrace boolean @只做静态物体检测(忽略水)
---@field bDoWaterTest boolean
---@field bDoLimitFindPointArea boolean
---@field CollisionExcludeAngle number @如有碰撞，剔除CenterBlackboardKey前方某个角度内的点，和LimitInForwardAngle互斥
---@field bLimitResultInForwardAngle boolean @只选择CenterBlackboardKey前方某个角度内的点
---@field LimitInForwardAngle number @只选择CenterBlackboardKey前方该角度内的点（双向）,和CollisionExcludeAngle互斥
---@field CenterBlackboardKey any
---@field OutputBlackboardKey any
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
local UBTTask_Vehicle_FindRandomPoint = {}
