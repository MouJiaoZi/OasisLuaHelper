---@meta

---@class ECustomMovmentMode
---@field CUSTOM_MOVE_None number
---@field CUSTOM_MOVE_CrowdMove number
---@field CUSTOM_MOVE_Shovel number
---@field CUSTOM_MOVE_RocketBoy number
---@field CUSTOM_MOVE_SpaceRose number
---@field CUSTOM_MOVE_Home number
---@field CUSTOM_MOVE_SKYDANCE number
---@field CUSTOM_MOVE_Activity number
---@field CUSTOM_MOVE_SkyArena number
---@field CUSTOM_MOVE_DragonBoy number
---@field CUSTOM_MOVE_DolphinMove number
---@field CUSTOM_MOVE_FlyBoard number
---@field CUSTOM_MOVE_CowBoy number
---@field CUSTOM_MOVE_Projectile number
---@field CUSTOM_MOVE_Spider number
---@field CUSTOM_MOVE_CurveRootMotion number
---@field CUSTOM_MOVE_BallonFly number
---@field CUSTOM_MOVE_CurveFly number
---@field CUSTOM_MOVE_AISimpleWalking number
---@field CUSTOM_MOVE_Walking number
---@field CUSTOM_MOVE_RabbitFlying number
---@field CUSTOM_MOVE_SequenceMove number
---@field CUSTOM_MOVE_JetpackFly number
---@field CUSTOM_MOVE_FeiTianFloat number
---@field CUSTOM_MOVE_FeiTianFall number
---@field CUSTOM_MOVE_Skill1 number
---@field CUSTOM_MOVE_Skill2 number
---@field CUSTOM_MOVE_Skill3 number
---@field CUSTOM_MOVE_Skill4 number
---@field CUSTOM_MOVE_Skill5 number
---@field CUSTOM_MOVE_Skill6 number
---@field CUSTOM_MOVE_Skill7 number
---@field CUSTOM_MOVE_Skill8 number
---@field CUSTOM_MOVE_Skill9 number
---@field CUSTOM_MOVE_Skill10 number
---@field CUSTOM_MOVE_Skill11 number
---@field CUSTOM_MOVE_Skill12 number
---@field CUSTOM_MOVE_Skill13 number
---@field CUSTOM_MOVE_Skill14 number
---@field CUSTOM_MOVE_Skill15 number
---@field CUSTOM_MOVE_Skill16 number
---@field CUSTOM_MOVE_Skill17 number
---@field CUSTOM_MOVE_Skill18 number
---@field CUSTOM_MOVE_Skill19 number
---@field CUSTOM_MOVE_Skill20 number
---@field CUSTOM_MOVE_Skill21 number
---@field CUSTOM_MOVE_Skill22 number
---@field CUSTOM_MOVE_Skill23 number
---@field CUSTOM_MOVE_Skill24 number
---@field CUSTOM_MOVE_Skill25 number
---@field CUSTOM_MOVE_Skill26 number
---@field CUSTOM_MOVE_Skill27 number
---@field CUSTOM_MOVE_Skill28 number
---@field CUSTOM_MOVE_Skill29 number
---@field CUSTOM_MOVE_Skill30 number
---@field CUSTOM_MOVE_Skill31 number
---@field CUSTOM_MOVE_Skill32 number
---@field CUSTOM_MOVE_Skill33 number
---@field CUSTOM_MOVE_Skill34 number
---@field CUSTOM_MOVE_Skill35 number
---@field CUSTOM_MOVE_Skill36 number
---@field CUSTOM_MOVE_Skill37 number
---@field CUSTOM_MOVE_Skill38 number
---@field CUSTOM_MOVE_Skill39 number
---@field CUSTOM_MOVE_Skill40 number
---@field CUSTOM_MOVE_Skill41 number
---@field CUSTOM_MOVE_Skill42 number
---@field CUSTOM_MOVE_Skill43 number
---@field CUSTOM_MOVE_Skill44 number
---@field CUSTOM_MOVE_Skill45 number
---@field CUSTOM_MOVE_Skill46 number
---@field CUSTOM_MOVE_Skill47 number
---@field CUSTOM_MOVE_Skill48 number
---@field CUSTOM_MOVE_Skill49 number
---@field CUSTOM_MOVE_Skill50 number
---@field CUSTOM_MOVE_Skill51 number
---@field CUSTOM_MOVE_Skill52 number
---@field CUSTOM_MOVE_Skill53 number
---@field CUSTOM_MOVE_Skill54 number
---@field CUSTOM_MOVE_Skill55 number
---@field CUSTOM_MOVE_Skill56 number
---@field CUSTOM_MOVE_Skill57 number
---@field CUSTOM_MOVE_Skill58 number
---@field CUSTOM_MOVE_Skill59 number
---@field CUSTOM_MOVE_Skill60 number
---@field CUSTOM_MOVE_SkillMax number
---@field CUSTOM_MOVE_HitBack number
---@field CUSTOM_MOVE_Max number
ECustomMovmentMode = {}


---@class ECustomFlyingMoveFlag
---@field CUSTOM_MOVE_FLAG_NONE number
---@field CUSTOM_MOVE_FLAG_UP number
---@field CUSTOM_MOVE_FLAG_DOWN number
---@field CUSTOM_MOVE_FLAG_BURST_UP number
---@field CUSTOM_MOVE_FLAG_COMMON number
---@field CUSTOM_MOVE_FLAG_MAX number
ECustomFlyingMoveFlag = {}


---@class ECustomMovmentModeCD
---@field ECustomMovmentModeCD_None number
---@field EDragonBoyMovementCD_Energy number
---@field EDragonBoyMovementCD_Jump number
---@field EDolphinMovmentModeCD_Sprint number
---@field ESimplyFlyingMovmentModeCD_1 number
---@field ESimplyFlyingMovmentModeCD_2 number
---@field ECustomMovmentModeCD_SKILL1 number
---@field ECustomMovmentModeCD_SKILL2 number
---@field ECustomMovmentModeCD_SKILL3 number
---@field ECustomMovmentModeCD_SKILL4 number
---@field ECowBoyMovementCD number
ECustomMovmentModeCD = {}


---@class ECustomMoveModeStartRole
---@field ROLE_AutonomousProxy number @Locally autonomous proxy of this actor.
---@field ROLE_Authority number @Authoritative control over the actor.
ECustomMoveModeStartRole = {}


---@class FCustomMovementCDInfo
---@field ID ECustomMovmentModeCD
---@field PassedTime number
FCustomMovementCDInfo = {}


---@class FCustomMovementRepData
---@field Energy number
---@field BurstElapsedTime number
---@field JetElapsedTime number
---@field FlyBoardEnergy number
---@field InstanceID number
---@field CustomMovementModeCDInfos ULuaArrayHelper<FCustomMovementCDInfo>
FCustomMovementRepData = {}


---@class FCustomSimulateMovementRepData
---@field bIsFlyBoardOnWater boolean
---@field JumpedCount number
---@field CustomMoveFlag number
---@field CurveTime number
---@field CurveIdx number
---@field BaseLocation FVector
---@field BaseRotation FRotator
---@field CurveRelativeYaw number
---@field BoneName string
FCustomSimulateMovementRepData = {}


---@class FCustomMovementInstanceRepData
---@field CustomMovementMode number
---@field MovementClassName string
---@field OneByteArray ULuaArrayHelper<number>
---@field TwoBytesArray ULuaArrayHelper<number>
---@field FourBytesArray ULuaArrayHelper<number>
---@field FloatArray ULuaArrayHelper<number>
---@field StringArr ULuaArrayHelper<string>
---@field NameArr ULuaArrayHelper<string>
---@field Objects ULuaArrayHelper<UObject>
FCustomMovementInstanceRepData = {}


---@class FCustomMovementRepDataBase
---@field CustomMovementModeInstanceDatas ULuaArrayHelper<FCustomMovementInstanceRepData>
FCustomMovementRepDataBase = {}


---@class FCustomMovementOwnerRepDataNew
FCustomMovementOwnerRepDataNew = {}


---@class FCustomMovementSimulatorRepDataNew
---@field JumpedCount number
---@field BoneName string
FCustomMovementSimulatorRepDataNew = {}


---@class FGamePlayTagCustomMovementModePair
---@field GamePlayTag FGameplayTag
---@field CustomMovementMode ECustomMovmentMode
FGamePlayTagCustomMovementModePair = {}


---@class FGamePlayTagCustomMovementModePairs
---@field Pairs ULuaArrayHelper<FGamePlayTagCustomMovementModePair>
FGamePlayTagCustomMovementModePairs = {}


---@class FCurveMotionWarpingTargetInfo
---@field WarpingKeyName string
---@field bWarpingLocation boolean
---@field bWarpingRotation boolean
---@field WarpingTargetLocation FVector
---@field WarpingTargetRotation FRotator
FCurveMotionWarpingTargetInfo = {}


---@class FCurveRootMotionMoveRequest
---@field CurveAssetName string
---@field EnableWarping boolean
---@field MotionWarpingTargetInfos ULuaArrayHelper<FCurveMotionWarpingTargetInfo>
---@field bCalcVelocity boolean
---@field MaxSpeedLimit number
---@field bEnableSlideAlongSurface boolean
---@field bNeedConstraintOnNavMesh boolean
---@field bSyncStartTransform boolean
---@field StartTransform FTransform
FCurveRootMotionMoveRequest = {}


---@class FCurveRootMotionRepData
---@field InstanceID number
---@field MoveRequest FCurveRootMotionMoveRequest
---@field DSCurveProgress number
FCurveRootMotionRepData = {}


---@class FCustomMovementRequestParam
---@field IntParam1 number
---@field IntParam2 number
---@field FloatParam1 number
---@field FloatParam2 number
---@field VectorParam1 FVector
---@field VectorParam2 FVector
FCustomMovementRequestParam = {}


---@class FGetSequenceDeltaMove : ULuaSingleDelegate
FGetSequenceDeltaMove = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: FTransform, Param4: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetSequenceDeltaMove:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 FTransform
---@param Param4 boolean
function FGetSequenceDeltaMove:Execute(Param1, Param2, Param3, Param4) end
