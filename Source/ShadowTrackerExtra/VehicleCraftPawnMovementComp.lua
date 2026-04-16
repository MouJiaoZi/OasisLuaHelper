---@meta

---@class UVehicleCraftPawnMovementComp: UPawnMovementComponent
---@field bServerMoveCheckPassWall boolean
---@field bCheckPassWallUseSweep boolean
---@field CheckPassWallShapeShrinkScale number
---@field AdjustRadiusScaleWhenPassWall number
---@field RadiusScaleWhenCheckPassWall number
local UVehicleCraftPawnMovementComp = {}

---@param DeltaTime number
---@param FlyVelocity FVector
function UVehicleCraftPawnMovementComp:PhysicsFlyDistance(DeltaTime, FlyVelocity) end
