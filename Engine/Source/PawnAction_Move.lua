---@meta

---@class EPawnActionMoveMode
---@field UsePathfinding number
---@field StraightLine number
EPawnActionMoveMode = {}


---@class UPawnAction_Move: UPawnAction
---@field GoalLocation FVector
---@field AcceptableRadius number
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field bAllowStrafe number
---@field bFinishOnOverlap number @if set to true (default) will make action succeed when the pawn's collision component overlaps with goal's collision component
---@field bUsePathfinding number @if set, movement will use path finding
---@field bAllowPartialPath number @if set, use incomplete path when goal can't be reached
---@field bProjectGoalToNavigation number @if set, GoalLocation will be projected on navigation before using
---@field bUpdatePathToGoal number @if set, path to GoalActor will be updated with goal's movement
---@field bAbortChildActionOnPathChange number @if set, other actions with the same priority will be aborted when path is changed
local UPawnAction_Move = {}
