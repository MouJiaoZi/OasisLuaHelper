---@meta

---枪械声音，当前各种音效类型配在枪上，做枚举与之对应，改动目前最小化，所有枪械无需再重新配置
---@class EShootWeaponSound
---@field LoadBulletSound number
---@field ChangeMagazineSound number
---@field MagINSound number
---@field MagOUTSound number
---@field PullBoltSound number
EShootWeaponSound = {}


---@class EShootWeaponFX
---@field ShellDropFX number
EShootWeaponFX = {}


---@class EHitPartJugementType
---@field HitPos number
---@field HitBone number
EHitPartJugementType = {}


---@class FOnPostLocalEquipWeaponEvent : ULuaMulticastDelegate
FOnPostLocalEquipWeaponEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsEquip: boolean, SelfRef: AActor, Weapon: ASTExtraWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostLocalEquipWeaponEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function FOnPostLocalEquipWeaponEvent:Broadcast(IsEquip, SelfRef, Weapon) end


---@class FOnWeaponEquipmentUpdate : ULuaMulticastDelegate
FOnWeaponEquipmentUpdate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeaponEquipmentUpdate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef AActor
function FOnWeaponEquipmentUpdate:Broadcast(SelfRef) end


---@class IWeaponOwnerInterface
IWeaponOwnerInterface = {}

---@param InVehicleWeapon ASTExtraShootWeapon
---@param IsServerCall boolean
function IWeaponOwnerInterface:SetTemporaryWeapon(InVehicleWeapon, IsServerCall) end

---@param BurstShootBulletsLimit number
---@param BurstShootTimeLimit number
---@param ShootMode EShootWeaponShootMode
---@param SimpleShootTarget FVector
function IWeaponOwnerInterface:AIStartFireOnServer(BurstShootBulletsLimit, BurstShootTimeLimit, ShootMode, SimpleShootTarget) end

function IWeaponOwnerInterface:StartFireSimple() end

---@param BurstShootBulletsLimit number
---@param BurstShootTimeLimit number
---@param ShootMode EShootWeaponShootMode
---@param SimpleShootTarget FVector
---@param bFromFrameEnd boolean
function IWeaponOwnerInterface:StartFire(BurstShootBulletsLimit, BurstShootTimeLimit, ShootMode, SimpleShootTarget, bFromFrameEnd) end

function IWeaponOwnerInterface:StopFire() end

---@return boolean
function IWeaponOwnerInterface:ReloadCurrentWeapon() end

---@param reloadMethod EWeaponReloadMethod
function IWeaponOwnerInterface:SetReloadMethod(reloadMethod) end

function IWeaponOwnerInterface:HidePlayerMagOnGunReload() end

---@return boolean
function IWeaponOwnerInterface:ReloadWeaponFilter() end

---@param Weapon ASTExtraWeapon
---@param slot ESurviveWeaponPropSlot
function IWeaponOwnerInterface:LocalEquipWeapon(Weapon, slot) end

---@param Weapon ASTExtraWeapon
function IWeaponOwnerInterface:LocalUnEquipWeapon(Weapon) end

function IWeaponOwnerInterface:OnWeaponEquipmentUpdate() end

function IWeaponOwnerInterface:OnDropCurrentWeaponStart() end

function IWeaponOwnerInterface:OnDropCurrentWeaponFinished() end

---@param ShootWeapon ASTExtraShootWeapon
---@param Reason EBattleItemDropReason
function IWeaponOwnerInterface:OnUnEquipWeaponWithParams(ShootWeapon, Reason) end

---@param ShootWeapon ASTExtraShootWeapon
function IWeaponOwnerInterface:OnUnEquipCurrentWeapon(ShootWeapon) end

---@param Weapon ASTExtraWeapon
---@return USkeletalMeshComponent
function IWeaponOwnerInterface:GetWeaponAttachMesh(Weapon) end

---@param Weapon ASTExtraWeapon
---@return UMeshComponent
function IWeaponOwnerInterface:GetWeaponAttachMeshCommon(Weapon) end

---@return UUAECharAnimListCompBase
function IWeaponOwnerInterface:GetCharacterAnimComponent() end

---@param CompTagName string
---@return UUAECharAnimListCompBase
function IWeaponOwnerInterface:GetSpecificCharAnimComponent(CompTagName) end

---@param WeaponSound UAkAudioEvent
---@return number
function IWeaponOwnerInterface:PlayWeaponSound(WeaponSound) end

---@param StopEventID number
function IWeaponOwnerInterface:StopWeaponSound(StopEventID) end

---@param WeapFXType EShootWeaponFX
function IWeaponOwnerInterface:PlayWeaponFX(WeapFXType) end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param ignoreState boolean
---@param bAllowSwitch boolean
---@param SwitchWeaponFlag number
function IWeaponOwnerInterface:SwitchWeaponBySlot(Slot, bUseAnimation, bForceFinishPreviousSwitch, ignoreState, bAllowSwitch, SwitchWeaponFlag) end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param SwitchWeaponFlag number
function IWeaponOwnerInterface:ForceSwitchWeaponBySlotOnServer(Slot, bUseAnimation, SwitchWeaponFlag) end

---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param SwitchWeaponFlag number
function IWeaponOwnerInterface:SwitchToLastWeapon(bUseAnimation, bForceFinishPreviousSwitch, SwitchWeaponFlag) end

function IWeaponOwnerInterface:SwapMainWeapon() end

---@return boolean
function IWeaponOwnerInterface:IsSwappingMainWeapon() end

---@param Template ASTExtraWeapon
---@param ID FItemDefineID
---@param LogicSocket string
---@param bAutoUse boolean
---@param AdditionalData FSpawnWeaponAdditionalData
---@param bResetBulletNum boolean
---@return ASTExtraWeapon
function IWeaponOwnerInterface:SpawnAndBackpackWeaponOnServer(Template, ID, LogicSocket, bAutoUse, AdditionalData, bResetBulletNum) end

---@param WeaponID FItemDefineID
---@param SpawnWeaponAdditionalData FSpawnWeaponAdditionalData
function IWeaponOwnerInterface:CollectBulletTrackSkinDataOnServerBeforeSpawnWeapon(WeaponID, SpawnWeaponAdditionalData) end

function IWeaponOwnerInterface:ForceDestroyWeaponInventoryAndClearData() end

---@param Slot ESurviveWeaponPropSlot
---@param bEnableBroadcast boolean
---@return boolean
function IWeaponOwnerInterface:DestroyWeaponOnServerByPropSlot(Slot, bEnableBroadcast) end

---@param LogicSocket string
---@param bEnableBroadcast boolean
---@return boolean
function IWeaponOwnerInterface:DestroyWeaponOnServer(LogicSocket, bEnableBroadcast) end

---@return boolean
function IWeaponOwnerInterface:IsInFreeCameraView() end

---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param SwitchWeaponFlag number
function IWeaponOwnerInterface:SwitchToLastDiffSlotWeapon(bUseAnimation, bForceFinishPreviousSwitch, SwitchWeaponFlag) end

---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param SwitchWeaponFlag number
---@param bTryFindOtherSlot boolean
function IWeaponOwnerInterface:SwitchToLastNoneGrenageWeapon(bUseAnimation, bForceFinishPreviousSwitch, SwitchWeaponFlag, bTryFindOtherSlot) end

---@return boolean
function IWeaponOwnerInterface:IsLocalViewed() end

---@param OwnerShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
---@param bIgnoreShotGunMuzzleBased boolean
---@return FVector
function IWeaponOwnerInterface:CalShootTargetLocation(OwnerShootWeapon, ShootRot, bIgnoreShotGunMuzzleBased) end

---@param InHitPos FVector
---@param InImpactVec FVector
---@param InBoneName string
---@return EAvatarDamagePosition
function IWeaponOwnerInterface:GetHitBodyType(InHitPos, InImpactVec, InBoneName) end

---@param BornPos FVector
---@param EndPos FVector
---@param MeshComp UPrimitiveComponent
---@param BulletActor AActor
function IWeaponOwnerInterface:BulletLineTrace(BornPos, EndPos, MeshComp, BulletActor) end

---@return number
function IWeaponOwnerInterface:DistanceToLocalWeaponOwner() end

---@param AmmoID number
---@param TargetWeapon ASTExtraShootWeapon
function IWeaponOwnerInterface:SetWeaponShootAmmoType(AmmoID, TargetWeapon) end

---@param AmmoID number
---@param TargetWeapon ASTExtraShootWeapon
---@return boolean
function IWeaponOwnerInterface:CheckCanChangeAmmoType(AmmoID, TargetWeapon) end

---@param FireMode ESTEWeaponShootType
---@return ECharacterAnimType
function IWeaponOwnerInterface:ConvertWeaponFireModeToWeaponAnimType(FireMode) end

---@return ECharacterAnimType
function IWeaponOwnerInterface:GetWeaponFireAnimType() end

---@param WeaponSlot ESurviveWeaponPropSlot
---@return ECharacterAnimType
function IWeaponOwnerInterface:ConvertWeaponSlotToCharacterAnimType(WeaponSlot) end

---@return ESTEWeaponShootType
function IWeaponOwnerInterface:GetPlayerWeaponFireMode() end

---@return ESTEWeaponShootType
function IWeaponOwnerInterface:GetPlayerWeaponAnimFireMode() end

---@return boolean
function IWeaponOwnerInterface:IsMonster() end

---@param WeaponID FItemDefineID
---@param SocketType EWeaponAttachmentSocketType
---@return FItemDefineID
function IWeaponOwnerInterface:GetWeaponAttachmentIDBySocketType(WeaponID, SocketType) end

---@param WeaponID FItemDefineID
---@param OutList ULuaArrayHelper<FItemDefineID>
function IWeaponOwnerInterface:GetWeaponAllAttachmentIDList(WeaponID, OutList) end

---@return UBackpackComponent
function IWeaponOwnerInterface:GetWeaponOwnerBackpackComponent() end

---@return boolean
function IWeaponOwnerInterface:IsGunADS() end

---@return EObserverType
function IWeaponOwnerInterface:GetObserverType() end

---@return boolean
function IWeaponOwnerInterface:CheckPickWeaponCanAutoUse() end

---@param ChangeSlot ESurviveWeaponPropSlot
---@param bChangeBack boolean
function IWeaponOwnerInterface:ChangeNormalWeaponSlotToShiftGrenadeSlot(ChangeSlot, bChangeBack) end

---@param Weapon ASTExtraWeapon
---@param Slot ESurviveWeaponPropSlot
---@param SwitchWeaponFlag number
---@return boolean
function IWeaponOwnerInterface:CheckCanUseAndEquipWeaponAfterSpawned(Weapon, Slot, SwitchWeaponFlag) end

---@param Weapon ASTExtraWeapon
---@return boolean
function IWeaponOwnerInterface:CheckWeaponEnableByPlayerState(Weapon) end

---@param Event EWeaponTriggerEvent
function IWeaponOwnerInterface:TriggerCurrentWeaponEvent(Event) end

---@param Param FAutoTriggerWeaponEventParam
---@param bClearAllOldAutoTriggerWeaponTasks boolean
function IWeaponOwnerInterface:PushAutoTriggerWeaponEventTaskWhenEquipWeapon(Param, bClearAllOldAutoTriggerWeaponTasks) end

---@param Handle UItemHandleBase
---@param Slot ESurviveWeaponPropSlot
---@return boolean
function IWeaponOwnerInterface:CanUseWeaponHandleOnServer(Handle, Slot) end

---@param bLock boolean
---@param LockKey string
---@param bForceClearAllKey boolean
function IWeaponOwnerInterface:SetTakeOutWeaponLockOnServer(bLock, LockKey, bForceClearAllKey) end

---@param LockTakeOutWeapon_WhitePropSlotList ULuaArrayHelper<ESurviveWeaponPropSlot>
function IWeaponOwnerInterface:SetTakeOutWeaponLockWhiteListOnServer(LockTakeOutWeapon_WhitePropSlotList) end

---@param LockTakeOutWeapon_WhiteWeaponIDList ULuaArrayHelper<number>
---@param WhiteListKey string
function IWeaponOwnerInterface:SetTakeOutWeaponLockWhiteWeaponIDListOnServer(LockTakeOutWeapon_WhiteWeaponIDList, WhiteListKey) end

---@param LockTakeOutWeapon_WhiteWeaponTypeList ULuaArrayHelper<EWeaponTypeNew>
function IWeaponOwnerInterface:SetTakeOutWeaponLockWhiteWeaponTypeListOnServer(LockTakeOutWeapon_WhiteWeaponTypeList) end

---@param PropSlot ESurviveWeaponPropSlot
function IWeaponOwnerInterface:CheckTakeOutWeaponLockOnServer(PropSlot) end

---@param Weapon ASTExtraShootWeapon
function IWeaponOwnerInterface:SwitchWeaponShootInterval(Weapon) end

---@param Weapon ASTExtraShootWeapon
---@param Mode EWeaponShootIntervalMode
---@param bClearIsPressingFireBtn boolean
function IWeaponOwnerInterface:SwitchWeaponShootIntervalMode(Weapon, Mode, bClearIsPressingFireBtn) end

---@param Type EBreakReloadType
---@return boolean
function IWeaponOwnerInterface:TryBreakReload(Type) end

---@return boolean
function IWeaponOwnerInterface:ShouldClearWeaponDelegatesOnRecycle() end

---@return number
function IWeaponOwnerInterface:GetRealNetCullDistanceSquared() end

---@return boolean
function IWeaponOwnerInterface:GetPlayerIsHandleInFold() end

---@return boolean
function IWeaponOwnerInterface:ShouldPlayFleshEffectOnDamage() end

---@param SuperAirDropType number
---@return boolean
function IWeaponOwnerInterface:CheckCanCallFlareGunSuperAirDrop(SuperAirDropType) end

---@param State EFreshWeaponStateType
---@param Weapon ASTExtraWeapon
---@param ConditionState EFreshWeaponStateType
function IWeaponOwnerInterface:NotifyServerChangeWeaponState(State, Weapon, ConditionState) end

---@return boolean
function IWeaponOwnerInterface:IsLocalAutonomousControlled() end

---@return boolean
function IWeaponOwnerInterface:IsLocalAutonomousControlledOrOB() end

---@return boolean
function IWeaponOwnerInterface:IsLocalAutonomousControlledOrViewTarget() end

---@param _FinalImpactResult FHitResult
---@return boolean
function IWeaponOwnerInterface:CheckDisableImpact(_FinalImpactResult) end

function IWeaponOwnerInterface:ChangeImpactEffectVolume() end

---@param ItemID number
---@param Times number
function IWeaponOwnerInterface:StatisticsReloadTime(ItemID, Times) end

---@param Weapon ASTExtraShootWeapon
function IWeaponOwnerInterface:PostChangeWeaponShootType(Weapon) end

function IWeaponOwnerInterface:WeaponOwnerInterfaceHandleRecycled() end

function IWeaponOwnerInterface:SaveWhetherIsUsingAdditionalWeapon() end

---@param CostNum number
---@param DamageScale number
---@param bEnable boolean
function IWeaponOwnerInterface:EnableFireShotMultiCostBulletsOnServer(CostNum, DamageScale, bEnable) end

---@param InCostNum number
---@return number
function IWeaponOwnerInterface:OverrideFireShotCostBulletNum(InCostNum) end

---@param InDamage number
---@return number
function IWeaponOwnerInterface:OverrideDamageByDamageScaleOnServer(InDamage) end

---@param DeltaTime number
function IWeaponOwnerInterface:UpdateTryingToFire(DeltaTime) end

---@param ID number
function IWeaponOwnerInterface:ClientDisplayGameTipWithMsgID(ID) end

---@return boolean
function IWeaponOwnerInterface:GetAllWeaponHasInfinitBackupBullets() end

function IWeaponOwnerInterface:InvalidateMoveCompBulletTrackVerifyShootFrame() end
