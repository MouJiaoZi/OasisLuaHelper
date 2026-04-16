---@meta

---@class ASTExtraExcavator: ASTExtraWheeledVehicle
---@field MechanicalArmControlConfig ULuaArrayHelper<FCollisionConfig>
---@field MechanicalArmShapeLocalTransforms ULuaArrayHelper<FTransform>
---@field RepMechanicalArmLocalMoving ULuaArrayHelper<boolean>
---@field LocalMechanicalArmLocalMoving ULuaArrayHelper<boolean>
---@field CalcShouldCalcLocalFrameNumber number
---@field CachedShouldCalcLocal number
---@field ShapeIndex2MechanicalArmType ULuaMapHelper<number, FConnectEMechanicalArmType>
---@field HasInitMechanicalArmShapeLocalTransforms boolean
---@field DrawAnimationShape boolean
---@field TankTurnKeepUpperPart boolean
---@field TankTurnKeepUpperPartArmType EMechanicalArmType
---@field TankTurnKeepUpperPartArmRotationIndex number
---@field TankTurnBeginVehicleYaw number
---@field TankTurnBeginUpperPartArmYaw number
---@field Local_UpperArm_PitchRate number
---@field Local_Last_UpperArm_PitchRate number
---@field Local_UpperArm_YawRate number
---@field Local_Last_UpperArm_YawRate number
---@field Local_ForeArm_PitchRate number
---@field Local_Last_ForeArm_PitchRate number
---@field Local_ForeArm_ExtendRate number
---@field Local_Last_ForeArm_ExtendRate number
---@field Local_Bucket_PitchRate number
---@field Local_Last_Bucket_PitchRate number
---@field Local_Bucket_RollRate number
---@field Local_Last_Bucket_RollRate number
---@field Local_LeftFrontLeg_PitchRate number
---@field Local_Last_LeftFrontLeg_PitchRate number
---@field Local_LeftFrontLeg_YawRate number
---@field Local_Last_LeftFrontLeg_YawRate number
---@field Local_RightFrontLeg_PitchRate number
---@field Local_Last_RightFrontLeg_PitchRate number
---@field Local_RightFrontLeg_YawRate number
---@field Local_Last_RightFrontLeg_YawRate number
---@field Local_LeftHindLeg_PitchRate number
---@field Local_Last_LeftHindLeg_PitchRate number
---@field Local_LeftHindLeg_YawRate number
---@field Local_Last_LeftHindLeg_YawRate number
---@field Local_RightHindLeg_PitchRate number
---@field Local_Last_RightHindLeg_PitchRate number
---@field Local_RightHindLeg_YawRate number
---@field Local_Last_RightHindLeg_YawRate number
---@field Local_LeftHindClaw_PitchRate number
---@field Local_Last_LeftHindClaw_PitchRate number
---@field Local_RightHindClaw_PitchRate number
---@field Local_Last_RightHindClaw_PitchRate number
---@field Rep_UpperArm_PitchRate number
---@field Rep_UpperArm_YawRate number
---@field Rep_ForeArm_PitchRate number
---@field Rep_ForeArm_ExtendRate number
---@field Rep_Bucket_PitchRate number
---@field Rep_Bucket_RollRate number
---@field Rep_LeftFrontLeg_PitchRate number
---@field Rep_LeftFrontLeg_YawRate number
---@field Rep_RightFrontLeg_PitchRate number
---@field Rep_RightFrontLeg_YawRate number
---@field Rep_LeftHindLeg_PitchRate number
---@field Rep_LeftHindLeg_YawRate number
---@field Rep_RightHindLeg_PitchRate number
---@field Rep_RightHindLeg_YawRate number
---@field Rep_LeftHindClaw_PitchRate number
---@field Rep_RightHindClaw_PitchRate number
---@field PitchAngularSpeedNoBlock number
---@field YawAngularSpeedNoBlock number
---@field ExtendSpeedNoBlock number
---@field PitchAngularSpeedWhenBlock number
---@field YawAngularSpeedWhenBlock number
---@field ExtendSpeedWhenBlock number
---@field SlowDownAngularSpeedBlockDistanceThreshold number
---@field MechanicalArmTypeShouldSlowDown ULuaArrayHelper<number>
---@field MechanicalArmServerAuthorizeMode boolean
---@field LastMechanicalArmTypeShouldSlowDown ULuaArrayHelper<number>
---@field YawLimit ULuaMapHelper<EMechanicalArmType, FMachanicalLimit>
---@field PitchLimit ULuaMapHelper<EMechanicalArmType, FMachanicalLimit>
---@field XExtendLimit ULuaMapHelper<EMechanicalArmType, FMachanicalLimit>
---@field ForceSyncAngleThreshold number
---@field ForceSyncExtendThreshold number
---@field ForceSyncPoseInterval number
---@field ShouldForceSyncPose boolean
---@field Rep_FrontUpperArmRotation FRotator
---@field Rep_FrontForeArmRotation FRotator
---@field Rep_FrontForeArmExtend FVector
---@field Rep_LeftHindLegRotation FRotator
---@field Rep_RightHindLegRotation FRotator
---@field Rep_LeftFrontLegRotation FRotator
---@field Rep_RightFrontLegRotation FRotator
---@field Rep_LeftHindClawRotation FRotator
---@field Rep_RightHindClawRotation FRotator
---@field Rep_BucketRotation FRotator
---@field Autonomous_FrontUpperArmRotation FRotator
---@field Autonomous_FrontForeArmRotation FRotator
---@field Autonomous_FrontForeArmExtend FVector
---@field Autonomous_LeftHindLegRotation FRotator
---@field Autonomous_RightHindLegRotation FRotator
---@field Autonomous_LeftFrontLegRotation FRotator
---@field Autonomous_RightFrontLegRotation FRotator
---@field Autonomous_LeftHindClawRotation FRotator
---@field Autonomous_RightHindClawRotation FRotator
---@field Autonomous_BucketRotation FRotator
---@field Query_FrontUpperArmRotation FRotator
---@field Query_FrontForeArmRotation FRotator
---@field Query_FrontForeArmExtend FVector
---@field Query_LeftHindLegRotation FRotator
---@field Query_RightHindLegRotation FRotator
---@field Query_LeftFrontLegRotation FRotator
---@field Query_RightFrontLegRotation FRotator
---@field Query_LeftHindClawRotation FRotator
---@field Query_RightHindClawRotation FRotator
---@field Query_BucketRotation FRotator
---@field EnableBlockCheck boolean
---@field CheckShapeBlockConfigs ULuaArrayHelper<FCheckShapeBlockConfig>
---@field MaxBlockDistance number
---@field OverlapAABBIgnoreDistance number
---@field OverlapShapeIgnoreDistance number
---@field bUseCompLocToCalcPenetration boolean
---@field FrameBeginBlockStates ULuaMapHelper<number, FBlockState>
---@field FrameEndBlockStates ULuaMapHelper<number, FBlockState>
---@field AutoMoveState FAutoMoveState
---@field ResetPoseAutoMovePoseWrapper FAutoMovePoseDetailWrapper
---@field CatchAirDropSocket string
---@field CatchCharSocket string
---@field CatchRadius number
---@field EanableAirCatch boolean
---@field AirCatchRadius number
---@field AirCatchInterval number
---@field BucketReadyToDigAutoMovePoseWrapper FAutoMovePoseWrapper
---@field DigAutoMovePoseWrapper FAutoMovePoseWrapper
---@field DigEndAutoMovePoseWrapper FAutoMovePoseWrapper
---@field PourAutoMovePoseWrapper FAutoMovePoseWrapper
---@field PourEndAutoMovePoseWrapper FAutoMovePoseWrapper
---@field CatchAutoMovePoseWrapper FAutoMovePoseWrapper
---@field ReleaseAutoMovePoseWrapper FAutoMovePoseWrapper
---@field CatchEndAutoMovePoseWrapper FAutoMovePoseWrapper
---@field DigStartPitch number
---@field BucketShapeIndex number
---@field BucketShapeIndexWhenDigging number
---@field ShapeIndexToActiveWhenGrabedAirDrop number
---@field ShapeIndexToActiveWhenGrabedChar number
---@field PawnHasReleased boolean
---@field AirCatchTimer number
---@field UpperArmBoneName string
---@field ForeArmBoneName string
---@field BucketBoneName string
---@field ExcavatorEasyInput_BucketShapeDigOverlapExtendOffset number
---@field ShouldAutoReturnPoseWhenChangeToEasyInput boolean
---@field ChangeToEasyInputModeAutoMovePoseWrapper FAutoMovePoseDetailWrapper
---@field BucketInputWhenFindingDigPosition number
---@field UpperArmInputWhenFindingDigPosition number
---@field UpperArmInputWhenFindingPourPosition number
---@field EasyInputMode boolean
---@field ExcavatorState EExcavatorState
---@field Rep_Arm_EasyForwardRate number
---@field Local_Arm_EasyForwardRate number
---@field Local_Last_Arm_EasyForwardRate number
---@field BucketLocationWhenBeginDig FVector
---@field ForeArmBoneRotationWhenBeginDig FRotator
---@field UpperArmBoneRotationWhenBeginDig FRotator
---@field LeftClawDownPoseWrapper FAutoMovePoseWrapper
---@field LeftClawNormalPoseWrapper FAutoMovePoseWrapper
---@field RightClawDownPoseWrapper FAutoMovePoseWrapper
---@field RightClawNormalPoseWrapper FAutoMovePoseWrapper
---@field LeftClawDownState boolean
---@field RightClawDownState boolean
---@field CopilotSeatIndex number
---@field TwoPersonOperationMode boolean
---@field ThrowPawnSpeed number
---@field ThrowAirdropSpeed number
---@field ThrowAirdropMaxSpeed number
---@field ThrowMoundSpeed number
---@field ThrowPitchLimit FMachanicalLimit
---@field ThrowPitchAngularSpeed number
---@field UpBodyBoneName string
---@field HideCollisionShapeIndicesWhenThrow ULuaArrayHelper<number>
---@field ThrowPitch number
---@field LastThrowPitch number
---@field ThrowReadyAutoMovePoseWrapper FAutoMovePoseDetailWrapper
---@field ThrowAutoMovePoseWrapper FAutoMovePoseDetailWrapper
---@field ThrowEndAutoMovePoseWrapper FAutoMovePoseDetailWrapper
---@field UpperArmSounding boolean
---@field ForeArmSounding boolean
---@field LegSounding boolean
---@field TireSounding boolean
---@field ClawSounding boolean
---@field DigSounding boolean
---@field PourSounding boolean
---@field ForceServerAuthWhenRunningMacros boolean
---@field Macros ULuaArrayHelper<FExcavatorMacro>
---@field CurRunningMacro FExcavatorMacro
---@field CurRunningMacroPoseIndex number
local ASTExtraExcavator = {}

function ASTExtraExcavator:OnVehicleSeatOccupiersChange() end

---@param ArmType EMechanicalArmType
---@param Autonomous boolean
---@return boolean
function ASTExtraExcavator:GetMechanicalArmLocalMoving(ArmType, Autonomous) end

---@param ArmType EMechanicalArmType
---@param NewMoving boolean
---@param Autonomous boolean
function ASTExtraExcavator:SetMechanicalArmLocalMoving(ArmType, NewMoving, Autonomous) end

function ASTExtraExcavator:InitializeMechanicalArmMovingArray() end

---@return number
function ASTExtraExcavator:GetLocalControlType() end

function ASTExtraExcavator:InitializeMechanicalArmShapeLocalTransformsArray() end

---@return boolean
function ASTExtraExcavator:ShouldTickUpdateMechanicalArmControl() end

---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param OutTransformWhenQueryOnly ULuaArrayHelper<FTransform>
---@param QueryOnly boolean
---@return boolean
function ASTExtraExcavator:AnimatedCollision(BlockStates, OutTransformWhenQueryOnly, QueryOnly) end

---@param LocalPose boolean
function ASTExtraExcavator:InitialQueryPose(LocalPose) end

function ASTExtraExcavator:RefrshCurrentAnimatedCollision() end

---@param DeltaTime number
function ASTExtraExcavator:DrawDebugAnimationShape(DeltaTime) end

---@param ArmType EMechanicalArmType
---@param InRotationIndex number
---@param QueryOnly boolean
---@return FRotator
function ASTExtraExcavator:GetArmRotation(ArmType, InRotationIndex, QueryOnly) end

---@param ArmType EMechanicalArmType
---@param InLocOffsetIndex number
---@param QueryOnly boolean
---@return FVector
function ASTExtraExcavator:GetArmOffset(ArmType, InLocOffsetIndex, QueryOnly) end

---@param ShapeIndex number
---@param Transform FTransform
function ASTExtraExcavator:SetShapeTransform(ShapeIndex, Transform) end

function ASTExtraExcavator:ModyfyWeaponCollision() end

---@param Successed boolean
function ASTExtraExcavator:BackToNormalState(Successed) end

---@param DeltaTime number
function ASTExtraExcavator:TickUploadInput(DeltaTime) end

---@param IgnoreAutoMove boolean
---@return boolean
function ASTExtraExcavator:HasAnyInput(IgnoreAutoMove) end

---@param UpperArm_PitchRate number
---@param UpperArm_YawRate number
---@param ForeArm_PitchRate number
---@param ForeArm_ExtendRate number
---@param Bucket_PitchRate number
function ASTExtraExcavator:UploadArmInputToServer(UpperArm_PitchRate, UpperArm_YawRate, ForeArm_PitchRate, ForeArm_ExtendRate, Bucket_PitchRate) end

---@param LeftFrontLeg_PitchRate number
---@param LeftFrontLeg_YawRate number
---@param RightFrontLeg_PitchRate number
---@param RightFrontLeg_YawRate number
function ASTExtraExcavator:UploadFrontLegInputToServer(LeftFrontLeg_PitchRate, LeftFrontLeg_YawRate, RightFrontLeg_PitchRate, RightFrontLeg_YawRate) end

---@param LeftHindLeg_PitchRate number
---@param LeftHindLeg_YawRate number
---@param RightHindLeg_PitchRate number
---@param RightHindLeg_YawRate number
---@param LeftHindClaw_PitchRate number
---@param RightHindClaw_PitchRate number
function ASTExtraExcavator:UploadHindLegInputToServer(LeftHindLeg_PitchRate, LeftHindLeg_YawRate, RightHindLeg_PitchRate, RightHindLeg_YawRate, LeftHindClaw_PitchRate, RightHindClaw_PitchRate) end

---@return boolean
function ASTExtraExcavator:IsLockingBucket() end

---@param DeltaTime number
---@param UseLocalInput boolean
function ASTExtraExcavator:TickCalcPoseByInput(DeltaTime, UseLocalInput) end

---@param DeltaTime number
---@param UseLocalInput boolean
function ASTExtraExcavator:TickCalcPoseWhenProfessionalThrowingReadyStateByInput(DeltaTime, UseLocalInput) end

---@param CurBlockStates ULuaMapHelper<number, FBlockState>
function ASTExtraExcavator:GatherMechanicalArmSlowDownState(CurBlockStates) end

---@param CurBlockStates ULuaMapHelper<number, FBlockState>
---@param BlockDistanceThreshold number
function ASTExtraExcavator:GetBlockedMechanicalArmFromBlockState(CurBlockStates, BlockDistanceThreshold) end

---@param NewServerAuth boolean
function ASTExtraExcavator:SetMechanicalArmServerAuthorizeMode(NewServerAuth) end

function ASTExtraExcavator:OnRep_MechanicalArmServerAuthorizeMode() end

---@param ArmType EMechanicalArmType
---@param RotType EMachanicalRotType
---@return number
function ASTExtraExcavator:GetRotationSpeed(ArmType, RotType) end

---@param ArmType EMechanicalArmType
---@param AxisType EMachanicalAxisType
---@return number
function ASTExtraExcavator:GetExtendSpeed(ArmType, AxisType) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param RotType EMachanicalRotType
---@param DeltaTime number
---@param OriginRotator FRotator
---@return FRotator
function ASTExtraExcavator:CalcAngleByInput(InputRate, MechanicalArmType, RotType, DeltaTime, OriginRotator) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param RotType EMachanicalRotType
---@param DeltaTime number
---@param OriginRotator FRotator
---@return boolean
function ASTExtraExcavator:SetAngleByInput(InputRate, MechanicalArmType, RotType, DeltaTime, OriginRotator) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param RotType EMachanicalAxisType
---@param DeltaTime number
---@param OriginVector FVector
---@return boolean
function ASTExtraExcavator:SetExtendByInput(InputRate, MechanicalArmType, RotType, DeltaTime, OriginVector) end

---@param MechanicalArmType EMechanicalArmType
---@param PoseType EExcavatorPoseType
---@return FRotator
function ASTExtraExcavator:GetRotationByMechanicalArmType(MechanicalArmType, PoseType) end

---@param MechanicalArmType EMechanicalArmType
---@param InRotator FRotator
---@param PoseType EExcavatorPoseType
function ASTExtraExcavator:SetRotationByMechanicalArmType(MechanicalArmType, InRotator, PoseType) end

---@param MechanicalArmType EMechanicalArmType
---@param PoseType EExcavatorPoseType
---@return FVector
function ASTExtraExcavator:GetExtendByMechanicalArmType(MechanicalArmType, PoseType) end

---@param MechanicalArmType EMechanicalArmType
---@param InVector FVector
---@param PoseType EExcavatorPoseType
function ASTExtraExcavator:SetExtendByMechanicalArmType(MechanicalArmType, InVector, PoseType) end

---@param InAngle number
---@return number
function ASTExtraExcavator:MakeAngleSimple(InAngle) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param RotType EMachanicalRotType
---@param DeltaTime number
---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param ShouldCheckBlock boolean
---@param ShouldUpdateShapeNoCheck boolean
---@return boolean
function ASTExtraExcavator:CalcRotPoseByInput(InputRate, MechanicalArmType, RotType, DeltaTime, BlockStates, ShouldCheckBlock, ShouldUpdateShapeNoCheck) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param AxisType EMachanicalAxisType
---@param DeltaTime number
---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param ShouldCheckBlock boolean
---@param ShouldUpdateShapeNoCheck boolean
function ASTExtraExcavator:CalcExtendPoseByInput(InputRate, MechanicalArmType, AxisType, DeltaTime, BlockStates, ShouldCheckBlock, ShouldUpdateShapeNoCheck) end

---@param LocalRot FRotator
---@param RepRot FRotator
---@return boolean
function ASTExtraExcavator:ShouldForceSyncPoseByRot(LocalRot, RepRot) end

---@param LocalVec FVector
---@param RepVec FVector
---@return boolean
function ASTExtraExcavator:ShouldForceSyncPoseByVec(LocalVec, RepVec) end

---@param AutonomousRot FRotator
---@param RepRot FRotator
function ASTExtraExcavator:SyncPoseWhenOnRep(AutonomousRot, RepRot) end

---@param Cur number
---@param Tar number
---@return number
function ASTExtraExcavator:HandleTargetFloat(Cur, Tar) end

---@param ForceSync boolean
function ASTExtraExcavator:SyncServerPoseToLocal(ForceSync) end

function ASTExtraExcavator:OnRep_FrontUpperArmRotation() end

function ASTExtraExcavator:OnRep_FrontForeArmRotation() end

function ASTExtraExcavator:OnRep_FrontForeArmExtend() end

function ASTExtraExcavator:OnRep_LeftHindLegRotation() end

function ASTExtraExcavator:OnRep_RightHindLegRotation() end

function ASTExtraExcavator:OnRep_LeftFrontLegRotation() end

function ASTExtraExcavator:OnRep_RightFrontLegRotation() end

function ASTExtraExcavator:OnRep_LeftHindClawRotation() end

function ASTExtraExcavator:OnRep_RightHindClawRotation() end

function ASTExtraExcavator:OnRep_BucketRotation() end

function ASTExtraExcavator:CheckCurrentCanAcceptShapeInput() end

function ASTExtraExcavator:ReqResetPose() end

---@param AutoMovePoseWrapper FAutoMovePoseWrapper
---@param ForceMove boolean
---@param InDelegate FExcavatorAutoMoveDelegate
---@return boolean
function ASTExtraExcavator:AutoMoveToByPoseList(AutoMovePoseWrapper, ForceMove, InDelegate) end

---@param AutoMovePoseDetailWrapper FAutoMovePoseDetailWrapper
---@param ForceMove boolean
---@param InDelegate FExcavatorAutoMoveDelegate
---@return boolean
function ASTExtraExcavator:AutoMoveToByPoseDetailList(AutoMovePoseDetailWrapper, ForceMove, InDelegate) end

function ASTExtraExcavator:OnRep_AutoMoveTarget() end

---@return boolean
function ASTExtraExcavator:IsAutoMoving() end

---@param DeltaTime number
function ASTExtraExcavator:TickCalcPoseByTarget(DeltaTime) end

---@param MechanicalArm EMechanicalArmType
---@param ForceMove boolean
---@param MoveRot boolean
---@param TargetRot FRotator
---@param MoveExtend boolean
---@param TargetVec FVector
---@param RotSpeed number
---@param ExtSpeed number
---@param Delegate FExcavatorAutoMoveDelegate
---@return boolean
function ASTExtraExcavator:SetAutoMoveTargetWithParams(MechanicalArm, ForceMove, MoveRot, TargetRot, MoveExtend, TargetVec, RotSpeed, ExtSpeed, Delegate) end

---@param AutoMoveTarget FAutoMoveTarget
---@param Delegate FExcavatorAutoMoveDelegate
---@return boolean
function ASTExtraExcavator:SetAutoMoveTarget(AutoMoveTarget, Delegate) end

---@param InIsAutoMoving boolean
function ASTExtraExcavator:SetIsAutoMoving(InIsAutoMoving) end

---@param Successed boolean
---@param NeedExecuteDelegate boolean
function ASTExtraExcavator:EndAutoMove(Successed, NeedExecuteDelegate) end

---@param InChar ASTExtraBaseCharacter
function ASTExtraExcavator:SetGrabedChar(InChar) end

---@param LastChar ASTExtraBaseCharacter
function ASTExtraExcavator:OnRep_GrabedChar(LastChar) end

---@param InAirDrop AAirDropBoxActor
function ASTExtraExcavator:SetGrabedAirDrop(InAirDrop) end

---@param LastAirDrop AAirDropBoxActor
function ASTExtraExcavator:OnRep_GrabedAirDrop(LastAirDrop) end

---@return boolean
function ASTExtraExcavator:IsBucketCatchedPawn() end

---@return boolean
function ASTExtraExcavator:IsBucketCatchedAirDrop() end

---@return boolean
function ASTExtraExcavator:IsBucketHasMound() end

---@return boolean
function ASTExtraExcavator:IsBucketEmpty() end

---@return boolean
function ASTExtraExcavator:ClientCheckCanDig() end

---@return boolean
function ASTExtraExcavator:ClientCheckCanPour() end

---@param Successed boolean
function ASTExtraExcavator:OnDigReadyToStart(Successed) end

---@param Successed boolean
function ASTExtraExcavator:OnDigActionFinish(Successed) end

---@param Successed boolean
function ASTExtraExcavator:OnDigFailResetPoseFinish(Successed) end

---@param Successed boolean
function ASTExtraExcavator:OnPourActionFinish(Successed) end

---@param Successed boolean
function ASTExtraExcavator:OnReleaseActionFinish(Successed) end

---@param Successed boolean
function ASTExtraExcavator:OnCatchActionFinish(Successed) end

---@return boolean
function ASTExtraExcavator:DoDig() end

---@return boolean
function ASTExtraExcavator:DoPour() end

---@param TargetActor AActor
---@return boolean
function ASTExtraExcavator:DoCatch(TargetActor) end

---@param InAirDrop AAirDropBoxActor
---@return boolean
function ASTExtraExcavator:CatchAirDrop(InAirDrop) end

function ASTExtraExcavator:ReleaseAirDrop() end

---@return boolean
function ASTExtraExcavator:DoRelease() end

function ASTExtraExcavator:ReqDig() end

function ASTExtraExcavator:ReqFindDigPosition() end

function ASTExtraExcavator:ReqPour() end

function ASTExtraExcavator:ReqFindPourPosition() end

---@param TargetActor AActor
function ASTExtraExcavator:ReqCatch(TargetActor) end

function ASTExtraExcavator:ReqRelease() end

---@param Velocity FVector
function ASTExtraExcavator:MulticastThrowAirdrop(Velocity) end

---@param IsDigging boolean
function ASTExtraExcavator:ChangeBucketShape(IsDigging) end

function ASTExtraExcavator:PawnReqRelease() end

---@param Actor AActor
---@param AirCatch boolean
---@param TargetPos FVector
---@param CheckEnoughSpace boolean
---@param ShowTips boolean
---@return boolean
function ASTExtraExcavator:CheckActorCanCatch(Actor, AirCatch, TargetPos, CheckEnoughSpace, ShowTips) end

function ASTExtraExcavator:OnRep_EasyInputMode() end

---@param LastExcavatorEasyInputModeState EExcavatorState
function ASTExtraExcavator:OnRep_ExcavatorState(LastExcavatorEasyInputModeState) end

---@param LastExcavatorEasyInputModeState EExcavatorState
function ASTExtraExcavator:BPOnRep_ExcavatorState(LastExcavatorEasyInputModeState) end

---@param InState EExcavatorState
function ASTExtraExcavator:SetExcavatorState(InState) end

---@return boolean
function ASTExtraExcavator:IsDigMode() end

---@return boolean
function ASTExtraExcavator:IsPourMode() end

---@return boolean
function ASTExtraExcavator:IsThrowMode() end

---@return boolean
function ASTExtraExcavator:IsNormalMode() end

function ASTExtraExcavator:ClearArmMoving() end

---@param EasyArmForward number
function ASTExtraExcavator:UploadEasyInputToServer(EasyArmForward) end

---@param EasyInput boolean
function ASTExtraExcavator:ReqChangeInputMode(EasyInput) end

function ASTExtraExcavator:ResetPoseAfterEasyInputDig() end

---@param Successed boolean
function ASTExtraExcavator:OnResetPoseFinishWhenDigEnd(Successed) end

---@param DeltaTime number
function ASTExtraExcavator:TickHandleEasyInput(DeltaTime) end

---@param DeltaTime number
function ASTExtraExcavator:TickHandleProfessionalInput(DeltaTime) end

---@param DeltaTime number
function ASTExtraExcavator:TickHandleMacro(DeltaTime) end

---@param Down boolean
function ASTExtraExcavator:ReqChangeLeftClawState(Down) end

function ASTExtraExcavator:OnRep_LeftClawDownState() end

function ASTExtraExcavator:BPOnRep_LeftClawDownState() end

---@param Down boolean
function ASTExtraExcavator:ReqChangeRightClawState(Down) end

function ASTExtraExcavator:OnRep_RightClawDownState() end

function ASTExtraExcavator:BPOnRep_RightClawDownState() end

function ASTExtraExcavator:MulticastClawStateChangeAkEvent() end

function ASTExtraExcavator:PlayClawStateChangeAkEvent() end

function ASTExtraExcavator:OnRep_TwoPersonOperationMode() end

function ASTExtraExcavator:ReqChangeOperationMode() end

---@param InThrowPitch number
function ASTExtraExcavator:UploadThrowPitch(InThrowPitch) end

---@param Hide boolean
---@param CollisionType ECollisionEnabled
---@param RecoverTime number
function ASTExtraExcavator:SetCollisionWhenThrow(Hide, CollisionType, RecoverTime) end

function ASTExtraExcavator:RecoverCollisionAfterThrow() end

function ASTExtraExcavator:ReqToThrowReadyState() end

function ASTExtraExcavator:ReqToThrowState() end

function ASTExtraExcavator:ReqCancelThrow() end

---@param Successed boolean
function ASTExtraExcavator:OnThrowReadyStateAutoMoveEnd(Successed) end

---@param Successed boolean
function ASTExtraExcavator:OnThrowAutoMoveEnd(Successed) end

---@param AutoMovePoseDetailWrapper FAutoMovePoseDetailWrapper
function ASTExtraExcavator:QueryPose(AutoMovePoseDetailWrapper) end

---@param Successed boolean
function ASTExtraExcavator:OnThrowEndingAutoMoveEnd(Successed) end

---@param Successed boolean
function ASTExtraExcavator:OnThrowEndAndReadyToPourEnd(Successed) end

function ASTExtraExcavator:DoThrow() end

---@return FVector
function ASTExtraExcavator:GetThrowVelocity() end

---@param Velocity FVector
function ASTExtraExcavator:ThrowAirDrop(Velocity) end

---@param DeltaTime number
function ASTExtraExcavator:TickUpdatePredictLine(DeltaTime) end

---@param MacroIndex number
function ASTExtraExcavator:ReqRunMacro(MacroIndex) end

---@param Successed boolean
function ASTExtraExcavator:OnResetPoseFinishWhenRunningMacro(Successed) end

---@param Successed boolean
function ASTExtraExcavator:OnPoseFinishWhenRunningMacro(Successed) end
