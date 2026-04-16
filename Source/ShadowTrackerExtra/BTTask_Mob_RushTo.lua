---@meta

---@class UBTTask_Mob_RushTo: UBTTaskNode
---@field InRushTarget FBlackboardKeySelector
---@field RushSpeed number
---@field HeightOffset number
---@field AcceptableRadius number @fixed distance added to threshold between AI and goal location in destination reach test
---@field bReachTestIncludesAgentRadius number @if set, radius of AI's capsule will be added to threshold between AI and goal location in destination reach test
---@field bReachTestIncludesGoalRadius number @if set, radius of goal's capsule will be added to threshold between AI and goal location in destination reach test
---@field bPreventPenetration boolean
local UBTTask_Mob_RushTo = {}
