---@meta

---@class UBTTask_WheeledVehicleMoveTo: UBTTaskNode
---@field bUseNavigationSystemWhenOffRoad boolean
---@field MinRequiredThrottleChange number
---@field MinRequiredSteeringChange number
---@field bUseHandbrakeWhenTurning boolean
---@field HandbrakeSteeringThreshold number
---@field bBrakeWhenTurning boolean
---@field BrakeWhenTurningSpeedThreshold number
---@field TargetAcceptableRadius number
---@field NavPointAcceptableRadius number
---@field TargetKey FBlackboardKeySelector
---@field NavPathKey FBlackboardKeySelector
---@field CurrentNavPathIndexKey FBlackboardKeySelector
local UBTTask_WheeledVehicleMoveTo = {}
