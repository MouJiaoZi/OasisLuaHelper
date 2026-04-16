---@meta

---检测UnderPlayerSight为true时，设置黑板中的值
---@class UBTService_CheckUnderPlayerSight: UBTService
---@field RefPlayerSightBlackboardKey FBlackboardKeySelector
---@field PreconditionSightBlackboardKey FBlackboardKeySelector
---@field PreconditionValue boolean
---@field MaxSightAngle number
---@field MaxDistance number
---@field bCheckOcclusion boolean
---@field bOpenMultiRayCast boolean
---@field TargetActorBlackBoardKey any
---@field bInvokeRPCFunction boolean
---@field ClientRPCName string
---@field TraceChannel ECollisionChannel
---@field Function UFunction
local UBTService_CheckUnderPlayerSight = {}
