---@meta

---@class UNezhaLotusFloatingActorMovement: UActivityFloatingActorMovement
---@field PlayerControlInput FVector
---@field ServerPlayerControlInput FVector
---@field bEnableCalcMovementEvent boolean
---@field SteerViewSpeed number
---@field TurnViewYawValidThreshold number
---@field bOverlapIgnoreVehicle boolean
---@field OverlapCheckRotValidIgnoreChannel ULuaArrayHelper<ECollisionChannel>
---@field BoxOverlapCheckRotValid ULuaArrayHelper<FVector>
---@field IgnoreProcessViewTag string
---@field OffsetOverlapCheckRotValid ULuaArrayHelper<FVector>
---@field bUsePredictLocToOverlap boolean
---@field bUseTorqueRotBody boolean
---@field bTurningBodyYaw boolean
---@field bDontLerpRotOnTurningBodyYaw boolean
---@field MaxRotPowerAngel number
---@field MaxRotTorquePower number
---@field bEnableProcessViewRotationEvent boolean
---@field TargetViewRot FRotator
---@field bOnLocalControl boolean
---@field bOnSpectatorOrReplayControl boolean
---@field LandHitResult FHitResult
---@field SweepHitResult FHitResult
---@field PredicateSweepHitResult FHitResult
---@field nowLandSurfaceType EPhysicalSurface
---@field MaxDistanceToLand number
---@field MaxDistanceToLandRange number
---@field EnterFlyStateHeight number
---@field bDownInputResetHeightAdapt boolean
---@field ComponentLocationOffsetTrace number
---@field LandTraceMaxHeight number
---@field bUseBoxSweepLandAccurate boolean
---@field UseBoxSweepLandAccurateTraceHeight number
---@field UseBoxSweepExtent FVector
---@field BeyondMaxHeightAddaptiveExtra number
---@field EnterAdaptiveStateSpeed number
---@field PredictSweepDownOffsetTrace number
---@field PredictSweepUpOffsetTrace number
---@field CanAutoUpDistance number
---@field bCanPredictAutoUp boolean
---@field bEnablePredictAutoUp boolean
---@field AutoPredictUpInputConfig number
---@field CurAutoPredictUpInput number
---@field UseInputCheck number
---@field nowDisToLand number
---@field isInHeightAdpatStating boolean
---@field TopWingsAdaptOutput number
---@field CurrentFloor UPrimitiveComponent
---@field LastFloor UPrimitiveComponent
---@field AutonomousverticalUpDis number
---@field verticalUpDis number
---@field prePosZ number
---@field ResetFallingZVelToZeroDis number
---@field FallingZVelInterpSpeed number
---@field CorrectPitchRollSpeed number
---@field bEnableClientSimulate boolean
---@field bLocalControlCanSimulate boolean
---@field bLocalControlDontPredict boolean
---@field bEnableLerpTrace boolean
---@field bClientCanSimulate boolean
---@field bEnableSafeMove boolean
---@field bUseSafeMoveUpdatedComponent boolean
---@field BoxOverlapCheckLerpLoc ULuaArrayHelper<FVector>
---@field LotusIgnoreViewTagCheckLerp string
---@field OffsetOverlapCheckLerpLoc ULuaArrayHelper<FVector>
---@field bUseUseVehiclePhysicErrorCorrection boolean
---@field ErrorCorrection FVehicleRigidBodyErrorCorrection
---@field LotusLocInterpAlpha number
---@field bAlwaysUpdateLerp boolean
---@field MaxSpeedDampingOnNoDriver number
---@field CurMaxSpeed number
local UNezhaLotusFloatingActorMovement = {}

function UNezhaLotusFloatingActorMovement:OnRep_ServerPlayerControlInput() end

---@param ControlInput FVector
function UNezhaLotusFloatingActorMovement:SyncPlayerControlInput(ControlInput) end

function UNezhaLotusFloatingActorMovement:CalcPlayerInput() end

---@param DeltaTime number
---@return boolean
function UNezhaLotusFloatingActorMovement:CalcMovement(DeltaTime) end

---@param DeltaTime number
---@return boolean
function UNezhaLotusFloatingActorMovement:CalcMovementEvent(DeltaTime) end

---@param DeltaTime number
function UNezhaLotusFloatingActorMovement:UpdateTopWingsOutput(DeltaTime) end

---@param NewValue boolean
function UNezhaLotusFloatingActorMovement:SetInHeightAdpatStating(NewValue) end

function UNezhaLotusFloatingActorMovement:OnRep_isInHeightAdpatStating() end

function UNezhaLotusFloatingActorMovement:SubStepUpdateDistanceToLand() end

function UNezhaLotusFloatingActorMovement:PredictDistanceToLand() end

---@param deltaTime number
---@param upinput number
function UNezhaLotusFloatingActorMovement:UpdateverticalUpDis(deltaTime, upinput) end

function UNezhaLotusFloatingActorMovement:OnRep_verticalUpDis() end

---@param Delta number
function UNezhaLotusFloatingActorMovement:LerpMovement(Delta) end

---@param Delta number
function UNezhaLotusFloatingActorMovement:LerpMovementNew(Delta) end

---@param Loc FVector
---@param Rot FRotator
---@return boolean
function UNezhaLotusFloatingActorMovement:CheckLerpLocValid(Loc, Rot) end
