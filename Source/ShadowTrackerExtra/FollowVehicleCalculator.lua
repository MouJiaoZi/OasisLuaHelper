---@meta

---@class FFollowVehicleDistToLinearVelFollowStratagy
---@field Distance number
---@field SpeedKMH number
---@field UpAccelerateKMHS number
---@field DownAccelerateKMHS number
---@field DownAccelerateProportion number
FFollowVehicleDistToLinearVelFollowStratagy = {}


---@class FFollowVehicleDeltaAngleToAngularVelFollowStratagy
---@field DeltaAngle number
---@field AngularAcceleration number
FFollowVehicleDeltaAngleToAngularVelFollowStratagy = {}


---@class UFollowVehicleCalculator: UObject
local UFollowVehicleCalculator = {}


---@class UModifyVelocityFollowVehicleCalculator: UFollowVehicleCalculator
---@field DistToLinVelFollowStratagy ULuaArrayHelper<FFollowVehicleDistToLinearVelFollowStratagy>
---@field DeltaAngleToAngVelFollowStratagy ULuaArrayHelper<FFollowVehicleDeltaAngleToAngularVelFollowStratagy>
---@field AngularFollowSpeedThreshold number
---@field FollowXYDistanceThreshold number
local UModifyVelocityFollowVehicleCalculator = {}

---@param DeltaTime number
---@param OurLinVel FVector
---@param OurVehicleTrans FTransform
---@param OtherVehiclePostion FVector
---@param TargetFollowSpeed number
---@param FinalLinVel FVector
---@param OurAngVel FVector
---@param FinalAngVelInDegrees FVector
---@return boolean
function UModifyVelocityFollowVehicleCalculator:GetFollowVehicleVelocity(DeltaTime, OurLinVel, OurVehicleTrans, OtherVehiclePostion, TargetFollowSpeed, FinalLinVel, OurAngVel, FinalAngVelInDegrees) end

---@param Dist number
---@return FFollowVehicleDistToLinearVelFollowStratagy
function UModifyVelocityFollowVehicleCalculator:GetLinVelFollowStratagy(Dist) end

---@param DeltaAngle number
---@return FFollowVehicleDeltaAngleToAngularVelFollowStratagy
function UModifyVelocityFollowVehicleCalculator:GetAngVelFollowStratagy(DeltaAngle) end
