---@meta

---使用PathFollowingComponent判定剩余距离，包含起点Actor胶囊体半径 如果目标是Actor则包含目标半径
---@class UBTDecorator_Generic_CheckDistanceEx: UBTDecorator
---@field CenterActorBlackBoardKey any
---@field TargetActorBlackBoardKey any
---@field ArithmeticOperation EArithmeticKeyOperation
---@field TestDistance FCustomBlackboardProperty_FloatAttribute
---@field OverlapAgentAndGoal FCustomBlackboardProperty_Bool
local UBTDecorator_Generic_CheckDistanceEx = {}
