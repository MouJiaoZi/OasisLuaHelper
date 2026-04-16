---@meta

---@class FPotentialWaypointPath
---@field PathInputKey number
---@field bPathingInReverse boolean
---@field bIsCurrentPath boolean
---@field bIsTurningAround boolean
---@field DistanceToPlayZone number
FPotentialWaypointPath = {}


---@class UBTTask_VehicleSearchForNextPathPoint: UBTTaskNode
---@field PathConnectionCooldown number
---@field CompletelyEmptyPathWeight number
---@field OppositeDirectionEmptyPathWeight number
---@field TurnAroundPathWeight number
---@field PlayZoneDistancePathWeight number
---@field InvalidPlayZoneDistancePathWeight number
---@field PathSplinePointAcceptableRadius number
---@field CurrentPathSplineKey FBlackboardKeySelector
---@field CurrentPathInputKeyKey FBlackboardKeySelector
---@field PreviousPathInputKeyKey FBlackboardKeySelector
---@field PreviousPathSplineKey FBlackboardKeySelector
---@field IsPathingInReverseKey FBlackboardKeySelector
---@field PathConnectionCooldownKey FBlackboardKeySelector
local UBTTask_VehicleSearchForNextPathPoint = {}
