---@meta

---@class UAircraftCharacterMovementComp: UCharacterMovementComponent
---@field bServerMoveCheckPassWall boolean
---@field bCheckPassWallUseSweep boolean
---@field CheckPassWallShapeShrinkScale number
---@field AdjustRadiusScaleWhenPassWall number
---@field RadiusScaleWhenCheckPassWall number
local UAircraftCharacterMovementComp = {}

---@param DeltaTime number
---@param FlyVelocity FVector
function UAircraftCharacterMovementComp:PhysicsFlyDistance(DeltaTime, FlyVelocity) end
