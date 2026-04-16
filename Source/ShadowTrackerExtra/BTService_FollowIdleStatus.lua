---@meta

---@class UBTService_FollowIdleStatus: UBTService
---@field FilterClass UNavigationQueryFilter
---@field LongIdleTime number
---@field bOnlyEnterFollowWhenFollowPawnMove boolean
---@field StartTurnAngle number
---@field DelayTurnTime number
---@field KeepLongIdleKey FBlackboardKeySelector
---@field InLongIdleTimeKey FBlackboardKeySelector
---@field InTooFarFromFollowPawnKey FBlackboardKeySelector
---@field IsFollowWaitKey FBlackboardKeySelector
---@field InTurnKey FBlackboardKeySelector
---@field OutFollowPawnKey FBlackboardKeySelector
---@field OutPlayIdleMontageTimeKey FBlackboardKeySelector
---@field BreakIdleMontageTimeKey FBlackboardKeySelector
---@field BreakTurnTimeKey FBlackboardKeySelector
---@field IdleNoneActionKey FBlackboardKeySelector
local UBTService_FollowIdleStatus = {}
