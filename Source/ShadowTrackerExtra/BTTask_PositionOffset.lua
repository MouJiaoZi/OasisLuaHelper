---@meta

---坐标偏移 1.相对某个中心点的相关坐标偏移、绝对坐标平移 2.根据两个坐标差值
---@class UBTTask_PositionOffset: UBTTaskNode
---@field OffsetCenterObjectBlackboardKey FBlackboardKeySelector
---@field OffsetTargetBlackboardKey FBlackboardKeySelector
---@field OutPointBlackboardKey FBlackboardKeySelector
---@field OffsetVector FVector
---@field OffsetLength number
---@field bIgnoreZ boolean
---@field bWorldOffset boolean
---@field bLocalOffset boolean
---@field bCheckNavmesh boolean
---@field NavExtent FVector
---@field bCheckNavmeshPath boolean
---@field DebugDraw boolean
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
local UBTTask_PositionOffset = {}
