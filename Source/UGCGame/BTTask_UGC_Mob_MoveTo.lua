---@meta

---@class UBTTask_UGC_Mob_MoveTo: UBTTaskNode
---@field MoveSpeed FCustomBlackboardProperty_Float
---@field StopMoveRadius FCustomBlackboardProperty_Float
---@field BlackboardKey any
---@field FilterClass UNavigationQueryFilter
---@field MaxBlockTime number @速度为0的时间超过该值，移动会结束
---@field UpdateDestIntervel number
---@field PredictMovementTime number
---@field ForceFacingTargetDist number
---@field UpdateTempLocIntervel number
---@field TempMoveLocationRadius number
---@field MaxMineSpeedUsePredict number
---@field MaxTargetSpeedUsePredict number
---@field MaxMoveToTempLocDistance number
local UBTTask_UGC_Mob_MoveTo = {}
