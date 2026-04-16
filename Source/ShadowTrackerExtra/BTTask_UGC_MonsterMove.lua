---@meta

---@class UBTTask_UGC_MonsterMove: UBTTaskNode
---@field TargetBlackboardKey any
---@field StopMoveRadius number
---@field FilterClass UNavigationQueryFilter
---@field MaxBlockTime number @速度为0的时间超过该值，移动会结束
---@field UpdateDestIntervel number
---@field UpdateTempLocIntervel number
---@field TempMoveLocationRadius number
---@field PredictMovementTime number
---@field ForceFacingTargetDist number
---@field MaxMineSpeedUsePredict number
---@field MaxTargetSpeedUsePredict number
---@field MaxMoveToTempLocDistance number
local UBTTask_UGC_MonsterMove = {}
