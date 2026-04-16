---@meta

---@class USTExtraHorseMovementCom: USTExtraMyriapodVehMovementCom
---@field WalkType EWalkType
---@field MaxFlyAcceleration number
---@field MaxRunAcceleration number
---@field MaxCanterAcceleration number
---@field MaxWalkAcceleration number
---@field MaxSwimAcceleration number
---@field MaxRunSpeed number
---@field MaxCanterSpeed number
---@field MaxSlowWalkSpeed number
---@field MaxSpeedOverride number
---@field MaxAccelerationOverride number
---@field SpeedAccelerationOverrideFrame number
---@field NextFrameShouldOverrideSpeedAcceleration boolean
---@field fBrakeToStopTime number
---@field fBrakeMinSpeedToCleanSpeed number
---@field fAllowStandByJumpSpeed number
---@field FallAngularSpeedFactor number
---@field TurnSpeedAttenuateFactor number
---@field bHandJumpUseCurve boolean
---@field bCalcVelocityUseActorForward boolean
---@field bPhysRotationSucceed boolean
---@field BeforeRotationActorForward FVector
---@field fSerioueInjurySpeed number
---@field fTurnStartLerpSpeed number
---@field fTurnEndLerpSpeed number
---@field JumpRotBoneName string
---@field bJumpRotUpdateComponent boolean
---@field fMaxVelocityAndForwardAngle number
---@field fMaxVelocityAndBackingAngle number
---@field bUseNewRotator boolean
---@field bDrawDebugPhysicsRotation boolean
---@field fAngularSpeedScaleWithTaril number
---@field ActivateFlyingModeBoostVelocity number
---@field FullControlVerticalSpeedCurveResource UCurveFloat
---@field EndOfFullControlVerticalSpeedCurveResource UCurveFloat
---@field FlyingModeMax2DVelocityOnAbnormalState number
---@field FlyingModeNoDriverDescendSpeed number
---@field FlyingAllowedMaxVerticalDistanceErrorAtServer number
---@field WaterFlyingProtectingFrame number
---@field bIsAsyncLoadingFlyControlCurves boolean
---@field STVerticalInputRate number
local USTExtraHorseMovementCom = {}

---@param TargetSpeed number
---@param TargetAcceleration number
function USTExtraHorseMovementCom:OverrideSpeedAccelerationForOneFrame(TargetSpeed, TargetAcceleration) end

---@param InwalkType EWalkType
function USTExtraHorseMovementCom:SetWalkType(InwalkType) end

---@param walkType1 EWalkType
function USTExtraHorseMovementCom:ServerSetWalkType(walkType1) end

---@param DeltaTime number
---@param bFluid boolean
function USTExtraHorseMovementCom:CalculateVelocityWithResistance(DeltaTime, bFluid) end

---@return number
function USTExtraHorseMovementCom:GetDesireAcceleration() end

---@return number
function USTExtraHorseMovementCom:GetMaxAcceleration() end

---@param PredictTime number
---@return FVector
function USTExtraHorseMovementCom:GetPredictVelocity(PredictTime) end

function USTExtraHorseMovementCom:OnAsyncLoadFlyControlCurves() end

function USTExtraHorseMovementCom:LoadFlyControlCurves() end

---@param rate number
function USTExtraHorseMovementCom:SetVerticalInput(rate) end

---@param rate number
function USTExtraHorseMovementCom:ServerSetVerticalInput(rate) end
