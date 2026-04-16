---@meta

---@class FDropGroundEffectInfo
---@field GroundEffectLifeSpan number
---@field EffectTransform FTransform
---@field GroundEffect UParticleSystem
---@field EffectPath string
---@field bShowGroundEffect boolean
---@field bUsePickUpSelfEffect boolean
---@field bEffectActive boolean
FDropGroundEffectInfo = {}


---@class FPickUpWrapperItem
---@field DefineID FItemDefineID
---@field Count number
---@field AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
---@field ParentIndex number
---@field ParentSideAssociationName string
---@field ItemInstanceID number
FPickUpWrapperItem = {}


---地面可拾取物类
---@class APickUpWrapperActor: AUAENetActor, IGeneratorActorInterface, IPickupInterface, IPickupCustomInterface, IObjectPoolInterface, IManagedActorInterface, IDropActorCurveInterface, IDropItemPerformanceInterface, ILuaInterface, IInteractorInterface, IScopeInteractionInterface
---@field bPickCheckDisUseCustomPickUpRadius boolean
---@field CustomPickUpRadius number
---@field CustomPickUpZLimit number
---@field bClientEnableMarkHasBeenPickedUp boolean
---@field IsDefineIDInitialOnly boolean
---@field bDestroyStaticMeshComponentDs boolean
---@field DefineID FItemDefineID @only for configuration in blueprint, not actually read during runtime
---@field Count number @only for configuration in blueprint, not actually read during runtime
---@field bHasBeenPickedUp boolean
---@field bDSPickUpFailed boolean
---@field bIsInBox boolean
---@field bIsInAirDropBox boolean
---@field bDropedByPlayer boolean
---@field OwnerName string
---@field OwnerUniqueID number
---@field CauserTeamID number
---@field NotAllowPlayerKey ULuaArrayHelper<number>
---@field NotAllowPickEndTime number
---@field KeyProtectEndTime number
---@field CareProtectItemSubID ULuaArrayHelper<number>
---@field LastDroppedTime number
---@field SavedAdditionalDataList ULuaArrayHelper<FBattleItemAdditionalData>
---@field bIsTrainingMode boolean
---@field TrainingModePickUpColdCD number
---@field bUseCustomTrainingModePickUpColdCD boolean
---@field bEnableTrainingModeRefresh boolean
---@field TrainingModeDropLifeTime number
---@field bEnableNewReplicationHiddenControl boolean
---@field bHiddenByPickUp boolean
---@field bUseRegionBasedNetConsideration number
---@field bForceRelevantForNetworkRepays number
---@field bOnRepCountInBP number
---@field PedestalClassPath string
---@field DefaultObjectPoolSize number
---@field DefaultObjectPoolCleanupTime number
---@field IsAdditionalDataInitialOnly boolean
---@field UITipsPostNameInfoID_PickUp number
---@field bPostNetChangeUIDirty boolean
---@field SpawnTime number
---@field bCanBePickedUp boolean
---@field BisUseOwnerCheck boolean
---@field BisUseOwnerByNotTeammateCheck boolean
---@field BisUseNotAllowCheck boolean
---@field OwnerPlayerKey number
---@field OwnerTeamID number
---@field NotOpenProtectTime number
---@field OpenProtectTime number
---@field BisIsOpenPropect boolean
---@field ProtectSetting FPickupProtectSetting
---@field ProtectType ULuaArrayHelper<EPickupWrapperProtectType>
---@field ProtectTypeTimerMap ULuaMapHelper<EPickupWrapperProtectType, FProtectTypeTimerInfo>
---@field OpenTimeProtectHandle FTimerHandle
---@field NotOpenTimeProtectHandle FTimerHandle
---@field ClientOwnerPlayerKeyChange FClientOwnerPlayerKeyChange
---@field ClientOwnerTeamIDChange FClientOwnerTeamIDChange
---@field ClientNotAllowPlayerKeyChange FClientNotAllowPlayerKeyChange
---@field ClientNotAllowPickEndTimeChange FClientNotAllowPickEndTimeChange
---@field ClientKeyProtectEndTimeChange FClientNotAllowPickEndTimeChange
---@field ClientPickUpProtectTypeChange FPickUpProtectTypeChangeDelegate
---@field PickUpItemFlowSourceType EPickUpItemFlowSourceType
---@field CheckMeshCullingDis number
---@field LightBeamConfig FSoftObjectPath
---@field LightBeamSpawnRelatedPosition FVector
---@field bRecycled boolean
---@field bBeenCarried boolean
---@field bApplyPickUpTrace boolean
---@field DropGroundEffectInfo FDropGroundEffectInfo
---@field bInitialShowGroundEffect boolean
---@field InitialShowGroundEffectTime number
---@field DropTrailEffectInfo FDropGroundEffectInfo
---@field UGC_PickUpWrapperHideDelegate FPickUpWrapperHide @生效范围:SC 可拾取道具隐藏事件委托 @param CurTime 当前时间
---@field UGC_PickUpWrapperShowDelegate FPickUpWrapperShow @生效范围:S 可拾取道具显示事件委托
---@field UGC_PickUpWrapperDestroyDelegate FPickUpWrapperDestroy @生效范围:SC 可拾取道具销毁事件委托
---@field OnPickUpWrapperRecycled FOnPickUpActorRecycleDelegate
---@field LightBeamLiftSpan number
---@field ClientSavedAdditionalDataListChangeDelegate FClientSavedAdditionalDataListChangeDelegate
---@field ServerSavedAdditionalDataListChangeDelegate FServerSavedAdditionalDataListChangeDelegate
---@field bUseDropCurve boolean
---@field DropGroupID number
---@field DropStartLocation FVector
---@field PerformanceInfo FDropItemPerformanceInfo
---@field bOnceRelevant boolean @Count not relevant for player pickup number. feishen, 20211018
---@field bNeedShowRareEff boolean
---@field SyncLoadRareEff boolean
---@field RareEffRelatedPosition FVector
---@field bForceHideRareLevelEffect boolean
---@field PickupAsyncReplicatedActorSpawnDistA number
---@field PickupAsyncReplicatedActorSpawnDistB number
---@field LastRareLevel number
---@field NewTrailEffect UParticleSystem
---@field NewGroundEffect UParticleSystem
---@field ShowTeammateForbidEndTime number
---@field PickUpGenerationDetail FPickUpGenerationDetail
---@field UGCItemInstanceDataReplicateComponentClass string
---@field RepNewLocationOnce FVector
---@field PickUpAction FInteractBehaviorWrapper
---@field NoSpawnGameModeStates ULuaArrayHelper<string>
local APickUpWrapperActor = {}

---@param Type EPickupWrapperProtectType
function APickUpWrapperActor:AddProtectType(Type) end

---@param Type EPickupWrapperProtectType
function APickUpWrapperActor:RemoveProtectType(Type) end

---@param Type EPickupWrapperProtectType
---@param Duration number
---@param bForceOverride boolean
function APickUpWrapperActor:AddProtectTypeWithTimer(Type, Duration, bForceOverride) end

---@param Type EPickupWrapperProtectType
function APickUpWrapperActor:RemoveProtectTypeWithTimer(Type) end

---@param Type EPickupWrapperProtectType
---@param OutRemainingTime number
---@return boolean
function APickUpWrapperActor:IsProtectTypeActive(Type, OutRemainingTime) end

function APickUpWrapperActor:ClearAllProtectTypeTimers() end

---@param Type EPickupWrapperProtectType
function APickUpWrapperActor:OnProtectTypeTimerExpired(Type) end

---@param Type EPickupWrapperProtectType
---@param Character ASTExtraBaseCharacter
---@param PickupWrapperProcect FPickupWrapperProcectBase
---@return boolean
function APickUpWrapperActor:CheckProtectType(Type, Character, PickupWrapperProcect) end

---@param ProtectTime number
function APickUpWrapperActor:SetKeyProtectEndTime(ProtectTime) end

---@return number
function APickUpWrapperActor:GetKeyProtectEndTime() end

function APickUpWrapperActor:BPOnRespawned() end

function APickUpWrapperActor:BPOnRecycled() end

---@return boolean
function APickUpWrapperActor:GetHasBeenPickedUp() end

---@param PickUpOwner AActor
---@param AdditionalParam number
---@param pickCount number
function APickUpWrapperActor:DoPickUp(PickUpOwner, AdditionalParam, pickCount) end

---@param PickUpOwner AActor
---@param AdditionalParam number
---@param pickCount number
function APickUpWrapperActor:BPDoPickUp(PickUpOwner, AdditionalParam, pickCount) end

---@param bShow boolean
function APickUpWrapperActor:ShowMesh(bShow) end

---@param DID FItemDefineID
function APickUpWrapperActor:SetDefineID(DID) end

---@param _Count number
function APickUpWrapperActor:ModifyData(_Count) end

---@param AdditionalParam number
---@return FItemDefineID
function APickUpWrapperActor:GetWrapperDefineID(AdditionalParam) end

---@param ItemCount number
---@param Value string
---@param Category string
---@param RepeatGenerateItem boolean
---@param SpotDataIndex number
function APickUpWrapperActor:InitDataNew(ItemCount, Value, Category, RepeatGenerateItem, SpotDataIndex) end

---@param Ret boolean
---@param AttachTarget AActor
---@param AttachComponent UPrimitiveComponent
function APickUpWrapperActor:MarkIsDropedByPlayerOnServer(Ret, AttachTarget, AttachComponent) end

---@param PC AUAEPlayerController
function APickUpWrapperActor:MarkDroppedPlayer(PC) end

function APickUpWrapperActor:MarkDroppedTime() end

---@return boolean
function APickUpWrapperActor:IsLifeSpanBlackListItem() end

---@param _Count number
function APickUpWrapperActor:SetCountOnServerAfterSpawn(_Count) end

---@param DataList ULuaArrayHelper<FBattleItemAdditionalData>
function APickUpWrapperActor:AddAdditionalDataListOnServerAfterSpawn(DataList) end

---@return boolean
function APickUpWrapperActor:CheckPickUpDataIsWeapon() end

---@return boolean
function APickUpWrapperActor:CheckPickUpDataIsWeaponAccessory() end

function APickUpWrapperActor:GetDataList() end

---@return FPickUpWrapperItem
function APickUpWrapperActor:GetFinalPickUpData() end

---@param BackpackComp UBackpackComponent
---@param PickupCount number
function APickUpWrapperActor:FinishedPickUpOnServer_BP(BackpackComp, PickupCount) end

---Force actor to be updated to clients
function APickUpWrapperActor:ForceNetUpdate() end

---@return number
function APickUpWrapperActor:GetNetGUIDOffsetValue() end

---@return string
function APickUpWrapperActor:ToDetailString() end

---@param DataList ULuaArrayHelper<FBattleItemAdditionalData>
function APickUpWrapperActor:UpdateAdditionalDataListOnServerAfterSpawn(DataList) end

---@param InPlayerKey number
function APickUpWrapperActor:SetOwnerPlayerKey(InPlayerKey) end

---@param InTeamID number
function APickUpWrapperActor:SetOwnerTeamID(InTeamID) end

---@param bOldVal boolean
function APickUpWrapperActor:OnRep_HiddenByPickUp(bOldVal) end

---@param InNotAllowPlayerKey ULuaArrayHelper<number>
function APickUpWrapperActor:SetNotAllowPlayerKey(InNotAllowPlayerKey) end

function APickUpWrapperActor:ClearNotAllowPlayerKey() end

function APickUpWrapperActor:SetNotOpenProtectTimerHandle() end

function APickUpWrapperActor:SetOpenProtectTimerHandle() end

---@param PlayerController AUAEPlayerController
function APickUpWrapperActor:ServerSetOpenProtect(PlayerController) end

function APickUpWrapperActor:OnRep_OwnerPlayerKey() end

function APickUpWrapperActor:OnRep_OwnerTeamID() end

function APickUpWrapperActor:OnRep_NotAllowPlayerKey() end

function APickUpWrapperActor:OnRep_NotAllowPickEndTime() end

function APickUpWrapperActor:OnRep_KeyProtectEndTime() end

function APickUpWrapperActor:OnRep_ProtectType() end

function APickUpWrapperActor:OnRep_CustomPickUpRangeBox() end

---@param _softPath FSoftObjectPath
---@param bShowParticle boolean
function APickUpWrapperActor:OnAsyncLoadLightBeam(_softPath, bShowParticle) end

---@param bShowParticle boolean
---@param bForceLight boolean
function APickUpWrapperActor:LoadLightBeam(bShowParticle, bForceLight) end

---设置是否被背负 流浪地球机械狗可以背负拾取物
---@param bInBeenCarried boolean
function APickUpWrapperActor:SetBeenCarried(bInBeenCarried) end

function APickUpWrapperActor:OnRep_ReplicateMovement() end

function APickUpWrapperActor:OnRep_Role() end

function APickUpWrapperActor:OnRep_RemoteRole() end

function APickUpWrapperActor:OnRep_Hidden() end

function APickUpWrapperActor:OnRep_TearOff() end

function APickUpWrapperActor:OnRep_CanBeDamaged() end

function APickUpWrapperActor:OnRep_AttachmentReplication() end

function APickUpWrapperActor:OnRep_Instigator() end

function APickUpWrapperActor:OnRep_ReplicatedMovement() end

---@param TargetActor AActor
function APickUpWrapperActor:OnGroundActorDestroyed(TargetActor) end

---@param OwnerTarget AActor
---@param AdditionalParam number
---@param pickCount number
---@return boolean
function APickUpWrapperActor:FinishPickedUp(OwnerTarget, AdditionalParam, pickCount) end

function APickUpWrapperActor:OnRep_AttachedActor() end

---@param Time number
---@param bPendingDestroy boolean
function APickUpWrapperActor:RPC_Broadcast_NotifyAllClientsHideActorForSomeTime(Time, bPendingDestroy) end

function APickUpWrapperActor:ShowActor() end

---@param OldCount number
function APickUpWrapperActor:OnRep_Count(OldCount) end

function APickUpWrapperActor:OnRep_DefineID() end

function APickUpWrapperActor:ReceiveOnRep_Count() end

---@param Picker AActor
---@param AdditionalParam number
---@return boolean
function APickUpWrapperActor:CanBePickedUp(Picker, AdditionalParam) end

---@param Picker AActor
---@param AdditionalParam number
---@return boolean
function APickUpWrapperActor:CheckCanBePickedUp(Picker, AdditionalParam) end

---@param bShow boolean
---@param Time number
---@param bUseDefaultGroundEffect boolean
function APickUpWrapperActor:ToggoleGroundEffectOnServer(bShow, Time, bUseDefaultGroundEffect) end

---@param ignoreActor AActor
function APickUpWrapperActor:SetActorToGround(ignoreActor) end

---@param targetActor AActor
---@param locationRule EAttachmentRule
---@param rotationRule EAttachmentRule
---@param scaleRule EAttachmentRule
---@param bWeldSimulatedBodies boolean
---@param socketName string
function APickUpWrapperActor:SetActorAttachTo(targetActor, locationRule, rotationRule, scaleRule, bWeldSimulatedBodies, socketName) end

---@param targetActor AActor
---@param DetachLocation FVector
---@param locationRule EAttachmentRule
---@param rotationRule EAttachmentRule
---@param scaleRule EAttachmentRule
---@param bWeldSimulatedBodies boolean
---@param socketName string
function APickUpWrapperActor:SetAttachedInfo(targetActor, DetachLocation, locationRule, rotationRule, scaleRule, bWeldSimulatedBodies, socketName) end

---@param DataList ULuaArrayHelper<FBattleItemAdditionalData>
function APickUpWrapperActor:RPC_Broadcast_NotifyAllClientsModifySavedAdditionalDataList(DataList) end

function APickUpWrapperActor:OnRep_DropGroundEffectInfo() end

---@param effectInfo FDropGroundEffectInfo
function APickUpWrapperActor:OnLoadDropEffectFinish(effectInfo) end

function APickUpWrapperActor:AddToRegionBasedNetConsideration() end

function APickUpWrapperActor:OnRep_PerformanceInfo() end

function APickUpWrapperActor:RegisterToCurveAnimComponent() end

---@param bUseCurve boolean
---@param GroupID number
---@param StartLoc FVector
---@param EndLoc FVector
function APickUpWrapperActor:SetDropLocation(bUseCurve, GroupID, StartLoc, EndLoc) end

---@param InPerformanceInfo FDropItemPerformanceInfo
function APickUpWrapperActor:SetPerformanceInfo(InPerformanceInfo) end

---@param bNewHidden boolean
function APickUpWrapperActor:OnPostSetActorHiddenInGame(bNewHidden) end

function APickUpWrapperActor:ShowRareLevelEffect() end

function APickUpWrapperActor:ClearRareLevelEffect() end

---@param InRarelevelEffectPath FSoftObjectPath
function APickUpWrapperActor:OnLoadRarelevelEffect(InRarelevelEffectPath) end

---@param NewValue boolean
function APickUpWrapperActor:SetForceHideRareLevelEffect(NewValue) end

function APickUpWrapperActor:OnRep_ForceHideRareLevelEffect() end

---@param NewValue boolean
function APickUpWrapperActor:OnForceHideRareLevelEffectChange(NewValue) end

---@param TrailEffectPath FSoftObjectPath
function APickUpWrapperActor:OnLoadNewTrailEffect(TrailEffectPath) end

---@param GroundEffectPath FSoftObjectPath
function APickUpWrapperActor:OnLoadNewGroundEffect(GroundEffectPath) end

---/
function APickUpWrapperActor:TakeRepOnceAttachment() end

---@param InPlayerKey number
function APickUpWrapperActor:EscapeForbidTeammatePickup(InPlayerKey) end

function APickUpWrapperActor:RemoveEscapeForbidTeammatePickup() end

function APickUpWrapperActor:OnRep_ShowTeammateForbidEndTime() end

function APickUpWrapperActor:ShowTeammateForbidEndTimeWidget() end

---@return string
function APickUpWrapperActor:GetLuaModule() end

function APickUpWrapperActor:CheckMeshCulling() end

function APickUpWrapperActor:GeneratePreciseInteractBehavior() end

function APickUpWrapperActor:OnRep_RepNewLocationOnce() end
