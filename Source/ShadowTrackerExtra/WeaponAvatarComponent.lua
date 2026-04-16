---@meta

---@class FHandleMeshPack
---@field meshCfg FWeaponMeshCfg
FHandleMeshPack = {}


---@class FAvatarReportInfo
---@field CurFrame number
---@field AdditionalInfo string
FAvatarReportInfo = {}


---@class FMiniItem
---@field Type number
---@field TypeSpecificID number
FMiniItem = {}


---@class FOnSwitchPersonPerspectiveWeaponSkMesh : ULuaMulticastDelegate
FOnSwitchPersonPerspectiveWeaponSkMesh = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsFPP: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSwitchPersonPerspectiveWeaponSkMesh:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsFPP boolean
function FOnSwitchPersonPerspectiveWeaponSkMesh:Broadcast(bIsFPP) end


---@class UWeaponAvatarComponent: UAvatarComponent
---@field OnScopeEquipDelegate FOnScopeEquipDelegate
---@field OnScopeUnEquipDelegate FOnScopeUnequipDelegate
---@field bIsEquipScope boolean
---@field OnWeaponPartsEquipped FOnWeaponPartsEquipEvent
---@field OnScopeItemHandleChange FOnWeaponItemHandleLoadDelegate
---@field OnResetAttachmentSocket FOnResetAttachmentSocketDelegate
---@field OnItemHandleListLoadedFinishedDelegate FOnItemHandleListLoadedFinishedDelegate
---@field OnItemHandleListLoadedFinishedWithWeaponDelegate FOnItemHandleListLoadedFinishedWithWeaponDelegate
---@field OnSwitchPersonPerspectiveWeaponSkMesh FOnSwitchPersonPerspectiveWeaponSkMesh
---@field OnSwitchNewFPPWithWeaponDelegate FOnSwitchNewFPPWithWeapon
---@field OnNeedRefreshOldMagDelegate FOnNeedRefreshOldMag
---@field DefaultAttachmentMesh ULuaMapHelper<number, FHandleMeshPack>
---@field defaultSynData ULuaArrayHelper<FMeshSynData>
---@field meshComponentList_for_outline ULuaArrayHelper<UPrimitiveComponent>
---@field OnSkinDefaultItemListLoaded FCreateBattleItemHandleAsyncListDelegate
---@field AsyncSkinDefaultItemLoadReqID number
---@field bUseScopeSectionOpt boolean
---@field bPreCacheAutonomouseMesh boolean
---@field WeaponSkinFeedbackEffectRefMap ULuaMapHelper<number, UBattleItemHandleBase>
---@field WeaponAbilityHandleRefMap ULuaMapHelper<string, UBattleItemHandleBase>
---@field WeaponAbilityHandleMap ULuaMapHelper<number, UBackpackWeaponAbilityHandle>
---@field ClientWeaponAbilityHandleActivity ULuaMapHelper<UBackpackWeaponAbilityHandle, boolean>
---@field KillCountAbilityRepType EWeaponAbilityRepType
---@field WeaponAbilityRepTypeNames ULuaMapHelper<EWeaponAbilityRepType, string>
---@field AsyncMeshCounter number
---@field AsyncHandleCounter number
---@field FinishedMeshReqID number
---@field latestMeshReqID number
---@field bFPPWaitMeshReq boolean
---@field FinishedHandleReqID number
---@field bEntityBPEnable boolean
---@field bEnableAvatarCompBP boolean
---@field EntityBP ULuaMapHelper<EWeaponAttachmentSocketType, UWeaponAvatarEntity>
---@field SubSlotEntityBP ULuaMapHelper<EWeaponAttachmentSocketType, EWeaponSubSlotType>
---@field ClientAvatarDataReady boolean
---@field ClientAvatarData ULuaArrayHelper<FMeshSynData>
---@field CheckIsPreparedOnClientAvatarTimerHandle FTimerHandle
---@field WeaponAvatarSyncDataForDisplay ULuaArrayHelper<FMeshSynData>
---@field OnAvatarMeshChangedEventForDisplay FOnAvatarMeshChanged
---@field bIsDualWeapon boolean
---@field bIsLobbySoloShow boolean
---@field MasterGunParticleDisableSet ULuaSetHelper<string>
---@field CheckStateIsReadyTimerHandle FTimerHandle
---@field CustomWeaponSkinHistoryKillCounter number
---@field CachedAbilityResources ULuaArrayHelper<UObject>
---@field BloodDiamondData FItemSpecialData_BloodDiamondData
---@field CachedDiamondSocketConfig ULuaMapHelper<number, number>
---@field BloodDiamondMeshComponents ULuaArrayHelper<UStaticMeshComponent>
---@field DiamondParticleList ULuaArrayHelper<UParticleSystemComponent>
---@field MaterialSlotName string
---@field MaterialParamName string
---@field WeaponMeshCompForSlot ULuaMapHelper<number, UMeshComponent>
---@field FPPWeaponSkeletalMeshCompForSlot ULuaMapHelper<number, UMeshComponent>
---@field OuterVisiblityForFPP ULuaMapHelper<number, boolean>
---@field OverrideSocketNameForFPP ULuaMapHelper<string, string>
---@field CacheSlotAsync ULuaMapHelper<number, boolean>
---@field bWaitScopeDone boolean
---@field NeedAutoRootSocket ULuaArrayHelper<USkeletalMeshSocket>
---@field bParentPoseOffset boolean
---@field bTPPPoseOffset boolean
---@field TPPPoseOffset ULuaMapHelper<string, FTransform>
---@field NewFPPPoseOffset ULuaMapHelper<string, FTransform>
---@field CurrentResId number
---@field AvatarReportInfo ULuaArrayHelper<FAvatarReportInfo>
---@field DelayReportSightErrorID number
---@field DelayReportSightErrorHandle FTimerHandle
local UWeaponAvatarComponent = {}

---@return string
function UWeaponAvatarComponent:GetLuaModule() end

---@param Entity UWeaponAvatarEntity
---@param bPutOn boolean
function UWeaponAvatarComponent:HandleEntityPutOnOffEquipment(Entity, bPutOn) end

---@param AGender number
function UWeaponAvatarComponent:InitialAvatarParam(AGender) end

---@param MasterComp UMeshComponent
function UWeaponAvatarComponent:InitMasterComponent(MasterComp) end

---@param handle UBattleItemHandleBase
function UWeaponAvatarComponent:InitDefaultMesh(handle) end

---@param handle UBattleItemHandleBase
function UWeaponAvatarComponent:InitDefaultAvatar(handle) end

---@param weaponHandle UBattleItemHandleBase
function UWeaponAvatarComponent:InitDefaultAttachment(weaponHandle) end

---@param defineID FItemDefineID
---@return boolean
function UWeaponAvatarComponent:CheckIsAlreadyEquipped(defineID) end

---@param slotID number
---@param bIncludingDefault boolean
---@return boolean
function UWeaponAvatarComponent:CheckSlotIsEquipped(slotID, bIncludingDefault) end

---@param attachHandle UBattleItemHandleBase
function UWeaponAvatarComponent:ApplyAttachment(attachHandle) end

---@param weaponHandle UBattleItemHandleBase
---@param skMesh USkeletalMesh
---@param stMesh UStaticMesh
---@return boolean
function UWeaponAvatarComponent:PutOnMasterComponentByItemHandle(weaponHandle, skMesh, stMesh) end

---@param itemHandle UBattleItemHandleBase
---@param skMesh USkeletalMesh
---@param stMesh UStaticMesh
---@param InInstanceID number
---@return boolean
function UWeaponAvatarComponent:PutOnEquipmentByItemHandle(itemHandle, skMesh, stMesh, InInstanceID) end

---@param resID number
---@return boolean
function UWeaponAvatarComponent:PutOnEquipmentByResID(resID) end

---@param resID number
---@return boolean
function UWeaponAvatarComponent:PutOffEquimentByResID(resID) end

---@param itemHandle UBattleItemHandleBase
function UWeaponAvatarComponent:ClearMeshByItemHandle(itemHandle) end

---@param slot number
---@param putDefault boolean
function UWeaponAvatarComponent:ClearMeshBySlot(slot, putDefault) end

---@param Slot number
---@param Mesh USkeletalMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UWeaponAvatarComponent:ApplySkeletalMeshByID(Slot, Mesh, handle) end

---@param slot number
---@param pSM UStaticMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UWeaponAvatarComponent:ApplyStaticMeshByID(slot, pSM, handle) end

---@param Slot number
---@param Mesh USkeletalMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UWeaponAvatarComponent:ApplySkeletalMeshWithOtherPP(Slot, Mesh, handle) end

---@param slot number
---@param pSM UStaticMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UWeaponAvatarComponent:ApplyStaticMeshWithOtherPP(slot, pSM, handle) end

---@param Mesh USkeletalMesh
---@param bIsOther boolean
---@param handle UBattleItemHandleBase
---@return boolean
function UWeaponAvatarComponent:ApplySkeletalMeshByIDWithCompatible(Mesh, bIsOther, handle) end

---@param itemHandle UBattleItemHandleBase
---@return boolean
function UWeaponAvatarComponent:CheckUseCompatibleTPP(itemHandle) end

---@param itemHandle UBattleItemHandleBase
---@param meshComp UMeshComponent
function UWeaponAvatarComponent:ApplyMaterial(itemHandle, meshComp) end

---@param InTargetMeshComp UMeshComponent
---@param InMatSoftPath FSoftObjectPath
---@param InBaseMatSoftPath FSoftObjectPath
---@param InMatSlotName string
---@param InIsMatHighQuality boolean
---@return boolean
function UWeaponAvatarComponent:ApplyMatBySoftPath(InTargetMeshComp, InMatSoftPath, InBaseMatSoftPath, InMatSlotName, InIsMatHighQuality) end

---@param itemHandle UBattleItemHandleBase
---@param meshComp UMeshComponent
function UWeaponAvatarComponent:ApplyMaterialForLobby(itemHandle, meshComp) end

---@param slot number
---@param handle UBattleItemHandleBase
---@param Entity UWeaponAvatarEntity
---@param TargetComp UMeshComponent
function UWeaponAvatarComponent:ApplyAnimation(slot, handle, Entity, TargetComp) end

function UWeaponAvatarComponent:ResetAttachmentParent() end

function UWeaponAvatarComponent:ResetAttachmentSocket() end

function UWeaponAvatarComponent:ResetAttachmentSocketWhenScope() end

---@param InResult string
---@param OutResult string
---@return boolean
function UWeaponAvatarComponent:GetSocketNameCompatible(InResult, OutResult) end

---@param AvatarHandle UBattleItemHandleBase
---@param SyncData FMeshSynData
---@return boolean
function UWeaponAvatarComponent:PreFiltHandles(AvatarHandle, SyncData) end

---@param defineID FItemDefineID
---@param itemHandle UBattleItemHandleBase
function UWeaponAvatarComponent:OnItemHandleLoaded(defineID, itemHandle) end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UWeaponAvatarComponent:OnItemHandleListLoaded(ItemHandles, AsyncLoadID) end

---@param handleList UBattleItemHandleBase
---@param needDirectLoad boolean
---@return boolean
function UWeaponAvatarComponent:LoadMeshsAsync(handleList, needDirectLoad) end

---@param AssetList FSoftObjectPath
---@param itemHandles UBattleItemHandleBase
---@param isReplaced boolean
function UWeaponAvatarComponent:OnMeshLoaded(AssetList, itemHandles, isReplaced) end

---@param handleList ULuaArrayHelper<UBattleItemHandleBase>
---@param NeedDirectLoad boolean
---@return boolean
function UWeaponAvatarComponent:LoadMeshListAsync(handleList, NeedDirectLoad) end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
---@param AsyncLoadID number
function UWeaponAvatarComponent:OnAsyncLoadMeshList(AssetRef, AsyncLoadID) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UWeaponAvatarComponent:OnKillCountMatRefresh(AsyncLoadID, LoadEventFrom) end

function UWeaponAvatarComponent:LoadDefaultAttachmentsAsync() end

---@param defineID FItemDefineID
---@param itemHandle UBattleItemHandleBase
function UWeaponAvatarComponent:OnDefaultItemLoaded(defineID, itemHandle) end

---@return boolean
function UWeaponAvatarComponent:IsAutonomousAvatar() end

---@return boolean
function UWeaponAvatarComponent:IsTeammate() end

---@param handle UBattleItemHandleBase
---@param AssetRef FSoftObjectPath
---@param bUseLod00 boolean
---@param bOffHand boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@return boolean
function UWeaponAvatarComponent:GetMeshResRef(handle, AssetRef, bUseLod00, bOffHand, InIsIgnoreBodyTypeVariant) end

---@param handle UBattleItemHandleBase
---@param meshCfg FWeaponMeshCfg
---@param bOffHand boolean
---@return boolean
function UWeaponAvatarComponent:GetMeshPack(handle, meshCfg, bOffHand) end

---@param InWeaponDefineID FItemDefineID
---@param InWeaponSkinDefineID FItemDefineID
---@param InAttachmentConfig FWeaponAttachmentConfig
---@param InIsLogMatchResult boolean
---@param InLogTag string
---@return number
function UWeaponAvatarComponent:GetReplacedAttachementIndex(InWeaponDefineID, InWeaponSkinDefineID, InAttachmentConfig, InIsLogMatchResult, InLogTag) end

---@return boolean
function UWeaponAvatarComponent:RePickItemHandle() end

---@param PendingRecreateHandle UBattleItemHandleBase
function UWeaponAvatarComponent:RecreateMeshByHandle(PendingRecreateHandle) end

---@param MeshPack FWeaponMeshCfg
---@param MaterialAssets ULuaArrayHelper<FSoftObjectPath>
function UWeaponAvatarComponent:PrepareRenderMaterialAssets(MeshPack, MaterialAssets) end

---@param MeshPack FWeaponMeshCfg
---@param MaterialAssets ULuaArrayHelper<FSoftObjectPath>
function UWeaponAvatarComponent:PrepareRenderMaterialAssets_FPP(MeshPack, MaterialAssets) end

---@param AssetsResList ULuaArrayHelper<FSoftObjectPath>
function UWeaponAvatarComponent:PrepareKillNumScreenMesh(AssetsResList) end

---@param InTargetVisibility boolean
function UWeaponAvatarComponent:CheckScopeSectionOptVisibility(InTargetVisibility) end

---@param TargetSlot ESurviveWeaponPropSlot
function UWeaponAvatarComponent:OnWeaponEquipStateChange(TargetSlot) end

function UWeaponAvatarComponent:UpdateWeaponAbilityActivity() end

function UWeaponAvatarComponent:BuildWeaponAbilities() end

---@param InBackpackWeaponHandle UBackpackWeaponHandle
function UWeaponAvatarComponent:AddWeaponAvatarAbilityItems(InBackpackWeaponHandle) end

---@param InBackpackWeaponHandle UBackpackWeaponHandle
function UWeaponAvatarComponent:RemoveWeaponAvatarAbilityItems(InBackpackWeaponHandle) end

function UWeaponAvatarComponent:NetSyncAssociationItemData() end

---@param slot number
---@param type ESyncOperation
---@param handle UBattleItemHandleBase
function UWeaponAvatarComponent:NetSyncData(slot, type, handle) end

---@param socketType EWeaponAttachmentSocketType
---@param isVisable boolean
function UWeaponAvatarComponent:SetWeaponEntityVisable(socketType, isVisable) end

---@param slotType EAvatarSlotType
---@param visible boolean
---@param isForce boolean
---@param MaskValue number
function UWeaponAvatarComponent:SetAvatarVisibility(slotType, visible, isForce, MaskValue) end

---@param socketType number
---@param isVisable boolean
---@param bIsFPP boolean
function UWeaponAvatarComponent:SetOuterVisableWithFPP(socketType, isVisable, bIsFPP) end

---@param socketType number
---@param bIsFPP boolean
---@return boolean
function UWeaponAvatarComponent:GetOuterVisableWithFPP(socketType, bIsFPP) end

---@param SocketType EWeaponPendantSocketType
function UWeaponAvatarComponent:SetPendantSocketType(SocketType) end

---@return string
function UWeaponAvatarComponent:GetPlayerName() end

---@param SlotID number
---@return boolean
function UWeaponAvatarComponent:ShouldDisplayByQuality(SlotID) end

---@param handleList ULuaArrayHelper<UBattleItemHandleBase>
---@param NeedDirectLoad boolean
---@return boolean
function UWeaponAvatarComponent:LoadSkinDefaultMeshListAsync(handleList, NeedDirectLoad) end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UWeaponAvatarComponent:OnSkinDefaultItemHandleListLoaded(ItemHandles, AsyncLoadID) end

---@param InTargetVisibility boolean
function UWeaponAvatarComponent:RefreshForAvatarVisibilityFreature(InTargetVisibility) end

---Weapon attachment skin hide feature end
---@return ESightType
function UWeaponAvatarComponent:GetCurSightType() end

---@param InHandle UBackpackWeaponAbilityHandle
---@return boolean
function UWeaponAvatarComponent:IsWeaponAbilityActive(InHandle) end

---@param ParentClass UClass
function UWeaponAvatarComponent:GetWeaponAbilityHandleByParentClass(ParentClass) end

function UWeaponAvatarComponent:ClearWeaponAbilityHandle() end

---@param weaponHandle UBattleItemHandleBase
function UWeaponAvatarComponent:InitRefitAttachment(weaponHandle) end

---@param refitMaterialHandle UBattleItemHandleBase
function UWeaponAvatarComponent:PutOnRefitMaterial(refitMaterialHandle) end

function UWeaponAvatarComponent:PutOffRefitMaterial() end

---@param ResID number
---@return boolean
function UWeaponAvatarComponent:CheckIsResIDCompatibleWithMesh(ResID) end

function UWeaponAvatarComponent:RefreshOverrideMaterial() end

---@param Material UMaterialInterface
function UWeaponAvatarComponent:OverrideWeaponMaterial(Material) end

---@param MeshComp UMeshComponent
---@param ItemHandle UBattleItemHandleBase
function UWeaponAvatarComponent:OnChangeParentMaterials(MeshComp, ItemHandle) end

function UWeaponAvatarComponent:RevertOriginMaterial() end

function UWeaponAvatarComponent:CheckOriginMaterial() end

---@return boolean
function UWeaponAvatarComponent:GetEnableEntityBP() end

---@param SubSlotList ULuaArrayHelper<number>
function UWeaponAvatarComponent:GetEntityBP_Internal(SubSlotList) end

---@param Enable boolean
function UWeaponAvatarComponent:SetMasterGunParticleEnable(Enable) end

---@param Enable boolean
---@param Key string
function UWeaponAvatarComponent:SetMasterGunParticleEnableByKey(Enable, Key) end

---@return boolean
function UWeaponAvatarComponent:GetMasterGunParticleEnable() end

---@param renderlevel number
function UWeaponAvatarComponent:UpdateIBL_Implementation(renderlevel) end

---@param meshPack FWeaponMeshCfg
---@return boolean
function UWeaponAvatarComponent:IsWeaponMatHighDeviceQuality(meshPack) end

---@param OrigniSkin UBattleItemHandleBase
---@param AvatarSkin UBattleItemHandleBase
function UWeaponAvatarComponent:HandleWeaponOrAttachmentOriginSkin(OrigniSkin, AvatarSkin) end

---@param InWeaponHandle UBattleItemHandleBase
function UWeaponAvatarComponent:HandleWeaponAdditionalData(InWeaponHandle) end

---@return boolean
function UWeaponAvatarComponent:IsPreparedOnClientAvatar() end

function UWeaponAvatarComponent:CheckIsPreparedOnClientAvatar() end

---@param AvatarComponentType EAvatarComponentType
---@return boolean
function UWeaponAvatarComponent:ShouldClientOverrideAvatarMeshData(AvatarComponentType) end

---@return boolean
function UWeaponAvatarComponent:CheckStateIsReady() end

---@param InGameStateName string
function UWeaponAvatarComponent:HandleGameStateClassChanged(InGameStateName) end

function UWeaponAvatarComponent:OnRep_AvatarMeshChangedForDisplay() end

function UWeaponAvatarComponent:GetAllMeshComponentList() end

function UWeaponAvatarComponent:GetOffHandMeshComponentList() end

function UWeaponAvatarComponent:BindSmokeHandle() end

function UWeaponAvatarComponent:UnbindSmokeHandle() end

---@param BuffName string
function UWeaponAvatarComponent:OnOwnerPawnBuffEnter(BuffName) end

---@param BuffName string
function UWeaponAvatarComponent:OnOwnerPawnBuffDetached(BuffName) end

function UWeaponAvatarComponent:OnPreSwitchNewFPP() end

---@return boolean
function UWeaponAvatarComponent:GetIsInLobby() end

---@param InAvatarDownloadType EAvatarDownloadSourceType
---@param bAutoDownload boolean
---@return boolean
function UWeaponAvatarComponent:TryDownloadNotExistAvatar(InAvatarDownloadType, bAutoDownload) end

function UWeaponAvatarComponent:TryStopDownloadNotExistAvatar() end

---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
---@return boolean
function UWeaponAvatarComponent:TryDownloadNotExistAvatarResponse(InAvatarDownloadParamForCallback) end

---@param InGameStateName string
function UWeaponAvatarComponent:HandleGameStateClassChangedForAvatarDownload(InGameStateName) end

---@param GameModeID string
function UWeaponAvatarComponent:OnGameModeIDChangedForAvatarDownload(GameModeID) end

---@param InNewGameState string
function UWeaponAvatarComponent:OnGameModeStateChangedForAvatarDownload(InNewGameState) end

---@param ClientModeID number
function UWeaponAvatarComponent:OnClientModeIDChangedForAvatarDownload(ClientModeID) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
function UWeaponAvatarComponent:AvatarSourceDownloadFinished(InAvatarComponent, InAvatarDownloadParamForCallback) end

---@param SkeletalMeshComponents ULuaArrayHelper<USkeletalMeshComponent>
---@param StaticMeshComponents ULuaArrayHelper<UStaticMeshComponent>
---@param MasterComponent UMeshComponent
---@param SlotIDArray ULuaArrayHelper<number>
---@param MasterSlotID number
---@param bIsHeadNeedConverted boolean
function UWeaponAvatarComponent:GetComponentsForRSS(SkeletalMeshComponents, StaticMeshComponents, MasterComponent, SlotIDArray, MasterSlotID, bIsHeadNeedConverted) end

---@return boolean
function UWeaponAvatarComponent:IsOptimizationOpen() end

---@param GEnableConvertStaticMeshComponent number
---@return boolean
function UWeaponAvatarComponent:CheckIfEnableConvertToStaticMesh(GEnableConvertStaticMeshComponent) end

---@param InWeaponHandle UBackpackWeaponHandle
---@return number
function UWeaponAvatarComponent:GetDisplayAvatarID(InWeaponHandle) end

---@param InAbilityID number
---@param InWeaponSkinHistoryKillCounter number
function UWeaponAvatarComponent:SetWeaponSkinHistoryKillCounterInfo(InAbilityID, InWeaponSkinHistoryKillCounter) end

---武器一人称动画蓝图
---@param slotID number
---@return FSoftObjectPath
function UWeaponAvatarComponent:GetSlotAnimationBPForFPP(slotID) end

---@param DiamondSocketConfig ULuaMapHelper<number, number>
---@param bIsPreview boolean
---@param bIsParticleOnly boolean
---@param bEnablePerSocketDiamondParticles boolean
function UWeaponAvatarComponent:OnLoadBloodDiamondMeshList(DiamondSocketConfig, bIsPreview, bIsParticleOnly, bEnablePerSocketDiamondParticles) end

---@param bIsFPP boolean
function UWeaponAvatarComponent:SwitchPersonPerspectiveWeaponSkMesh(bIsFPP) end

---@param bIsFPP boolean
---@param WeaponSkMesh USkeletalMesh
---@param SlotID number
function UWeaponAvatarComponent:InitCacheWeaponSkeletalMeshComp(bIsFPP, WeaponSkMesh, SlotID) end

---@param bIsFPP boolean
---@param WeaponStMesh UStaticMesh
---@param SlotID number
function UWeaponAvatarComponent:InitCacheWeaponStaticComp(bIsFPP, WeaponStMesh, SlotID) end

---@param bIsFPP boolean
---@param AvatarEntity UAvatarEntity
function UWeaponAvatarComponent:InSwitchWeaponMeshForFPP(bIsFPP, AvatarEntity) end

---@param SlotID number
function UWeaponAvatarComponent:ClearFPPCache(SlotID) end

---@param SlotID number
function UWeaponAvatarComponent:ClearTPPCache(SlotID) end

function UWeaponAvatarComponent:ClearAllFPPCache() end

function UWeaponAvatarComponent:ClearCompatibleCache() end

---@param bIsFPP boolean
---@param bDefault boolean
function UWeaponAvatarComponent:GetMeshCompForFPP(bIsFPP, bDefault) end

---@return boolean
function UWeaponAvatarComponent:IsNewFPPGMOpen() end

---@return boolean
function UWeaponAvatarComponent:GetFPPIsDownload() end

---@param slotID number
---@return boolean
function UWeaponAvatarComponent:IsUseFPPAvatar(slotID) end

---@param slotID number
function UWeaponAvatarComponent:CheckFPPComp(slotID) end

---@param SourceWeaponAvatar UWeaponAvatarComponent
---@param UseOwnMasterComp USkeletalMeshComponent
---@param CopySlots ULuaArrayHelper<EWeaponAttachmentSocketType>
---@param bUseDSData boolean
function UWeaponAvatarComponent:ClientCopyFromOthers(SourceWeaponAvatar, UseOwnMasterComp, CopySlots, bUseDSData) end

---@param InSlot EWeaponAttachmentSocketType
---@return FMeshSynData
function UWeaponAvatarComponent:GetWeaponAvatarSyncDataBySlot(InSlot) end

---@param InSlot EWeaponAttachmentSocketType
---@return number
function UWeaponAvatarComponent:GetWeaponAvatarSyncDataIDBySlot(InSlot) end

---@param InBackpackWeaponAbilityHandle UBackpackWeaponAbilityHandle
---@return boolean
function UWeaponAvatarComponent:ClientCanActiveAbilityWhenNotDownloadPak(InBackpackWeaponAbilityHandle) end

---@param InID number
---@return boolean
function UWeaponAvatarComponent:ClientCanActiveAbilityWhenNotDownloadPakByID(InID) end

function UWeaponAvatarComponent:PreOnRep_AvatarMeshChanged() end

---@param ParentComp USkeletalMeshComponent
---@param CurrentComp USkeletalMeshComponent
function UWeaponAvatarComponent:AdjustNewFPPSocket(ParentComp, CurrentComp) end

---@param A FTransform
---@param B FTransform
---@param C FTransform
---@return FTransform
function UWeaponAvatarComponent:AdjustNewFPPSocket_BP(A, B, C) end

---@param bForce boolean
function UWeaponAvatarComponent:ForceWeaponClientAsync(bForce) end

---用于检查当前的WeaponAvatarComponent 是不是 客户端 假枪
---@return boolean
function UWeaponAvatarComponent:CheckWeaponClientAsync() end

---@param InState boolean
function UWeaponAvatarComponent:SetWeaponClientDouble(InState) end

function UWeaponAvatarComponent:OnAllPakCheckCompleted() end

---@param TargetSlot ESurviveWeaponPropSlot
function UWeaponAvatarComponent:HideOwnerBone(TargetSlot) end

---@param InAsyncLoadID number
---@param InComp UAvatarComponent
function UWeaponAvatarComponent:OnTPPCharAvatarLoaded(InAsyncLoadID, InComp) end

---@param InTargetSlot EAvatarSlotType
---@param InAvatarFuncBranch_NewFPP UAvatarFuncBranch_NewFPP
function UWeaponAvatarComponent:OnFPPCharAvatarLoaded(InTargetSlot, InAvatarFuncBranch_NewFPP) end

---@return boolean
function UWeaponAvatarComponent:LuaGetFPPResDownload() end

---@param slotID number
function UWeaponAvatarComponent:ReportSightMeshError(slotID) end

---@param Id number
function UWeaponAvatarComponent:SetCurrentResId(Id) end

---@return number
function UWeaponAvatarComponent:GetWeaponBaseID() end

---@param OldItemID number
---@param InOperationType ESyncOperation
---@param InHandle UBattleItemHandleBase
---@param InSlot number
function UWeaponAvatarComponent:TryBroadcastOnServerAvatarDataChange(OldItemID, InOperationType, InHandle, InSlot) end
