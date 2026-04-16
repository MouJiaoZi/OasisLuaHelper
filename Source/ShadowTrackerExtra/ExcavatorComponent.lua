---@meta

---@class EMachanicalRotType
---@field MRT_Roll number @Roll
---@field MRT_Pitch number @Pitch
---@field MRT_Yaw number @Yaw
EMachanicalRotType = {}


---@class EMachanicalAxisType
---@field MAT_X number @X
---@field MAT_Y number @Y
---@field MAT_Z number @Z
EMachanicalAxisType = {}


---@class EExcavatorState
---@field EEIMS_None number @普通状态
---@field EEIMS_FindingDigPosition number @正在寻找挖掘位置
---@field EEIMS_DigStarting number @正在移动挖斗到抬起姿态
---@field EEIMS_Digging number @挖掘中
---@field EEIMS_ResetingWhenDigFail number @挖掘失败挖斗返回抬起姿态
---@field EEIMS_DigEnding number @挖掘结束，返回挖掘开始的手臂姿态中
---@field EEIMS_FindingPourPosition number @寻找倾倒位置
---@field EEIMS_Pouring number @倾倒中
---@field EEIMS_PourEnding number @倾倒结束中
---@field EEIMS_MoveToThrowReadyState number @移动到投掷准备姿态
---@field EEIMS_ThrowReadyState number @投掷准备姿态
---@field EEIMS_Throwing number @投掷中
---@field EEIMS_ThrowEnding number @回到初始姿态
---@field EEIMS_ThrowEndToPour number @投掷转到倾倒姿态
---@field EEIMS_Cataching number @抓取中
---@field EEIMS_CatachEnding number @抓取结束中
---@field EEIMS_Releasing number @释放中
---@field EEIMS_FastCataching number @快速抓取中
---@field EEIMS_RunningMacro number @播放宏动作中
EExcavatorState = {}


---@class EExcavatorPoseType
---@field MRT_Rep number @各端同步的姿势
---@field MRT_Local number @本地预表现的姿势
---@field MRT_Query number @预测的姿势
EExcavatorPoseType = {}


---@class EMechanicalArmType
---@field MAT_Default number @无
---@field MAT_FrontUpperArm number @前大臂
---@field MAT_LeftHindLeg number @左后腿
---@field MAT_RightHindLeg number @右后腿
---@field MAT_FrontForeArm number @前小臂
---@field MAT_Bucket number @挖斗
---@field MAT_LeftBehindClaw number @左后钢爪
---@field MAT_RightBehindClaw number @右后钢爪
---@field MAT_Base number @底座
---@field MAT_LeftFrontLeg number @左前腿
---@field MAT_RightFrontLeg number @右前腿
---@field MAT_TotalNum number
EMechanicalArmType = {}


---@class FShapeTransformHistory
---@field RotatePointLocation FVector
---@field RotateAxis EMachanicalRotType
---@field ShapeDeltaRotator FRotator
FShapeTransformHistory = {}


---@class FMachanicalLimit
---@field Max number
---@field Min number
FMachanicalLimit = {}


---@class FCollisionShapeTransformConfigPerAxis
---@field RotateAxis EMachanicalRotType
---@field RotatePointLocation FVector
---@field RotatePointRotation FRotator
---@field RotatePointUseLocationOffset boolean
---@field RotationIndex number
FCollisionShapeTransformConfigPerAxis = {}


---@class FCollisionShapeTransformConfig
---@field AnimatedDriven_ShapeIndex number
---@field IsAWheel boolean
---@field AnimatedDriven_IgnoreChannel ULuaArrayHelper<ECollisionChannel>
---@field ShapeOriginLocation FVector
---@field ShapeOriginRotation FRotator
---@field ShapeTransformConfigs ULuaArrayHelper<FCollisionShapeTransformConfigPerAxis>
---@field LocationOffsetIndex number
FCollisionShapeTransformConfig = {}


---@class FCollisionConfig
---@field MechanicalArmType EMechanicalArmType
---@field ShapeConfigs ULuaArrayHelper<FCollisionShapeTransformConfig>
---@field RotationNum number
---@field LocOffsetNum number
---@field CachedShapeRotation ULuaArrayHelper<FRotator>
---@field CachedShapeLocationOffset ULuaArrayHelper<FVector>
---@field CachedQueryShapeRotation ULuaArrayHelper<FRotator>
---@field CachedQueryShapeLocationOffset ULuaArrayHelper<FVector>
FCollisionConfig = {}


---@class FSecondLevelCheckShapeBlockConfig
---@field ShapeIndices ULuaArrayHelper<number>
FSecondLevelCheckShapeBlockConfig = {}


---@class FCheckShapeBlockConfig
---@field ShapeIndices ULuaArrayHelper<number>
---@field NextLevelConfig ULuaArrayHelper<FSecondLevelCheckShapeBlockConfig>
FCheckShapeBlockConfig = {}


---@class FBlockState
---@field BlockDistance number
---@field BlockNormal FVector
FBlockState = {}


---@class FAutoMoveTarget
---@field MechanicalArmType EMechanicalArmType
---@field ForceMove boolean
---@field AutoMoveRot boolean
---@field TargetRotator FRotator
---@field RotSpeed number
---@field AutoMoveExtend boolean
---@field TargetExtend FVector
---@field ExtendSpeed number
---@field Finished boolean
FAutoMoveTarget = {}


---@class FAutoMoveState
---@field IsAutoMoving boolean
---@field AutoMoveTargets ULuaArrayHelper<FAutoMoveTarget>
---@field Delegate FExcavatorAutoMoveDelegate
FAutoMoveState = {}


---@class FAutoMovePoseWrapper
---@field AutoMoveRotList ULuaMapHelper<EMechanicalArmType, FRotator>
---@field AutoMoveExtendList ULuaMapHelper<EMechanicalArmType, FVector>
---@field AutoMoveAngleSpeed number
---@field AutoMoveLinearSpeed number
FAutoMovePoseWrapper = {}


---@class FAutoMoveRotPoseDetailInfo
---@field RotatePose ULuaMapHelper<EMachanicalRotType, number>
---@field AngularSpeed number
FAutoMoveRotPoseDetailInfo = {}


---@class FAutoMoveExtendPoseDetailInfo
---@field ExtendPose ULuaMapHelper<EMachanicalAxisType, number>
---@field LinearSpeed number
FAutoMoveExtendPoseDetailInfo = {}


---@class FAutoMovePoseDetailWrapper
---@field AutoMoveRotList ULuaMapHelper<EMechanicalArmType, FAutoMoveRotPoseDetailInfo>
---@field AutoMoveExtendList ULuaMapHelper<EMechanicalArmType, FAutoMoveExtendPoseDetailInfo>
FAutoMovePoseDetailWrapper = {}


---@class FConnectEMechanicalArmType
---@field ConnectEMechanicalArmTypeList ULuaArrayHelper<EMechanicalArmType>
FConnectEMechanicalArmType = {}


---@class FExcavatorMacro
---@field PoseList ULuaArrayHelper<FAutoMovePoseDetailWrapper>
---@field ShouldResetPoseAfterFinish boolean
FExcavatorMacro = {}


---@class FExcavatorBoneRotConfig
---@field ArmType EMechanicalArmType
---@field RotType EMachanicalRotType
FExcavatorBoneRotConfig = {}


---@class FExcavatorBoneLocConfig
---@field ArmType EMechanicalArmType
---@field LocType EMachanicalAxisType
FExcavatorBoneLocConfig = {}


---@class FExcavatorBoneShape
---@field IsWheel boolean
---@field ShapeIndex number
---@field OriginRelativeTransformToBone FTransform
---@field OriginRelativeTransformToRoot FTransform
---@field RelativeTransformToRoot FTransform
FExcavatorBoneShape = {}


---@class FExcavatorBone
---@field ParentBoneIndex number
---@field ChildBoneIndices ULuaArrayHelper<number>
---@field BoneName string
---@field OriginRelativeTransformToParent FTransform
---@field CurRelativeTransformToRoot FTransform
---@field InputRotConfig ULuaArrayHelper<FExcavatorBoneRotConfig>
---@field InputLocConfig ULuaArrayHelper<FExcavatorBoneLocConfig>
---@field ShapesAttachToThisBone ULuaArrayHelper<FExcavatorBoneShape>
---@field CurRelativeTransformToParent FTransform
---@field LastInputTransform FTransform
---@field LastParentBoneTransformToRoot FTransform
---@field BoneTransformDirty boolean
FExcavatorBone = {}


---@class FExcavatorAutoMoveDelegate : ULuaSingleDelegate
FExcavatorAutoMoveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Successed: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FExcavatorAutoMoveDelegate:Bind(Callback, Obj) end

---执行委托
---@param Successed boolean
function FExcavatorAutoMoveDelegate:Execute(Successed) end


---挖掘机功能组件
---@class UExcavatorComponent: UVehicleComponent
---@field MechanicalArmControlConfig ULuaArrayHelper<FCollisionConfig>
---@field MechanicalArmShapeLocalTransforms ULuaArrayHelper<FTransform>
---@field RepMechanicalArmLocalMoving ULuaArrayHelper<boolean>
---@field LocalMechanicalArmLocalMoving ULuaArrayHelper<boolean>
---@field CalcShouldCalcLocalFrameNumber number
---@field CachedShouldCalcLocal number
---@field EmptyBlockStates ULuaMapHelper<number, FBlockState>
---@field ShapeIndex2MechanicalArmType ULuaMapHelper<number, FConnectEMechanicalArmType>
---@field HasInitMechanicalArmShapeLocalTransforms boolean
---@field DrawAnimationShape boolean
---@field UseNewMechanicalArmConfig boolean
---@field ExcavatorRootBone number
---@field ExcavatorBoneTree ULuaArrayHelper<FExcavatorBone>
---@field ExcavatorArmType2NeedUpdateBoneIndex ULuaMapHelper<EMechanicalArmType, number>
---@field ShapeIndex2BoneIndex ULuaMapHelper<number, number>
---@field CachedExcavatorBoneTree ULuaArrayHelper<FExcavatorBone>
---@field QueryExcavatorBoneTree ULuaArrayHelper<FExcavatorBone>
---@field ExcavatorBoneTreeDirty boolean
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
---@field CompressedArmRotationInput number
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
---@field EnableControlUpBody boolean
---@field EnableControlDownBody boolean
---@field EnableControlClaw boolean
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
---@field CanCatchChar boolean
---@field CanCatchAirDrop boolean
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
---@field PourMoundXYDistanceThreshold number
---@field PourMoundFindNewPourPointUpDis number
---@field UpperArmBoneName string
---@field ForeArmBoneName string
---@field BucketBoneName string
---@field ExcavatorEasyInput_BucketShapeDigOverlapExtendOffset number
---@field ExcavatorEasyInput_ShouldForeArmMoveToTargetAngle boolean
---@field ExcavatorEasyInput_ForeArmTargetAngle number
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
---@field EnableThrow boolean
---@field CanThrowChar boolean
---@field CanThrowAirdrop boolean
---@field CanThrowMound boolean
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
---@field bInitExcavatorAudio boolean
---@field UpperArmMovingSfxLoop FSTExtraVehicleSfxLoop
---@field ForeArmMovingSfxLoop FSTExtraVehicleSfxLoop
---@field LegMovingSfxLoop FSTExtraVehicleSfxLoop
---@field TireMovingSfxLoop FSTExtraVehicleSfxLoop
---@field ClawMovingSfxLoop FSTExtraVehicleSfxLoop
---@field DiggingSfxLoop FSTExtraVehicleSfxLoop
---@field PouringSfxLoop FSTExtraVehicleSfxLoop
---@field NeedCreateExtraAkComponent boolean
---@field ExcavatorExtraAkComponentSocketName string
---@field ForceServerAuthWhenRunningMacros boolean
---@field Macros ULuaArrayHelper<FExcavatorMacro>
---@field CurRunningMacro FExcavatorMacro
---@field CurRunningMacroPoseIndex number
---@field EnableDeformLandscape boolean
---@field DeformLandscapeRadius number
---@field DeformLandscapeDepth number
---@field DeformLandscapeDetectLength number
---@field DestroyDestrctibleActorImpulse number
local UExcavatorComponent = {}

function UExcavatorComponent:OnVehicleSeatOccupiersChange() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UExcavatorComponent:HandleOnVehicleSeatDetach(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UExcavatorComponent:HandleOnVehicleSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param InThrowPredictLineComp UPredictLineComponent
function UExcavatorComponent:InitExcavatorComp(InThrowPredictLineComp) end

---@param ArmType EMechanicalArmType
---@param Autonomous boolean
---@return boolean
function UExcavatorComponent:GetMechanicalArmLocalMoving(ArmType, Autonomous) end

---@param ArmType EMechanicalArmType
---@param NewMoving boolean
---@param Autonomous boolean
function UExcavatorComponent:SetMechanicalArmLocalMoving(ArmType, NewMoving, Autonomous) end

function UExcavatorComponent:InitializeMechanicalArmMovingArray() end

---@return number
function UExcavatorComponent:GetLocalControlType() end

---@param SeatIndex number
---@return number
function UExcavatorComponent:GetSeatIndexControlType(SeatIndex) end

---@param InputType number
function UExcavatorComponent:ClearLocalInput(InputType) end

---@param InputType number
function UExcavatorComponent:ClearRepInput(InputType) end

function UExcavatorComponent:InitializeMechanicalArmShapeLocalTransformsArray() end

---@return boolean
function UExcavatorComponent:ShouldTickUpdateMechanicalArmControl() end

---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param OutTransformWhenQueryOnly ULuaArrayHelper<FTransform>
---@param QueryOnly boolean
---@return boolean
function UExcavatorComponent:AnimatedCollision(BlockStates, OutTransformWhenQueryOnly, QueryOnly) end

---@param LocalPose boolean
function UExcavatorComponent:InitialQueryPose(LocalPose) end

function UExcavatorComponent:RefrshCurrentAnimatedCollision() end

---@param DeltaTime number
function UExcavatorComponent:DrawDebugAnimationShape(DeltaTime) end

---@param ArmType EMechanicalArmType
---@param InRotationIndex number
---@param QueryOnly boolean
---@return FRotator
function UExcavatorComponent:GetArmRotation(ArmType, InRotationIndex, QueryOnly) end

---@param ArmType EMechanicalArmType
---@param InLocOffsetIndex number
---@param QueryOnly boolean
---@return FVector
function UExcavatorComponent:GetArmOffset(ArmType, InLocOffsetIndex, QueryOnly) end

---@param ShapeIndex number
---@param Transform FTransform
function UExcavatorComponent:SetShapeTransform(ShapeIndex, Transform) end

---@param ShapeIndex number
---@param Transform FTransform
function UExcavatorComponent:SetShapeTransform_AssumesLock(ShapeIndex, Transform) end

function UExcavatorComponent:ModyfyWeaponCollision() end

---@param Successed boolean
function UExcavatorComponent:BackToNormalState(Successed) end

---@param BoneData FExcavatorBone
function UExcavatorComponent:MarkExcavatorBoneDirty(BoneData) end

---@param BoneIndex number
---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param QueryOnly boolean
---@param ForceUpdate boolean
---@return boolean
function UExcavatorComponent:UpdateBone(BoneIndex, BlockStates, QueryOnly, ForceUpdate) end

function UExcavatorComponent:UpdateShapeByBoneTree() end

---@param BonIndex number
---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param QueryOnly boolean
---@param ForceUpdate boolean
---@return boolean
function UExcavatorComponent:UpdateExcavatorBoneTree(BonIndex, BlockStates, QueryOnly, ForceUpdate) end

---@param ArmType EMechanicalArmType
---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param QueryOnly boolean
---@param ForceUpdate boolean
---@return boolean
function UExcavatorComponent:UpdateExcavatorBoneTreeWithArmType(ArmType, BlockStates, QueryOnly, ForceUpdate) end

---@param BoneIndex number
---@param QueryOnly boolean
---@return FRotator
function UExcavatorComponent:GetBoneInputRotation(BoneIndex, QueryOnly) end

---@param BoneIndex number
---@param QueryOnly boolean
---@return FVector
function UExcavatorComponent:GetBoneInputLocation(BoneIndex, QueryOnly) end

---@param AutoMovePoseDetailWrapper FAutoMovePoseDetailWrapper
function UExcavatorComponent:QueryPoseNew(AutoMovePoseDetailWrapper) end

---@param DeltaTime number
function UExcavatorComponent:TickUploadInput(DeltaTime) end

---@param IgnoreAutoMove boolean
---@return boolean
function UExcavatorComponent:HasAnyInput(IgnoreAutoMove) end

---@param CompressedArmInput number
function UExcavatorComponent:UploadArmRotationInputToServer(CompressedArmInput) end

---@param ForeArm_ExtendRate number
function UExcavatorComponent:UploadArmExtendInputToServer(ForeArm_ExtendRate) end

---@param LeftFrontLeg_PitchRate number
---@param LeftFrontLeg_YawRate number
---@param RightFrontLeg_PitchRate number
---@param RightFrontLeg_YawRate number
function UExcavatorComponent:UploadFrontLegInputToServer(LeftFrontLeg_PitchRate, LeftFrontLeg_YawRate, RightFrontLeg_PitchRate, RightFrontLeg_YawRate) end

---@param LeftHindLeg_PitchRate number
---@param LeftHindLeg_YawRate number
---@param RightHindLeg_PitchRate number
---@param RightHindLeg_YawRate number
---@param LeftHindClaw_PitchRate number
---@param RightHindClaw_PitchRate number
function UExcavatorComponent:UploadHindLegInputToServer(LeftHindLeg_PitchRate, LeftHindLeg_YawRate, RightHindLeg_PitchRate, RightHindLeg_YawRate, LeftHindClaw_PitchRate, RightHindClaw_PitchRate) end

---@return boolean
function UExcavatorComponent:IsLockingBucket() end

function UExcavatorComponent:OnRep_CompressedArmRotationInput() end

---@param DeltaTime number
---@param UseLocalInput boolean
function UExcavatorComponent:TickCalcPoseByInput(DeltaTime, UseLocalInput) end

---@param DeltaTime number
---@param UseLocalInput boolean
function UExcavatorComponent:TickCalcPoseWhenProfessionalThrowingReadyStateByInput(DeltaTime, UseLocalInput) end

---@param CurBlockStates ULuaMapHelper<number, FBlockState>
function UExcavatorComponent:GatherMechanicalArmSlowDownState(CurBlockStates) end

---@param CurBlockStates ULuaMapHelper<number, FBlockState>
---@param BlockDistanceThreshold number
function UExcavatorComponent:GetBlockedMechanicalArmFromBlockState(CurBlockStates, BlockDistanceThreshold) end

---@param NewServerAuth boolean
function UExcavatorComponent:SetMechanicalArmServerAuthorizeMode(NewServerAuth) end

function UExcavatorComponent:OnRep_MechanicalArmServerAuthorizeMode() end

---@param ArmType EMechanicalArmType
---@param RotType EMachanicalRotType
---@return number
function UExcavatorComponent:GetRotationSpeed(ArmType, RotType) end

---@param ArmType EMechanicalArmType
---@param AxisType EMachanicalAxisType
---@return number
function UExcavatorComponent:GetExtendSpeed(ArmType, AxisType) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param RotType EMachanicalRotType
---@param DeltaTime number
---@param OriginRotator FRotator
---@return FRotator
function UExcavatorComponent:CalcAngleByInput(InputRate, MechanicalArmType, RotType, DeltaTime, OriginRotator) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param RotType EMachanicalRotType
---@param DeltaTime number
---@param OriginRotator FRotator
---@return boolean
function UExcavatorComponent:SetAngleByInput(InputRate, MechanicalArmType, RotType, DeltaTime, OriginRotator) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param RotType EMachanicalAxisType
---@param DeltaTime number
---@param OriginVector FVector
---@return boolean
function UExcavatorComponent:SetExtendByInput(InputRate, MechanicalArmType, RotType, DeltaTime, OriginVector) end

---@param MechanicalArmType EMechanicalArmType
---@param PoseType EExcavatorPoseType
---@return FRotator
function UExcavatorComponent:GetRotationByMechanicalArmType(MechanicalArmType, PoseType) end

---@param MechanicalArmType EMechanicalArmType
---@param InRotator FRotator
---@param PoseType EExcavatorPoseType
function UExcavatorComponent:SetRotationByMechanicalArmType(MechanicalArmType, InRotator, PoseType) end

---@param MechanicalArmType EMechanicalArmType
---@param PoseType EExcavatorPoseType
---@return FVector
function UExcavatorComponent:GetExtendByMechanicalArmType(MechanicalArmType, PoseType) end

---@param MechanicalArmType EMechanicalArmType
---@param InVector FVector
---@param PoseType EExcavatorPoseType
function UExcavatorComponent:SetExtendByMechanicalArmType(MechanicalArmType, InVector, PoseType) end

---@param InAngle number
---@return number
function UExcavatorComponent:MakeAngleSimple(InAngle) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param RotType EMachanicalRotType
---@param DeltaTime number
---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param ShouldCheckBlock boolean
---@return boolean
function UExcavatorComponent:CalcRotPoseByInput(InputRate, MechanicalArmType, RotType, DeltaTime, BlockStates, ShouldCheckBlock) end

---@param InputRate number
---@param MechanicalArmType EMechanicalArmType
---@param AxisType EMachanicalAxisType
---@param DeltaTime number
---@param BlockStates ULuaMapHelper<number, FBlockState>
---@param ShouldCheckBlock boolean
---@return boolean
function UExcavatorComponent:CalcExtendPoseByInput(InputRate, MechanicalArmType, AxisType, DeltaTime, BlockStates, ShouldCheckBlock) end

---@param LocalRot FRotator
---@param RepRot FRotator
---@return boolean
function UExcavatorComponent:ShouldForceSyncPoseByRot(LocalRot, RepRot) end

---@param LocalVec FVector
---@param RepVec FVector
---@return boolean
function UExcavatorComponent:ShouldForceSyncPoseByVec(LocalVec, RepVec) end

---@param AutonomousRot FRotator
---@param RepRot FRotator
function UExcavatorComponent:SyncPoseWhenOnRep(AutonomousRot, RepRot) end

---@param Cur number
---@param Tar number
---@return number
function UExcavatorComponent:HandleTargetFloat(Cur, Tar) end

---@param ForceSync boolean
function UExcavatorComponent:SyncServerPoseToLocal(ForceSync) end

function UExcavatorComponent:OnRep_FrontUpperArmRotation() end

function UExcavatorComponent:OnRep_FrontForeArmRotation() end

function UExcavatorComponent:OnRep_FrontForeArmExtend() end

function UExcavatorComponent:OnRep_LeftHindLegRotation() end

function UExcavatorComponent:OnRep_RightHindLegRotation() end

function UExcavatorComponent:OnRep_LeftFrontLegRotation() end

function UExcavatorComponent:OnRep_RightFrontLegRotation() end

function UExcavatorComponent:OnRep_LeftHindClawRotation() end

function UExcavatorComponent:OnRep_RightHindClawRotation() end

function UExcavatorComponent:OnRep_BucketRotation() end

function UExcavatorComponent:CheckCurrentCanAcceptShapeInput() end

function UExcavatorComponent:ReqResetPose() end

---@param AutoMovePoseWrapper FAutoMovePoseWrapper
---@param ForceMove boolean
---@param InDelegate FExcavatorAutoMoveDelegate
---@return boolean
function UExcavatorComponent:AutoMoveToByPoseList(AutoMovePoseWrapper, ForceMove, InDelegate) end

---@param AutoMovePoseDetailWrapper FAutoMovePoseDetailWrapper
---@param ForceMove boolean
---@param InDelegate FExcavatorAutoMoveDelegate
---@return boolean
function UExcavatorComponent:AutoMoveToByPoseDetailList(AutoMovePoseDetailWrapper, ForceMove, InDelegate) end

function UExcavatorComponent:OnRep_AutoMoveTarget() end

---@return boolean
function UExcavatorComponent:IsAutoMoving() end

---@param DeltaTime number
function UExcavatorComponent:TickCalcPoseByTarget(DeltaTime) end

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
function UExcavatorComponent:SetAutoMoveTargetWithParams(MechanicalArm, ForceMove, MoveRot, TargetRot, MoveExtend, TargetVec, RotSpeed, ExtSpeed, Delegate) end

---@param AutoMoveTarget FAutoMoveTarget
---@param Delegate FExcavatorAutoMoveDelegate
---@return boolean
function UExcavatorComponent:SetAutoMoveTarget(AutoMoveTarget, Delegate) end

---@param InIsAutoMoving boolean
function UExcavatorComponent:SetIsAutoMoving(InIsAutoMoving) end

---@param Successed boolean
---@param NeedExecuteDelegate boolean
function UExcavatorComponent:EndAutoMove(Successed, NeedExecuteDelegate) end

function UExcavatorComponent:ClientTryResetPose() end

---@param InChar ASTExtraBaseCharacter
function UExcavatorComponent:SetGrabedChar(InChar) end

---@param LastChar ASTExtraBaseCharacter
function UExcavatorComponent:OnRep_GrabedChar(LastChar) end

---@param InAirDrop AAirDropBoxActor
function UExcavatorComponent:SetGrabedAirDrop(InAirDrop) end

---@param LastAirDrop AAirDropBoxActor
function UExcavatorComponent:OnRep_GrabedAirDrop(LastAirDrop) end

---@return boolean
function UExcavatorComponent:IsBucketCatchedPawn() end

---@return boolean
function UExcavatorComponent:IsBucketCatchedAirDrop() end

---@return boolean
function UExcavatorComponent:IsBucketHasMound() end

---@return boolean
function UExcavatorComponent:IsBucketEmpty() end

---@return boolean
function UExcavatorComponent:ClientCheckCanDig() end

---@return boolean
function UExcavatorComponent:ClientCheckCanPour() end

---@param Successed boolean
function UExcavatorComponent:OnDigReadyToStart(Successed) end

---@param Successed boolean
function UExcavatorComponent:OnDigActionFinish(Successed) end

---@param Successed boolean
function UExcavatorComponent:OnDigFailResetPoseFinish(Successed) end

---@param Successed boolean
function UExcavatorComponent:OnPourActionFinish(Successed) end

---@param Successed boolean
function UExcavatorComponent:OnReleaseActionFinish(Successed) end

---@param Successed boolean
function UExcavatorComponent:OnCatchActionFinish(Successed) end

---@return boolean
function UExcavatorComponent:DoDig() end

---@return boolean
function UExcavatorComponent:DoPour() end

---@param TargetActor AActor
---@return boolean
function UExcavatorComponent:DoCatch(TargetActor) end

---@param InAirDrop AAirDropBoxActor
---@return boolean
function UExcavatorComponent:CatchAirDrop(InAirDrop) end

function UExcavatorComponent:ReleaseAirDrop() end

---@return boolean
function UExcavatorComponent:DoRelease() end

function UExcavatorComponent:ReqDig() end

function UExcavatorComponent:ReqFindDigPosition() end

function UExcavatorComponent:ReqPour() end

function UExcavatorComponent:ReqFindPourPosition() end

---@param TargetActor AActor
function UExcavatorComponent:ReqCatch(TargetActor) end

function UExcavatorComponent:ReqRelease() end

---@param Velocity FVector
function UExcavatorComponent:MulticastThrowAirdrop(Velocity) end

---@param IsDigging boolean
function UExcavatorComponent:ChangeBucketShape(IsDigging) end

function UExcavatorComponent:PawnReqRelease() end

---@param Char ASTExtraBaseCharacter
function UExcavatorComponent:ServerDetachCharacter(Char) end

---@param Actor AActor
---@param AirCatch boolean
---@param TargetPos FVector
---@param CheckEnoughSpace boolean
---@param ShowTips boolean
---@return boolean
function UExcavatorComponent:CheckActorCanCatch(Actor, AirCatch, TargetPos, CheckEnoughSpace, ShowTips) end

function UExcavatorComponent:ClientTryPour() end

function UExcavatorComponent:ClientTryDig() end

function UExcavatorComponent:ClientTryCatch() end

function UExcavatorComponent:ClientTryChangeLeftClawState() end

function UExcavatorComponent:ClientTryChangeRightClawState() end

---@param InTargetLoc FVector
---@param OutTargetLoc FVector
---@return boolean
function UExcavatorComponent:GetValidPourLocation(InTargetLoc, OutTargetLoc) end

function UExcavatorComponent:OnRep_EasyInputMode() end

---@param LastExcavatorEasyInputModeState EExcavatorState
function UExcavatorComponent:OnRep_ExcavatorState(LastExcavatorEasyInputModeState) end

---@param LastExcavatorEasyInputModeState EExcavatorState
function UExcavatorComponent:BPOnRep_ExcavatorState(LastExcavatorEasyInputModeState) end

---@param InState EExcavatorState
function UExcavatorComponent:SetExcavatorState(InState) end

---@return boolean
function UExcavatorComponent:IsDigMode() end

---@return boolean
function UExcavatorComponent:IsPourMode() end

---@return boolean
function UExcavatorComponent:IsThrowMode() end

---@return boolean
function UExcavatorComponent:IsNormalMode() end

function UExcavatorComponent:ClearArmMoving() end

---@param EasyArmForward number
function UExcavatorComponent:UploadEasyInputToServer(EasyArmForward) end

---@param EasyInput boolean
function UExcavatorComponent:ReqChangeInputMode(EasyInput) end

function UExcavatorComponent:ResetPoseAfterEasyInputDig() end

---@param Successed boolean
function UExcavatorComponent:OnResetPoseFinishWhenDigEnd(Successed) end

---@param DeltaTime number
function UExcavatorComponent:TickHandleEasyInput(DeltaTime) end

---@param DeltaTime number
function UExcavatorComponent:TickHandleProfessionalInput(DeltaTime) end

---@param DeltaTime number
function UExcavatorComponent:TickHandleMacro(DeltaTime) end

---@param Down boolean
function UExcavatorComponent:ReqChangeLeftClawState(Down) end

function UExcavatorComponent:OnRep_LeftClawDownState() end

function UExcavatorComponent:BPOnRep_LeftClawDownState() end

---@param Down boolean
function UExcavatorComponent:ReqChangeRightClawState(Down) end

function UExcavatorComponent:OnRep_RightClawDownState() end

function UExcavatorComponent:BPOnRep_RightClawDownState() end

function UExcavatorComponent:MulticastClawStateChangeAkEvent() end

function UExcavatorComponent:PlayClawStateChangeAkEvent() end

function UExcavatorComponent:OnRep_TwoPersonOperationMode() end

function UExcavatorComponent:ReqChangeOperationMode() end

---@param InThrowPitch number
function UExcavatorComponent:UploadThrowPitch(InThrowPitch) end

---@param Hide boolean
---@param CollisionType ECollisionEnabled
---@param RecoverTime number
function UExcavatorComponent:SetCollisionWhenThrow(Hide, CollisionType, RecoverTime) end

function UExcavatorComponent:RecoverCollisionAfterThrow() end

---@return boolean
function UExcavatorComponent:CanThrow() end

function UExcavatorComponent:ReqToThrowReadyState() end

function UExcavatorComponent:ReqToThrowState() end

function UExcavatorComponent:ReqCancelThrow() end

---@param Successed boolean
function UExcavatorComponent:OnThrowReadyStateAutoMoveEnd(Successed) end

---@param Successed boolean
function UExcavatorComponent:OnThrowAutoMoveEnd(Successed) end

---@param AutoMovePoseDetailWrapper FAutoMovePoseDetailWrapper
function UExcavatorComponent:QueryPose(AutoMovePoseDetailWrapper) end

---@param Successed boolean
function UExcavatorComponent:OnThrowEndingAutoMoveEnd(Successed) end

---@param Successed boolean
function UExcavatorComponent:OnThrowEndAndReadyToPourEnd(Successed) end

function UExcavatorComponent:DoThrow() end

---@return FVector
function UExcavatorComponent:GetThrowVelocity() end

---@param Velocity FVector
function UExcavatorComponent:ThrowAirDrop(Velocity) end

---@param DeltaTime number
function UExcavatorComponent:TickUpdatePredictLine(DeltaTime) end

function UExcavatorComponent:ClientCancelThrow() end

function UExcavatorComponent:ClientThrow() end

function UExcavatorComponent:ClientReadyToThrow() end

function UExcavatorComponent:InitOwnerVehicleAudio() end

---@param DeltaTime number
function UExcavatorComponent:TickOwnerVehicleAudio(DeltaTime) end

---@param MacroIndex number
function UExcavatorComponent:ReqRunMacro(MacroIndex) end

---@param Successed boolean
function UExcavatorComponent:OnResetPoseFinishWhenRunningMacro(Successed) end

---@param Successed boolean
function UExcavatorComponent:OnPoseFinishWhenRunningMacro(Successed) end

---@param OriginLoc FVector
---@param Radius number
---@param Depth number
---@return boolean
function UExcavatorComponent:DeformLandScape(OriginLoc, Radius, Depth) end

---@param OriginLoc FVector
function UExcavatorComponent:DestroyDestrctibleActorByDeformLandScape(OriginLoc) end
