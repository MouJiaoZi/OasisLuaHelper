---@meta

---流浪地球机械狗测试路径连通性
---@class UBTService_TestReachable: UBTService
---@field bZeroSpeedTest boolean
---@field TestTargetKey FBlackboardKeySelector
---@field BlockKey FBlackboardKeySelector
---@field BlockTestTimes number
---@field TestPathFilterClass UNavigationQueryFilter
---@field TestRange FVector2D
---@field bLimitPathLength boolean
---@field PathMaxLength number
---@field bAllowPartialPath boolean
---@field ReachableTolerance number
local UBTService_TestReachable = {}
