---@meta

---Shoot weapon base atrribute component,inclue all weapon config attributes,no include gameplay logic,only provide simple interfaces By:Steweenchen
---@class UShootWeaponEntity: UWeaponEntity
---@field RearSightRotConfig ULuaArrayHelper<FRotator>
---@field RearSightSocketConfig ULuaArrayHelper<string>
---@field RearSightHandRotOffsetConfig ULuaArrayHelper<FRotator>
---@field RearSightRotIndex number
---@field EditorArchiveDataType EEditorArchiveDataType
---@field RuntimeArchiveDataType EArchiveDataType
---@field BulletTemplate ASTExtraShootWeaponBulletBase
---@field ShootWeaponType EShootWeaponType
---@field BulletFireSpeed number
---@field MaxBulletFireSpeed number
---@field MaxBulletNumInOneClip number
---@field MaxBulletNumInBarrel number
---@field ExtendMaxBulletNumInOneClipList ULuaArrayHelper<number>
---@field bHasSingleFireMode boolean
---@field bHasAutoFireMode boolean
---@field bHasBurstFireMode boolean
---@field bScopeInBoltActionEnable boolean
---@field bScopeInBoltActionEnableNewFPP boolean
---@field bScopeInReloadActionEnableNewFPP boolean
---@field bDisableScopeInReloadNewFPPHasAdditional boolean
---@field BurstShootBulletsNum number
---@field BulletGravityModifier number
---@field BulletGravityExtraOffset number
---@field ExtraAvailableMuzzleSocketNameList ULuaArrayHelper<string>
---@field DamageCameraShakeConfig USTDamageCameraShake
---@field GunKickFactor number
---@field GunKickScopeFactor number
---@field VehicleRecoilKickADSPunish number
---@field VehicleGunKickPunish number
---@field bHasVolleyFireMode boolean
---@field VolleyShootBulletsNum number
---@field VolleyBulletSpreadFactor number
---@field VolleyMuzzleSocketNameList ULuaArrayHelper<string>
---@field bLoopVolleyMuzzleSocketList boolean
---@field BurstShootCD number
---@field BulletNumSingleShot number
---@field MaxProjectileBulletsNumSingleShot number
---@field bLoadSensitive boolean
---@field MuzzleSocketName string
---@field DefaultMuzzleSocketName string
---@field SilencerSocketName string
---@field FiringSuppressorSocketName string
---@field ShellDropSocketName string
---@field ShellDropSocketNameFPP string
---@field ScopeAimCameraSocketName string @<用于射击校验的结束位置的Socket的名称
---@field ImpactEffectSkipDistance number
---@field MaxImpactEffectSkipTime number
---@field ShootType ESTEWeaponShootType
---@field ShootTotalType number
---@field ADSManualStop boolean
---@field WeaponWarnUpTime number
---@field BulletMuzzleBackwardDis number
---@field BulletMuzzleBackwardDisWhenHandInFold number
---@field CalcShootDirMaxDegreeOffset number
---@field bForcePlayMuzzleFX boolean
---@field bCanJumpWhenShooting boolean
---@field bForceUseShootIntervalConsistent boolean
---@field bSkipDSShootDamageVerifyA boolean
---@field bSkipDSShootDamageVerifyB boolean
---@field bSkipDSShootDamageVerifyC boolean
---@field bHasValideTSSData boolean
---@field bSkipVerifyShooterMuzzle boolean
---@field bSkipVerifyGunPose boolean
---@field VerifyGunPoseAddit number
---@field AmorDamageReduceScaleBreakthroughConfig ULuaMapHelper<number, number>
---@field HelmetDamageReduceScaleBreakthroughConfig ULuaMapHelper<number, number>
---@field ShootDamageBreakthroughParam1 number
---@field ShootDamageBreakthroughParam2 number
---@field bEnableFreeCameraShoot boolean
---@field SupportWeaponAnimFireModeShootTypeList ULuaArrayHelper<ESTEWeaponShootType>
---@field UseNewFPPShotTrace boolean
---@field NewFPPShotTraceActiveScopeAlpha number
---@field NewFPPSightCircleRadius number
---@field NewFPPSightCircleLocation FVector
---@field NewFPPRecoilKickADS number
---@field NewFPPScopeFireSightTypeMap ULuaMapHelper<ESightType, number>
---@field NewFPPScopeBoltSightTypeMap ULuaMapHelper<ESightType, number>
---@field NewFPPScopeReloadSightTypeMap ULuaMapHelper<ESightType, number>
---@field BulletReloadLoopCountReduction number
---@field NewFPPScopeAnimAlpha number
---@field NewFPPScopeAnimLoopAlpha number
---@field CanTPPToNewFPPAnimScope boolean
---@field NewFPPCanNoAnimScope boolean
---@field EnableNewFPPScope boolean
---@field bUseNewFPPScopeOffset boolean
---@field NewFPPOffsetScopeLocation FVector
---@field NewFPPOffsetScopeRotation FRotator
---@field ScopeDepthOfViewScale number
---@field ScopeDepthOfViewStartAlpha number
---@field bSupportCriticalVerify boolean
---@field WeaponHitPartCoff FWeaponHitPartCoff
---@field MonsterWeaponHitPartCoff FWeaponHitPartCoff
---@field bApplyHitPartCoffToMovableEntity boolean
---@field BaseImpactDamage number
---@field BaseImpactDamageCalculationCls USTExtraGameMagnitudeCalculation
---@field MinimumImpactDamage number
---@field BulletRange number
---@field ImpactActorTemplate ASTEShootWeaponBulletImpactEffect
---@field HitEffectTag string
---@field ImpactDirType EBulletImpactDir
---@field bShootIgnoreCurVehicleAllPlayer boolean
---@field RangeAttenuate ULuaArrayHelper<FSRangeAttenuateConfig>
---@field RangeModifier number
---@field ReferenceDistance number
---@field ExtraRangeModifier number
---@field DamageType UDamageType
---@field BulletType FItemDefineID
---@field OriginalDynamicAmmoID number
---@field ExtraBulletTypeList ULuaArrayHelper<number>
---@field SecondRangeModifier number
---@field SecondRangeModifierMinDis number
---@field bHasInfiniteBullets boolean
---@field bClipHasInfiniteBullets boolean
---@field InitBulletInClip number
---@field bAutoReload boolean
---@field TraceDistance number
---@field MaxValidHitTime number
---@field BreakThroughDampRateConfig ULuaMapHelper<EPhysicalSurface, number>
---@field BreakThroughDampRateCompTagConfig ULuaMapHelper<string, number>
---@field BreakThroughDampRateActorTagConfig ULuaMapHelper<string, number>
---@field SpesificWeaponBulletCanBreakThroughTargetTag string
---@field TargetClassListCanBeBreakThroughOnlyOnce ULuaArrayHelper<AActor>
---@field MaxDamageRate number @最大的子弹伤害系数 上报的伤害系数当前只受BreakThroughDampRateConfig的影响
---@field bIgnoreTeammatesCollision boolean
---@field bIgnoreAttachedOwnerCollision boolean
---@field bReturnBulletsWhenDisUse boolean
---@field bStoreBulletsToWrapperWhenDisUse boolean
---@field bStoreBulletsToTombBoxWrapperWhenDropToBox boolean
---@field bForbidSpawnWrapperWhenNoBullet boolean
---@field bHasOBBulletTrack boolean
---@field VisualBulletTrackConfig FWeaponVisualBulletClientModeConfig
---@field FakeBulletTrackFX UParticleSystem @主控端开镜时枪口的假可视化弹道特效 【【CG33】【移动+PC模拟器】弹线效果及配置方式调整-尝试用假弹线来处理开镜效果】https://tapd.woa.com/tapd_fe/20386762/story/detail/1020386762126163018
---@field FakeBulletTrackFXLifeTimeMax number
---@field FakeBulletTrackFXDisToMuzzle number
---@field BulletTrailEffectDelayHideTimeOnBulletImpact number
---@field LocalOBBulletLaunchRangeFromMuzzle FVector2D
---@field SimulateOBBulletMinDistance number
---@field ForceEnableLocalControllOBBulletTrack number
---@field ForceEnableSimulateDelayOBBulletTrack number
---@field ForceEnableLocalSimulateOBBulletTrack number
---@field ShowSimulateOBBulletTrailEffect number
---@field BulletLineEffectSizeParam_Local FVector
---@field BulletLineEffectSizeParam_Remote FVector
---@field BulletLineEffectScopeSizeParamMap ULuaMapHelper<ESightType, FVector>
---@field DamageImpulse number
---@field ReloadType EWeaponReloadType
---@field bCanReload boolean
---@field PreFireTime number
---@field PostFireTime number
---@field PostReloadTime number
---@field ReloadDurationStart number
---@field ReloadDurationLoop number
---@field ReloadTime number
---@field ReloadTimeModifier number
---@field ReloadTimeTactical number
---@field ReloadTimeTacticalModifier number
---@field ReloadTimeTacticalOneByOneModifier number
---@field AllReloadTimeModifier number
---@field bEnableReloadMagInOut boolean
---@field ReloadTimeMagOut number
---@field ReloadTimeMagOutWithAdditionalWeapon number
---@field ReloadTimeMagOutTactical number
---@field ReloadTimeMagOutTacticalWithAdditionalWeapon number
---@field ReloadTimeMagIn number
---@field ReloadTimeMagInTactical number
---@field ReloadAllTIDName string
---@field ReloadTacticalTIDName string
---@field AutoReloadCD number
---@field InitAutoReloadLock boolean
---@field ShowMagOnReload number
---@field bForcePostReloadAfterReload boolean
---@field bEnableSimulationReload boolean
---@field SimulationReloadMethodList ULuaArrayHelper<EWeaponReloadMethod>
---@field SimulationReloadTypeList ULuaArrayHelper<EWeaponReloadType>
---@field SimulationReloadModifyConfig FAttrModifyItem
---@field bAutoDrop boolean
---@field DropDuration number
---@field InterruptReloadByFireMinBulletThreshold number
---@field ReloadLimitAnimPitch boolean
---@field bEnableSegmentReload boolean
---@field SegmentReloadConfig ULuaArrayHelper<number>
---@field SegmentReloadConfigSpecial ULuaArrayHelper<number>
---@field SegmentReloadSwitchAnimRate number
---@field SegmentReloadSwitchAnimRateNewFPP number
---@field RecoilInfo FSRecoilInfo
---@field AccessoriesVRecoilFactor number
---@field AccessoriesVRecoilFactorModifier number
---@field VerticalRecoilFactorModifier number
---@field AccessoriesHRecoilFactor number
---@field AccessoriesHRecoilFactorModifier number
---@field HorizontalRecoilFactorModifier number
---@field AccessoriesAllRecoilFactorModifier number
---@field AccessoriesRecoveryFactor number
---@field bTryApplyReservedRecoilCurve boolean
---@field DeviationInfo FSDeviation
---@field ShotGunVerticalSpread number
---@field ShotGunHorizontalSpread number
---@field GameDeviationFactor number
---@field DyingUsingDeviationFactor number
---@field GameDeviationAccuracy number
---@field AccessoriesDeviationFactor number
---@field AccessoriesFinalDeviationFactor number
---@field DeviationFactorModifier number
---@field SwitchDeviationFactorModifier number
---@field SwitchDeviationFactorRecoveryRate number
---@field bEnableDSDeviationVerify boolean
---@field CrossHairType number
---@field CrossHairInitialSize number
---@field CrossHairBurstSpeed number
---@field CrossHairBurstIncreaseSpeed number
---@field bDrawCrosshairWhenScope boolean
---@field DefaultScopeSocket string
---@field DefaultGripSocket string
---@field DefaultGunStockSocket string
---@field DefaultMagSocket string
---@field WeaponBodyLength number
---@field DetectStartLocWeaponOffset FVector
---@field OpticalSightAttachmentSocketNameList ULuaArrayHelper<string>
---@field WeaponAnimUseScopingSight boolean
---@field WeaponSightAnimBlendAlpha number
---@field WeaponAimFOV number
---@field WeaponAimInTime number
---@field WeaponAimPitchRate number
---@field WeaponAimYawRate number
---@field GameMotionYawRate number
---@field GameMotionPitchRate number
---@field ForegripParam number
---@field MagParam number
---@field SimulateMagParam boolean
---@field SensitiveFireYawRate number
---@field SensitiveFirePitchRate number
---@field SightType ESightType
---@field SightTypeOrigin ESightType
---@field DefaultScopeID FItemDefineID
---@field ScopeAimCameraSocketNameOverride string
---@field RailBoneNames ULuaArrayHelper<string>
---@field MaxBulletImpactFXClampDistance number
---@field MaxBulletImpactFXSpawnNum number
---@field RecoilKickADS number
---@field ExtraHitPerformScale number
---@field HUDAlphaDecreaseSpeedScale number
---@field bAutoExitScopeAfterFire boolean
---@field ReleaseFireType EReleaseToFireType
---@field bEnableScopeIn boolean
---@field bEnableAutoScopeIn boolean
---@field bLock90DirWhenPitchAbove75 boolean
---@field LockAnimPitchDegree number
---@field LockAnimPitchDegreeCrouch number
---@field bFirstAimSpineAdditive boolean
---@field AnimationKick number
---@field ReloadAnimSlot number
---@field ReloadAnimAdditive boolean
---@field ReloadAnimRateScaleModifier number
---@field ReloadAnimTrackLengthDiff boolean
---@field bEnableNightVersionWhenScope boolean
---@field bUseScopeOutLerpFPP boolean
---@field bDisableFolderInReload boolean
---@field bShowBarrelBulletNumUI boolean
---@field HandleFolderFactorScale number
---@field HandleFolderFactorSprintScale number
---@field bDisableAimBtn boolean
---@field bADSAutoAimCenter boolean
---@field bADSAutoAimCenterUseAnimNode boolean
---@field bADSAutoAimCenterUseAnimNodeTPP boolean
---@field bADSActiveRotator boolean
---@field bAlwaysOpenTripodLeg boolean
---@field LowArmTwoBoneIKOffset_NewFPP FVector @角色小臂IK偏移配置*********
---@field LowArmTwoBoneIKOffset_Grip_NewFPP FVector
---@field bDisableGripPoseWhenExtendMagEquip boolean
---@field DisableUseGripPoseParam_NewFPP ULuaSetHelper<number>
---@field VoiceCheckDisOverride number
---@field SilenceVoiceCheckDisOverride number
---@field DefaultWeaponIDList ULuaArrayHelper<number>
---@field DefaultLoadEncryptConfigActorPath string
---@field ShootInterval number
---@field ShootTypeIntervalMap ULuaMapHelper<ESTEWeaponShootType, number>
---@field ShootIntervalShowNumber number
---@field ExtraShootInterval number
---@field bEnableExtraShootIntervalUI boolean
---@field ExtraShootIntervalShowNumber number
---@field BurstShootInterval number
---@field bIsCleanInfo boolean
---@field bIsInUGCGame boolean
---@field bHasCheckIsInUGCGame boolean
---@field bEnableShootInputCache boolean
---@field ShootInputCacheIntervals ULuaMapHelper<ESTEWeaponShootType, number>
---@field CacheShootInputDelayFireTime number
---@field bFolderAllowFire boolean
---@field bJudgeVolleyShootAsAuto boolean
---@field bShouldCheckShootOnSimulatedProxy boolean
---@field bUseCustomBulletManager boolean
---@field bForbidSpawnBulletWrapper boolean
---@field bShouldOverrideSpecialAttrModifier boolean
---@field bShouldReduceDurability boolean @是否应该减少耐久度 用于控制武器射击时是否消耗耐久度，可通过ToggleShouldReduceDurabilityOnServer在DS端动态修改
---@field bCanApplyCustomBulletBreakthrough boolean
local UShootWeaponEntity = {}

function UShootWeaponEntity:OnAttr_SightType() end

---@param FileName string
function UShootWeaponEntity:ReadArchiveToTXTStatic(FileName) end

---@param InWorldContent UObject
function UShootWeaponEntity:StartLoadEncryptConfigStatic(InWorldContent) end

---@param InWeaponID number
function UShootWeaponEntity:LoadEncryptConfigStatic(InWeaponID) end

---@return number
function UShootWeaponEntity:GetLoadEncryptConfigState() end

function UShootWeaponEntity:CheckAndFillEncryptConfigMap() end

---@param OldVal number
function UShootWeaponEntity:OnRep_ShootInterval(OldVal) end

---@param OldVal number
function UShootWeaponEntity:OnRep_ExtraShootInterval(OldVal) end

---@param OldVal number
function UShootWeaponEntity:OnRep_BurstShootInterval(OldVal) end

function UShootWeaponEntity:OnAttr_MaxBulletNumInOneClip() end

function UShootWeaponEntity:OnRep_InfiniteBulletsChanged() end

---@return boolean
function UShootWeaponEntity:CheckTryApplyReservedRecoilCurve() end

function UShootWeaponEntity:OnRep_ReloadTime() end

function UShootWeaponEntity:OnRep_ReloadTimeTactical() end

function UShootWeaponEntity:OnAttr_ReloadTime() end

function UShootWeaponEntity:OnAttr_ReloadTimeTactical() end

---bShouldReduceDurability值复制回调函数 当bShouldReduceDurability变量通过网络同步更新时触发
function UShootWeaponEntity:OnRep_ShouldReduceDurability() end
