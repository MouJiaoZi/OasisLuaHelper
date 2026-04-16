---@meta

---@class USTExtraHammerSharkMovementComp: USTExtraAircraftMovementComponent
---@field MaxbodyPitchAngle_UpInput number
---@field BodyPitchTorqueScale_UpInput number
---@field BodyPitchZSpeedThreshold_UpInput number
---@field BodyPitchHighDistanceThreshold_UpInput number
---@field BodyPitchLowDistanceThreshold_UpInput number
---@field MaxbodyPitchAngle_NearWater_UpInput number
---@field BodyPitchTorqueScale_NearWater_UpInput number
---@field NearWaterThreshold_Above_UpInput number
---@field NearWaterThreshold_Under_UpInput number
---@field InWaterDistanceBuoyancyTestPointIndex number
---@field TopWingsInputScaleToNoDriverHoverDistance number
---@field NoDriverHoverDistance number
---@field NoDriverHoverDistanceThrshold number
---@field WaterActorClass AActor
---@field BodyRollTorqueReturnScale number
---@field WaterSurfaceDistance number
---@field ShouldHover boolean
---@field ShouldIgnoreActor AActor
local USTExtraHammerSharkMovementComp = {}

---@return boolean
function USTExtraHammerSharkMovementComp:IsHasPower() end

function USTExtraHammerSharkMovementComp:UpdateDistanceToLand() end

---@return boolean
function USTExtraHammerSharkMovementComp:IsHeightLowerThanEnterFlyHeight() end

---@return boolean
function USTExtraHammerSharkMovementComp:IsCurrentLandWater() end

---@return number
function USTExtraHammerSharkMovementComp:GetCurrentWaterSurfaceDistance() end

---@return boolean
function USTExtraHammerSharkMovementComp:IsNearWaterSurface() end

---@return boolean
function USTExtraHammerSharkMovementComp:IsMovingToWaterSurface() end
