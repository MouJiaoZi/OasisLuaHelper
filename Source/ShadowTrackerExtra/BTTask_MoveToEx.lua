---@meta

---@class UBTTask_MoveToEx: UBTTask_MoveTo
---@field InBlockedTimeLimit number
---@field InBlockedSpeedValue number
---@field bNavlinkIgnoreBlocked boolean
---@field OutBlockedBlackboardKey FBlackboardKeySelector
---@field bSetBlockWhenFindPathFailed boolean
---@field bSetBlockWhenNotInNavmesh boolean
---@field bSetBlockWhenBlockedSpeedTimeOut boolean
---@field bOpenMannualTrackActorWhenPathFailed boolean
---@field UpdateMannualTrackActorInterval number
---@field MannualTrackActorPathExtend FVector
---@field bFaceToTargetWhenFinished boolean
---@field bStopAvoidanceWhileReachEnd boolean
---@field StopAvoidanceDistance number
---@field bMoveWithoutPathFinding boolean
---@field bLimitMoveFocusDir boolean
---@field MoveFocusAngleLimit number
local UBTTask_MoveToEx = {}
