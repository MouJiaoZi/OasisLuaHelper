---@meta

---@class USTExtraMammothVehMovementCom: USTExtraMyriapodVehMovementCom
---@field WalkType EWalkType
---@field MaxRunAcceleration number
---@field MaxCanterAcceleration number
---@field MaxSwimAcceleration number
---@field MaxRunSpeed number
---@field MaxCanterSpeed number
---@field fBrakeToStopTime number
---@field fBrakeMinSpeedToCleanSpeed number
---@field fAllowStandByJumpSpeed number
---@field FallAngularSpeedFactor number
---@field TurnSpeedAttenuateFactor number
---@field bHandJumpUseCurve boolean
---@field bCalcVelocityUseActorForward boolean
---@field bPhysRotationSucceed boolean
---@field BeforeRotationActorForward FVector
---@field AdjustFloorSpeed number
---@field AdjustFloorAngularSpeed number
---@field bOpenCustomComponentMoveCheck boolean
---@field ChangeRotSpeed number
---@field RecoverRotSpeed number
---@field bUseLineTraceNormal boolean
---@field fSerioueInjurySpeed number
---@field fTurnStartLerpSpeed number
---@field fTurnEndLerpSpeed number
---@field bPhysicsRotationUseOverlap boolean
---@field bPhysicsRotationSetActorRotation boolean
---@field JumpRotBoneName string
---@field bJumpRotUpdateComponent boolean
---@field fMaxVelocityAndForwardAngle number
---@field bUseNewRotator boolean
---@field bDrawDebugPhysicsRotation boolean
---@field AdjustRotatorNormalChangeMinValue number
---@field AdjustActorRotMinValueWithTargetRot number
---@field bUseActorUp boolean
---@field CurFloornormal FVector
---@field bAdjustRotUseBoxSweep boolean
---@field AdjustRotatorBoxExtent FVector
---@field AdjustRotatorCapsuleRadius number
---@field AdjustRotatorCapsuleLength number
---@field AdjustRotatorOffset FVector
---@field DrawDebugAjustRotatorCheck boolean
---@field fAdjustRotatorPitchMax number
---@field fPhysicsRotBoxOverlapZReduce number
---@field fAdjustRotatorNormalAngleCheck number
---@field bAjustRotatorDoubleCheck boolean
---@field fMinAdjustRotatoSpeedInFalling number
---@field bCustomResolvePenetrationUseSmallBox boolean
local USTExtraMammothVehMovementCom = {}

---@param InwalkType EWalkType
function USTExtraMammothVehMovementCom:SetWalkType(InwalkType) end

---@param walkType1 EWalkType
function USTExtraMammothVehMovementCom:ServerSetWalkType(walkType1) end

---@param InRot FRotator
---@param InNormal FVector
---@return FRotator
function USTExtraMammothVehMovementCom:GetRotationAdjustNormal(InRot, InNormal) end

---@param DeltaTime number
---@param bFluid boolean
function USTExtraMammothVehMovementCom:CalculateVelocityWithResistance(DeltaTime, bFluid) end

---@return number
function USTExtraMammothVehMovementCom:GetDesireAcceleration() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraMammothVehMovementCom:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraMammothVehMovementCom:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function USTExtraMammothVehMovementCom:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@return number
function USTExtraMammothVehMovementCom:GetMaxAcceleration() end

---@param PredictTime number
---@return FVector
function USTExtraMammothVehMovementCom:GetPredictVelocity(PredictTime) end

---@param ClientWorldLocation FVector
---@param ClientRot FRotator
---@return boolean
function USTExtraMammothVehMovementCom:CheckOverlapByClientPosition(ClientWorldLocation, ClientRot) end
