---@meta

---NavMovementComponent defines base functionality for MovementComponents that move any 'agent' that may be involved in AI pathfinding.
---@class UNavMovementComponent: UMovementComponent
---@field NavAgentProps FNavAgentProperties @Properties that define how the component can move.
---@field FixedPathBrakingDistance number @Braking distance override used with acceleration driven path following (bUseAccelerationForPaths)
---@field bUpdateNavAgentWithOwnersCollision number @If set to true NavAgentProps' radius and height will be updated with Owner's collision capsule size
---@field bUseAccelerationForPaths number @If set, pathfollowing will control character movement via acceleration values. If false, it will set velocities directly.
---@field bUseFixedBrakingDistanceForPaths number @If set, FixedPathBrakingDistance will be used for path following deceleration
---@field MovementState FMovementProperties @Expresses runtime state of character's movement. Put all temporal changes to movement properties here
local UNavMovementComponent = {}

---Stops applying further movement (usually zeros acceleration).
function UNavMovementComponent:StopActiveMovement() end

---Stops movement immediately (reset velocity) but keeps following current path
function UNavMovementComponent:StopMovementKeepPathing() end

---@return boolean
function UNavMovementComponent:IsCrouching() end

---@return boolean
function UNavMovementComponent:IsFalling() end

---@return boolean
function UNavMovementComponent:IsMovingOnGround() end

---@return boolean
function UNavMovementComponent:IsSwimming() end

---@return boolean
function UNavMovementComponent:IsFlying() end
