---@meta

---@class UBTTask_WayPointListMove: UBTTask_BlackboardBase
---@field bAllowPartialPath boolean
---@field AcceptableRadius number
---@field bAllowStrafe boolean
---@field bReachTestIncludesAgentRadius boolean @if set, radius of AI's capsule will be added to threshold between AI and goal location in destination reach test
---@field bReachTestIncludesGoalRadius boolean @if set, radius of goal's capsule will be added to threshold between AI and goal location in destination reach test
---@field bProjectGoalLocation boolean @if set, goal location will be projected on navigation data (navmesh) before using
---@field bUsePathfinding boolean
local UBTTask_WayPointListMove = {}
