---@meta

---@class EExtraWeaponUIType
---@field EWUT_None number @空手
---@field EWUT_MeleeWeapon number @近战武器
---@field EWUT_ShootWeapon number @射击武器
---@field EWUT_Greanade number @手雷
---@field EWUT_KeroseneFurnace number @煤油灯
---@field EWUT_Shiled number @盾牌
EExtraWeaponUIType = {}


---@class EWeaponOperationMode
---@field None number
---@field Shoot number
---@field Skill number
---@field Throw number
EWeaponOperationMode = {}


---@class FFastDrawIKOffsetConfig
---@field Transform FTransform
---@field InterpSpeed number
FFastDrawIKOffsetConfig = {}


---武器基类
---@class ASTExtraWeapon: AActor, IOwnerRelevancyDependencyInterface, IRegionObjectInterface, IActorHiddenInterface, IAttrModifyInterface, IActorFeedbackInterface, IGenericAbilityCarrierInterface, IGameAttributeCarrierInterface, ILogicEffectInterface, IUAESharedModuleInterface, IOwnershipChainInterface
---@field WeaponFeatureGameplayTags FGameplayTagContainer
---@field bIsAdditionalWeapon boolean
---@field AdditionalCooperateWeaponTypeList ULuaArrayHelper<EWeaponTypeNew>
---@field bEnableCooperateWithAdditionalWeapon boolean
---@field bForceUseOnSpawnedWithAdditionalWeapon boolean
---@field bUseCurAdditionalWeaponEnableReloadADS boolean
---@field PriorAttrModifyNameList ULuaArrayHelper<string>
---@field bEnableUnEquipOnDying boolean
---@field bIsPendingDisusing boolean
---@field bIsPendingDestroying boolean
---@field DefBackpackSlot ESurviveWeaponPropSlot
---@field WeaponPropReplaceConfig FWeaponPropReplaceConfig
---@field bHideOnUnEquip boolean
---@field bSkipBackpackItemRemoveCheck boolean
---@field StateLeakCheckConfigMap ULuaMapHelper<EFreshWeaponStateType, FWeaponStateLeakCheckConfigItem>
---@field StateLeakCheckInterval number
---@field StateLeakCheckReportColdTime number
---@field bEnableInspect boolean
---@field bEnableShowDefaultCorsshair boolean
---@field bDisableReplaceByOtherWeapon boolean
---@field DisableReplaceByOtherWeaponTipsID number
---@field bDisableInstantReloadOnPostUnEquipOnServer boolean
---@field bEnableFastDraw boolean
---@field bEnableOtherWeaponFastDraw boolean
---@field EnterFastDrawTime number
---@field LeaverFastDrawTime number
---@field FastDrawIKOffsetTransform FTransform
---@field FastDrawIKOffsetByPawnState ULuaMapHelper<EPawnState, FFastDrawIKOffsetConfig>
---@field bDisablePlaySwitchAnimReverse boolean
---@field DisablePlaySwitchAnimReverse_PlayerStateList ULuaArrayHelper<EPawnState>
---@field WeaponAttachMeshOffset FTransform
---@field WeaponAttachMeshOffset_NewFPP FTransform
---@field WeaponAttachOtherHandMeshOffset FTransform
---@field WeaponBackpackAttachOtherHandMeshOffset FTransform
---@field FPPWeaponOffset FTransform
---@field isFPPReloadUseAddSlot boolean
---@field FPPWeaponOffsetReload FTransform
---@field isFPPReloadUseSpecialOffset boolean
---@field FPPWeaponOffsetNonShooting FTransform
---@field FPPWeaponOffsetSprint FTransform
---@field TDModeFPPWeaponOffset FTransform
---@field TDModeFPPWeaponOffsetNonShooting FTransform
---@field TDModeFPPWeaponOffsetSprint FTransform
---@field bEnableForceOverrideCharacterAnim boolean
---@field bSkipNewFPPEnableTakeOutWeaponOpCheck boolean
---@field CrossHairType number
---@field CurWeaponPropReplaceKey string
---@field UnMatchStateSyncCheckInterval number
---@field bEnableOwnerPawnCompVisionOptimization boolean
---@field bEnableUnEquip boolean
---@field bIsEnableCheckStateSync boolean
---@field CurStateLeakCheckState EFreshWeaponStateType
---@field CurStateLeakCheckStateStartTime number
---@field CurStateLeakCheckTime number
---@field CurStateLeakCheckColdTime number
---@field CustomWeaponUseBtnImagePath string
---@field CanUsedCustomWeaponUseBtnImagePathInOB boolean
---@field ShadowWeaponSoftClass ASTExtraShadowWeapon
---@field bMainMeshHasLoaded boolean
---@field WeaponStaticMeshCompTag string
---@field WeaponEffectActionDelegate FWeaponEffectActionDelegate
---@field FireOneShotEffectDelegate FWeaponEffectActionDelegate
---@field OnShootWeaponChangeState FOnShootWeaponChangeStateDelegate
---@field OnWeaponChangeStateCommon FOnShootWeaponChangeStateDelegate
---@field PostWeaponItemDefineIDChangedDelegate FPostWeaponItemDefineIDChangedDelegate
---@field OnWeaponEventDelegate FWeaponEventDelegate
---@field OnWeaponDrawHUDDelegate FOnWeaponDrawHUD @Delegate 生效范围C 武器绘制HUD事件，传入武器的HUDWidiget， Canvas
---@field OnGetOwnerActorDelegate FOnGetOwnerActorDelegate
---@field OnDisconnectToClientOnServerDelegate FOnDisconnectToClientOnServerDelegate
---@field OnReconnectToClientOnServerDelegate FOnReconnectToClientOnServerDelegate
---@field OnRecoverOnClientDelegate FOnRecoverOnClientDelegate
---@field OnEquipOrUnEuipAttachmentDelegate FOnEquipOrUnEuipAttachmentDelegate
---@field OnPressingWeaponFuncBtnDelegate FOnPressingWeaponFuncBtnDelegate @Delegate 生效范围C 持续按键事件，有DeltaTime传入
---@field OnWeaponEquipOrUnequipDelegate FOnWeaponEquipOrUnequip
---@field UGC_AttachmentChangeDelegate FUGCOnEquipOrUnEuipAttachmentDelegate @武器配件装卸委托  生效范围SC  @return void  @param IsEquip 是否是装备配件  @param AttachHandleID 配件ID
---@field OnWeaponTriggerEventDelegate FOnWeaponTriggerEventDelegate @Delegate 生效范围C 武器按键事件
---@field OnWeaponBaseEquipDelegate FOnWeaponBaseEquipDelegate
---@field OnWeaponBaseUnEquipDelegate FOnWeaponBaseUnEquipDelegate
---@field OnAvatarMeshChangedFinishedDelegate FOnAvatarMeshChangedFinished
---@field OnWeaponAttachToBackpackDelegate FOnWeaponAttachToBackpackDelegate @Delegate 生效范围SC 武器挂背事件
---@field OnWeaponAttachedDelegate FOnWeaponAttachedDelegate
---@field OnWeaponCustomFloatDataChange FOnWeaponCustomFloatDataChange
---@field OnCustomWeaponUseBtnImagePathChangeDelegate FOnCustomWeaponUseBtnImagePathChange
---@field OnWeaponTakeDamage FOnWeaponTakeDamage
---@field OnDynamicCreateWeaponLogicCompDelegate FOnDynamicCreateWeaponLogicCompDelegate
---@field CurFreshWeaponState EFreshWeaponStateType
---@field CurPendingChangeFreshWeaponState EFreshWeaponStateType
---@field SyncFreshWeaponStateForRep EFreshWeaponStateType
---@field bNeedReconnct boolean
---@field bClientHasFinishedCteate boolean
---@field ReconnectOpIndex number
---@field WeaponReconnectReplicateData FWeaponReconnectReplicateData
---@field ClientScreenSize FVector2D
---@field UpdateOptimizationList ULuaArrayHelper<USceneComponent>
---@field bEnableCompUpdateOptimization boolean
---@field SpesificLogicGrenadeSlot string
---@field AutoClientStateSyncDisableList ULuaArrayHelper<EFreshWeaponStateType>
---@field OwnerClientCreateWeaponData FSpawnAndBackpackWeaponReplicatedData
---@field WeaponBeginPlayTimeStamp number
---@field bPlayBackpackToIdleAnimWhenGet boolean
---@field DefaultWeaponAnimLayer EAnimLayerType
---@field bEnableMeshUpdateAfterAttachToBack boolean
---@field RepWeaponID number
---@field ItemDefineID FItemDefineID
---@field LogicSocket string
---@field AttachSocket string
---@field SurviveWeaponPropSlot ESurviveWeaponPropSlot
---@field InitAttachmentEquipInfoRepList ULuaArrayHelper<FWeaponAttachmentEquipNotifyData>
---@field AllWeaponFunctionModuleTemplateList ULuaArrayHelper<UWeaponFunctionModuleBase>
---@field FunctionModuleTemplateList ULuaArrayHelper<UWeaponFunctionModuleBase>
---@field UGC_FunctionModuleTemplateList ULuaArrayHelper<UWeaponFunctionModuleBase>
---@field FunctionModuleList ULuaArrayHelper<UWeaponFunctionModuleBase>
---@field FunctionModuleListForRep ULuaArrayHelper<UWeaponFunctionModuleBase>
---@field LocalCacheFunctionModuleListForRep ULuaArrayHelper<UWeaponFunctionModuleBase>
---@field DynamicFunctionModuleListClass ULuaArrayHelper<UClass>
---@field bHasInitFunctionModule boolean
---@field bHasHistoryBackpacked boolean
---@field InitDoBackpackSlot ESurviveWeaponPropSlot
---@field PostFireHandledTime number
---@field WeaponOperationMode EWeaponOperationMode
---@field bIsOwnerPlayerAutonomousControlled boolean
---@field CurWeaponState EWeaponState
---@field bWaitForReconnect boolean
---@field SceneCompsUpdateOpCatche ULuaMapHelper<USceneComponent, FSceneCompUpdateOptimizationItem>
---@field UnMatchSyncStateCatche EFreshWeaponStateType
---@field UnMatchSyncStateInterval number
---@field bNeedHandleCreateOnOwnerClient boolean
---@field bOwnerClientCreateWeaponDataRepLock boolean
---@field AIMinAttackDist number
---@field AIMaxAttackDist number
---@field AIAttackDist number
---@field bEnableTickUnequipped boolean
---@field PCPropReplaceDataTablePath string
---@field AvatarMeshChangedWaitingGSInterval number
---@field bAvatarMeshChangedWaitingGS boolean
---@field AvatarMeshChangedWaitingGSHandle FTimerHandle
---@field OverrideGetWeaponMeshDelegate FOverrideGetWeaponMeshDelegate
---@field WeaponAvatarSyncData ULuaArrayHelper<FMeshSynData>
---@field SyncDataRepCounter number
---@field bSimulatedClientInitStateFlag boolean
---@field bNeedDisableWeaponAnim boolean
---@field RefreshWeaponAnimHandle FTimerHandle
---@field TickComponentList ULuaArrayHelper<UWeaponLogicBaseComponent>
---@field HandleExtraRelavanceCompList ULuaArrayHelper<UWeaponLogicBaseComponent>
---@field EnableWeaponReloadAvatar boolean
---@field bNeedHiddenWhenCameraModeChanged boolean
---@field CrossHairComps ULuaArrayHelper<UActorComponent>
---@field WeaponUIType EExtraWeaponUIType
---@field bForceHideBackpackWeaponBaseOnGameMode boolean
---@field bForceHideOnUnEquip boolean
---@field bForceHideOnNewFPP boolean
---@field CurWeaponUpdateFrequency number
---@field CurWeaponConsiderFrequency number
---@field BackWeaponUpdateFrequency number
---@field BackWeaponConsiderFrequency number
---@field bShouldSwitchBack boolean
---@field WeaponAttrModifyConfigList ULuaArrayHelper<FWeaponAttrModifyConfig>
---@field bChangeWeaponStateNotifyLock boolean
---@field LastWeaponStateCache EFreshWeaponStateType
---@field LastBeHitFeedbackTime number
---@field bForceUnequipBeforeDie boolean
---@field CheckVisibleFailedCnt number
---@field bAdditionalSwitch boolean
---@field bForceHideWeaponWhenInspect boolean
---@field WeaponGARepData FGenericAbilityRepData
---@field MountedGenericAbilities ULuaMapHelper<FGenericAbilityKey, UGenericAbilityBase>
---@field GenericAbilityTagQueryTable ULuaMapHelper<FGameplayTag, FGenericAbilityKeyArray>
---@field WeaponParamCacheBBList ULuaArrayHelper<UUAEBlackboard>
---@field WeaponParamCacheBBLoopIndex number
---@field WeaponSkinKillCount number
---@field ClientOld_WeaponSkinKillCount number
---@field BackAttachSocketOverride string
---@field BackAttachSocketOverride_Bag string
---@field bEnableFirstEquipAnim boolean
---@field bFirstEquipAnim boolean
---@field bSourceDropedByPlayer boolean
---@field UAEBlackboardParamList ULuaArrayHelper<FUAEBlackboardParameter>
---@field BulletHitEffectList ULuaArrayHelper<FBulletHitEffectWrapper>
---@field GameplayStateConfigMap ULuaMapHelper<FGameplayTag, FWeaponGameplayStateConfig>
---@field bEnableGameplayStateRepOp boolean
---@field IndexToGameplayStateMap ULuaMapHelper<number, FGameplayTag>
---@field GameplayStateToIndexMap ULuaMapHelper<FGameplayTag, number>
---@field OldWeaponStateToGameplayStateMap ULuaMapHelper<EFreshWeaponStateType, FGameplayTag>
---@field bEnableLocalReSimulateRepGameplayState boolean
---@field RepGameplayTag FGameplayTagContainer
---@field RepDisableGameplayTag FGameplayTagContainer
---@field RepGameplayTagIndexList ULuaArrayHelper<number>
---@field RepDisableGameplayTagIndexList ULuaArrayHelper<number>
---@field CurrentGameplayState FGameplayTagContainer
---@field DisableGameplayState FGameplayTagContainer
---@field CurrentLocalGameplayState FGameplayTagContainer
---@field WeaponSkillInstanceGameplayCacheMap ULuaMapHelper<UBasicPersistEffect, FGameplayTag>
---@field GameplayStateEnterHandle FOnWeaponGameplayStateChange
---@field GameplayStateLeaveHandle FOnWeaponGameplayStateChange
---@field GameplayStateInterruptHandle FOnWeaponGameplayStateChange
---@field GameplayStateStageChangeHandle FOnWeaponGameplayStateStageChange
---@field OnPostRepGameplayStateHandle FOnPostRepGameplayState
---@field bApplyOverrideActionSound boolean
---@field GameAttributeInitialConfig ULuaArrayHelper<FGameAttributeValueConfig>
---@field bBlockChannelVisibility boolean
---@field bForbidReconnectRecover boolean
---@field bDisableWeaponAttach boolean
---@field bUseGetOwnerRoleSafety boolean
---@field IsDyingUseWeaponAnimListLoaded boolean
---@field OnPostGetOwnerActorDelegate FOnPostGetOwnerActor
---@field GameplayTags FGameplayTagContainer
---@field WeaponSkillConfigs ULuaArrayHelper<FWeaponSkillConfig>
---@field CharacterAttrModifyConfigs ULuaArrayHelper<FWeaponAttributeModifyConfig>
---@field OnWeaponNewFPPMeshTickEnableChange FOnWeaponNewFPPMeshTickEnableChange
---@field bShouldReplicateAttachment boolean
---@field bShouldCheckWeaponItemValid boolean
---@field OnShadowWeaponPartsEquipEventDelegate FOnShadowWeaponPartsEquipEvent
---@field bNewFPPSocketIgnore boolean
---@field bNewFPPSocketIgnoreSize boolean
---@field DynamicVaultAnimDataAsset UVaultAnimDataAssetBase
---@field Priority number
---@field OnReplicatedWeaponFMChangedDelegate FOnReplicatedWeaponFMChangedDelegate
---@field OverrideWeaponEffectAssetDelegate FOverrideWeaponEffectAssetDelegate
---@field PostWeaponBackpackByPlayerStateDelegate FOnWeaponBackpackByPlayerStateDelegate
---@field bEnableAsyncInitFM boolean
local ASTExtraWeapon = {}

function ASTExtraWeapon:DoReponceWeaponAvatar() end

function ASTExtraWeapon:SpawnShadowWeapon() end

function ASTExtraWeapon:OnRep_AttachmentReplication() end

function ASTExtraWeapon:OnRep_InitAttachmentEquipInfoRepList() end

---@return EWeaponHoldType
function ASTExtraWeapon:GetWeaponHoldType() end

---@return EWeaponSingleHandHoldType
function ASTExtraWeapon:GetWeaponSingleHandHoldType() end

---@return EWeaponWeightType
function ASTExtraWeapon:GetWeaponWeightType() end

---@return EWeaponTypeNew
function ASTExtraWeapon:GetWeaponTypeNew() end

---@param Character ASTExtraCharacter
function ASTExtraWeapon:InitProxyByCharacter(Character) end

---@param OwnerTarget AActor
function ASTExtraWeapon:InitProxyBP(OwnerTarget) end

function ASTExtraWeapon:ResetProxy() end

function ASTExtraWeapon:InitFunctionModuleAsync() end

---@param ModuleClass UClass
function ASTExtraWeapon:AddDynamicFunctionModule(ModuleClass) end

---@param ModuleClass UClass
function ASTExtraWeapon:RemoveDynamicFunctionModule(ModuleClass) end

---获取所有指定类型的武器功能模块
---@param Subclass UWeaponFunctionModuleBase
---@param bSearchLocal boolean
---@param bSearchRep boolean
function ASTExtraWeapon:GetAllWeaponFunctionModuleByClass(Subclass, bSearchLocal, bSearchRep) end

---@param bNewHidden boolean
---@return boolean
function ASTExtraWeapon:ReceiveActorHiddenInGame(bNewHidden) end

---@param ID FItemDefineID
function ASTExtraWeapon:SetDefineID(ID) end

---@return boolean
function ASTExtraWeapon:LobbyUpdateMeshOnVisibilityChanged() end

---@return boolean
function ASTExtraWeapon:IsLobbyWeapon() end

---@return ESurviveWeaponPropSlot
function ASTExtraWeapon:GetWeaponSlot() end

function ASTExtraWeapon:GetWeaponState() end

---@return EObserverType
function ASTExtraWeapon:GetWeaponOwnerObserverType() end

---@return boolean
function ASTExtraWeapon:IsLocalOrSpectorPlayer() end

function ASTExtraWeapon:CheckReparentWeaponCustomMesh() end

function ASTExtraWeapon:ReAttachWeaponMeshWhenEquiped() end

---@param bOnlyAttach boolean
function ASTExtraWeapon:CheckAttachSocketAndReattach(bOnlyAttach) end

---@param flag ESwitchWeaponFlag
---@return boolean
function ASTExtraWeapon:CanSwitchToThisWeapon(flag) end

---@param Event EWeaponTriggerEvent
---@param EventData string
function ASTExtraWeapon:TriggerWeaponEvent(Event, EventData) end

---@return EWeaponOperationMode
function ASTExtraWeapon:GetWeaponOperationMode() end

---@param EventName string
function ASTExtraWeapon:NotifyWeaponEvent(EventName) end

---@param _bHidden boolean
function ASTExtraWeapon:RPC_Client_SetActorHiddenInGame(_bHidden) end

---@return boolean
function ASTExtraWeapon:NeedPut2BackWhenDisUse() end

---@param bEnable boolean
function ASTExtraWeapon:ToggoleOwnerClientCreateWeaponDataRepLock(bEnable) end

function ASTExtraWeapon:HandleWeaponAttachToBackpack() end

function ASTExtraWeapon:UpdateOwnerPlayerAutonomousControlled() end

---@return boolean
function ASTExtraWeapon:IsOwnerPlayerAutonomousControlled() end

---@return boolean
function ASTExtraWeapon:IsOwnerPlayerAutonomousControlledInner() end

---@return boolean
function ASTExtraWeapon:IsOwnerPlayerAutonomousControlledOrOB() end

---@return boolean
function ASTExtraWeapon:IsOwnerPlayerAutonomousControlledOrViewTarget() end

---@return boolean
function ASTExtraWeapon:IsOwnerPlayerSimulatedClient() end

---@param ReplayKey string
function ASTExtraWeapon:SetCurrentWeaponPropReplaceKey(ReplayKey) end

---@param PropName string
---@param DefVal number
---@return number
function ASTExtraWeapon:GetWeaponPropReplaceValueFloat(PropName, DefVal) end

---@param PropName string
---@param DefVal number
---@return number
function ASTExtraWeapon:GetWeaponPropReplaceValueInt(PropName, DefVal) end

---@param PropName string
---@param bDefVal boolean
---@return boolean
function ASTExtraWeapon:GetWeaponPropReplaceValueBool(PropName, bDefVal) end

---@param PropName string
---@param DefVal FVector
---@return FVector
function ASTExtraWeapon:GetWeaponPropReplaceValueVector(PropName, DefVal) end

---@param bShow boolean
function ASTExtraWeapon:ShowWeaponDefaultCrosshair(bShow) end

---@param PlayerController APlayerController
function ASTExtraWeapon:OnOwningCharacterBecomeViewTarget(PlayerController) end

function ASTExtraWeapon:OnPreBeginPlay() end

function ASTExtraWeapon:OnPreEndPlay() end

function ASTExtraWeapon:CheckAndUnequipWeapon() end

function ASTExtraWeapon:OnRep_SimulatedOwnerActor() end

function ASTExtraWeapon:OnRep_SimulatedOwnerPawn() end

function ASTExtraWeapon:OnRep_WeaponReconnectReplicateData() end

function ASTExtraWeapon:OnRep_WeaponReconnectReplicateDataBP() end

function ASTExtraWeapon:OnRep_OwnerClientCreateWeaponData() end

function ASTExtraWeapon:OnRep_bPlayBackpackToIdleAnimWhenGet() end

function ASTExtraWeapon:OnRep_ItemDefineID() end

function ASTExtraWeapon:OnRep_FunctionModuleListForRep() end

function ASTExtraWeapon:OnRep_InitDoBackpackSlot() end

---@param PC ASTExtraPlayerController
function ASTExtraWeapon:HandleReconnect(PC) end

---@param DeltaTime number
---@param ForceSync boolean
function ASTExtraWeapon:CheckStateSync(DeltaTime, ForceSync) end

function ASTExtraWeapon:UpdateCreateWeapon() end

function ASTExtraWeapon:UpdateReconnectWeapon() end

---@param DeltaTime number
function ASTExtraWeapon:WeaponStateLeakCheck(DeltaTime) end

---@param ConfigItem FWeaponStateLeakCheckConfigItem
---@return number
function ASTExtraWeapon:GetWeaponStateLeakCheckTimeLag(ConfigItem) end

---@param TargetState EFreshWeaponStateType
---@return number
function ASTExtraWeapon:GetWeaponStateDuration(TargetState) end

---@param RightState EFreshWeaponStateType
function ASTExtraWeapon:DSNotifyClientCorrectStateLeak(RightState) end

---@param OldVar number
function ASTExtraWeapon:OnRep_RepWeaponID(OldVar) end

---@param State EFreshWeaponStateType
function ASTExtraWeapon:SimulateOverrideSyncFreshWeaponStateForRepOnChangeState(State) end

---@param AttachMesh UMeshComponent
function ASTExtraWeapon:BPAttachMeshToSocket(AttachMesh) end

---@return string
function ASTExtraWeapon:GetWeaponAttachSocket() end

---@return string
function ASTExtraWeapon:GetWeaponAttachSocketOtherHand() end

---@return string
function ASTExtraWeapon:GetWeaponBackpackAttachSocketOtherHand() end

---@return boolean
function ASTExtraWeapon:GetEnableDoubleMesh() end

---@return string
function ASTExtraWeapon:GetWeaponCollapseSocket() end

function ASTExtraWeapon:OnPushTrigger() end

function ASTExtraWeapon:OnReleaseTrigger() end

---@param State EFreshWeaponStateType
---@param ConditionState EFreshWeaponStateType
function ASTExtraWeapon:NotifyServerChangeState(State, ConditionState) end

---@param Slot EWeaponComponentType
---@return FWeaponComponentItemData
function ASTExtraWeapon:GetComponentSlotTarget(Slot) end

---@param Slot EWeaponComponentType
---@return boolean
function ASTExtraWeapon:JudgeHasEquipedComponentSlot(Slot) end

---@param Slot EWeaponComponentType
---@return boolean
function ASTExtraWeapon:HasComponentSlot(Slot) end

---@param StateType EFreshWeaponStateType
function ASTExtraWeapon:ForceChangeAllClientWeaponStateOnServer(StateType) end

---@param StateType EFreshWeaponStateType
---@return boolean
function ASTExtraWeapon:ChangeSequenceState(StateType) end

---@param LastStateType EFreshWeaponStateType
function ASTExtraWeapon:ChangeSequenceStateInner(LastStateType) end

---@param InParam FChangeWeaponStateRPCParam
---@param State EFreshWeaponStateType
function ASTExtraWeapon:GenerateChangeWeaponStateParam(InParam, State) end

function ASTExtraWeapon:PostSendChangeWeaponStateRPCOnServer() end

---@param InParam FChangeWeaponStateRPCParam
---@param State EFreshWeaponStateType
function ASTExtraWeapon:OnReceiveChangeWeaponStateParam(InParam, State) end

---@return EAnimLayerType
function ASTExtraWeapon:GetWeaponAnimLayer() end

function ASTExtraWeapon:PlayLocalShellDropFX() end

---@param InPostFireHandledTime number
function ASTExtraWeapon:RPC_ClientSyncPostFireHandledTime(InPostFireHandledTime) end

---@param State EFreshWeaponStateType
---@param Param FChangeWeaponStateRPCParam
function ASTExtraWeapon:RPC_ClientChangeFreshWeaponState(State, Param) end

---@param Param FChangeWeaponStateRPCParam
---@param InShootType number
function ASTExtraWeapon:RPC_ClientStartFire(Param, InShootType) end

---@param shootType number
function ASTExtraWeapon:ReceiveClientStartFireShootType(shootType) end

---@param State EFreshWeaponStateType
function ASTExtraWeapon:RPC_OwnerClientSyncFreshWeaponStateForRep(State) end

---@return FItemDefineID
function ASTExtraWeapon:GetItemDefineID() end

---@param SocketType EWeaponAttachmentSocketType
---@return FItemDefineID
function ASTExtraWeapon:GetWeaponAttachmentIDBySocketType(SocketType) end

---@return string
function ASTExtraWeapon:GetWeaponName() end

---@return number
function ASTExtraWeapon:GetWeaponItemID() end

---@param NewComp UWeaponEntity
function ASTExtraWeapon:SetWeaponEntityComponent(NewComp) end

---@return string
function ASTExtraWeapon:GetOwnerName() end

---@return string
function ASTExtraWeapon:GetOwnerPlayerName() end

function ASTExtraWeapon:OnRep_AvatarMeshChanged() end

function ASTExtraWeapon:AsyncCheckAvatarPakWhenAvatarDataChange() end

---@param InEnabled boolean
function ASTExtraWeapon:SetWeaponMeshUpdateEnabled(InEnabled) end

---@param Time number
function ASTExtraWeapon:RefreshWeaponMainMeshUpdate(Time) end

---@param AttachmentHandle UBattleItemHandleBase
---@param bPutOn boolean
function ASTExtraWeapon:HandlePutOnOffAttachmentHandle(AttachmentHandle, bPutOn) end

---@param SocketType EWeaponAttachmentSocketType
---@return number
function ASTExtraWeapon:GetNetSyncTypeSpecificID(SocketType) end

---@param TeamID number
---@return FLinearColor
function ASTExtraWeapon:GetColorByTeamID(TeamID) end

function ASTExtraWeapon:ClearDettachAndAttachHandle() end

function ASTExtraWeapon:GetAvailableWeaponAttachment() end

---@return string
function ASTExtraWeapon:GetSKMeshPath() end

---@return boolean
function ASTExtraWeapon:WhetherCheckLockTakeOutWeapon() end

---@return string
function ASTExtraWeapon:GetStaticMeshPath() end

---@param ReconnectData FWeaponReconnectReplicateData
function ASTExtraWeapon:OnPostReconnect(ReconnectData) end

function ASTExtraWeapon:DettachWeaponForSomeTimeThenAttachBackFinish() end

function ASTExtraWeapon:DoDisableWeaponAnim() end

---@return boolean
function ASTExtraWeapon:GetIsEnableInspectInternal() end

---@param OwnerActor AActor
function ASTExtraWeapon:PostGetOwnerActor(OwnerActor) end

function ASTExtraWeapon:PostEquip() end

function ASTExtraWeapon:PostUnEquip() end

---@param bCastShadow boolean
---@param bCastHiddenShadow boolean
function ASTExtraWeapon:SetWeaponCastShadow(bCastShadow, bCastHiddenShadow) end

---@param bWithExtra boolean
---@param bWithExtraPart boolean
---@return string
function ASTExtraWeapon:GetWeaponDetailInfo(bWithExtra, bWithExtraPart) end

---@param Weapon ASTExtraWeapon
---@param bWithExtra boolean
---@param bWithExtraPart boolean
---@return string
function ASTExtraWeapon:GetWeaponDetailInfoStatic(Weapon, bWithExtra, bWithExtraPart) end

---@return boolean
function ASTExtraWeapon:CheckWeaponMainMeshLoadFinished() end

---@param bEquip boolean
function ASTExtraWeapon:WeaponTickOptimizationOnEquipOrUnEquip(bEquip) end

function ASTExtraWeapon:OnRep_SyncFreshWeaponStateForRep() end

---@param DefineID FItemDefineID
---@param BattleItemHandle UBattleItemHandleBase
function ASTExtraWeapon:CreateSkillHandleCompAfterCreateWeaponHandleCallback(DefineID, BattleItemHandle) end

---@param SlotID number
---@param IsEquipped boolean
function ASTExtraWeapon:OnWeaponMeshLoadFinished(SlotID, IsEquipped) end

---@param SlotID number
---@param IsEquipped boolean
function ASTExtraWeapon:OnAdjustWeaponAttachTrans(SlotID, IsEquipped) end

---@param SlotID number
---@param IsEquipped boolean
---@param bOffHand boolean
function ASTExtraWeapon:RefreshAdjustWeaponAttachTrans(SlotID, IsEquipped, bOffHand) end

---@return number
function ASTExtraWeapon:GetWeaponSkillIndex() end

---@param AttrModifierID string
---@param Enable boolean
function ASTExtraWeapon:SetWeaponAttrModifierEnable(AttrModifierID, Enable) end

function ASTExtraWeapon:ClearWeaponAttrModifier() end

---@param AttrModifierID string
---@param bNewEnable boolean
---@return boolean
function ASTExtraWeapon:BlueprintSetWeaponAttrModifierEnable(AttrModifierID, bNewEnable) end

---@param ModifierNames ULuaArrayHelper<string>
---@param bNewEnable boolean
function ASTExtraWeapon:SetCharacterAttrModifiers(ModifierNames, bNewEnable) end

---@param ModifierName string
---@param IsEnable boolean
function ASTExtraWeapon:SetCharacterAttrModifier(ModifierName, IsEnable) end

---@return boolean
function ASTExtraWeapon:BlueprintClearWeaponAttrModifier() end

---@param TargetWeapon ASTExtraWeapon
---@return boolean
function ASTExtraWeapon:CheckCanCooperateAsAdditionalWeaponWithTargetWeapon(TargetWeapon) end

---@param TargetWeapon ASTExtraWeapon
---@return boolean
function ASTExtraWeapon:CheckCanCooperateAsFastDrawWeaponWithTargetWeapon(TargetWeapon) end

---@param bWantEquip boolean
---@param AnimLength number
---@param bNewFPP boolean
---@return number
function ASTExtraWeapon:GetSwitchAnimPlayRate(bWantEquip, AnimLength, bNewFPP) end

---@param WithAnimAdjust boolean
---@return number
function ASTExtraWeapon:GetSwitchFromBackpackToIdleTime(WithAnimAdjust) end

---@param WithAnimAdjust boolean
---@return number
function ASTExtraWeapon:GetSwitchFromIdleToBackpackTime(WithAnimAdjust) end

---@param WithAnimAdjust boolean
---@return number
function ASTExtraWeapon:GetSwitchFromBackpackToIdleTimeAsAdditionalTarget(WithAnimAdjust) end

function ASTExtraWeapon:OnChangeWeaponStateNotify() end

---@param bLock boolean
---@param bFlushNotify boolean
function ASTExtraWeapon:LockChangeWeaponStateNotify(bLock, bFlushNotify) end

function ASTExtraWeapon:ServerDoRepOnce_CreateWeaponData() end

---@return boolean
function ASTExtraWeapon:ShouldSyncOnwerAccPrepareState() end

---@param Info string
---@return number
function ASTExtraWeapon:GetWeaponCustomFloatData(Info) end

---@return boolean
function ASTExtraWeapon:IsWeaponOwnerMLAI() end

---@return boolean
function ASTExtraWeapon:IsWeaponOwnerAI() end

---@return boolean
function ASTExtraWeapon:IsWeaponOwnerPartnerAI() end

---@return boolean
function ASTExtraWeapon:CheckNeedDestroyWeaponWhenDisuseOnServer() end

---@param InHitTriggerActor AActor
---@return boolean
function ASTExtraWeapon:BP_IsNeedBeHitFeedback(InHitTriggerActor) end

---@param InHitTriggerActor AActor
---@param InFeedbackItemID number
function ASTExtraWeapon:BP_TriggerBeHitFeedback(InHitTriggerActor, InFeedbackItemID) end

---@return boolean
function ASTExtraWeapon:ShouldReceiveRPCState() end

---@param bLock boolean
function ASTExtraWeapon:ToggleHiddenDebugStackLock(bLock) end

---@param bCallFromDSOnly boolean
---@return boolean
function ASTExtraWeapon:CheckEnableOnSwitch(bCallFromDSOnly) end

---@param Reason EBattleItemDisuseReason
function ASTExtraWeapon:DisuseAllWeaponAttachmentsOnServer(Reason) end

---@param ParentClass UClass
function ASTExtraWeapon:GetWeaponAbilityHandleByParentClass(ParentClass) end

function ASTExtraWeapon:ClearCompLogic_NoUse() end

---@param AdditionalSwitch boolean
function ASTExtraWeapon:RPC_ClientChangeAdditionalSwitch(AdditionalSwitch) end

---@param VaultKey string
---@return boolean
function ASTExtraWeapon:IsEnableVaultHolding(VaultKey) end

---@param Height number
---@return boolean
function ASTExtraWeapon:IsEnableVaultHoldingByHeight(Height) end

---@param DataName string
---@param DataValue number
function ASTExtraWeapon:NotifyWeaponCustomFloatDataChange(DataName, DataValue) end

---@return boolean
function ASTExtraWeapon:IsInspectingWeapon() end

---@param TargetSlot ESurviveWeaponPropSlot
function ASTExtraWeapon:OnUpdateWeaponGAs(TargetSlot) end

function ASTExtraWeapon:OnRep_WeaponGARepData() end

function ASTExtraWeapon:WeaponUpdateGARepData() end

---@param IsVisible boolean
---@param MaskValue number
function ASTExtraWeapon:SetAvatarAndOuterVisiblity(IsVisible, MaskValue) end

---@return boolean
function ASTExtraWeapon:CheckStateSyncAvailable() end

---@param idle UAnimSequence
function ASTExtraWeapon:SetAnimIdle(idle) end

---@param ishold boolean
function ASTExtraWeapon:SetIsHoldByChracter(ishold) end

---@return boolean
function ASTExtraWeapon:IsHoldByChracter() end

---@return number
function ASTExtraWeapon:GetMaxWeaponParamCacheNum() end

---@return boolean
function ASTExtraWeapon:IsOnwerPlayerHasDynamicMoveBase() end

---@return boolean
function ASTExtraWeapon:IsOnwerPlayerDynamicMoveBaseMoving() end

function ASTExtraWeapon:OnRep_WeaponSkinKillCount() end

function ASTExtraWeapon:RevertWeaponMeshAbsoluteOp() end

function ASTExtraWeapon:OnRep_SourceDropedByPlayer() end

---@param Path string
function ASTExtraWeapon:SetCustomWeaponUseBtnImagePath(Path) end

---@return boolean
function ASTExtraWeapon:GetEnableGameplayStateRepOp() end

---@param GameplayState FGameplayTag
---@return boolean
function ASTExtraWeapon:EnterGameplayState(GameplayState) end

---@param GameplayState FGameplayTag
---@return boolean
function ASTExtraWeapon:LeaveGameplayState(GameplayState) end

---@param GameplayState FGameplayTag
---@return boolean
function ASTExtraWeapon:InterruptGameplayState(GameplayState) end

function ASTExtraWeapon:InterruptAllGameplayState() end

---@param GameplayState FGameplayTag
---@return boolean
function ASTExtraWeapon:IsGameplayStateDisabled(GameplayState) end

---@param GameplayState FGameplayTag
---@return boolean
function ASTExtraWeapon:AllowGameplayState(GameplayState) end

---@param GameplayState FGameplayTag
---@return boolean
function ASTExtraWeapon:HasGameplayState(GameplayState) end

---@param GameplayState FGameplayTag
---@param bNewDisabled boolean
function ASTExtraWeapon:SetGameplayStateDisabled(GameplayState, bNewDisabled) end

function ASTExtraWeapon:ClearGameplayStateDisabled() end

function ASTExtraWeapon:LocalClearAllGameplayState() end

function ASTExtraWeapon:LocalReSimulateRepGameplayState() end

function ASTExtraWeapon:ForceRefreshEffect() end

---@param GameplayState FGameplayTag
---@return boolean
function ASTExtraWeapon:GetIsNoRepLocalState(GameplayState) end

---@param GameplayState FGameplayTag
---@return boolean
function ASTExtraWeapon:OldWeaponStateEnterCheck(GameplayState) end

function ASTExtraWeapon:LogAllGameplayState() end

---@return ECharacterAnimType
function ASTExtraWeapon:GetCustomCharacterSwitchAnimTypeFromEntity() end

---@param PrevData FGameplayTagContainer
function ASTExtraWeapon:OnRep_RepGameplayTag(PrevData) end

---@param PrevData FGameplayTagContainer
function ASTExtraWeapon:OnRep_RepDisableGameplayTag(PrevData) end

---@param PrevData ULuaArrayHelper<number>
function ASTExtraWeapon:OnRep_RepGameplayTagIndexList(PrevData) end

---@param PrevData ULuaArrayHelper<number>
function ASTExtraWeapon:OnRep_RepDisableGameplayTagIndexList(PrevData) end

---@param GS ASTExtraGameStateBase
function ASTExtraWeapon:HandleGameStateBeginPlay(GS) end

---@return boolean
function ASTExtraWeapon:CanBlockDamage() end

---@param Damage number
---@param DamageType number
---@param DamageApplierLoc FVector
---@param ValidDis number
---@return number
function ASTExtraWeapon:BlockDamageAmount(Damage, DamageType, DamageApplierLoc, ValidDis) end

---@return number
function ASTExtraWeapon:GetBlockMomentumScale() end

---@return ENetRole
function ASTExtraWeapon:GetOwnerRoleSafety() end

---@return boolean
function ASTExtraWeapon:ExclusiveHold() end

---@return boolean
function ASTExtraWeapon:CheckCanSwitchOnOwnerPawnDying() end

---@return boolean
function ASTExtraWeapon:CanUsingOnOwnerPawnDying() end

---@param Tag FGameplayTag
function ASTExtraWeapon:HandleDyingUsingEnableChanged(Tag) end

---@return boolean
function ASTExtraWeapon:CanUsingOnOwnerPawnSwimming() end

---@return FGameplayTagContainer
function ASTExtraWeapon:GetGameplayTags() end

---@return boolean
function ASTExtraWeapon:ShouldPlayTurningAnim() end

function ASTExtraWeapon:RefreshWeaponMeshPCShadowConfig() end

---@param InItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
function ASTExtraWeapon:OnPostItemHandleListLoadedFinished(InItemHandleList) end

function ASTExtraWeapon:OnVaultAnimDataAssetLoaded() end

---@param InAsset UObject
function ASTExtraWeapon:SetOverrideWeaponEffectAsset(InAsset) end

---@param CopyFromSocketName string
---@param DropDownInitVelocity FVector
function ASTExtraWeapon:TriggerMagDropDownExt(CopyFromSocketName, DropDownInitVelocity) end

---@param AmmoNum number
function ASTExtraWeapon:TriggerRefreshGunAmmo(AmmoNum) end

---@return boolean
function ASTExtraWeapon:ShouldConsiderSpecialPickUpAnim() end

---@return boolean
function ASTExtraWeapon:GetEnableScopeJumpNewFPP() end

---@param bCheckVehicle boolean
---@return boolean
function ASTExtraWeapon:CheckCanDriverUsing(bCheckVehicle) end

function ASTExtraWeapon:OnFixAvatarSightMeshError() end
