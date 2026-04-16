---@meta

---射击武器类
---@class ASTExtraShootWeapon: ASTExtraWeapon
---@field voiceCheckCD number
---@field voiceCheckShowCD number
---@field isDefaultSlienceWeapon boolean
---@field bFlushBulletHitDataOnImpact boolean
---@field bAllScopeUseDefaultMaterial boolean
---@field bAllIsInstanceSound boolean
---@field bEnableShootProjectileFailedCheckReport boolean
---@field ShootProjectileFailedCheckReportThreshold number
---@field voiceCheckLeaveTime number
---@field voiceCheckVector FVector
---@field voiceDelayTime number
---@field isInVoiceDelayTime boolean
---@field IsVoiceCheckSlience boolean
---@field CanReloadStateList ULuaArrayHelper<EFreshWeaponStateType>
---@field CanAutoTryingToFireStateList ULuaArrayHelper<EFreshWeaponStateType>
---@field bForceNetSerializeHitDataShootDir boolean
---@field bForceNetSerializeHitDataShootSpeed boolean
---@field bForceNetSerializeHitDataBulletFlyTime boolean
---@field bHasFinishedLoadingBulletTrackSkin boolean
---@field ShootVerifyConfig FWeaponVerifyConfig @反外挂配置
---@field bEnableDSStartFireVerify boolean
---@field bEnableNewShotGunShootMode boolean
---@field bEnableMuzzleBasedNewShotGunShootMode boolean
---@field PelletConfigDataList ULuaArrayHelper<FPelletConfigData>
---@field PelletSpreadGlobalModifyParam number
---@field PelletOffsetDegreeGlobalModifyParam number
---@field PelletOffsetDegreeADSModifyParam number
---@field PelletOffsetDegreePitchLerpParam number
---@field PelletOffsetDegreeYawLerpParam number
---@field NeedPressBtnStayShootTypeList ULuaArrayHelper<ESTEWeaponShootType>
---@field ReloadEffectAttachSocket string
---@field bEnableBulletConsistentPathFlyMode boolean
---@field bDisableGlobalBulletTrackEffect boolean
---@field DefaultShootWeaponAmmoManagerTemplate UShootWeaponAmmoManager
---@field DefaultShootWeaponDataModeManagerTemplate UShootWeaponDataModeManager
---@field LowDurabilityAttrMoodifyList ULuaArrayHelper<FAttrModifyItem>
---@field TempCurExtraMaxBulletNumInClipConfig FAttrModifyItem
---@field bIsPistol boolean
---@field bIsAIOwner boolean
---@field bUseFixShootIDGen boolean @是否使用固定的ShootID和ClipID生成逻辑 车载武器目前断线重连时玩家在车上会与服务器生成不同的ShootID和ClipID
---@field DynamicReloadType number
---@field SpecialMuzzleEffectTableIndex number
---@field SpecialReloadEffectTableIndex number
---@field bIsAsyncLoadingWeaponEffectTable boolean
---@field LastStatFireTime number
---@field PendingChangeWeaponEffectTypeList ULuaArrayHelper<EChangeWeaponEffectType>
---@field CacheMuzzleEffectPath FSoftObjectPath
---@field CacheScopeMuzzleEffectPath FSoftObjectPath
---@field CacheMuzzleEffectScale FVector2D
---@field CacheReloadEffectPath FSoftObjectPath
---@field bPendingRequestChangeWeaponEffect boolean
---@field CurDurability number
---@field CurMaxDurability number
---@field CurOneShotReduceDurability number
---@field bIsInLowDurabilityMode boolean
---@field bEnableDurabilityGameplay boolean
---@field EnableLastBulletForceHitHead number
---@field EnableFirstBulletPostReloadForceHitHead number
---@field LocalForceHitHeadCount number
---@field InstigatorForceHitHeadProbAttr FGameAttributeContainer
---@field HitHeadAddBulletCount number
---@field SupportAllAmmoType number
---@field ShootHitDamageModifier number
---@field WeaponCustomDamageRate number
---@field AllShootIntervalModifier number
---@field WeaponRadiusDamageScale number
---@field WeaponRadiusDamageRangeScale number
---@field FireShotNotCostBulletRate number
---@field bCurFireShotNotCostBullet boolean
---@field bIgnoreDamageAttenuation boolean
---@field ShotNumSingleFire number
---@field bDisableAimAssist boolean
---@field bDisableBulletHitEffect boolean
---@field bBulletHitInfoRepForceNetSerializeMuzzlePos boolean
---@field bEnableCacheLastShootTimeByShootType boolean
---@field LastShootTimeCacheMap ULuaMapHelper<ESTEWeaponShootType, number>
---@field bEnableCacheStartShootTimeByShootType boolean
---@field StartShootTimeCacheMap ULuaMapHelper<ESTEWeaponShootType, number>
---@field CustomBulletBreakthroughConfigMap ULuaMapHelper<string, FCustomBulletBreakthroughConfig>
---@field bHasEquipedScope boolean
---@field bHasEquipedScopeMain boolean
---@field bHasEquipedScopeAngled boolean
---@field bEnableSwitchShootIntervalMode boolean
---@field bClipInfiniteForceReturnBullets boolean
---@field OverrideFinalShootRotDelegate FOverrideFinalShootRot
---@field OverrideFinalShootStartDelegate FOverrideFinalShootStart
---@field OnShootWeaponAutoReloadDel FOnShootWeaponAutoReloadDelegate @Delegate 生效范围C 自动换弹事件
---@field OnCurBulletChange FOnCurBulletChange @Delegate 生效范围SC 弹药数量变化事件。注：手动修改会触发开火消耗子弹不触发
---@field OnCurBulletChangeAsync FOnCurBulletChange
---@field OnCurBarrelBulletChangeDelegate FOnCurBarrelBulletChangeDelegate @Delegate 生效范围C 膛内弹药数量变化代理
---@field OnCurBarrelBulletChangeAsyncDelegate FOnCurBarrelBulletChangeDelegate
---@field OnCurBarrelBulletChangeWithWeaponDelegate FOnCurBarrelBulletChangeWithWeaponDelegate
---@field OnCurBarrelBulletChangeWithWeaponAsyncDelegate FOnCurBarrelBulletChangeWithWeaponDelegate
---@field OnCustomBulletNumChangedDelegate FOnWeaponCustomBulletNumChangedDelegate
---@field OnStartFireDelegate FOnStartFireDelegate @Delegate 生效范围SC 开火事件
---@field OnStopFireDelegate FOnStopFireDelegate @Delegate 生效范围SC 停火事件
---@field OnLocalPreShootDelegate FOnLocalPreShootDelegate
---@field OnLocalShootDelegate FOnLocalShootDelegate
---@field OnWeaponShootDelegate FOnWeaponShootDelegate @Delegate 生效范围C 射击事件
---@field OnWeaponShootAsyncDelegate FOnWeaponShootDelegate
---@field OnWeaponShootCommonDelegate FOnWeaponShootCommonDelegate
---@field OnWeaponShootHitDelegate FOnWeaponShootHitDelegate
---@field OnWeaponReloadStartDelegate FOnWeaponReloadStartDelegate @Delegate 生效范围SC 开始换弹事件
---@field OnWeaponReloadEndDelegage FOnWeaponReloadEndDelegage @Delegate 生效范围SC 结束换弹事件
---@field OnWeaponEquipDelegate FOnWeaponEquipDelegate @Delegate 生效范围SC 武器装备事件
---@field OnWeaponUnEquipDelegate FOnWeaponUnEquipDelegate @Delegate 生效范围SC 武器卸载事件
---@field OnEquipAttachmentDelegate FOnEquipAttachmentDelegate
---@field OnUnequipAttachmentDelegate FOnUnequipAttachmentDelegate
---@field OnLeftLastBulletWhenReloadOneByOneDelegate FOnLeftLastBulletWhenReloadOneByOne @Delegate 生效范围SC 最后一发换弹通知事件
---@field OnBulletNumChangeDelegate FOnBulletNumChangeDelegate
---@field OnDSBulletNumChangeDelegate FOnDSBulletNumChangeDelegate
---@field OnSimulateBulletNumChangeDelegate FOnSimulateBulletNumChangeDelegate
---@field OnBulletHitDelegate FOnBulletHitDelegate @Delegate 生效范围S 射击武器命中事件
---@field OnBulletHitDetailDelegate FOnBulletHitDetailDelegate
---@field OnShootIntervalModeChangeDelegate FOnShootIntervalModeChangeDelegate @Delegate 生效范围SC 改变射速模式事件（指的是改变了武器拥有的射速模式）
---@field OnShootWeaponAutoDrop FOnShootWeaponAutoDrop
---@field OnWeaponDropStart FOnShootWeaponDrop
---@field OnWeaponDropFinished FOnShootWeaponDrop
---@field OnChangeAmmoDelegate FOnChangeAmmoDelegate @Delegate 生效范围SC 切换武器弹药种类事件
---@field OnWeaponDurabilityChangeDelegate FOnWeaponDurabilityChangeDelegate
---@field OnClipAmmoDataChangeDelegate FOnClipAmmoDataChangeDelegate @Delegate 生效范围SC 武器弹夹内弹药数据发生变化事件
---@field OnPostCallChangeAmmoTypeOnServerDelegate FOnPostCallChangeAmmoTypeOnServerDelegate
---@field OnPostChangeMultiFunctionalShootModeTypeDelegate FOnPostChangeMultiFunctionalShootModeTypeDelegate
---@field OnPreChangeMultiFunctionalShootModeTypeDelegate FOnPreChangeMultiFunctionalShootModeTypeDelegate
---@field OnExplosionProjectileBulletExplodeDelegate FOnExplosionProjectileBulletExplodeDelegate @Delegate 生效范围SC 炮弹爆炸事件
---@field OnReloadFinishOnServerDelegate FOnReloadFinishOnServer
---@field OnReloadRefreshBulletDelegate FOnReloadRefreshBullet
---@field OnReceiveStopFireInfoOnServerDelegate FOnReceiveStopFireInfoOnServer
---@field OnResetInitBulletNumDelegate FOnResetInitBulletNum
---@field OnSyncOwnerClientsBulletsNumDelegate FOnSyncOwnerClientsBulletsNum
---@field OnProjectileBulletImpactOnServerDelegate FOnProjectileBulletImpactOnServer
---@field OnBulletImpactEndDelegate FOnBulletImpactEnd
---@field OnLocalHandleSimBulletTrackDelegate FOnLocalHandleSimBulletTrackDelegate
---@field OnScopeIn FOnScopeInContinue @Delegate 生效范围C 开镜事件
---@field OnScopeOut FOnScopeInContinue @Delegate 生效范围C 关镜事件
---@field OnScopeInContinue FOnScopeInContinue
---@field OnMaxBulletChange FOnMaxBulletChange @Delegate 生效范围SC 最大弹药数量变化事件
---@field OnWeaponSecurityLogShootActorDelegate FOnWeaponSecurityLogShootActorDelegate
---@field OnBulletPreShootDelegate FOnBulletBeforeShootDelegate @Delegate 生效范围C 子弹射出预处理事件，带有子弹参数
---@field OnBulletBeforeShootDelegate FOnBulletBeforeShootDelegate @Delegate 生效范围C 子弹射出事件，带有子弹参数
---@field OnBulletPostShootDelegate FOnBulletBeforeShootDelegate @Delegate 生效范围C 子弹射出后理事件，带有子弹参数
---@field OnShootTypeChangeDelegate FOnShootTypeChangeDelegate
---@field CurBulletNumInClip number
---@field CurMaxBulletNumInOneClip number
---@field MaxBulletNumInOneClipForHistory number
---@field CurExtraMaxBulletNumInClip number
---@field CurBulletNumInBarrel number
---@field ShootMode EShootWeaponShootMode
---@field CustomShootMode EShootWeaponShootMode
---@field CurShootType ESTEWeaponShootType
---@field CurShootTotalType number
---@field VoiceCheckDis number
---@field SilenceVoiceCheckDis number
---@field VoiceCheckDisScale number
---@field nowVoiceCheckDis number
---@field ShootTargetLoc FVector
---@field DeviationScale number
---@field bUpdateAnimToAll boolean
---@field AngledSightID number
---@field TraceChannel ECollisionChannel
---@field LastImpactEffectLocation FVector
---@field LastImpactEffectTime number
---@field BurstShootBulletsNum number
---@field CurBurstShootIndex number
---@field BoltActionTransform FTransform
---@field bHasFinishConfirmedFromServer boolean
---@field ClientShootTimes number
---@field BFSShootSoundCullDis number
---@field PullBoltSoundPlayingEventID number
---@field BulletDecalScale FVector
---@field CurBulletNumInClipOnSimulatedClients number
---@field bWantsToFire boolean
---@field bWantsToFireCommon boolean
---@field CurAutoReloadCD number
---@field CurAutoReloadLock boolean
---@field BulletTrackSkinConfig FWeaponVisualBulletClientModeConfigNew
---@field BulletFireSpeedModifier number
---@field ShootingBehaviorPatternTemplateMap ULuaMapHelper<ESTEWeaponShootType, UShootingBehaviorPatternBase>
---@field ShootingBehaviorPatternMap ULuaMapHelper<ESTEWeaponShootType, UShootingBehaviorPatternBase>
---@field SpecialFixShootType ESTEWeaponShootType
---@field LastShootType ESTEWeaponShootType
---@field FireShotNumSeqAcc number
---@field SyncFireShotNumSeqAcc number
---@field ShootMuzzlePos FVector
---@field ServerBulletTrackVerifyCount number
---@field bIgnoreCriticalVerifyStrategy2Post boolean
---@field SwitchShootWeaponDataModeRepData FSwitchShootWeaponDataModeRepData
---@field CurLoopVolleyMuzzleSocketListIndex number
---@field CacheCrosshairRotateAngle number
---@field AutoReloadHandler FTimerHandle
---@field PreFireHandler FTimerHandle
---@field OverrideStartFireFilterDelegate FOverrideStartFireFilterDelegate
---@field bEnableSwitchToGrenade boolean
---@field CurShootWeaponState EShootWeaponState
---@field md_MaxBulletArraySize number @<Max uploaded array size
---@field IsEquipSilencer boolean
---@field IsEquipFiringSuppressor boolean
---@field IsEquipCompensator boolean
---@field OffsetFPPLocation FVector
---@field OffsetFPPRotation FRotator
---@field OffsetFPPCrouchLocation FVector
---@field OffsetFPPCrouchRotation FRotator
---@field OffsetFPPProneLocation FVector
---@field OffsetFPPProneRotation FRotator
---@field OffsetFPPScopeRotation FRotator
---@field DefaultScopeVisiable boolean
---@field OffsetTrueFPPLocation FVector
---@field OffsetTrueFPPRotation FRotator
---@field OffsetTrueFPPCrouchLocation FVector
---@field OffsetTrueFPPCrouchRotation FRotator
---@field OffsetTrueFPPProneLocation FVector
---@field OffsetTrueFPPProneRotation FRotator
---@field OffsetTrueFPPScopeRotation FRotator
---@field bUseTrueFPPOffset boolean
---@field bShootUseCameraRotatorADS boolean
---@field bBoltUseCachedBoneTransformADS boolean
---@field bBeHitTargetForbidADS boolean
---@field WeaponSightNodeContainerIndex number
---@field bCanSwitchWeaponSight boolean
---@field DefaultSightMaterialCrossHairDistance number
---@field bEnableUniversalProjectile boolean
---@field UniversalProjectile AUniversalProjectileCore
---@field bOverrideSpeedConfig boolean
---@field UniversalProjectileGravityScale number
---@field bOverrideDamageConfig boolean
---@field AvailableWeaponAttachmentSocketTypeList ULuaArrayHelper<EWeaponAttachmentSocketType>
---@field AttachedAttachmentID ULuaArrayHelper<number>
---@field AttachedAttachmentIDChange FOnAttachedAttachmentIDChange
---@field EntitySightTypeChange FOnEntitySightTypeChange
---@field DefaultAttachedAttachmentID ULuaArrayHelper<number>
---@field AttachmentSocketAttachedCached ULuaMapHelper<EWeaponAttachmentSocketType, FItemDefineID>
---@field BulletHitDataRepArray ULuaArrayHelper<FBulletHitInfoRepData>
---@field HitDataTimeOut number
---@field bNeedForceSyncSimulatedClientsBulletsNumAfterReload boolean
---@field bIsInfiniteBulletNum boolean
---@field CurShootIntervalMode EWeaponShootIntervalMode
---@field VolleyIndex number
---@field bEnableReloadADS boolean
---@field bCanAutoReload boolean
---@field ScopeAnimMap ULuaMapHelper<number, UAnimationAsset>
---@field CacheCriticalVerifyShootParamList ULuaArrayHelper<FCacheCriticalVerifyShootParam>
---@field CurCacheCriticalVerifyShootParamIdx number
---@field CacheCriticalVerifyBulletHitUploadParamList ULuaArrayHelper<FCacheCriticalVerifyBulletHitUploadParam>
---@field CurCacheCriticalVerifyBulletHitUploadParamIdx number
---@field ShootProjectileFailedCheckReportCacheDataMap ULuaMapHelper<number, FShootProjectileFailedCheckReportCacheData>
---@field bIgnoreVictimLocalPawnImpactEffect boolean
---@field DSCacheHitData FBulletHitInfoUploadData
---@field ShootPrintWeaponPropertyNameList ULuaArrayHelper<string>
---@field CacheInitAutoShootInterval number
---@field CacheShootIntervalRTPC number
---@field ShootIntervalVerifyStartFireCacheDataList ULuaArrayHelper<FShootIntervalVerifyStartFireCacheData>
---@field ShootIntervalVerifyHitInfoCacheDataList ULuaArrayHelper<FShootIntervalVerifyHifInfoCacheDataList>
---@field ProjectileShootIntervalVerifyInfoCacheData FProjectileShootIntervalVerifyInfoCacheData
---@field ProjectileShootIntervalVerifyInfoCacheTemp FProjectileShootIntervalVerifyInfoCacheData
---@field DamageTypeConfig FRestrictedDamageTypeData
---@field LastFrameEquipAttachtments ULuaArrayHelper<number>
---@field LastFrameUnequipAttachtments ULuaArrayHelper<number>
---@field CurSightTypeID number
---@field CurScopeID number
---@field CurBackPackBullets number
---@field ShootBulletCounterForCheck number
---@field bEnableWeaponClientBulletLinetraceCheck boolean
---@field bEnableWeaponReloadAnimInTPP boolean
---@field Key_ShootLockIndex FUAEBlackboardKeySelector
---@field Key_LastBurstFireLevelTime FUAEBlackboardKeySelector
---@field Key_LastFireLevelTime FUAEBlackboardKeySelector
---@field EffectBulletOverrideData FEffectBulletOverrideData
---@field bWeaponEnableImproveBulletHitRepData boolean
---@field bHasCachedShootInput boolean
---@field bFolder boolean
---@field LastHitAddBulletShootID number
---@field bSkipSimulateHitParticleRenderOptimization boolean
---@field OnServerShootProjectileBulletDelegate FOnServerShootProjectileBulletDelegate
---@field OnLocalHandleHitDataDelegate FOnLocalHandleHitData
---@field WeaponAttrCheckPath FSoftClassPath
---@field bNotifyShootDelegateAsync boolean
---@field bNotifyCurBulletChangeAsync boolean
---@field bNotifyCurBarrelBulletChangeAsyncDelegate boolean
---@field bNotifyCurBarrelBulletChangeWithWeaponAsync boolean
---@field SegmentReloadIndex number
---@field SwitchDeviationFactor number
---@field ShotIgnoreTargetListCacheFrameNumber number
---@field ShotIgnoreTargetListCache ULuaArrayHelper<AActor>
---@field PreHandleBulletHitDataArrayDelegate FPreHandleBulletHitDataArrayDelegate
---@field CachedServerCostBulletNum number
local ASTExtraShootWeapon = {}

---@return boolean
function ASTExtraShootWeapon:GetShouldReduceDurabilityFromEntity() end

---在DS端切换是否应该减少耐久度 该函数仅在DS端有效，会修改ShootWeaponEntityComp->bShouldReduceDurability并调用DOREPONCE进行网络同步
---@param bEnable boolean
function ASTExtraShootWeapon:ToggleShouldReduceDurabilityOnServer(bEnable) end

---@return boolean
function ASTExtraShootWeapon:CanApplyCustomBulletBreakThrough() end

function ASTExtraShootWeapon:ScopeInContinue() end

function ASTExtraShootWeapon:HandleShootWeaponScopeInGMPInUGC() end

function ASTExtraShootWeapon:HandleShootWeaponScopeOutGMPInUGC() end

function ASTExtraShootWeapon:BPPostInitializeComponents() end

---@return boolean
function ASTExtraShootWeapon:StartFireFilter() end

function ASTExtraShootWeapon:StartFire() end

---@param StartCheckLoc FVector
---@param OutHit FHitResult
---@param FixPos FVector
---@return boolean
function ASTExtraShootWeapon:CheckGunCollision(StartCheckLoc, OutHit, FixPos) end

---@return boolean
function ASTExtraShootWeapon:StopFireFilter() end

---@return boolean
function ASTExtraShootWeapon:ScopeIn() end

---@return boolean
function ASTExtraShootWeapon:ScopeOut() end

---@param ToState EFreshWeaponStateType
function ASTExtraShootWeapon:StopFire(ToState) end

---@param ApplierPawn APawn
---@param FlyThroughPos FVector
function ASTExtraShootWeapon:OnBulletFlyThroughPlayer(ApplierPawn, FlyThroughPos) end

function ASTExtraShootWeapon:StartDoBarrel() end

---@param HandledTime number
function ASTExtraShootWeapon:StartDoPreBarrel(HandledTime) end

---@return number
function ASTExtraShootWeapon:StartReload() end

---@param method EWeaponReloadMethod
---@return string
function ASTExtraShootWeapon:GetReloadTIDName(method) end

---@param method EWeaponReloadMethod
---@return string
function ASTExtraShootWeapon:GetReloadTIDNameNew(method) end

---@param ReloadType EWeaponReloadType
---@param bTactical boolean
---@return string
function ASTExtraShootWeapon:GetReloadTIDPostfixByReloadType(ReloadType, bTactical) end

function ASTExtraShootWeapon:OnRep_BulletTrackSkinConfig() end

---@return number
function ASTExtraShootWeapon:StartDropWeapon() end

---@return FTransform
function ASTExtraShootWeapon:GetMuzzleTransform() end

---@return FTransform
function ASTExtraShootWeapon:GetRelativeMuzzleTransform() end

---@param bFound boolean
---@return FTransform
function ASTExtraShootWeapon:GetVolleyMuzzleTransform(bFound) end

---@return EWeaponReloadType
function ASTExtraShootWeapon:GetWeaponReloadType() end

---@param method EWeaponReloadMethod
function ASTExtraShootWeapon:SetCurReloadMethod(method) end

---@return EWeaponReloadMethod
function ASTExtraShootWeapon:GetCurReloadMethod() end

---@return number
function ASTExtraShootWeapon:GetBulletGravityModifier() end

---@param ShootID number
---@param OutGravityScale number
---@return boolean
function ASTExtraShootWeapon:GetLaunchGravityScaleOverride(ShootID, OutGravityScale) end

---@return number
function ASTExtraShootWeapon:GetLocalBulletLaunchGravityScale() end

---@param ShootID number
---@param OutRange number
---@return boolean
function ASTExtraShootWeapon:GetMaxNoGravityRangeOverride(ShootID, OutRange) end

---@return number
function ASTExtraShootWeapon:GetLocalBulletLaunchtMaxNoGravityRange() end

---@return number
function ASTExtraShootWeapon:GetBulletGravityExtraOffset() end

function ASTExtraShootWeapon:OnRep_CurMaxBulletNumChange() end

function ASTExtraShootWeapon:OnRep_CurExtraMaxBulletNumChange() end

---@return ESTEWeaponShootType
function ASTExtraShootWeapon:GetOverrideDSVerifyShootType() end

---@return boolean
function ASTExtraShootWeapon:IsInPreFire() end

---@return boolean
function ASTExtraShootWeapon:CheckShootEnviroment() end

---@return boolean
function ASTExtraShootWeapon:CheckShootProjectileEnvironment() end

---@param AmmoID number
---@return boolean
function ASTExtraShootWeapon:CheckCanChangeAmmoType(AmmoID) end

---@return boolean
function ASTExtraShootWeapon:CheckChangeAmmoTypeEnvironment() end

---@return boolean
function ASTExtraShootWeapon:FireShot() end

---@return FItemDefineID
function ASTExtraShootWeapon:GetBulletTypeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetCurrentUsingAmmoID() end

---@return FItemDefineID
function ASTExtraShootWeapon:GetCurrentUsingAmmoDefineID() end

---@param OutList ULuaArrayHelper<number>
---@param bConsiderChosenAmmoIDAsFirst boolean
---@param bCallFomChangeAmmoUI boolean
function ASTExtraShootWeapon:GetWeaponAmmoIDListSortWithPriority(OutList, bConsiderChosenAmmoIDAsFirst, bCallFomChangeAmmoUI) end

---@param AmmoID number
---@return boolean
function ASTExtraShootWeapon:CheckWeaponSupportTargetAmmoID(AmmoID) end

---@return number
function ASTExtraShootWeapon:GetBurstShootBulletsNumFromEntity() end

function ASTExtraShootWeapon:GetCurrentClipAmmoData() end

---@param OutDataMap ULuaMapHelper<number, number>
function ASTExtraShootWeapon:GetCurrentClipAmmoDataMapOnServer(OutDataMap) end

---@param bConsiderExtraBulletNum boolean
---@return number
function ASTExtraShootWeapon:GetMaxBulletNumInOneClipFromEntity(bConsiderExtraBulletNum) end

---@return number
function ASTExtraShootWeapon:GetCDOMaxBulletNumInOneClipFromEntity() end

---@param BulletNum number
function ASTExtraShootWeapon:SetCDOMaxBulletNumInOneClip(BulletNum) end

---@return number
function ASTExtraShootWeapon:GetMaxBulletNumInBarrelFromEntity() end

---@return number
function ASTExtraShootWeapon:GetInitBulletNumInClipFromEntity() end

---@return boolean
function ASTExtraShootWeapon:GetClipHasInfiniteBulletsFromEntity() end

---@return boolean
function ASTExtraShootWeapon:GetWeaponHasInfiniteBulletsFromEntity() end

---@return boolean
function ASTExtraShootWeapon:GetAutoReloadFromEntity() end

---@return ESTEWeaponShootType
function ASTExtraShootWeapon:GetShootTypeFromEntity() end

---@return ESTEWeaponShootType
function ASTExtraShootWeapon:GetWeaponAnimFireMode() end

---@return boolean
function ASTExtraShootWeapon:IsCurShootTypeSingleShot() end

---@param shootType ESTEWeaponShootType
---@return boolean
function ASTExtraShootWeapon:SetCurShootType(shootType) end

---@param shootType ESTEWeaponShootType
---@return boolean
function ASTExtraShootWeapon:CheckShootTypeAvailable(shootType) end

function ASTExtraShootWeapon:CheckAndCorrectCurShootTypeOnServer() end

---@param InSpecialFixShootType ESTEWeaponShootType
function ASTExtraShootWeapon:SetSpecialFixShootTypeOnServer(InSpecialFixShootType) end

---@return EMultiFunctionalShootModeType
function ASTExtraShootWeapon:GetCurMultiFunctionalShootModeType() end

---@return number
function ASTExtraShootWeapon:GetShootIntervalFromEntity() end

---@return number
function ASTExtraShootWeapon:GetExtraShootIntervalFromEntity() end

---@return number
function ASTExtraShootWeapon:GetBurstShootIntervalFromEntity() end

---@return number
function ASTExtraShootWeapon:GetShootIntervalShowNumberFromEntity() end

---@return number
function ASTExtraShootWeapon:GetExtraShootIntervalShowNumberFromEntity() end

---@return number
function ASTExtraShootWeapon:GetBurstShootCDFromEntity() end

---@return number
function ASTExtraShootWeapon:GetPreFireTimeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetPostFireTimeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetPostReloadTimeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetReloadDurationStartFromEntity() end

---@return number
function ASTExtraShootWeapon:GetCurReloadTimeModifire() end

---@return number
function ASTExtraShootWeapon:GetReloadDurationLoopFromEntity() end

---@return number
function ASTExtraShootWeapon:GetCurReloadTime() end

---@param bForceTactical boolean
---@return number
function ASTExtraShootWeapon:GetWeaponReloadTimeNew(bForceTactical) end

---@param bForceTactical boolean
---@return number
function ASTExtraShootWeapon:GetWeaponReloadTimeInternal(bForceTactical) end

---@return number
function ASTExtraShootWeapon:GetWeaponMaxReloadTime() end

---@return number
function ASTExtraShootWeapon:GetReloadTimeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetReloadTacticalTimeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetTraceDistanceFromEntity() end

---@return number
function ASTExtraShootWeapon:GetMaxValidHitTimeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetReloadTimeMagOutFromEntity() end

---@return number
function ASTExtraShootWeapon:GetReloadAnimRateScaleModifier() end

---@return string
function ASTExtraShootWeapon:GetMuzzleSocketNameFromEntity() end

---@return string
function ASTExtraShootWeapon:GetSilencerSocketNameFromEntity() end

---@return string
function ASTExtraShootWeapon:GetFiringSuppressorSocketNameFromEntity() end

---@param bIsFPP boolean
---@return string
function ASTExtraShootWeapon:GetShellDropSocketNameFromEntity(bIsFPP) end

---@return string
function ASTExtraShootWeapon:GetVerifyScopeSocketNameFromEntity() end

---@return number
function ASTExtraShootWeapon:GetImpactEffectSkipDistanceFromEntity() end

---@return number
function ASTExtraShootWeapon:GetMaxImpactEffectSkipTimeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetBaseImpactDamageEntity() end

---@return number
function ASTExtraShootWeapon:GetMinimumImpactDamageFromEntity() end

---@param InBulletExplosionDamage number
---@return number
function ASTExtraShootWeapon:GetBaseExplosionDamageOverride(InBulletExplosionDamage) end

---@return number
function ASTExtraShootWeapon:GetBulletRangeEntity() end

---@return boolean
function ASTExtraShootWeapon:GetHasSingleFireMode() end

---@return boolean
function ASTExtraShootWeapon:GetHasAutoFireMode() end

---@return boolean
function ASTExtraShootWeapon:GetHasBurstFireMode() end

---@param InModifier number
---@return number
function ASTExtraShootWeapon:LimitReloadTimeModifier(InModifier) end

---@param InModifier number
---@return number
function ASTExtraShootWeapon:LimitShootIntervalModifier(InModifier) end

---@return EDualWeaponFireType
function ASTExtraShootWeapon:GetOverrideFireType() end

---@return EDualWeaponFireType
function ASTExtraShootWeapon:GetOverrideCachedLastFireType() end

---@param bTargetIsMonster boolean
---@return FWeaponHitPartCoff
function ASTExtraShootWeapon:GetHitPartCoff(bTargetIsMonster) end

---@param OutBreakThroughDampRateConfig ULuaMapHelper<EPhysicalSurface, number>
function ASTExtraShootWeapon:GetBreakThroughDampRateConfig(OutBreakThroughDampRateConfig) end

function ASTExtraShootWeapon:GetRangeAttenuateFromEntity() end

---@return number
function ASTExtraShootWeapon:GetAccessoriesVRecoilFactor() end

---@return number
function ASTExtraShootWeapon:GetAccessoriesVRecoilFactorModifier() end

---@return number
function ASTExtraShootWeapon:GetVerticalRecoilFactorModifier() end

---@return number
function ASTExtraShootWeapon:GetAccessoriesHRecoilFactor() end

---@return number
function ASTExtraShootWeapon:GetAccessoriesHRecoilFactorModifier() end

---@return number
function ASTExtraShootWeapon:GetAccessoriesAllRecoilFactorModifier() end

---@return number
function ASTExtraShootWeapon:GetHorizontalRecoilFactorModifier() end

---@return number
function ASTExtraShootWeapon:GetAccessoriesRecoveryFactor() end

---@return number
function ASTExtraShootWeapon:GetAccessoriesDeviationFactor() end

---@return number
function ASTExtraShootWeapon:GetAccessoriesFinalDeviationFactor() end

---@return number
function ASTExtraShootWeapon:GetDeviationFactorModifire() end

---@return number
function ASTExtraShootWeapon:GetGameDeviationFactor() end

---@return number
function ASTExtraShootWeapon:GetFinalDeviationFactor() end

---@return number
function ASTExtraShootWeapon:GetWeaponBodyLength() end

---@return FVector
function ASTExtraShootWeapon:GetDetectStartLocWeaponOffset() end

---@return number
function ASTExtraShootWeapon:GetCrossHairInitSize() end

---@return number
function ASTExtraShootWeapon:GetCrossHairBurstSpeed() end

---@return number
function ASTExtraShootWeapon:GetCrossHairBurstIncreaseSpeed() end

---@return number
function ASTExtraShootWeapon:GetFireSensitivePitchRate() end

---@return number
function ASTExtraShootWeapon:GetFireSensitiveYawRate() end

---@return boolean
function ASTExtraShootWeapon:GetADSManualStop() end

---@return ESightType
function ASTExtraShootWeapon:GetCurSightType() end

---@return number
function ASTExtraShootWeapon:GetRangeModifier() end

---@return number
function ASTExtraShootWeapon:GetExtraRangeModifier() end

---@return number
function ASTExtraShootWeapon:GetReferenceDistance() end

---@return number
function ASTExtraShootWeapon:GetDeviationBase() end

---@return boolean
function ASTExtraShootWeapon:CheckEnableFreeCameraShoot() end

---@return boolean
function ASTExtraShootWeapon:CheckCanReloadMagInOut() end

---@return number
function ASTExtraShootWeapon:GetCurReloadTimeMagIn() end

---@return number
function ASTExtraShootWeapon:GetCurReloadTimeMagOut() end

function ASTExtraShootWeapon:GetBulletTemplateFromEntity() end

---@param ShootID number
---@return number
function ASTExtraShootWeapon:GetBulletFireSpeedFromEntity(ShootID) end

---@param ShootID number
---@return number
function ASTExtraShootWeapon:GetMaxBulletFireSpeedFromEntity(ShootID) end

---@return number
function ASTExtraShootWeapon:GetMaxBulletFireSpeed() end

---@return number
function ASTExtraShootWeapon:GetBulletNumSingleShotFromEntity() end

---@return number
function ASTExtraShootWeapon:GetMaxProjectileBulletsNumSingleShotFromEntity() end

function ASTExtraShootWeapon:ClearBulletTemplate() end

---@param rot FRotator
function ASTExtraShootWeapon:RotateCrossHair(rot) end

function ASTExtraShootWeapon:RefreshCrossHairRotate() end

---@return number
function ASTExtraShootWeapon:GetMaxWeaponParamCacheNum() end

---@param ImpactResult FBulletHitInfoUploadData
function ASTExtraShootWeapon:ConditionalSpawnImpactEffect(ImpactResult) end

---@param HitRet FHitResult
function ASTExtraShootWeapon:ConditionalSpawnImpactEffectByHitResult(HitRet) end

---@param InImpactResult FBulletHitInfoUploadData
---@param OutImpactResult FBulletHitInfoUploadData
function ASTExtraShootWeapon:PreConditionalSpawnImpactEffect(InImpactResult, OutImpactResult) end

---@param Data FBulletHitInfoUploadData
---@param ShootData FLocalShootHitData
function ASTExtraShootWeapon:UploadHitData(Data, ShootData) end

function ASTExtraShootWeapon:FlushCacheHitInfioList() end

---@param Count number
function ASTExtraShootWeapon:RPC_Client_SetBulletNumInClip(Count) end

---@return number
function ASTExtraShootWeapon:GetShotGunPelletMaxOffsetDegree() end

---@param bShow boolean
function ASTExtraShootWeapon:ShowDefaultScope(bShow) end

---@return FTransform
function ASTExtraShootWeapon:GetScopeAimTransformCommon() end

---@param bSetZero boolean
function ASTExtraShootWeapon:ResetInitialBulletNumInClip(bSetZero) end

---@param NewComp UShootWeaponEntity
function ASTExtraShootWeapon:SetShootWeaponEntityComponent(NewComp) end

---@param NewComp USTExtraShootWeaponComponent
function ASTExtraShootWeapon:SetShootWeaponComponent(NewComp) end

---@param NewComp UCrossHairComponent
function ASTExtraShootWeapon:SetCrossHairComponent(NewComp) end

---@param Count number
---@param bMulticastToClient boolean
---@param bForceOwnerClientStopFire boolean
function ASTExtraShootWeapon:SetCurrentBulletNumInClipOnServer(Count, bMulticastToClient, bForceOwnerClientStopFire) end

---@param Count number
---@param bMulticastToClient boolean
---@param bForceOwnerClientStopFire boolean
---@param bUseNewClip boolean
function ASTExtraShootWeapon:SetCurrentBulletNumInClipOnServerNew(Count, bMulticastToClient, bForceOwnerClientStopFire, bUseNewClip) end

---@param Count number
---@param bMulticastToClient boolean
function ASTExtraShootWeapon:SetCurrentBulletNumInClipCanOverMaxBulletOnServer(Count, bMulticastToClient) end

---@param Count number
function ASTExtraShootWeapon:SetCurrentBulletNumInClipOnClient(Count) end

---@param bEnable boolean
function ASTExtraShootWeapon:EnableInfiniteBullets(bEnable) end

function ASTExtraShootWeapon:NotifyServerNoneShootAction() end

function ASTExtraShootWeapon:NotifyClientNoneShootAction() end

---@param method EWeaponReloadMethod
function ASTExtraShootWeapon:RPC_ClientSetCurReloadMethod(method) end

---@param shootType ESTEWeaponShootType
function ASTExtraShootWeapon:RPC_ClientSetCurShootType(shootType) end

---@param bIsAngledOpticalSight boolean
---@return number
function ASTExtraShootWeapon:GetScopeID(bIsAngledOpticalSight) end

---@return number
function ASTExtraShootWeapon:GetWeaponID() end

---@return number
function ASTExtraShootWeapon:GetInstanceIDint64() end

---@param Type EWeaponAttachmentSocketType
---@param bVisible boolean
function ASTExtraShootWeapon:ShowDefaultAttachmentComponentByType(Type, bVisible) end

function ASTExtraShootWeapon:SyncSimulatedClientsCurBullets() end

---@param bForceStopFire boolean
function ASTExtraShootWeapon:SyncOnwerClientsCurBullets(bForceStopFire) end

---@param bAdjustInfiniteBullets boolean
---@return number
function ASTExtraShootWeapon:GetAvailableBulletsNumInBackpack(bAdjustInfiniteBullets) end

---@param OutDataMap ULuaMapHelper<number, number>
---@param bAdjustInfiniteBullets boolean
function ASTExtraShootWeapon:GetAllAmmoAvailableNumInBackpack(OutDataMap, bAdjustInfiniteBullets) end

---@param bAdjustInfiniteBullets boolean
---@return number
function ASTExtraShootWeapon:GetAllAmmoAvailableCountInBackpack(bAdjustInfiniteBullets) end

---@param AmmoID number
---@param bAdjustInfiniteBullets boolean
---@return number
function ASTExtraShootWeapon:GetSpesificAmmoAvailableNumInBackpack(AmmoID, bAdjustInfiniteBullets) end

---@return number
function ASTExtraShootWeapon:GetAllWeaponAmmoTotalCountInBackpack() end

---@param BackpackComp UBackpackComponent
---@param ID FItemDefineID
---@param WantReloadNum number
---@return number
function ASTExtraShootWeapon:ReloadConsumeBulletNum(BackpackComp, ID, WantReloadNum) end

---@param OutDataMap ULuaMapHelper<number, number>
function ASTExtraShootWeapon:GetAmmoDataInAttachments(OutDataMap) end

---@return boolean
function ASTExtraShootWeapon:EnablePlayBoltAnimation() end

---@return number
function ASTExtraShootWeapon:GetWeaponEntityInitBulletInClip() end

---@return boolean
function ASTExtraShootWeapon:HaveWeaponSight() end

function ASTExtraShootWeapon:SwitchWeaponSight() end

---@return number
function ASTExtraShootWeapon:GetWeaponSightFovOffset() end

---@param OldVal number
function ASTExtraShootWeapon:OnRep_DynamicReloadType(OldVal) end

---@param Index number
function ASTExtraShootWeapon:SetMuzzleEffectTableIndexOnServer(Index) end

---@param Index number
function ASTExtraShootWeapon:SetReloadEffectTableIndexOnServer(Index) end

---@param Time number
---@return boolean
function ASTExtraShootWeapon:CheckWeaponHasFireShotInRecentTime(Time) end

function ASTExtraShootWeapon:OnPostEndFireState() end

---@param TargetState EFreshWeaponStateType
---@return number
function ASTExtraShootWeapon:GetWeaponStateDuration_Implementation(TargetState) end

---@param Count number
function ASTExtraShootWeapon:LocalSetBulletNumInClip(Count) end

---@param ShotNum number
function ASTExtraShootWeapon:LocalModifyDurabilityByShotNum(ShotNum) end

function ASTExtraShootWeapon:LocalUpdateDurability() end

---@param InCurDurability number
function ASTExtraShootWeapon:ModifyCurDurabilityOnServer(InCurDurability) end

function ASTExtraShootWeapon:OnPostDurabilityChange() end

function ASTExtraShootWeapon:HandleWeaponLowDurabilityModeChange() end

---@param InCurMaxDurability number
function ASTExtraShootWeapon:ModifyCurMaxDurabilityOnServer(InCurMaxDurability) end

---@param bEnable boolean
function ASTExtraShootWeapon:ToggleLowDurabilityAttrMoodifyListOnServer(bEnable) end

---@param MaskType ESkipBulletNumVerifyMaskType
---@param bVal boolean
function ASTExtraShootWeapon:SetSkipBulletNumVerifyMask(MaskType, bVal) end

---@param NewConfig FWeaponVisualBulletClientModeConfigNew
function ASTExtraShootWeapon:ModifyBulletTrackSkinConfigOnServer(NewConfig) end

---@param bSyncServerBulletNum boolean
---@param bSyncServerClipID boolean
function ASTExtraShootWeapon:ForceOwnerClientStopFire(bSyncServerBulletNum, bSyncServerClipID) end

function ASTExtraShootWeapon:RegisterNewHitEffectDataAsset() end

function ASTExtraShootWeapon:OnRep_CurBulletNumInClipOnSimulatedClients() end

function ASTExtraShootWeapon:OnRep_SwitchShootWeaponDataModeRepData() end

---@param BulletsNum number
---@param bConsiderLocalController boolean
---@param ClipID number
function ASTExtraShootWeapon:S2C_SyncAllClientsBulletsNum(BulletsNum, bConsiderLocalController, ClipID) end

---@param BulletsNum number
---@param ClipID number
---@param bForceStopFire boolean
function ASTExtraShootWeapon:S2C_SyncOwnerClientsBulletsNum(BulletsNum, ClipID, bForceStopFire) end

function ASTExtraShootWeapon:OnRep_OwnerClientCreateWeaponData() end

---@param OldVal number
function ASTExtraShootWeapon:OnRep_SpecialMuzzleEffectTableIndex(OldVal) end

---@param OldVal number
function ASTExtraShootWeapon:OnRep_SpecialReloadEffectTableIndex(OldVal) end

function ASTExtraShootWeapon:RequestChangeWeaponEffect() end

function ASTExtraShootWeapon:UpdateWeaponEffectOnPostAsyncLoad() end

---@param Type EChangeWeaponEffectType
function ASTExtraShootWeapon:ApplyWeaponEffect(Type) end

---@param Type EChangeWeaponEffectType
function ASTExtraShootWeapon:DoApplyWeaponEffect(Type) end

---@param Type EChangeWeaponEffectType
function ASTExtraShootWeapon:ApplyWeaponEffectInternal(Type) end

---<根据子弹上报记录修正CurBulletNumInClip
function ASTExtraShootWeapon:FixBulletNumWithValideData() end

---在切换扩容弹夹时是否刷新子弹数量 防止外挂刷出子弹 通过st.data.dirtyref控制是否调用FixBulletNumWithValideData
function ASTExtraShootWeapon:RefreshDirtyBullet() end

---@param bForceOwnerClientStopFire boolean
function ASTExtraShootWeapon:ForceSyncAllClientsBulletsNumOnServer(bForceOwnerClientStopFire) end

---@param OldVar number
function ASTExtraShootWeapon:OnRep_RepWeaponID(OldVar) end

function ASTExtraShootWeapon:OnRep_CurDurability() end

function ASTExtraShootWeapon:OnRep_CurMaxDurability() end

function ASTExtraShootWeapon:OnRep_FireShotNotCostBulletRate() end

function ASTExtraShootWeapon:OnRep_ShotNumSingleFire() end

function ASTExtraShootWeapon:OnRep_SupportAllAmmoType() end

---@param LastAttachmentID ULuaArrayHelper<number>
function ASTExtraShootWeapon:OnRep_AttachedAttachmentID(LastAttachmentID) end

function ASTExtraShootWeapon:OnRep_HitDataArray() end

---@param NewDataArray ULuaArrayHelper<FBulletHitInfoRepData>
function ASTExtraShootWeapon:UpdateHitDataArray(NewDataArray) end

function ASTExtraShootWeapon:UpdateOwnerHitDataArray() end

function ASTExtraShootWeapon:OnRepHitDataArrayInner() end

---@param ConsumeNum number
---@param bMulticastToClient boolean
function ASTExtraShootWeapon:ServerConsumeClipBullets(ConsumeNum, bMulticastToClient) end

---@return number
function ASTExtraShootWeapon:GetCurClipIDPure() end

function ASTExtraShootWeapon:RefreshCurClip() end

function ASTExtraShootWeapon:ToNextClip() end

---@return number
function ASTExtraShootWeapon:GetCurShootID() end

---@param InShootID number
function ASTExtraShootWeapon:SetCurShootID(InShootID) end

---@param type EWeaponAttachmentSocketType
function ASTExtraShootWeapon:HandleWeaponScopeEquiped(type) end

---@param type EWeaponAttachmentSocketType
function ASTExtraShootWeapon:HandleWeaponScopeUnEquiped(type) end

---@param AnimType EScopeMeshAnimType
function ASTExtraShootWeapon:RegisterScopeAnim(AnimType) end

---@param AnimType EScopeMeshAnimType
function ASTExtraShootWeapon:UnRegisterScopeAnim(AnimType) end

function ASTExtraShootWeapon:UnRegisterAllScopeAnim() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function ASTExtraShootWeapon:OnAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@param InCurBulletNum number
function ASTExtraShootWeapon:ForceSyncSimulatedClientsBulletsNumAfterReload(InCurBulletNum) end

---@return boolean
function ASTExtraShootWeapon:GetVisualBulletTrackEnabled() end

---@return FWeaponVisualBulletItemConfig
function ASTExtraShootWeapon:GetRealVisualBulletItemConfig() end

---@param ClientModeConfig FWeaponVisualBulletClientModeConfig
---@return FWeaponVisualBulletItemConfig
function ASTExtraShootWeapon:GetSpecificVisualBulletItemConfig(ClientModeConfig) end

function ASTExtraShootWeapon:UpdateComponentTick() end

---@return number
function ASTExtraShootWeapon:GetWeaponAimFOV() end

---@param RemainBulletNumToReload number
function ASTExtraShootWeapon:NotifyLeftLastBulletWhenReloadOneByOneOnServer(RemainBulletNumToReload) end

---@param Config FWeaponVisualBulletClientModeConfigNew
function ASTExtraShootWeapon:CheckAsyncLoadBulletTrackSkin(Config) end

---@return boolean
function ASTExtraShootWeapon:CheckShootVoiceDisValidOnReplay() end

---@param bEnable boolean
function ASTExtraShootWeapon:SetIsInfiniteBulletNum(bEnable) end

function ASTExtraShootWeapon:OnRep_bIsInfiniteBulletNum() end

---@param OldShootType ESTEWeaponShootType
function ASTExtraShootWeapon:OnRep_CurShootType(OldShootType) end

---@param OldShootType ESTEWeaponShootType
function ASTExtraShootWeapon:PostChangeShootType(OldShootType) end

function ASTExtraShootWeapon:OnRep_CurCurShootIntervalMode() end

---@param RemainBulletNumToReload number
function ASTExtraShootWeapon:RPC_ClientNotifyLeftLastBulletWhenReloadOneByOne(RemainBulletNumToReload) end

function ASTExtraShootWeapon:AsyncLoadBulletTrackSkinFinished() end

---@return boolean
function ASTExtraShootWeapon:IsDriverVehicleWeapon() end

---@return boolean
function ASTExtraShootWeapon:IsVehicleWeapon() end

---@param TargetLoc FVector
---@param OldStartLoc FVector
---@param NewStartLoc FVector
---@param BulletDir FVector
---@return FVector
function ASTExtraShootWeapon:GetVolleyShootDirection(TargetLoc, OldStartLoc, NewStartLoc, BulletDir) end

---@return boolean
function ASTExtraShootWeapon:IsEnableReloadADS() end

---@return boolean
function ASTExtraShootWeapon:CheckCanSimulateOBBulletTrack() end

---@param InitMuzle FVector
---@param InitMuzleDir FVector
---@param bNeedPullBackMuzzle boolean
---@return FVector
function ASTExtraShootWeapon:GetFinalBulletLaunchPos(InitMuzle, InitMuzleDir, bNeedPullBackMuzzle) end

---@param InLaunchLoc FVector
---@param InLanchRot FRotator
---@param OutLaunchLoc FVector
---@param OutLanchRot FRotator
function ASTExtraShootWeapon:OverrideBulletLaunchPosAndRot(InLaunchLoc, InLanchRot, OutLaunchLoc, OutLanchRot) end

---@return boolean
function ASTExtraShootWeapon:ShouldVerifyWeaponFireInfoTime() end

---@return boolean
function ASTExtraShootWeapon:ShouldVerifyProjectileShootInf() end

---@return boolean
function ASTExtraShootWeapon:ShouldVerifyShootProjectileBullet() end

---@return boolean
function ASTExtraShootWeapon:CheckServerNeedStopFire() end

---@param MuzzleWorldLoc FVector
---@param MuzzleWorldDir FVector
---@param bIsAngledSight boolean
---@return FVector
function ASTExtraShootWeapon:GetCurSightCameraSocketWorldLocByMuzzleTransOnDs(MuzzleWorldLoc, MuzzleWorldDir, bIsAngledSight) end

---@param OldSpecialFixShootType ESTEWeaponShootType
function ASTExtraShootWeapon:OnRep_SpecialFixShootType(OldSpecialFixShootType) end

---@return EShootWeaponShootMode
function ASTExtraShootWeapon:GetCurShootMode() end

---@return EShootWeaponShootMode
function ASTExtraShootWeapon:GetCurCustomShootMode() end

---@param InShootMode EShootWeaponShootMode
function ASTExtraShootWeapon:SetCurShootMode(InShootMode) end

---@param InShootMode EShootWeaponShootMode
function ASTExtraShootWeapon:SetCurCustomShootMode(InShootMode) end

function ASTExtraShootWeapon:OnRep_ShootMode() end

function ASTExtraShootWeapon:OnRep_CustomShootMode() end

function ASTExtraShootWeapon:CheckWeaponInitShootIDAndClipID() end

function ASTExtraShootWeapon:OnPostChangeAmmoType() end

function ASTExtraShootWeapon:ReturnAllBulletsToBackpack() end

---@param Count number
---@return number
function ASTExtraShootWeapon:ReturnBulletsToBackpack(Count) end

---@param ShootID number
function ASTExtraShootWeapon:GetDamageTypeClassByShootID(ShootID) end

---@return number
function ASTExtraShootWeapon:GetWeaponAngularVelocity() end

---@return number
function ASTExtraShootWeapon:GetWeaponAngularVelocityDeviationFactor() end

---@param ReloadType EWeaponReloadType
function ASTExtraShootWeapon:SetReloadTypeOnServer(ReloadType) end

---@param bWantsFolded boolean
---@return boolean
function ASTExtraShootWeapon:BlueprintShouldFoldHand(bWantsFolded) end

---@param ReloadNum number
function ASTExtraShootWeapon:PostReloadOnServer(ReloadNum) end

---@param ControllerShootNum number
---@param ClientShootID number
function ASTExtraShootWeapon:HandleStopFireOnServer(ControllerShootNum, ClientShootID) end

function ASTExtraShootWeapon:HandleResetInitBulletNumOnServer() end

---@param ShootID number
---@return number
function ASTExtraShootWeapon:GetAmmoIDByShootID(ShootID) end

---@return boolean
function ASTExtraShootWeapon:CheckCanReload() end

---@param bManual boolean
---@return boolean
function ASTExtraShootWeapon:ReloadStateCheck(bManual) end

---@return boolean
function ASTExtraShootWeapon:AutoFireCheck() end

---@param TargetNum number
function ASTExtraShootWeapon:ForceModifyCurrentBulletNumInClipOnServer(TargetNum) end

---@param NewBulletNum number
---@param NewClipID number
function ASTExtraShootWeapon:ForceModifyCurrentBulletNumInClipOnClient(NewBulletNum, NewClipID) end

---@param ShootRot FRotator
function ASTExtraShootWeapon:PreCalShootTargetLocation(ShootRot) end

---@param OutHit FHitResult
---@param OutRet FVector
---@return FVector
function ASTExtraShootWeapon:OverrideCalShootTargetLocation(OutHit, OutRet) end

---@param OutHit FHitResult
---@param OutRet FVector
function ASTExtraShootWeapon:PostCalShootTargetLocation(OutHit, OutRet) end

---@param InCostNum number
---@return number
function ASTExtraShootWeapon:OverrideFireShotCostBulletNum(InCostNum) end

---@param InDamage number
---@return number
function ASTExtraShootWeapon:OverrideDamageByDamageScaleOnServer(InDamage) end

---@param InDamage number
---@param Data FBulletHitInfoUploadData
---@return number
function ASTExtraShootWeapon:OverrideDamageByHitData(InDamage, Data) end

---@param Data FBulletHitInfoUploadData
---@return number
function ASTExtraShootWeapon:GetAmmoBreakthroughByHitData(Data) end

---@param bScopeIn boolean
---@return boolean
function ASTExtraShootWeapon:CustomShootAim(bScopeIn) end

---@return boolean
function ASTExtraShootWeapon:CheckCanPlayShellDropGroundSound() end

---@param PelletID number
---@return FCacheCriticalVerifyShootParam
function ASTExtraShootWeapon:AddCriticalVerifyShootParam(PelletID) end

---@param InParam FCacheCriticalVerifyShootParam
---@param OutParam FCacheCriticalVerifyShootParam
function ASTExtraShootWeapon:PreCacheCriticalVerifyShootParam(InParam, OutParam) end

---@param InParam FCacheCriticalVerifyBulletHitUploadParam
function ASTExtraShootWeapon:AddCriticalVerifyBulletHitUploadParam(InParam) end

---@param InParam FCacheCriticalVerifyBulletHitUploadParam
---@param OutParam FCacheCriticalVerifyBulletHitUploadParam
function ASTExtraShootWeapon:PreCacheCriticalVerifyBulletHitUploadParam(InParam, OutParam) end

---@param ShootID number
---@param LaunchPos FVector
function ASTExtraShootWeapon:PreHandleLocalNotifyServerShootProjectile(ShootID, LaunchPos) end

---@param ShootID number
---@param LaunchPos FVector
---@param LaunchRot FRotator
function ASTExtraShootWeapon:BPPreHandleLocalNotifyServerShootProjectile(ShootID, LaunchPos, LaunchRot) end

---@param ShootID number
---@param SeqFlag number
---@param FromRep number
---@param bFinalLaunch number
function ASTExtraShootWeapon:HandleLocaReceiveServerShootProjectile(ShootID, SeqFlag, FromRep, bFinalLaunch) end

---@param DeltaTime number
function ASTExtraShootWeapon:UpdateLocaShootProjectileCacheData(DeltaTime) end

---@param ReloadNum number
function ASTExtraShootWeapon:TriggerInstantReloadOnServer(ReloadNum) end

function ASTExtraShootWeapon:StopPlayingPullBoltSound() end

---@return number
function ASTExtraShootWeapon:GetCurCalcBulletShootPelletID() end

---@return boolean
function ASTExtraShootWeapon:IsShotGun() end

function ASTExtraShootWeapon:VerifyAndCorrectWeaponClipBulletNumOnServer() end

---@return boolean
function ASTExtraShootWeapon:GetDisableAimBtn() end

---@return boolean
function ASTExtraShootWeapon:IsAllowScopeIn() end

---@return boolean
function ASTExtraShootWeapon:CalculateShouldCostBulletOnFireShot() end

---@param IsEnable boolean
function ASTExtraShootWeapon:DEVEnableInfiniteClipBullets(IsEnable) end

---@param IsEnable boolean
function ASTExtraShootWeapon:DEVEnableInfiniteBackpackBullets(IsEnable) end

function ASTExtraShootWeapon:StartFireInUGC() end

function ASTExtraShootWeapon:StopFireInUGC() end

---@param IsEnable boolean
---@param bForce boolean
function ASTExtraShootWeapon:EnableInfiniteClipBullets(IsEnable, bForce) end

---@param IsEnable boolean
---@param bForce boolean
function ASTExtraShootWeapon:EnableInfiniteBackpackBullets(IsEnable, bForce) end

---@param MaxBulletNumInOneClip number
function ASTExtraShootWeapon:SetMaxBulletNumInOneClip(MaxBulletNumInOneClip) end

---@param bConsiderExtendMag boolean
function ASTExtraShootWeapon:RefreshtMaxBulletNumInOneClipOnServer(bConsiderExtendMag) end

---@param BulletFireSpeed number
function ASTExtraShootWeapon:SetBulletFireSpeed(BulletFireSpeed) end

---@return number
function ASTExtraShootWeapon:GetShootIntervalTime() end

---@param ShootIntervalTime number
function ASTExtraShootWeapon:SetShootIntervalTime(ShootIntervalTime) end

---@param BulletRange number
function ASTExtraShootWeapon:SetBulletRange(BulletRange) end

---@param BulletBaseDamage number
function ASTExtraShootWeapon:SetBulletBaseDamage(BulletBaseDamage) end

---@return number
function ASTExtraShootWeapon:GetBulletBaseDamage() end

---@param BulletMinimumDamage number
function ASTExtraShootWeapon:SetBulletMinimumDamage(BulletMinimumDamage) end

---@return number
function ASTExtraShootWeapon:GetBulletMinimumDamage() end

---@param BulletImpulse number
function ASTExtraShootWeapon:SetBulletImpulse(BulletImpulse) end

---@return number
function ASTExtraShootWeapon:GetBulletImpulse() end

---@param ReloadTime number
function ASTExtraShootWeapon:SetReloadTime(ReloadTime) end

---@return number
function ASTExtraShootWeapon:GetReloadTime() end

---@param TacticalReloadTime number
function ASTExtraShootWeapon:SetTacticalReloadTime(TacticalReloadTime) end

---@return number
function ASTExtraShootWeapon:GetTacticalReloadTime() end

---@param VerticalRecoilSacle number
function ASTExtraShootWeapon:SetVerticalRecoilSacle(VerticalRecoilSacle) end

---@param HorizontalRecoilSacle number
function ASTExtraShootWeapon:SetHorizontalRecoilSacle(HorizontalRecoilSacle) end

---@param DeviationSacle number
function ASTExtraShootWeapon:SetDeviationSacle(DeviationSacle) end

function ASTExtraShootWeapon:ResetShootLock() end

function ASTExtraShootWeapon:CheckAndSwitchToAvailableAmmo() end

---@param AttachmentID number
function ASTExtraShootWeapon:RPC_ServerEquipAttachment(AttachmentID) end

---@param AttachmentID number
function ASTExtraShootWeapon:RPC_ClientEquipAttachment(AttachmentID) end

---@param AttachmentID number
function ASTExtraShootWeapon:RPC_ServerUnequipAttachment(AttachmentID) end

---@param AttachmentID number
function ASTExtraShootWeapon:RPC_ClientUnequipAttachment(AttachmentID) end

---@return boolean
function ASTExtraShootWeapon:CheckStateSyncAvailable_Implementation() end

---@return FRotator
function ASTExtraShootWeapon:GetWeapomAngledSightRotator() end

---@return boolean
function ASTExtraShootWeapon:GetUseWeaponAngledSightRotator() end

---@return boolean
function ASTExtraShootWeapon:GetCanSwitchWeaponSight() end

---@return boolean
function ASTExtraShootWeapon:CheckBulletOnShoot() end

---@return boolean
function ASTExtraShootWeapon:ShouldCheckBulletOnShoot() end

---@return boolean
function ASTExtraShootWeapon:GetEnableWeapponReloadAnim() end

---@return boolean
function ASTExtraShootWeapon:IsWeaponEnableImproveBulletHitRepData() end

---@return boolean
function ASTExtraShootWeapon:CanCacheShootInput() end

---@return number
function ASTExtraShootWeapon:GetCacheShootInputIntervalFromEntity() end

function ASTExtraShootWeapon:CacheShootInput() end

---@return number
function ASTExtraShootWeapon:GetCacheShootInputDelayFireTimeFromEntity() end

---@return number
function ASTExtraShootWeapon:GetAnimationKickFromEntity() end

---@param BulletHitInfo FHitResult
---@param InHitBodyType EAvatarDamagePosition
---@return EAvatarDamagePosition
function ASTExtraShootWeapon:LocalModifyBulletHitBodyType(BulletHitInfo, InHitBodyType) end

---@param Count number
function ASTExtraShootWeapon:AddLocalForceHitHeadCount(Count) end

---@param AttributeContainer FGameAttributeContainer
function ASTExtraShootWeapon:SetupForceHitHeadProbAttr(AttributeContainer) end

---@param AddNum number
function ASTExtraShootWeapon:LocalAddBulletAndSyncDS(AddNum) end

---@param CurLevelTime number
function ASTExtraShootWeapon:RecordLastShootTime(CurLevelTime) end

---@param LastShootTime number
---@return number
function ASTExtraShootWeapon:GetLastShootTime(LastShootTime) end

---@param CurLevelTime number
function ASTExtraShootWeapon:RecordStartShootTime(CurLevelTime) end

---@param StartShootTime number
---@return number
function ASTExtraShootWeapon:GetStartShootTime(StartShootTime) end

function ASTExtraShootWeapon:AutoDoCachedShoot() end

function ASTExtraShootWeapon:DelayToEngineEndAutoDoCachedShoot() end

function ASTExtraShootWeapon:DelayToEngineEndStartFireFinished() end

function ASTExtraShootWeapon:DelayToEngineEndStartFire() end

---@return boolean
function ASTExtraShootWeapon:HasCustomBulletManager() end

---@param WantReloadBulletNum number
---@return number
function ASTExtraShootWeapon:CustomReloadConsumeBulletNum(WantReloadBulletNum) end

---@return number
function ASTExtraShootWeapon:GetAvailableBulletNumByCustomManager() end

---@param CurUsingWeapon ASTExtraWeapon
---@return boolean
function ASTExtraShootWeapon:ShouldForceTPP(CurUsingWeapon) end

function ASTExtraShootWeapon:OnWeaponStartFireSkillTrigger() end

function ASTExtraShootWeapon:OnWeaponStopFireSkillTrigger() end

---@param Character ASTExtraBaseCharacter
---@param ModifierName string
---@param bEnable boolean
---@param bForAI boolean
function ASTExtraShootWeapon:SetWeaponSpecialAttrModifierEnable(Character, ModifierName, bEnable, bForAI) end

---@param Character ASTExtraBaseCharacter
---@param InModifierName string
---@param bEnable boolean
---@param bForAI boolean
---@return string
function ASTExtraShootWeapon:OverrideWeaponSpecialAttrModifier(Character, InModifierName, bEnable, bForAI) end

---@param bNotify boolean
function ASTExtraShootWeapon:NotifyShootDelegateAsync(bNotify) end

---@param bNotify boolean
function ASTExtraShootWeapon:NotifyCurBulletChangeAsync(bNotify) end

---@param bNotify boolean
function ASTExtraShootWeapon:NotifyCurBarrelBulletChangeAsyncDelegate(bNotify) end

---@param bNotify boolean
function ASTExtraShootWeapon:NotifyCurBarrelBulletChangeWithWeaponAsync(bNotify) end

function ASTExtraShootWeapon:DoNotifyShootDelegateAsync() end

function ASTExtraShootWeapon:DoNotifyCurBulletChangeAsync() end

function ASTExtraShootWeapon:DoNotifyCurBarrelBulletChangeAsyncDelegate() end

function ASTExtraShootWeapon:DoNotifyCurBarrelBulletChangeWithWeaponAsync() end

function ASTExtraShootWeapon:OnWeaponAttrCheckToolLoaded() end

function ASTExtraShootWeapon:CheckAndTriggerAsyncDelegate() end

---@return boolean
function ASTExtraShootWeapon:ShouldOverrideWeaponSpecialAttrModify() end

---@return boolean
function ASTExtraShootWeapon:ShouldUseSegmentReload() end

function ASTExtraShootWeapon:OnRep_SegmentReloadIndex() end

---@param StartTime number
---@param NeedTime number
function ASTExtraShootWeapon:SetSegmentReloadCacheTime(StartTime, NeedTime) end

function ASTExtraShootWeapon:UpdateSegmentReloadProgressOnServer() end

---@return number
function ASTExtraShootWeapon:GetSegmentReloadStartRatio() end

---@param bNewFPP boolean
---@return number
function ASTExtraShootWeapon:GetSegmentReloadSwitchAnimRate(bNewFPP) end

---@return boolean
function ASTExtraShootWeapon:CheckSkipHandleFireShot() end
