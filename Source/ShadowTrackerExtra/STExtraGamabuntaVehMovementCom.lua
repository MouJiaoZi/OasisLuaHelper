---@meta

---@class USTExtraGamabuntaVehMovementCom: USTExtraMyriapodVehMovementCom
---@field WalkType EWalkType
---@field MaxRunAcceleration number
---@field MaxCanterAcceleration number
---@field MaxWalkAcceleration number
---@field MaxSwimAcceleration number
---@field MaxGlideAcceleration number
---@field MaxRunSpeed number
---@field MaxCanterSpeed number
---@field MaxSlowWalkSpeed number
---@field MaxGlideSpeed number
---@field fBrakeToStopTime number
---@field fBrakeMinSpeedToCleanSpeed number
---@field fAllowStandByJumpSpeed number
---@field FallAngularSpeedFactor number
---@field TurnSpeedAttenuateFactor number
---@field bHandJumpUseCurve boolean
---@field fGamabuntaGravityZ number
---@field bCalcVelocityUseActorForward boolean
---@field bPhysRotationSucceed boolean
---@field BeforeRotationActorForward FVector
---@field fMaxVelocityAndForwardAngle number
---@field CurFloorNormal FVector
---@field AdjustRotatorNormalChangeMinValue number
---@field ChangeRotSpeed number
---@field fAdjustRotatorPitchMax number
---@field fAdjustRotatorRollMax number
---@field bEnableSlopeRollAdjust boolean
---@field bDrawDebugSlopeAdjust boolean
---@field RecoverRotSpeed number
local USTExtraGamabuntaVehMovementCom = {}

---@param InwalkType EWalkType
function USTExtraGamabuntaVehMovementCom:SetWalkType(InwalkType) end

---@param walkType1 EWalkType
function USTExtraGamabuntaVehMovementCom:ServerSetWalkType(walkType1) end

---@param DeltaTime number
---@param bFluid boolean
function USTExtraGamabuntaVehMovementCom:CalculateVelocityWithResistance(DeltaTime, bFluid) end

---@return number
function USTExtraGamabuntaVehMovementCom:GetMaxAcceleration() end

---@param fGravityZ number
function USTExtraGamabuntaVehMovementCom:ModifyGravityZ(fGravityZ) end

---@return boolean
function USTExtraGamabuntaVehMovementCom:CanWalkInWater() end

---@param Value boolean
function USTExtraGamabuntaVehMovementCom:SetCanWalkInWater(Value) end
