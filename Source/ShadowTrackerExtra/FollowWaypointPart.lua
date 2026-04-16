---@meta

---@class eFollowWaypointType
---@field FindPointInOrder number
---@field FindNearestPoint number
---@field FindForwardPoint number
eFollowWaypointType = {}


---@class UFollowWaypointPart: UBasicLogicPart, IFollowWaypointPartInterface
---@field CheckWaypointRadius number
---@field FindWayType eFollowWaypointType
---@field bIgnoreZ boolean
local UFollowWaypointPart = {}
