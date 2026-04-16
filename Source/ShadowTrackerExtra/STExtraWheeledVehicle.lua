---@meta

---@class FWheelVehicleSummary
FWheelVehicleSummary = {}


---@class FVehicleAnomalousTime
FVehicleAnomalousTime = {}


---@class ASTExtraWheeledVehicle: ASTExtraBaseWheeledVehicle
---@field UseWheelTerrainCheck boolean
---@field UseWheelRestLocation boolean
---@field UseWheelUpLoc boolean
---@field UseWheelUpLocExtraOffset ULuaArrayHelper<FVector>
---@field DisableTrailIndex ULuaArrayHelper<number>
---@field ExtraBoostFactor number
---@field UsePrimitiveVelocityINnUI boolean
---@field ExhaustEffectName string
---@field FPPBoostLightNameConfig string
---@field EntirelyUnderWaterEffect string
---@field VehicleCheckTLogTime number
---@field VehicleVelocityThreshold number
---@field UseBoundCenterUnderTerrain boolean
---@field OpenJumpHeightLimit boolean
---@field JumpHeightThreshold number
---@field OpenJumpHeightVelocityLimit boolean
---@field JumpHeightLimitMaxVelocity number
---@field DriverAniTimerRefWheelIndex number
---@field SteerAngelInputMap FVector2D
---@field SteerDriverAniTimerOutMap FVector2D
---@field NoDriverHavePassengerTargetGear number
---@field NoDriverNoPassengerTargetGear number
---@field VehileHeightLevel1 number
---@field VehileHeightLevel2 number
---@field VehileHeightLevel3 number
---@field EnableXPcallVehicleZVelocityBigChange boolean
---@field ZVelUpThreshold number
---@field ZVelDiffThreshold number
---@field VelDiffAngleThreshold number
---@field VelSizeScaleThreshold number
---@field VehicleForward2VelCosThreshold number
---@field VehicleZVelocityBigChangeNoActorHitInLastFewSeconds number
---@field EnableXPcallVehicleJumpHigh boolean
---@field VehicleJumpHighZVelUpThreshold number
---@field VehicleJumpHighZDistanceThreshold number
---@field VehicleJumpHighNoActorHitInLastFewSeconds number
---@field VehicleJumpHighVelocityBigChangeInLastFewSeconds number
---@field EnableVehicleOverSpeedCheck boolean
---@field VehicleOverSpeedCheckThreshold number
---@field OverSpeedThresholdScale number
---@field VehicleOverSpeedCheckRacerScale number
---@field VehicleOverSpeedCheckSlopeThreshold number
---@field EnableXPcallVehicleAnomalousMove boolean
---@field AnomalousMoveVelThreshold number
---@field VehicleAnomalousMoveForward2VelCosThreshold number
---@field VehicleAnomalousMoveNoActorHitInLastFewSeconds number
---@field AnomalousMoveTimeThreshold number
---@field AnomalousMoveCheckLastFewTime number
---@field AnomalousMoveInLastFewTimeThreshold number
---@field AnomalousMoveInLastFewTimeCheckInterval number
---@field AnomalousMoveTimeTimer number
---@field AnomalousMoveInLastFewTimeTimer number
---@field AccumulateAnomalousMoveTime number
---@field EnableCheckVehicleAnomalousRotation boolean
---@field AnomalousRotationVelThreshold number
---@field AnomalousRotationAngVelThreshold number
---@field AnomalousRotationCheckLastFewTime number
---@field AnomalousRotationInLastFewTimeThreshold number
---@field AnomalousRotationInLastFewTimeCheckInterval number
---@field AnomalousRotationTimeTimer number
---@field AnomalousRotationInLastFewTimeTimer number
---@field AccumulateAnomalousRotationTime number
---@field bEnableAfterTick boolean
---@field bCanChangeTickAdapterByCVar boolean
local ASTExtraWheeledVehicle = {}

---@return boolean
function ASTExtraWheeledVehicle:GetIsAllWheelsInAir() end

function ASTExtraWheeledVehicle:BroadcastClientVehicleWheelDestroyEffect() end

---@return FVector
function ASTExtraWheeledVehicle:GetRotationInputDir() end

---@return number
function ASTExtraWheeledVehicle:GetBoostFactor() end

---@return number
function ASTExtraWheeledVehicle:GetVehicleSpeed() end

---@return number
function ASTExtraWheeledVehicle:GetVehicleSlip() end

---@param MatDMI UMaterialInterface
function ASTExtraWheeledVehicle:SetAvatarMID(MatDMI) end

---@param IsUnderWater boolean
function ASTExtraWheeledVehicle:OnEntirelyUnderWaterChanged(IsUnderWater) end

function ASTExtraWheeledVehicle:OnBoostingChanged() end

---@param FuelPercent number
---@param bEngineOn boolean
---@param bInHouse boolean
---@param SpawnByRegonActive boolean
function ASTExtraWheeledVehicle:InitVehicle(FuelPercent, bEngineOn, bInHouse, SpawnByRegonActive) end

---@param arrWheelLocation ULuaArrayHelper<FVector>
---@param fWheelRadius number
function ASTExtraWheeledVehicle:GetWheelLocation(arrWheelLocation, fWheelRadius) end

function ASTExtraWheeledVehicle:CreateVehicleCheckTLogTimer() end

function ASTExtraWheeledVehicle:VehicleCheckTLogFunc() end

---@param MinSpeed number
---@return number
function ASTExtraWheeledVehicle:GetCurrentGear(MinSpeed) end

---@return boolean
function ASTExtraWheeledVehicle:HasContact() end

---@param movementComp USTExtraVehicleMovementComponent4W
---@param Wheel UVehicleWheel
---@param index number
---@return FVector
function ASTExtraWheeledVehicle:GetCheckUnderTerrainWheelTraceStart(movementComp, Wheel, index) end

---@param VehicleTrans FTransform
---@param WheelLoc ULuaArrayHelper<FVector>
---@param UnderTerrainIdx number
function ASTExtraWheeledVehicle:DrawDebugUnderTerrainPoint(VehicleTrans, WheelLoc, UnderTerrainIdx) end
