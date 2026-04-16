---@meta

---@class USTExtraCamelVehMovementCom: USTExtraMyriapodVehMovementCom
---@field WalkType EWalkType
---@field MaxRunAcceleration number
---@field MaxCanterAcceleration number
---@field MaxWalkAcceleration number
---@field MaxSwimAcceleration number
---@field MaxRunSpeed number
---@field MaxCanterSpeed number
---@field MaxSlowWalkSpeed number
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
---@field AdjustFloorSpeed number
---@field AdjustFloorAngularSpeed number
---@field JumpRotBoneName string
---@field bJumpRotUpdateComponent boolean
---@field fMaxVelocityAndForwardAngle number
---@field bUseNewRotator boolean
---@field bDrawDebugPhysicsRotation boolean
---@field bPhysicsRotationSetActorRotation boolean
---@field RecoverRotSpeed number
---@field fMinAdjustRotatoSpeedInFalling number
---@field AdjustRotatorOffset FVector
---@field FrontLegAdjustOffset FVector
---@field BackLegAdjustOffset FVector
---@field AdjustRotatorBoxExtent FVector
---@field AdjustRotatorCapsuleRadius number
---@field AdjustRotatorCapsuleLength number
---@field bUseActorUp boolean
---@field bAdjustRotUseBoxSweep boolean
---@field DrawDebugAjustRotatorCheck boolean
---@field bAjustRotatorDoubleCheck boolean
---@field fAdjustRotatorNormalAngleCheck number
---@field bUseLineTraceNormal boolean
---@field CurFloornormal FVector
---@field AdjustRotatorNormalChangeMinValue number
---@field fAdjustRotatorPitchMax number
---@field AdjustActorRotMinValueWithTargetRot number
---@field fPhysicsRotationSpeed number
---@field ChangeRotSpeed number
---@field CollisionImpulse number
---@field TeleportDelta number
---@field DelayResetTime number
---@field TimeImpulseRate number
---@field bUseDisableSticky boolean
local USTExtraCamelVehMovementCom = {}

---@param InwalkType EWalkType
function USTExtraCamelVehMovementCom:SetWalkType(InwalkType) end

---@param walkType1 EWalkType
function USTExtraCamelVehMovementCom:ServerSetWalkType(walkType1) end

---@param DeltaTime number
---@param bFluid boolean
function USTExtraCamelVehMovementCom:CalculateVelocityWithResistance(DeltaTime, bFluid) end

---@return number
function USTExtraCamelVehMovementCom:GetDesireAcceleration() end

---@return number
function USTExtraCamelVehMovementCom:GetMaxAcceleration() end

---@param PredictTime number
---@return FVector
function USTExtraCamelVehMovementCom:GetPredictVelocity(PredictTime) end

---@param InRot FRotator
---@param InNormal FVector
---@return FRotator
function USTExtraCamelVehMovementCom:GetRotationAdjustNormal(InRot, InNormal) end
