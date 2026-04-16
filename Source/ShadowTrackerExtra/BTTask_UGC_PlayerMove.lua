---@meta

---@class UBTTask_UGC_PlayerMove: UBTTaskNode
---@field TargetBlackboardKey any
---@field MovePose EAIMovePose
---@field bRestorePoseAfterFinished number
---@field AcceptableRadius number
---@field FilterClass UNavigationQueryFilter
---@field bUsePathFinding number
---@field bAllowPartialPath number
---@field bTrackMovingGoal number
---@field MaxBlockTime number @速度为0的时间超过该值，移动会结束
local UBTTask_UGC_PlayerMove = {}
