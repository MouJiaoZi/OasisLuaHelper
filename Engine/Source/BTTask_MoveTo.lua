---@meta

---Move To task node. Moves the AI pawn toward the specified Actor or Location blackboard entry using the navigation system.
---@class UBTTask_MoveTo: UBTTask_BlackboardBase
---@field AcceptableRadius number @fixed distance added to threshold between AI and goal location in destination reach test
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field ObservedBlackboardValueTolerance number @if task is expected to react to changes to location represented by BB key this property can be used to tweak sensitivity of the mechanism. Value is recommended to be less then AcceptableRadius
---@field bObserveBlackboardValue number @if move goal in BB changes the move will be redirected to new location
---@field bAllowStrafe number
---@field bAllowPartialPath number @if set, use incomplete path when goal can't be reached
---@field bTrackMovingGoal number @if set, path to goal actor will update itself when actor moves
---@field bProjectGoalLocation number @if set, goal location will be projected on navigation data (navmesh) before using
---@field bReachTestIncludesAgentRadius number @if set, radius of AI's capsule will be added to threshold between AI and goal location in destination reach test
---@field bReachTestIncludesGoalRadius number @if set, radius of goal's capsule will be added to threshold between AI and goal location in destination reach test
---@field bStopOnOverlap number @DEPRECATED, please use combination of bReachTestIncludes*Radius instead
---@field bStopOnOverlapNeedsUpdate number
local UBTTask_MoveTo = {}
