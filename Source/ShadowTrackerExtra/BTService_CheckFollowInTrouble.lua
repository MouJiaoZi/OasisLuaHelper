---@meta

---跟随检测是否受困服务
---@class UBTService_CheckFollowInTrouble: UBTService
---@field FollowTargetKey FBlackboardKeySelector
---@field FollowInTroubleKey FBlackboardKeySelector
---@field CheckInTroubleTime number
---@field CheckPathInvalidTime number
---@field CheckPathMinDistance number
---@field CheckVisibleMinDistance number
---@field FilterClass UNavigationQueryFilter
---@field ReachableTolerance number
---@field bCheckVisible boolean
---@field TraceTestChannel ECollisionChannel
---@field TraceOffset FVector
local UBTService_CheckFollowInTrouble = {}
