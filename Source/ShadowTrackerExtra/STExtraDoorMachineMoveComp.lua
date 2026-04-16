---@meta

---门框机器人移动组件 继承自多足载具移动组件逻辑，挪了部分马的逻辑过来 采用三挡速度配置
---@class USTExtraDoorMachineMoveComp: USTExtraMyriapodVehMovementCom
---@field MaxWalkAcceleration number
---@field MaxCanterAcceleration number
---@field MaxRunAcceleration number
---@field MaxSwimAcceleration number
---@field MaxSlowWalkSpeed number
---@field MaxCanterSpeed number
---@field MaxRunSpeed number
---@field fBrakeToStopTime number
---@field fBrakeMinSpeedToCleanSpeed number @当小于这个速度时速度直接清0，为了处理速度小时慢慢滑动的表现
---@field fMaxVelocityAndForwardAngle number
---@field fAccWhenFalling number
---@field FallAngularSpeedFactor number
---@field TurnSpeedAttenuateFactor number
---@field PhysicsRotationUseActorPitch boolean
---@field bUseNewRotator boolean
---@field bDrawDebugPhysicsRotation boolean
---@field bKeepZAxisVertical boolean
---@field ChangeRotSpeed number
---@field bUseLineTraceNormal boolean
---@field BackAngle number
---@field bForceSimulatedNotAlwaysCheckFloor boolean
---@field bNoResistanceWhenAIFollow boolean
---@field bServerMoveSetControlRotation boolean
---@field bServerMoveSetPawnRotation boolean
---@field bPhysicsRotationSetActorRotation boolean
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
---@field fAdjustRotatorNormalAngleCheck number
---@field fMinAdjustRotatoSpeedInFalling number
---@field bAjustRotatorDoubleCheck boolean
---@field AdjustFloorSpeed number
---@field AdjustFloorAngularSpeed number
---@field WalkType EWalkType
---@field BeforeRotationActorForward FVector
---@field bCalcVelocityUseActorForward boolean
---@field bPhysRotationSucceed boolean
local USTExtraDoorMachineMoveComp = {}

---@param DeltaTime number
---@param bFluid boolean
function USTExtraDoorMachineMoveComp:CalculateVelocityWithResistance(DeltaTime, bFluid) end

---@return number
function USTExtraDoorMachineMoveComp:GetDesireAcceleration() end

---@return number
function USTExtraDoorMachineMoveComp:GetMaxAcceleration() end

---@param PredictTime number
---@return FVector
function USTExtraDoorMachineMoveComp:GetPredictVelocity(PredictTime) end

---@param InWalkType EWalkType
function USTExtraDoorMachineMoveComp:SetWalkType(InWalkType) end

---@param InWalkType EWalkType
function USTExtraDoorMachineMoveComp:ServerSetWalkType(InWalkType) end
