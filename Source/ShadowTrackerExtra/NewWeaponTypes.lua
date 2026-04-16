---@meta

---@class ESightType
---@field SightX1 number
---@field SightX2 number
---@field SightX4 number
---@field SightX8 number
---@field SightDefault number
---@field SightX3 number
---@field SightX6 number
---@field SightX1To2 number
---@field SightX1NewMaterial number
---@field SightAngle number
ESightType = {}


---@class EBulletImpactDir
---@field ImpactNormal number
---@field ImpactShootDir number
EBulletImpactDir = {}


---@class EAntiCheatShoot
---@field ACS_NONE number
---@field ShootOK number
---@field FireRateOnFrame number
---@field FireRateInterval number
---@field HitTargetInterval number
EAntiCheatShoot = {}


---@class EWeaponTypeNew
---@field EWeaponTypeNew_Other number @其他
---@field EWeaponTypeNew_Rifle number @步枪
---@field EWeaponTypeNew_SingleShotSniper number @单发狙
---@field EWeaponTypeNew_BurstShotSniper number @连发狙
---@field EWeaponTypeNew_Submachine number @冲锋枪
---@field EWeaponTypeNew_ShotGun number @散弹枪
---@field EWeaponTypeNew_MachineGun number @机枪
---@field EWeaponTypeNew_Pistol number @手枪
---@field EWeaponTypeNew_Melee number @近战
---@field EWeaponTypeNew_Crossbow number @弩
---@field EWeaponTypeNew_ThrownObj number @投掷物
EWeaponTypeNew = {}


---@class EShootWeaponType
---@field EShootWeaponType_Other number @其他
---@field EShootWeaponType_Auto number @自动武器
---@field EShootWeaponType_SemiAuto number @半自动武器
---@field EShootWeaponType_Bolt number @栓动武器
EShootWeaponType = {}


---@class EWeaponTriggerEvent
---@field EWeaponTriggerEvent_None number @空
---@field EWeaponTriggerEvent_PressFuncBtn number @按下功能按钮
---@field EWeaponTriggerEvent_ReleaseFuncBtn number @抬起功能按钮
---@field EWeaponTriggerEvent_ADS number @开镜
---@field EWeaponTriggerEvent_UnADS number @不开镜
---@field EWeaponTriggerEvent_CancelFire number @取消开火
---@field EWeaponTriggerEvent_TriggerSpesificSkill number @触发指定的技能
---@field EWeaponTriggerEvent_StopSpesificSkill number @结束指定的技能
EWeaponTriggerEvent = {}


---@class EWeaponShootIntervalMode
---@field EWeaponShootIntervalMode_A number
---@field EWeaponShootIntervalMode_B number
EWeaponShootIntervalMode = {}


---@class EBreakReloadType
---@field EBreakReloadType_Shoot number
---@field EBreakReloadType_Reload number
EBreakReloadType = {}


---@class ESwitchWeaponFlag
---@field ESwitchWeaponFlag_None number
---@field ESwitchWeaponFlag_DriverEnabled number
---@field ESwitchWeaponFlag_CheckAndAutoSwitchAdditionalWeapon number
---@field ESwitchWeaponFlag_ForceDisuseTargetSlot number
---@field ESwitchWeaponFlag_EnbableDyingSwitch number
---@field ESwitchWeaponFlag_EnbableReconnectingSwitch number
---@field ESwitchWeaponFlag_PlayerActivelySwitch number
---@field ESwitchWeaponFlag_DSHasFastDrawState number
ESwitchWeaponFlag = {}


---@class EChangeWeaponEffectType
---@field EChangeWeaponEffectType_Muzzle number
---@field EChangeWeaponEffectType_Reload number
EChangeWeaponEffectType = {}


---@class EHuntBowVerifyResult
---@field EHuntBowVerifyResult_OK number
---@field EHuntBowVerifyResult_FlyTimeError number
---@field EHuntBowVerifyResult_ImpactPointDisError number
---@field EHuntBowVerifyResult_MoveBaseImpactPointDisError_Moving number
---@field EHuntBowVerifyResult_MoveBaseImpactPointDisError_Stop number
---@field EHuntBowVerifyResult_MuzzlePosError number
---@field EHuntBowVerifyResult_MoveBaseMuzzlePosError_Moving number
---@field EHuntBowVerifyResult_MoveBaseMuzzlePosError_Stop number
---@field EHuntBowVerifyResult_WeekNet number
EHuntBowVerifyResult = {}


---@class EShootIntervalVerifyFailedType
---@field EShootIntervalVerifyFailedType_None number
---@field EShootIntervalVerifyFailedType_StartFireShootIDNotInValidRange number
---@field EShootIntervalVerifyFailedType_StartFireShootIDNotIncrease number
---@field EShootIntervalVerifyFailedType_StartFireClientShootTimeCheckError number
---@field EShootIntervalVerifyFailedType_HitInfoStartFirePackageNotFound number
---@field EShootIntervalVerifyFailedType_HitInfoClientShootTimeCheckError number
---@field EShootIntervalVerifyFailedType_HitInfoTimeAccelerateCheckError number
---@field EShootIntervalVerifyFailedType_InvalidParameters number
EShootIntervalVerifyFailedType = {}


---@class EProjectileShootIntervalVerifyFailedType
---@field EProjectileShootIntervalVerifyFailedType_None number
---@field EProjectileShootIntervalVerifyFailedType_ClientShootSysTimeCheckError number
---@field EProjectileShootIntervalVerifyFailedType_ClientShootSimTimeCheckError number
---@field EProjectileShootIntervalVerifyFailedType_ClientShootSimTimeIntervalCheckError number
EProjectileShootIntervalVerifyFailedType = {}


---@class ETurretWeaponCrossHairTypes
---@field TurretWeaponCrossHairType_NONE number
---@field TurretWeaponCrossHairType_TPP number
---@field TurretWeaponCrossHairType_FPP number
---@field TurretWeaponCrossHairType_ADS number
---@field TurretWeaponCrossHairType_Normal number
---@field TurretWeaponCrossHairType_Reload number
---@field TurretWeaponCrossHairType_HitTarget number
---@field TurretWeaponCrossHairType_TargetDestroy number
---@field TurretWeaponCrossHairType_Move number
---@field TurretWeaponCrossHairType_Heat number
---@field TurretWeaponCrossHairType_Exit number
ETurretWeaponCrossHairTypes = {}


---@class ESkipBulletNumVerifyMaskType
---@field ESkipBulletNumVerifyMaskType_Addon number
---@field ESkipBulletNumVerifyMaskType_VMax number
ESkipBulletNumVerifyMaskType = {}


---@class EWeaponGAActiveCondition
---@field ActiveOnEquip number @武器装备激活（持枪）
---@field ActiveOnUse number @武器使用激活（进入装备栏）
---@field ActiveOnManual number @不自动激活
EWeaponGAActiveCondition = {}


---@class EWeaponGAUnEquipState
---@field Destroy number @销毁
---@field Disable number @禁用
EWeaponGAUnEquipState = {}


---@class EFastDrawInterruptActionType
---@field EFastDrawInterruptActionType_None number @不处理
---@field EFastDrawInterruptActionType_BackpackFastDrawWeapon number @收起快拔武器(长枪)
---@field EFastDrawInterruptActionType_BackpackOtherWeapon number @收起另一把武器(手枪)
---@field EFastDrawInterruptActionType_BackpackAll number @收起所有武器
---@field EFastDrawInterruptActionType_NoAnim number @不需要动画
EFastDrawInterruptActionType = {}


---@class ECustomFastDrawInterruptType
---@field EFastDrawInterruptActionType_None number @不处理
---@field ECustomFastDrawInterruptType_Common number @通用打断
---@field EFastDrawInterruptActionType_HandFold number @怼墙打断
---@field EFastDrawInterruptActionType_OpenDoor number @开门打断
---@field ECustomFastDrawInterruptType_Inspect number @检视打断
---@field ECustomFastDrawInterruptType_Disconnect number @断线打断
---@field ECustomFastDrawInterruptType_Vault number @攀爬打断
ECustomFastDrawInterruptType = {}


---@class FWeaponReloadData
---@field FillTime number
---@field SingleBulletPrepareTime number
---@field UploadTime number
FWeaponReloadData = {}


---@class FWeaponNotifyActionData
---@field OperationIndex number
---@field Action EWeaponAction
FWeaponNotifyActionData = {}


---@class FBodyTypeDef
---@field UpThreshold number
---@field DownThreshold number
FBodyTypeDef = {}


---@class FWeaponHitPartCoff
---@field Head number
---@field Body number
---@field Limbs number
---@field Hand number
---@field Foot number
---@field Tail number
FWeaponHitPartCoff = {}


---@class FSRecoilInfo
---@field VerticalRecoilMin number
---@field VerticalRecoilMax number
---@field VerticalRecoilVariation number
---@field VerticalRecoveryModifier number
---@field VerticalRecoveryClamp number
---@field VerticalRecoveryMax number
---@field LeftMax number
---@field RightMax number
---@field HorizontalTendency number
---@field BulletPerSwitch number
---@field TimePerSwitch number
---@field SwitchOnTime boolean
---@field RecoilSpeedVertical number
---@field RecoilSpeedHorizontal number
---@field RecovertySpeedVertical number
---@field RecoilValueClimb number
---@field RecoilValueFail number
---@field RecoilModifierStand number
---@field RecoilModifierCrouch number
---@field RecoilModifierProne number
---@field RecoilHorizontalMinScalar number
---@field BurstEmptyDelay number
---@field ShootSightReturn boolean
---@field ShootSightReturnSpeed number
---@field RecoilCurveStart number
---@field RecoilCurveEnd number
---@field RecoilCurveOneBurstStart number
---@field RecoilCurveOneBurstEnd number
---@field RecoilCurveMultiBurstStart number
---@field RecoilCurveMultiBurstEnd number
---@field RecoilCurveSamplingInterval number
---@field RecoilCurveArray ULuaArrayHelper<FVector>
---@field RecoilCurveOneBurstArray ULuaArrayHelper<FVector>
---@field RecoilCurveMultiBurstArray ULuaArrayHelper<FVector>
FSRecoilInfo = {}


---@class FSDeviation
---@field DeviationBase number
---@field DeviationBaseAim number
---@field DeviationBaseADS number
---@field DeviationRecoilGain number
---@field DeviationRecoilGainAim number
---@field DeviationRecoilGainADS number
---@field DeviationMax number
---@field DeviationMinMove number
---@field DeviationMaxMove number
---@field DeviationMoveMultiplier number
---@field DeviationMoveMinRefrence number
---@field DeviationMoveMaxRefrence number
---@field DeviationStanceStand number
---@field DeviationStanceCrouch number
---@field DeviationStanceProne number
---@field DeviationStanceJump number
FSDeviation = {}


---@class FAutoAimingRangeConfig
---@field Speed number
---@field RangeRate number
---@field SpeedRate number
---@field RangeRateSight number
---@field SpeedRateSight number
---@field CrouchRate number
---@field ProneRate number
---@field DyingRate number
---@field DriveVehicleRate number
---@field InVehicleRate number
---@field FreeFallRate number
---@field OpeningRate number
---@field LandingRate number
---@field adsorbMaxRange number
---@field adsorbMinRange number
---@field adsorbMinAttenuationDis number
---@field adsorbMaxAttenuationDis number
---@field adsorbActiveMinRange number
FAutoAimingRangeConfig = {}


---@class FAutoAimingConfig
---@field OuterRange FAutoAimingRangeConfig
---@field InnerRange FAutoAimingRangeConfig
---@field followTimeMax number
FAutoAimingConfig = {}


---@class FAimAssistPoseStateConfig
---@field AIMASSIST_WIDTH number
---@field AIMASSIST_HEIGHT number
---@field AIMASSIST_DISTANCE number
---@field CurveStart number
---@field CurveEnd number
---@field CurveSamplingInterval number
---@field CurveArray ULuaArrayHelper<FVector>
FAimAssistPoseStateConfig = {}


---@class FAimAssistConfig
---@field AimAssistEnable number
---@field OverrideDefault number
---@field AimAssistConfigStand FAimAssistPoseStateConfig
---@field AimAssistConfigCrouch FAimAssistPoseStateConfig
---@field AimAssistConfigProne FAimAssistPoseStateConfig
---@field AimAssistConfigInvalid FAimAssistPoseStateConfig
FAimAssistConfig = {}


---@class FSRangeAttenuateConfig
---@field rangeStart number
---@field rangeEnd number
---@field rangeAttenuateFactor number
FSRangeAttenuateConfig = {}


---@class FSpawnWeaponAdditionalData
---@field bAutoUseWhenGet boolean
---@field bAutoSwitchWhenUse boolean
---@field SpesificLogicGrenadeSlot string
---@field bDataRepLock boolean
---@field SwitchWeaponFlag number
---@field BulletTrackSkinConfig FWeaponVisualBulletClientModeConfigNew
FSpawnWeaponAdditionalData = {}


---@class FSpawnAndBackpackWeaponReplicatedData
---@field LogicSocket string
---@field bAutoUse boolean
---@field bNeedSwitch boolean
---@field bNeedSwitchAnim boolean
---@field ID FItemDefineID
---@field bResetBulletNum boolean
---@field ClientResetBulletNum number
---@field OperationIndex number
---@field OwnerCharacterName string
---@field bIsValid boolean
---@field OwnerNetGUID number
---@field SpesificLogicGrenadeSlot string
FSpawnAndBackpackWeaponReplicatedData = {}


---@class FWeaponSystemDataOnSimulateClient
---@field Slot ESurviveWeaponPropSlot
---@field bAutoUse boolean
---@field ID FItemDefineID
---@field OperationIndex number
---@field bNetSerializeWeaponState boolean
---@field WeaponState EFreshWeaponStateType
FWeaponSystemDataOnSimulateClient = {}


---@class FUseWeaponReplicatedToOwnerData
---@field LogicSocket string
---@field bNeedWaitHandleSpawnFinishedOnClient boolean
---@field OperationIndex number
FUseWeaponReplicatedToOwnerData = {}


---@class FDisUseWeaponReplicatedToOwnerData
---@field OperationIndex number
FDisUseWeaponReplicatedToOwnerData = {}


---@class FDestroyWeaponReplicatedToOwnerData
---@field LogicSocket string
---@field OperationIndex number
FDestroyWeaponReplicatedToOwnerData = {}


---@class FSwitchWeaponReplicatedToOwnerData
---@field Slot ESurviveWeaponPropSlot
---@field OperationIndex number
FSwitchWeaponReplicatedToOwnerData = {}


---@class FWeaponAttachmentSlot
---@field TypeSpecificID number
FWeaponAttachmentSlot = {}


---@class FWeaponAttachmentSlotUGC
---@field TypeSpecificID number
FWeaponAttachmentSlotUGC = {}


---@class FSecurityLogHitTargetInfo
FSecurityLogHitTargetInfo = {}


---@class FLocalShootHitData
---@field ShootID number
---@field ShootingDeviation FVector_NetQuantize
---@field BulletsBornPosition FVector_NetQuantize
---@field BulletFlyDistance number
---@field BulletDown number
---@field CurBullet number
---@field ShootInterval number
---@field BulletFlyTime number
---@field BulletShootTime number
---@field BulletHitTime number
---@field bulletDamageReduceRatio number
---@field ShootingRecoil FVector_NetQuantize
---@field BulletId FBulletID @子弹的标识
---@field ClientStartTime number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field AutoAimSpeed number
---@field AutoAimSpeedRateMax number
---@field AutoAimRangeMax number
---@field AutoAimRangeRateMax number
---@field bHitCharacter boolean @是否命中角色，方便排除数据 这里不使用Actor进行判定是为了防止指针传输失败导致数据传输和校验出现错误
---@field CameraLocation FVector @相机位置
---@field CameraRotate FRotator @相机朝向
---@field BackTrace FVector2D @逆向投影的结果
---@field VicitimPawnState number
---@field SymbolWord number
FLocalShootHitData = {}


---@class FBulletHitInfoRepData
---@field bHasDetailInfo boolean
---@field ImpactPoint FVector_NetQuantize
---@field bNetSerializeImpactPoint boolean
---@field RelativeImpactPoint FVector_NetQuantize
---@field bNetSerializeRelativeImpactPoint boolean
---@field bForceSerializeShootMomentMuzzlePos boolean
---@field ImpactNormal FVector_NetQuantizeNormal8
---@field ShootMomentMuzzlePos FVector_NetQuantize
---@field SurfaceType number
---@field HitBodyType number
---@field bIsUnderWater number
---@field bNetSerializeOp boolean
---@field bOutOfRange boolean
FBulletHitInfoRepData = {}


---@class FBulletHitInfoUploadData
---@field ImpactPoint FVector
---@field bNetSerializeImpactPoint boolean
---@field RelativeImpactPoint FVector
---@field bNetSerializeRelativeImpactPoint boolean
---@field ImpactNormal FVector_NetQuantizeNormal
---@field VictimLocation FVector
---@field BulletPos FVector
---@field ShootMomentMuzzlePos FVector
---@field ShootDir FVector @CG04变动 要验证子弹下坠必须子弹子弹的射出速度方向
---@field ShootSpeed number
---@field SurfaceType number
---@field ShootID number
---@field CompensationTime number
---@field Actor AActor
---@field Component UPrimitiveComponent
---@field HitTargetLagTime number @命中角色时取到的角色插值时间
---@field ClientShootTime number @射击的时间
---@field HitBodyType number
---@field CharacterImpactOffsetSquared number
---@field MuzzleFloorHeight number
---@field DamageRate number
---@field bIsFirstImpact boolean
---@field bIsUnderWater number
---@field bShootToDeath number
---@field bOutRange boolean
---@field BoneName string @命中的骨骼名称
---@field BoneTrans FTransform @命中的骨骼的Transform
---@field VictimBase FMoveBaseInfo_NetQuantize @被命中者的地板信息
---@field BulletId FBulletID @子弹的标识
---@field ShootFrame number
---@field DeviationRandomSeed number
---@field ShootDeviation number
---@field bNetSerializeCriticalInfo boolean
---@field bNetSerializeCriticalInfo_ShotGun boolean
---@field ShootTracePoint FVector
---@field CameraShootTracePoint FVector
---@field bNetSerializeSimulateMoveInfo boolean @【【CG023】【DS安全】模拟端移动包带帧号】 https://tapd.woa.com/CJGame/prong/stories/view/1020386762883852051
---@field HitClientSimulateMoveTime number
---@field HitClientMeshOffsetOnRep FVector
---@field bIsFinalImpact boolean
---@field bNetSerializeShieldInfo boolean
---@field ShieldMeshLoc FVector
---@field ShieldMeshRot FRotator
---@field bIsHandFold boolean
---@field bShooterPitch boolean
---@field CostBulletsNum number
---@field BulletActualFlyTime number
---@field LocalAmmoID number
---@field ItemIndex number
---@field bFireShotNotCostBullet boolean
---@field VictimMovementMode number
---@field VictimCustomMovementMode number
---@field HitClientTime number
---@field GameplayTagList ULuaArrayHelper<FGameplayTag>
FBulletHitInfoUploadData = {}


---@class FWeaponReconnectReplicateData
---@field OwnerPlayerName string
---@field WeaponInventoryLogicSocket string
---@field WeaponBulletNumInClip number
---@field WeaponBulletNumInClipOtherHand number
---@field WeaponShootID number
---@field WeaponClipID number
---@field OwnerNetGUID number
---@field CurWeaponState EFreshWeaponStateType
---@field CurShootType ESTEWeaponShootType
---@field CurShootTotalType number
---@field DefineID FItemDefineID
---@field BackpackPistolListIndex number
---@field bIsCurrentWeapon boolean
---@field OperationIndex number
FWeaponReconnectReplicateData = {}


---@class FWeaponSystemReconnectReplicateData
---@field LastUseNoneGrenadeLogicSlot string
---@field LastUseLogicSlot string
---@field GrenadeLogicSlotList ULuaArrayHelper<string>
---@field GrenadeDefineIDList ULuaArrayHelper<FItemDefineID>
FWeaponSystemReconnectReplicateData = {}


---@class FBattleWeaponItemDisplayData
---@field ItemName string
---@field WhiteIconPath string
FBattleWeaponItemDisplayData = {}


---@class FSceneCompUpdateOptimizationItem
FSceneCompUpdateOptimizationItem = {}


---@class FCharacterCompOutOfVisionOptimizationItem
---@field bAbsoluteLocation boolean
---@field bAbsoluteRotation boolean
---@field bAbsoluteScale boolean
---@field bShouldUpdateOverLaps boolean
---@field bNoSkeletonUpdate boolean
---@field bVisible boolean
FCharacterCompOutOfVisionOptimizationItem = {}


---@class FMotionControlLandscapeConfig
---@field MotionControlPitchReverce_C number
---@field MotionControlPitchLeft_C number
---@field MotionControlPitchRight_C number
---@field MotionControlYawLeft_C number
---@field MotionControlYawRight_C number
---@field MotionControlUseGameRotationReverce_C number
FMotionControlLandscapeConfig = {}


---@class FMotionControlConfig
---@field MotionRateYaw number
---@field MotionRatePitch number
---@field MotionAimRatePitch number
---@field MotionAimRateYaw number
---@field MotionRateYawThreshold number
---@field MotionRatePitchThreshold number
---@field MotionTouchAimRatePitch number
---@field MotionTouchAimRateYaw number
---@field MotionTouchRatePitch number
---@field MotionTouchRateYaw number
FMotionControlConfig = {}


---@class FSeekAndLockRPGBulletUploadData
---@field SeekAndLockStageType number
FSeekAndLockRPGBulletUploadData = {}


---@class FPlayerRoleCacheFrameData
FPlayerRoleCacheFrameData = {}


---@class FAutoTriggerWeaponEventParam
---@field TargetOwnerRole number
---@field TargetEvent EWeaponTriggerEvent
---@field TargetWeaponID FItemDefineID
---@field bIgnoreItemIDInstance boolean
---@field ForceExitPawnStateList ULuaArrayHelper<EPawnState>
---@field DelayTimeBeforeDoTask number
FAutoTriggerWeaponEventParam = {}


---@class FWeaponAttachmentEquipNotifyData
---@field WeaponSlot ESurviveWeaponPropSlot
---@field ItemID FItemDefineID
---@field bIsEquip boolean
FWeaponAttachmentEquipNotifyData = {}


---@class FBulletDebugInfo
---@field ShootPos FVector
---@field ShootSpeed number
---@field ShootTimeStamp number
---@field ImpactPos FVector
---@field ImpactTimeStamp number
FBulletDebugInfo = {}


---@class FShootMultiBulletsParam
---@field LaunchBulletPos FVector
---@field LaunchBulletRot FRotator
---@field ShootID number
FShootMultiBulletsParam = {}


---@class FBulletImpactExplosionConfig
---@field ExplosionEffectTemplate ASTExtraExplosionEffect
FBulletImpactExplosionConfig = {}


---@class FCacheCriticalVerifyMoveParam
---@field ClientFrame number
---@field ControlRotation FRotator
---@field LastFrameCacheControlRotation FRotator
---@field PlayerLoc FVector
---@field PlayerOldLoc FVector
---@field bIsHandFold boolean
---@field bGunADS boolean
---@field CameraLoc FVector
---@field CameraPitch number
---@field CameraYaw number
---@field CacheWorldTimeSec number
---@field ExtraInfo string
---@field ShootFrameCacheRotationInputPitch FVector
---@field ShootFrameCacheIndex number
FCacheCriticalVerifyMoveParam = {}


---@class FCacheCriticalVerifyShootParam
---@field ClientFrame number
---@field DeviationRandomSeed number
---@field ShootDeviation number
---@field CalcShootRotFlag number
---@field ShootTracePoint FVector
---@field ShootTraceCameraLoc FVector
---@field ShootTraceCameraRot FRotator
---@field ShootTraceSeqFlag number
---@field CameraLoc FVector
---@field CameraPitch number
---@field CameraYaw number
---@field bGunADS boolean
---@field bIsHandFold boolean
---@field ShooterLoc FVector
---@field WeaponLoc FVector
---@field ExtraInfo string
FCacheCriticalVerifyShootParam = {}


---@class FCacheCriticalVerifyBulletHitUploadParam
---@field ClientFrame number
---@field DeviationRandomSeed number
---@field ShootDeviation number
---@field ShootTracePoint FVector
---@field ExtraInfo string
FCacheCriticalVerifyBulletHitUploadParam = {}


---@class FShootProjectileFailedCheckReportCacheData
---@field ShootID number
---@field LaunchPos FVector
---@field LaunchCacheWorldTime number
---@field bClientLaunchSuccess boolean
---@field LaunchSequenceFlag number
---@field LaunchRealDateTime string
FShootProjectileFailedCheckReportCacheData = {}


---@class FPelletConfigData
---@field SpreadCenterOffsetDegree number
---@field SpreadCenterRotateDegree number
---@field SpreadModifyParam number
FPelletConfigData = {}


---@class FRawObjectPropertyData
FRawObjectPropertyData = {}


---@class FWeaponPropReplaceData
---@field WeaponPropReplaceItemFloatMap ULuaMapHelper<string, number>
---@field WeaponPropReplaceItemBoolMap ULuaMapHelper<string, boolean>
---@field WeaponPropReplaceItemIntMap ULuaMapHelper<string, number>
---@field WeaponPropReplaceItemVectorMap ULuaMapHelper<string, FVector>
FWeaponPropReplaceData = {}


---@class FWeaponPropReplaceConfig
---@field WeaponPropReplaceData ULuaMapHelper<string, FWeaponPropReplaceData>
FWeaponPropReplaceConfig = {}


---@class FChangeWeaponStateRPCParam
---@field ControllerShootNum number
---@field DSBulletNum number
---@field ShootMuzzlePos FVector
FChangeWeaponStateRPCParam = {}


---@class FShootIntervalVerifyStartFireCacheData
---@field ShootID number
---@field ClientShootTime number
---@field DSCacheTime number
---@field VerifyRet EShootIntervalVerifyFailedType
---@field ShootType ESTEWeaponShootType
---@field CurShootInterval number
---@field LastShootInterval number
FShootIntervalVerifyStartFireCacheData = {}


---@class FShootIntervalVerifyHitInfoCacheData
---@field HitPlayer ACharacter
FShootIntervalVerifyHitInfoCacheData = {}


---@class FShootIntervalVerifyHifInfoCacheDataList
FShootIntervalVerifyHifInfoCacheDataList = {}


---@class FProjectileShootIntervalVerifyInfoCacheData
FProjectileShootIntervalVerifyInfoCacheData = {}


---@class FProjectileSimulateRepCacheData
FProjectileSimulateRepCacheData = {}


---@class FWeaponStateLeakCheckConfigItem
---@field ThresholdLeakBaseTimeLag number
---@field StateStaticNormalDuration number
---@field bGetStateDurationDynamic boolean
FWeaponStateLeakCheckConfigItem = {}


---@class FClientWeaponAntiCheatShootReportData
---@field WeaponID number
---@field ShootID number
---@field ReportMsg string
FClientWeaponAntiCheatShootReportData = {}


---@class FClipAmmoDataItem
---@field StartShootID number
---@field EndShootID number
---@field AmmoID number
FClipAmmoDataItem = {}


---@class FClipAmmoData
---@field AmmoOrderDataList ULuaArrayHelper<FClipAmmoDataItem>
---@field AmmoTypeData ULuaMapHelper<number, number>
FClipAmmoData = {}


---@class FClipAmmoDataRepItem
---@field AmmoID number
---@field Count number
FClipAmmoDataRepItem = {}


---@class FTurretWeaponCrossHairData
---@field Type ETurretWeaponCrossHairTypes
---@field X number
---@field Y number
---@field ReloadCD number
---@field Heat number
---@field HeatMax number
FTurretWeaponCrossHairData = {}


---@class FCacheBulletHitDataSimple
---@field ShootID number
---@field ClipID number
---@field CostBulletNum number
---@field bIsFirstImpact boolean
---@field bIsFinalImpact boolean
---@field MuzzlePoint FVector
---@field ImpactPoint FVector
FCacheBulletHitDataSimple = {}


---@class FServerControlRotExtraParams_CriticalVerify
---@field ClientFrame number
---@field CameraYawPitch number
---@field PlayerLocation FVector
---@field LastFrameControlYawPitch number
---@field ShootFrameCacheRotationInputPitch FVector
---@field bIsHandFold boolean
---@field bGunADS boolean
---@field bEnableCriticalVerify boolean
---@field bEnableSerializeRotationInput boolean
FServerControlRotExtraParams_CriticalVerify = {}


---@class FCustomBulletBreakthroughConfig
---@field MaxBreakthroughCount number
---@field AvailableClassList ULuaArrayHelper<AActor>
---@field AvailableActorTagList ULuaArrayHelper<string>
---@field AvailableCompTagList ULuaArrayHelper<string>
---@field bUseCustomDamageScale boolean
---@field CustomDamageScale number
---@field DamageScaleLostRate number
---@field bApplyDamageScaleLostPostBreakthrough boolean
---@field bDestroyBulletOnImpactWithNoBreakthroughCount boolean
FCustomBulletBreakthroughConfig = {}


---@class FWeaponSkillConfig
---@field SkillTemplateClass UBasicPersistEffect
---@field SkillActiveCondition EWeaponGAActiveCondition
---@field bIsBindFireBtn boolean
---@field OverrideApplyTime number
---@field WeaponGAUnEquipState EWeaponGAUnEquipState
---@field CacheSlot FGameplayTag
FWeaponSkillConfig = {}


---@class FWeaponAttributeModifyConfig
---@field AttrModifyActiveCondition EWeaponGAActiveCondition
---@field AttrModifyItemSimple FAttrModifyItemSimple
---@field AttrModifyItemUniqueID string
FWeaponAttributeModifyConfig = {}


---@class FWeaponBulletListWrapper
---@field BulletList ULuaArrayHelper<ASTExtraShootWeaponBulletBase>
FWeaponBulletListWrapper = {}


---@class FPreShootWeaponProjectileBulletInfoWrapper
---@field LaunchPos FVector
---@field LaunchRot FRotator
FPreShootWeaponProjectileBulletInfoWrapper = {}


---@class FFastDrawInterruptAction
---@field ActionType EFastDrawInterruptActionType
---@field bUseAnimation boolean
FFastDrawInterruptAction = {}


---@class FWeaponSlotIDData
---@field Slot ESurviveWeaponPropSlot
---@field ID FItemDefineID
FWeaponSlotIDData = {}


---@class FWeaponChangeDelegateWrapperData
---@field Slot ESurviveWeaponPropSlot
FWeaponChangeDelegateWrapperData = {}
