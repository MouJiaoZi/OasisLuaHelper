---@meta

---@class ECustomMovementMode
---@field CMOVE_None number
---@field CMOVE_Climb number @Climb
---@field CMOVE_ClimbEnd number @Climb
---@field CMOVE_MAX number
ECustomMovementMode = {}


---@class EClimbState
---@field eClimbStart number
---@field eClimbing number
---@field eClimbCatchTop number
---@field eClimbCatchMoveTop number
---@field eClimbDefault number
EClimbState = {}


---@class EClimbResult
---@field eClimbSucceed number
---@field eClimbFailed number
---@field eClimbResultDefault number
EClimbResult = {}


---@class FClimbMovementInfo
---@field ClimbState EClimbState
---@field ClimbResult EClimbResult
---@field ClimbOutTimer number
---@field ClimbEndTimer number
---@field ClimbTargetLoc FVector
---@field ClimbTargetRot FRotator
---@field ClimbWallNormal FVector
FClimbMovementInfo = {}


---@class USTExtraSnowLeopardVehMovementCom: USTExtraMyriapodVehMovementCom
---@field MaxRunAcceleration number
---@field MaxSwimAcceleration number
---@field MaxRunSpeed number
---@field fBrakeToStopTime number
---@field fBrakeMinSpeedToCleanSpeed number
---@field fAllowStandByJumpSpeed number
---@field FallAngularSpeedFactor number
---@field FallSpeedAccFactor number
---@field TurnSpeedAttenuateFactor number
---@field bHandJumpUseCurve boolean
---@field bCalcVelocityUseActorForward boolean
---@field bPhysRotationSucceed boolean
---@field BeforeRotationActorForward FVector
---@field bOpenSlideAlongSurface boolean
---@field fAccWhenFalling number
---@field ReplicatedClimbMovement any
---@field fSerioueInjurySpeed number
---@field fTurnStartLerpSpeed number
---@field fTurnEndLerpSpeed number
---@field PhysicsRotationUseActorPitch boolean
---@field JumpRotBoneName string
---@field bJumpRotUpdateComponent boolean
---@field fMaxVelocityAndForwardAngle number
---@field bUseNewRotator boolean
---@field bDrawDebugPhysicsRotation boolean
---@field bClimbRotateActorEnable boolean
---@field bDrawDebug boolean
---@field bTryClimbDrawDebug boolean
---@field fEnterClimbDis number
---@field fObstacleJumpSquared2DDis number
---@field fEnterClimbWallHeight number
---@field fClimbWallNormalAndUpAngle number
---@field fClimbAngle number
---@field fAllowClimbObsHeight number
---@field fMaxClimbHeight number
---@field fClimbTopCheckHeight number
---@field fMinClimbHeight number
---@field fCheckTopTraceHeight number
---@field bCheckWallHeightUseOld boolean
---@field fCheckWallHeightSweepLength number
---@field fCheckWallHeightBoxXReduce number
---@field fCheckTopOffsetAlongWallNormal number
---@field fClimbMoveZDisToWall number
---@field bCheckWallUseBox boolean
---@field fMaxDisSquToClimbTarget2D number
---@field fTryClimbTraceDownCapsuleRadius number
---@field fTryClimbTraceDownCapsuleLength number
---@field ChooseClimbSpeedLinearVelocity number
---@field ClimbOutSpeed number
---@field ClimbHighSpeed number
---@field ClimbLowSpeed number
---@field StartClimbLocSpeed number
---@field StartClimbRotSpeed number
---@field bUseLineTraceNormal boolean
---@field ChangeRotSpeed number
---@field RecoverRotSpeed number
---@field ClimbLocToTarLocDisSeq2D number
---@field ClimbThreshold number
---@field ClimbSucceedCheckOffset number
---@field fClimbFailedBoxCheckOffset number
---@field fClimbEndUpMoveTime number
---@field fClimbEndForwardMoveTime number
---@field fClimbOutMoveTime number
---@field fClimbOutUseSpeed boolean
---@field fDsClimbEndTimeTolerance number
---@field ClimbSucceedMoveSpeed number
---@field CannotClimbTag string
---@field ClimbBoxOffset FVector
---@field ClimbBoxOffsetInBoxComponent FVector
---@field ClimbBox FVector
---@field bClimbUseBoxSweep boolean
---@field fTryClimbSweepZOffset number
---@field fEnterCacheTopCheckOffset number
---@field bLimitCacheTopHight boolean
---@field fLimitCacheTopHightOffset number
---@field TryClimbCalcWallHeightUseBP boolean
---@field bAdjustLowWall boolean
---@field fLowWallHeight number
---@field bLowWall boolean
---@field fLowWallCatchTopPlayRate number
---@field fCatchTopPlayRate number
---@field AdjustFloorSpeed number
---@field AdjustFloorAngularSpeed number
---@field climbState EClimbState
---@field climbResult EClimbResult
---@field bCloseServerPrecentPenetratingClimb boolean
---@field CurrentWall FFindFloorResult
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
---@field bOpenForceNoCombineWhenCatchTop boolean
---@field bClimbTopUseBodyBoxCheck boolean
---@field fClimbTopUseBodyBoxCheckZReduce number
---@field fClimbOutSweepStartOffset number
local USTExtraSnowLeopardVehMovementCom = {}

function USTExtraSnowLeopardVehMovementCom:OnRep_ReplicatedClimbMovement() end

---@param DeltaTime number
---@param bFluid boolean
function USTExtraSnowLeopardVehMovementCom:CalculateVelocityWithResistance(DeltaTime, bFluid) end

---@return number
function USTExtraSnowLeopardVehMovementCom:GetDesireAcceleration() end

---@return number
function USTExtraSnowLeopardVehMovementCom:GetMaxAcceleration() end

---@param PredictTime number
---@return FVector
function USTExtraSnowLeopardVehMovementCom:GetPredictVelocity(PredictTime) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewRot FRotator
---@param ServerMovementMode number
function USTExtraSnowLeopardVehMovementCom:ClientAdjustCustomMovement(TimeStamp, NewLoc, NewRot, ServerMovementMode) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewRot FRotator
---@param ClimbTargetLoc FVector
---@param ClimbTargetRot FRotator
---@param ServerMovementMode number
---@param SetverEClimbState number
---@param climbResult number
---@param fServerClimbEndTime number
---@param fServerClimbOutTime number
function USTExtraSnowLeopardVehMovementCom:ClientAdjustCustomMovement123(TimeStamp, NewLoc, NewRot, ClimbTargetLoc, ClimbTargetRot, ServerMovementMode, SetverEClimbState, climbResult, fServerClimbEndTime, fServerClimbOutTime) end

---@param ClimbTargetLoc FVector
---@param ClimbTargetRot FRotator
---@param ClimbStartLoc FVector
---@param ClimbStartRot FRotator
---@param wallNormal FVector
function USTExtraSnowLeopardVehMovementCom:ServerClimb(ClimbTargetLoc, ClimbTargetRot, ClimbStartLoc, ClimbStartRot, wallNormal) end

---@param ClimbTargetLoc FVector
---@param ClimbTargetRot FRotator
---@param ClimbStartLoc FVector
---@param ClimbStartRot FRotator
---@param wallNormal FVector
function USTExtraSnowLeopardVehMovementCom:AllClimb(ClimbTargetLoc, ClimbTargetRot, ClimbStartLoc, ClimbStartRot, wallNormal) end

---@param InRot FRotator
---@param InNormal FVector
---@return FRotator
function USTExtraSnowLeopardVehMovementCom:GetRotationAdjustNormal(InRot, InNormal) end

---@param deltaTime number
---@param CurClimbResult EClimbResult
---@param waklType number
function USTExtraSnowLeopardVehMovementCom:ClimbEnd(deltaTime, CurClimbResult, waklType) end
