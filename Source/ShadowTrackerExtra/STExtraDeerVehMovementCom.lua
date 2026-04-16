---@meta

---@class USTExtraDeerVehMovementCom: USTExtraMyriapodVehMovementCom
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
---@field JumpRotBoneName string
---@field bJumpRotUpdateComponent boolean
---@field fMaxVelocityAndForwardAngle number
---@field bUseNewRotator boolean
---@field bDrawDebugPhysicsRotation boolean
local USTExtraDeerVehMovementCom = {}

---@param InwalkType EWalkType
function USTExtraDeerVehMovementCom:SetWalkType(InwalkType) end

---@param walkType1 EWalkType
function USTExtraDeerVehMovementCom:ServerSetWalkType(walkType1) end

---@param DeltaTime number
---@param bFluid boolean
function USTExtraDeerVehMovementCom:CalculateVelocityWithResistance(DeltaTime, bFluid) end

---@return number
function USTExtraDeerVehMovementCom:GetDesireAcceleration() end

---@return number
function USTExtraDeerVehMovementCom:GetMaxAcceleration() end

---@param PredictTime number
---@return FVector
function USTExtraDeerVehMovementCom:GetPredictVelocity(PredictTime) end
