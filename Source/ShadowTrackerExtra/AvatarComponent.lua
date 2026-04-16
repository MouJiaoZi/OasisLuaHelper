---@meta

---@class FAdvancedComponentItem
---@field bInUse boolean
FAdvancedComponentItem = {}


---@class FAdvancedComponentArray
---@field Items ULuaArrayHelper<FAdvancedComponentItem>
FAdvancedComponentArray = {}


---@class FOnResLoaded : ULuaSingleDelegate
FOnResLoaded = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FSoftObjectPath, Param2: UBattleItemHandleBase, Param3: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnResLoaded:Bind(Callback, Obj) end

---执行委托
---@param Param1 FSoftObjectPath
---@param Param2 UBattleItemHandleBase
---@param Param3 boolean
function FOnResLoaded:Execute(Param1, Param2, Param3) end


---@class FOnAvatarEquipped : ULuaMulticastDelegate
FOnAvatarEquipped = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SlotType: number, IsEquipped: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarEquipped:Add(Callback, Obj) end

---触发 Lua 广播
---@param SlotType number
---@param IsEquipped boolean
function FOnAvatarEquipped:Broadcast(SlotType, IsEquipped) end


---@class FOnAvatarEquippedWithPath : ULuaMulticastDelegate
FOnAvatarEquippedWithPath = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SlotType: number, AvatarPath: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarEquippedWithPath:Add(Callback, Obj) end

---触发 Lua 广播
---@param SlotType number
---@param AvatarPath string
function FOnAvatarEquippedWithPath:Broadcast(SlotType, AvatarPath) end


---@class FOnAvatarMeshChanged : ULuaMulticastDelegate
FOnAvatarMeshChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ChangeEventFrom: UAvatarComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarMeshChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param ChangeEventFrom UAvatarComponent
function FOnAvatarMeshChanged:Broadcast(ChangeEventFrom) end


---@class FOnAvatarAsyncLoadingFinished : ULuaMulticastDelegate
FOnAvatarAsyncLoadingFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AsyncLoadID: number, LoadEventFrom: UAvatarComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarAsyncLoadingFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function FOnAvatarAsyncLoadingFinished:Broadcast(AsyncLoadID, LoadEventFrom) end


---@class FOnAvatarApplyAnimationFinished : ULuaSingleDelegate
FOnAvatarApplyAnimationFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarApplyAnimationFinished:Bind(Callback, Obj) end

---执行委托
function FOnAvatarApplyAnimationFinished:Execute() end


---@class FOnAllAvatarRenderFinished : ULuaMulticastDelegate
FOnAllAvatarRenderFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ChangeEventFrom: UAvatarComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAllAvatarRenderFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param ChangeEventFrom UAvatarComponent
function FOnAllAvatarRenderFinished:Broadcast(ChangeEventFrom) end


---@class FOnAvatarBodyTypeDirty : ULuaMulticastDelegate
FOnAvatarBodyTypeDirty = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InOldBodyType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarBodyTypeDirty:Add(Callback, Obj) end

---触发 Lua 广播
---@param InOldBodyType number
function FOnAvatarBodyTypeDirty:Broadcast(InOldBodyType) end


---@class FOnAvatarAppearanceGenderDirty : ULuaMulticastDelegate
FOnAvatarAppearanceGenderDirty = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InOldAppearanceGender: number, InOldAppearanceGenderMasterSlot: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarAppearanceGenderDirty:Add(Callback, Obj) end

---触发 Lua 广播
---@param InOldAppearanceGender number
---@param InOldAppearanceGenderMasterSlot number
function FOnAvatarAppearanceGenderDirty:Broadcast(InOldAppearanceGender, InOldAppearanceGenderMasterSlot) end


---@class FOnAutonomousAvatarChange : ULuaMulticastDelegate
FOnAutonomousAvatarChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsAutonomousAvatar: boolean, LoadEventFrom: UAvatarComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAutonomousAvatarChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsAutonomousAvatar boolean
---@param LoadEventFrom UAvatarComponent
function FOnAutonomousAvatarChange:Broadcast(IsAutonomousAvatar, LoadEventFrom) end


---@class FOnAvatarOnMatQualityLevelChanged : ULuaSingleDelegate
FOnAvatarOnMatQualityLevelChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarOnMatQualityLevelChanged:Bind(Callback, Obj) end

---执行委托
function FOnAvatarOnMatQualityLevelChanged:Execute() end


---@class FOnAvatarPreMeshCompDestroy : ULuaMulticastDelegate
FOnAvatarPreMeshCompDestroy = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SlotID: number, MeshComponent: UMeshComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarPreMeshCompDestroy:Add(Callback, Obj) end

---触发 Lua 广播
---@param SlotID number
---@param MeshComponent UMeshComponent
function FOnAvatarPreMeshCompDestroy:Broadcast(SlotID, MeshComponent) end


---@class FOnServerAvatarDataChange : ULuaMulticastDelegate
FOnServerAvatarDataChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SlotType: number, Operation: ESyncOperation, OldItemID: number, NewItemID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnServerAvatarDataChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param SlotType number
---@param Operation ESyncOperation
---@param OldItemID number
---@param NewItemID number
function FOnServerAvatarDataChange:Broadcast(SlotType, Operation, OldItemID, NewItemID) end


---@class UAvatarComponent: USceneComponent, ILuaInterface
---@field MeshAttachTransform FTransform
---@field bDisableAvatarComp boolean
---@field DefaultAvatarMaterialEffectManagerClass UAvatarMaterialEffectManager
---@field AvatarMaterialEffectManagerList ULuaArrayHelper<UAvatarMaterialEffectManager>
---@field DefaultAvatarActionEffectsManagerClass UAvatarActionEffectsManager
---@field bOptGetQualityLevel boolean
---@field OnAvatarBodyTypeDirtyDelegate FOnAvatarBodyTypeDirty
---@field AvatarBodyType number
---@field DelayReleaseBodyTepeVariantList ULuaArrayHelper<UAvatarBodyTypeVariant>
---@field DelayReleaseBehaviorFeatureList ULuaArrayHelper<UAvatarBehaviorFeature>
---@field bOverride_OnAnimNotifyStateBegin boolean
---@field bOverride_OnAnimNotifyStateTick boolean
---@field bOverride_OnAnimNotifyStateEnd boolean
---@field LatestTickDelta number
---@field AvatarAppearanceGender number
---@field AvatarAppearanceGenderMasterSlot number
---@field OnAvatarAppearanceGenderDirtyDelegate FOnAvatarAppearanceGenderDirty
---@field bHotUpdate_Func_GetAvatarAppearanceGender boolean
---@field SkinWeightProfileName string
---@field RegisteredUseSkinWeightProfileState ULuaSetHelper<EUseSWPState>
---@field RegisteredUseSkinWeightProfileState_IgnoreHandle ULuaSetHelper<string>
---@field RegisteredDisableSkinWeightProfileState_IgnoreHandle ULuaMapHelper<string, number>
---@field IgnoreHandleWaitingFinishEmoteID number
---@field Slot_UseSkinWeightProfileStatus_Map ULuaMapHelper<number, FSkinWeightProfileStates>
---@field meshComponentList ULuaMapHelper<number, UMeshComponent>
---@field bAsyncNewAnimInstance boolean
---@field AsyncAnimInstanceRequestId number
---@field AdvancedComponentMap ULuaMapHelper<number, FAdvancedComponentArray>
---@field slotToSocket ULuaMapHelper<number, string>
---@field DefaultAvataConfig ULuaMapHelper<EAvatarSlotType, FMeshData>
---@field loadedItemList ULuaMapHelper<number, UBattleItemHandleBase>
---@field gender number
---@field IsNeedRefresh boolean
---@field forceClientMode boolean
---@field bFakeClientState boolean
---@field PendingLoadRes ULuaMapHelper<FSoftObjectPath, UBattleItemHandleBase>
---@field OnAvatarPreMeshCompDestroy FOnAvatarPreMeshCompDestroy
---@field OnAvatarEquipped FOnAvatarEquipped
---@field OnServerAvatarDataChange FOnServerAvatarDataChange
---@field OnAvatarEquippedWithPath FOnAvatarEquippedWithPath
---@field OnAvatarMeshChangedEvent FOnAvatarMeshChanged
---@field OnAvatarAsyncLoadingFinished FOnAvatarAsyncLoadingFinished
---@field OnAllAvatarRenderFinished FOnAllAvatarRenderFinished
---@field OnAvatarApplyAnimationFinished FOnAvatarApplyAnimationFinished
---@field OnAutonomousAvatarChange FOnAutonomousAvatarChange
---@field ForceEntityVisible boolean @非主控玩家的显隐判断于外部处理
---@field EntityTickList ULuaArrayHelper<UAvatarEntity>
---@field EnableMaterialOptimize boolean
---@field OnItemLoaded FCreateBattleItemHandleAsyncDelegate
---@field OnItemListLoaded FCreateBattleItemHandleAsyncListDelegate
---@field OnItemListLoadedForAvatarInVisible FCreateBattleItemHandleAsyncListDelegate
---@field StreamableHandles ULuaArrayHelper<FAvatarStreamableHandler>
---@field bCheckAutonomousAvatarWhenStandAlone boolean
---@field AvatarCacheResFilterRuleByAssetRefStrategicManager FAvatarCacheResFilterRule
---@field AvatarEntityList ULuaMapHelper<number, UAvatarEntity>
---@field PendingLoadMeshRequestList ULuaMapHelper<number, FAsyncLoadMeshResReq>
---@field BaseMatMapping ULuaMapHelper<UMaterialInterface, UMaterialInterface>
---@field BaseMatStaticSwitchPermutationMap ULuaMapHelper<UMaterialInterface, FStaticSwitchPermutationRefCollection>
---@field MatInstanceMapping ULuaMapHelper<UMaterialInterface, UMaterialInterface>
---@field DisplayQuality EDisplayQuality
---@field DynamicCacheStrategy UAvatarDynamicCacheStrategy
---@field LoadedPath ULuaArrayHelper<FSoftObjectPath>
---@field AvatarModuleTemplates ULuaArrayHelper<UAvatarModule>
---@field AvatarModules ULuaMapHelper<EAvatarModule, UAvatarModule>
---@field bInitAvatarModule boolean
---@field AvatarOuterVisibilities ULuaMapHelper<number, number>
---@field AvatarVisibilityOpStack ULuaMapHelper<number, string>
---@field bEnableAvatarVisibilityTrack boolean
---@field CachedEntityBP ULuaMapHelper<number, UClass>
---@field CachedSubSlotIDList ULuaArrayHelper<number>
---@field FlowLightIndex number
---@field bIsBigWorldMarket boolean
---@field Lod00MatEndWith string
---@field bAvatarDownloading boolean
---@field bRealStopAvatarDownloading boolean
---@field TickAvatarDownloadInterval number
---@field ClientModeIDWhiteListForAvatarDownload ULuaArrayHelper<number>
---@field GameModeIDWhiteListForAvatarDownload ULuaArrayHelper<number>
---@field bConsiderDownloadNumber boolean
---@field bEnterSolidfication boolean
---@field CustomAbilityIDs ULuaArrayHelper<number>
---@field SkeletalMeshNegativeDelayTime number
---@field IgnoreItemIDList ULuaArrayHelper<number>
---@field bNeedNegativeTick boolean
---@field TwinsMap ULuaMapHelper<number, number>
---@field DefaultAvatarSubSystemList ULuaArrayHelper<UAvatarSubSystem> @UAvatarSubSystem *****************************************
---@field AvatarSubSystemToBPAvatarSubSystem ULuaMapHelper<UAvatarSubSystem, UAvatarSubSystem>
---@field LocalSubSystemList ULuaArrayHelper<UAvatarSubSystem>
---@field LocalActiveSubSystemList ULuaArrayHelper<UAvatarSubSystem>
---@field ClientCharacterAvatarItemIDList ULuaArrayHelper<number>
---@field ClientMaxLoadHandleTimes number
---@field CurrentMLoadHandleTimes number
---@field OnClientItemListLoaded FCreateBattleItemHandleAsyncListDelegate
---@field ClientLoadedItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@field bIsClientBeginLoad boolean
---@field AsyncCheckReportTimeoutThreshold number
---@field AsyncCheckElapseTimeThreshold number
---@field AsyncCheckTimeoutThreshold number
---@field AsyncCheckStartTime number
---@field AsyncCheckStartFrame number
---@field AsyncCheckElapseTime number
---@field LoadMeshListAsyncStrongReference ULuaMapHelper<FSoftObjectPath, UObject>
---@field SkeletalMeshCompPool ULuaArrayHelper<UUAEMeshComponent>
---@field StaticMeshCompPool ULuaArrayHelper<UStaticMeshComponent>
---@field bAsyncProcessedAvatarMeshDate boolean
local UAvatarComponent = {}

---@return string
function UAvatarComponent:GetLuaModule() end

function UAvatarComponent:ResetAllAvataSlot() end

---@param handle UBattleItemHandleBase
function UAvatarComponent:InitDefaultMesh(handle) end

---@param handle UBattleItemHandleBase
function UAvatarComponent:InitDefaultAvatar(handle) end

function UAvatarComponent:InitializeAvatarModules() end

---@param InDirtySlot number
---@param InIsPuton boolean
function UAvatarComponent:RefreshEntityLogicDataForKeySlotDirty(InDirtySlot, InIsPuton) end

---@param InTestSlot EAvatarSlotType
---@return boolean
function UAvatarComponent:IsForceRecreateMeshBoneRetargetAdaptSlot(InTestSlot) end

---@param InNewCameraMode EPlayerCameraMode
function UAvatarComponent:HandleCameraModeChange(InNewCameraMode) end

---@param InTargetSlot number
function UAvatarComponent:PreAvatarMeshCompDestroy(InTargetSlot) end

---@param Slot number
---@param Mesh USkeletalMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UAvatarComponent:ApplySkeletalMeshByID(Slot, Mesh, handle) end

---@param slot number
---@param pSM UStaticMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UAvatarComponent:ApplyStaticMeshByID(slot, pSM, handle) end

---@param slot number
---@param SelfMesh USkeletalMesh
---@return EMeshType
function UAvatarComponent:GetApplyMeshType(slot, SelfMesh) end

---@param slot number
---@param states FSkinWeightProfileStates
---@return boolean
function UAvatarComponent:ResetSkinWeightProfile(slot, states) end

---@param slot number
---@param handle UBattleItemHandleBase
---@param TargetComp USkeletalMeshComponent
---@return boolean
function UAvatarComponent:ResetSkinWeightProfileByHandle(slot, handle, TargetComp) end

---@param slot number
---@return boolean
function UAvatarComponent:IsSlotHasEquipped(slot) end

---@param slot number
---@param meshPack FMeshData
---@return boolean
function UAvatarComponent:GetEquipmentMeshBySlot(slot, meshPack) end

---@param slot number
---@param putDefault boolean
function UAvatarComponent:ClearMeshBySlot(slot, putDefault) end

---@param itemHandle UBattleItemHandleBase
function UAvatarComponent:ClearMeshByItemHandle(itemHandle) end

---@param itemHandle UBattleItemHandleBase
---@param skMesh USkeletalMesh
---@param stMesh UStaticMesh
---@param InInstanceID number
---@return boolean
function UAvatarComponent:PutOnEquipmentByItemHandle(itemHandle, skMesh, stMesh, InInstanceID) end

---@param Slot number
---@param InTargetHandleBase UBattleItemHandleBase
---@return boolean
function UAvatarComponent:PutOffEquiment(Slot, InTargetHandleBase) end

---@param Component UMeshComponent
---@param SkeletalMesh USkeletalMesh
---@param StaticMesh UStaticMesh
---@param ReinitPose boolean
function UAvatarComponent:ApplyMesh(Component, SkeletalMesh, StaticMesh, ReinitPose) end

---@param InTargetSkeletalMeshComp USkeletalMeshComponent
---@return boolean
function UAvatarComponent:ReinitSkeletalComp(InTargetSkeletalMeshComp) end

---@param InTargetSkeletalMeshComp USkeletalMeshComponent
---@return boolean
function UAvatarComponent:ReinitSkeletalCompAnim(InTargetSkeletalMeshComp) end

---@param itemHandle UBattleItemHandleBase
---@param meshComp UMeshComponent
function UAvatarComponent:ApplyMaterial(itemHandle, meshComp) end

---@param resID number
---@return boolean
function UAvatarComponent:PutOnEquipmentByResID(resID) end

---@param resID number
---@return boolean
function UAvatarComponent:PutOffEquimentByResID(resID) end

---@param AssetRef FSoftObjectPath
---@param isReplaced boolean
function UAvatarComponent:OnAsyncLoadMesh(AssetRef, isReplaced) end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
---@param AsyncLoadID number
function UAvatarComponent:OnAsyncLoadMeshList(AssetRef, AsyncLoadID) end

---@param AssetRef FSoftObjectPath
---@param MeshComp UMeshComponent
---@param MatIdx number
function UAvatarComponent:OnAsyncLoadRes(AssetRef, MeshComp, MatIdx) end

---@param ForceAutonoumous boolean
function UAvatarComponent:ReloadAllEquippedAvatar(ForceAutonoumous) end

---@param MeshCompList ULuaArrayHelper<UMeshComponent>
---@param IncludingMaster boolean
function UAvatarComponent:GetMeshComponentList(MeshCompList, IncludingMaster) end

function UAvatarComponent:GetAllMeshComponentList() end

---Game Setting Gender, Run time Gender should Use GetAvatarAppearanceGender (appearance may be not same with game setting)
---@return number
function UAvatarComponent:GetAvatarGameGender() end

---@return boolean
function UAvatarComponent:IsStandAloneMode() end

---@return boolean
function UAvatarComponent:IsTeamAthleticsMode() end

---@return boolean
function UAvatarComponent:IsRunOnServer() end

---@param DeltaTime number
function UAvatarComponent:TickEntity(DeltaTime) end

function UAvatarComponent:InitBindDelegates() end

function UAvatarComponent:UnBindDelegates() end

---@param SlotID number
---@param IsEquipped boolean
function UAvatarComponent:TryCreateAvatarMaterialEffectManager(SlotID, IsEquipped) end

---@param InHandle UBattleItemHandleBase
---@param InSlotID number
function UAvatarComponent:GetAvatarMaterialEffectManagerClass(InHandle, InSlotID) end

---@param InHandle UBattleItemHandleBase
---@param InSlotID number
---@return boolean
function UAvatarComponent:IsAvatarMaterialEffectValid(InHandle, InSlotID) end

---@param SlotID number
---@param IsEquipped boolean
function UAvatarComponent:TryCreateAvatarActionEffectsManager(SlotID, IsEquipped) end

---@param InHandle UBattleItemHandleBase
---@param InSlotID number
function UAvatarComponent:GetAvatarActionEffectsManagerClass(InHandle, InSlotID) end

---@param InHandle UBattleItemHandleBase
---@param InSlotID number
---@return boolean
function UAvatarComponent:IsAvatarActionEffectsValid(InHandle, InSlotID) end

---@param renderlevel number
function UAvatarComponent:OnUserQualitySettingChanged(renderlevel) end

---@param InIsApplyingShadow boolean
function UAvatarComponent:OnApplyingShadowChanged(InIsApplyingShadow) end

function UAvatarComponent:UpdateRenderQualityApply() end

---@param renderlevel number
function UAvatarComponent:UpdateIBL(renderlevel) end

---@param InQuality ERenderQuality
---@return number
function UAvatarComponent:ERenderQualityToQualityLevel(InQuality) end

---@return number
function UAvatarComponent:GetQualityLevel() end

---@param handleList UBattleItemHandleBase
---@param needDirectLoad boolean
---@return boolean
function UAvatarComponent:LoadMeshsAsync(handleList, needDirectLoad) end

---@param handleList ULuaArrayHelper<UBattleItemHandleBase>
---@param needDirectLoad boolean
---@return boolean
function UAvatarComponent:LoadMeshListAsync(handleList, needDirectLoad) end

---@param MeshComp UMeshComponent
---@param SkMesh USkeletalMesh
---@param StMesh UStaticMesh
---@return boolean
function UAvatarComponent:ReleaseMeshResourceMaterial(MeshComp, SkMesh, StMesh) end

---@param slot number
---@param type ESyncOperation
---@param handle UBattleItemHandleBase
function UAvatarComponent:NetSyncData(slot, type, handle) end

function UAvatarComponent:MarkAvatarSyncDataDirty() end

---@param Enable boolean
---@param SlotID number
function UAvatarComponent:DrawOutlineEffect(Enable, SlotID) end

---@param matInterface UMaterialInterface
---@param isOpen boolean
---@return boolean
function UAvatarComponent:SetStreamingLOD(matInterface, isOpen) end

---@param meshPack FMeshPackage
---@return boolean
function UAvatarComponent:IsMatHighDeviceQuality(meshPack) end

---Diff to IsMatHighDeviceQuality Consider for Different Platform Device Config (Only PC at the time point when Comments Written down)
---@param meshPack FMeshPackage
---@return boolean
function UAvatarComponent:IsForceUseHighQualityMat_ByMeshPack(meshPack) end

---@return boolean
function UAvatarComponent:IsAutonomousAvatar() end

---@return boolean
function UAvatarComponent:IsTeammate() end

---@param Index number
---@param bIsVisible boolean
function UAvatarComponent:ShowAttachmentByIndex(Index, bIsVisible) end

---@param DoReplaceHandle UBackpackAvatarHandle
---@return boolean
function UAvatarComponent:IsNeedReplaced(DoReplaceHandle) end

function UAvatarComponent:GetAllLoadedHandleBase() end

---@param SlotID number
function UAvatarComponent:DestroyMeshComponent(SlotID) end

---@param InTargetSlot number
---@return boolean
function UAvatarComponent:IsDefaultChildSlot(InTargetSlot) end

---@param InTargetEntity UAvatarEntity
---@return boolean
function UAvatarComponent:IsDefaultChildEntity(InTargetEntity) end

---@param InTargetItemID number
---@return boolean
function UAvatarComponent:IsDefaultChildItem(InTargetItemID) end

---@param SlotTypeValue number
---@return EAvatarSlotType
function UAvatarComponent:GetAvatarSlotTypeFromInt(SlotTypeValue) end

function UAvatarComponent:OnTriggerOutline() end

function UAvatarComponent:GetBaseMatMapping() end

---@param ResID number
function UAvatarComponent:AutoPutOnEquipmentByResID(ResID) end

---@param InHandleIDList ULuaArrayHelper<number>
function UAvatarComponent:ExtractAvatarBodyTypeByIDList(InHandleIDList) end

---@param InHandleBaseList ULuaArrayHelper<UBattleItemHandleBase>
function UAvatarComponent:ExtractAvatarBodyTypeByHandleBaseList(InHandleBaseList) end

function UAvatarComponent:RefreshAvatarBodyType() end

---@param InOldBodyType number
function UAvatarComponent:AvatarBodyTypeDirty(InOldBodyType) end

---@param InTargetBodyType number
function UAvatarComponent:ModifyAvatarBodyType(InTargetBodyType) end

---@param InDelayReleaseVariant UAvatarBodyTypeVariant
function UAvatarComponent:DelayReleaseBodyTypeVariant(InDelayReleaseVariant) end

function UAvatarComponent:ClearDelayReleaseBodyTypeVariant() end

---@param InDelayReleaseBehavior UAvatarBehaviorFeature
function UAvatarComponent:DelayReleaseAvatarBehavior(InDelayReleaseBehavior) end

function UAvatarComponent:ClearDelayReleaseAvatarBehavior() end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration number
---@param InvokeAnimInstance UAnimInstance
function UAvatarComponent:OnAnimNotifyStateBegin(InAnimNotifyState, MeshComp, Animation, TotalDuration, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param FrameDeltaTime number
---@param InvokeAnimInstance UAnimInstance
function UAvatarComponent:OnAnimNotifyStateTick(InAnimNotifyState, MeshComp, Animation, FrameDeltaTime, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param InvokeAnimInstance UAnimInstance
function UAvatarComponent:OnAnimNotifyStateEnd(InAnimNotifyState, MeshComp, Animation, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration number
---@param InvokeAnimInstance UAnimInstance
function UAvatarComponent:BP_OnAnimNotifyStateBegin(InAnimNotifyState, MeshComp, Animation, TotalDuration, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param FrameDeltaTime number
---@param InvokeAnimInstance UAnimInstance
function UAvatarComponent:BP_OnAnimNotifyStateTick(InAnimNotifyState, MeshComp, Animation, FrameDeltaTime, InvokeAnimInstance) end

---@param InAnimNotifyState UAnimNotifyState
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param InvokeAnimInstance UAnimInstance
function UAvatarComponent:BP_OnAnimNotifyStateEnd(InAnimNotifyState, MeshComp, Animation, InvokeAnimInstance) end

---Appearance Gender, Game Setting Gender should Use GetAvatarGameGender (appearance may be not same with game setting)
---@return number
function UAvatarComponent:GetAvatarAppearanceGender() end

---@return number
function UAvatarComponent:BP_GetAvatarAppearanceGender() end

---@param InHandleIDList ULuaArrayHelper<number>
function UAvatarComponent:ExtractAvatarAppearanceGenderByIDList(InHandleIDList) end

---@param InHandleBaseList ULuaArrayHelper<UBattleItemHandleBase>
function UAvatarComponent:ExtractAvatarAppearanceGenderByHandleBaseList(InHandleBaseList) end

function UAvatarComponent:RefreshAvatarAppearanceGender() end

---@param InOldAppearanceGender number
---@param InOldAppearanceGenderMasterSlot number
function UAvatarComponent:AvatarAppearanceGenderDirty(InOldAppearanceGender, InOldAppearanceGenderMasterSlot) end

---@param InTargetAppearanceGender number
---@param InTargetAppearanceGenderMasterSlot number
function UAvatarComponent:ModifyAvatarAppearanceGender(InTargetAppearanceGender, InTargetAppearanceGenderMasterSlot) end

----1 not support, 0 not in async load list, 1 latest async load
---@param AssetRef FSoftObjectPath
---@return number
function UAvatarComponent:GetSoftRefLatestAsyncLoadType(AssetRef) end

---@return boolean
function UAvatarComponent:IsDebugSyncLoadFlush() end

function UAvatarComponent:CheckDynamicCacheDefaultStrategyRelease() end

---@param resId number
---@return boolean
function UAvatarComponent:SetupOnReadyPak(resId) end

---@param OriginRequestResIdList ULuaArrayHelper<number>
function UAvatarComponent:SetupOnReadyPakAsync(OriginRequestResIdList) end

---@param bSucess boolean
---@param AsyncProcessID number
---@param ResId number
function UAvatarComponent:OnSinglePakAsyncCheckCompleted(bSucess, AsyncProcessID, ResId) end

function UAvatarComponent:OnAllPakCheckCompleted() end

function UAvatarComponent:ClearCheckPakList() end

function UAvatarComponent:ForceCompleteAsyncCheckPak() end

---@param itemHandle UBattleItemHandleBase
---@return boolean
function UAvatarComponent:CheckIfAvatarPakDownloaded(itemHandle) end

---@return boolean
function UAvatarComponent:GetEnableInitAvatarModuleWhenGet() end

---@param SlotID number
---@return boolean
function UAvatarComponent:GetAvatarOuterVisiblity(SlotID) end

---@param SlotID number
---@return boolean
function UAvatarComponent:GetAvatarAssembleVisiblity(SlotID) end

---@param SlotID number
---@param IsVisible boolean
---@param MaskValue number
function UAvatarComponent:SetAvatarOuterVisiblity(SlotID, IsVisible, MaskValue) end

---@param slotType EAvatarSlotType
---@param visible boolean
---@param isForce boolean
---@param MaskValue number
function UAvatarComponent:SetAvatarVisibility(slotType, visible, isForce, MaskValue) end

---@return boolean
function UAvatarComponent:GetEnableEntityBP() end

---@param SubSlotIDList ULuaArrayHelper<number>
function UAvatarComponent:GetEntityBP_Internal(SubSlotIDList) end

function UAvatarComponent:GetEntityBP() end

---@param InFlowLightIndex number
function UAvatarComponent:SetFlowLightIndex(InFlowLightIndex) end

---@param InSlotID number
---@return FSyncAdditionDataArray
function UAvatarComponent:GetAdditionalDataBySlot(InSlotID) end

---@return boolean
function UAvatarComponent:GetLobbyLod00State() end

---@return ESelectorConditionLobbyRole
function UAvatarComponent:GetLobbyRole() end

---@return boolean
function UAvatarComponent:CanReinitSkCompOrAnim() end

---@return boolean
function UAvatarComponent:CheckIsDisplayAvatar() end

---@return boolean
function UAvatarComponent:CheckIsDisplayAvatarInteracting() end

---@return boolean
function UAvatarComponent:CheckDisplayAvatarDontHideParticle() end

---@return boolean
function UAvatarComponent:CheckCanDownloadAvatar() end

---@return boolean
function UAvatarComponent:CheckShouldForceUseLobbyMesh() end

function UAvatarComponent:CollectAdditionalResources() end

function UAvatarComponent:LobbyCollectAdditionalResources() end

---@param InAvatarDownloadType EAvatarDownloadSourceType
---@param bAutoDownload boolean
---@return boolean
function UAvatarComponent:TryDownloadNotExistAvatar(InAvatarDownloadType, bAutoDownload) end

function UAvatarComponent:TryStopDownloadNotExistAvatar() end

function UAvatarComponent:TrySuspensionDownloadNotExistAvatar() end

---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
---@return boolean
function UAvatarComponent:TryDownloadNotExistAvatarResponse(InAvatarDownloadParamForCallback) end

---@param InGameStateName string
function UAvatarComponent:HandleGameStateClassChangedForAvatarDownload(InGameStateName) end

---@param GameModeID string
function UAvatarComponent:OnGameModeIDChangedForAvatarDownload(GameModeID) end

---@param InNewGameState string
function UAvatarComponent:OnGameModeStateChangedForAvatarDownload(InNewGameState) end

---@param ClientModeID number
function UAvatarComponent:OnClientModeIDChangedForAvatarDownload(ClientModeID) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
function UAvatarComponent:AvatarSourceDownloadFinished(InAvatarComponent, InAvatarDownloadParamForCallback) end

---@return number
function UAvatarComponent:GetDownloadingTasksNum() end

---@return boolean
function UAvatarComponent:GetIsDownloading() end

---@param InDeltaTime number
function UAvatarComponent:TickAvatarDownload(InDeltaTime) end

---@return boolean
function UAvatarComponent:CheckAvatarCanDownload() end

function UAvatarComponent:EnterSolidfication() end

---@param bAvatarNeedDestroy boolean
function UAvatarComponent:QuitSolidfication(bAvatarNeedDestroy) end

---@param bDrawIdeaOutline number
---@param InIdeaOutlineColor FLinearColor
---@param InThickness number
function UAvatarComponent:SetSolidficationActorOutline(bDrawIdeaOutline, InIdeaOutlineColor, InThickness) end

---@param SkeletalMeshComponents ULuaArrayHelper<USkeletalMeshComponent>
---@param StaticMeshComponents ULuaArrayHelper<UStaticMeshComponent>
---@param MasterComponent UMeshComponent
---@param SlotIDArray ULuaArrayHelper<number>
---@param MasterSlotID number
---@param bIsHeadNeedConverted boolean
function UAvatarComponent:GetComponentsForRSS(SkeletalMeshComponents, StaticMeshComponents, MasterComponent, SlotIDArray, MasterSlotID, bIsHeadNeedConverted) end

function UAvatarComponent:ChangeAnimationBlueprintForConvertion() end

---@param Renderlevel number
function UAvatarComponent:OnUserQualitySettingChangedWhenSolidficationEnabled(Renderlevel) end

---@return boolean
function UAvatarComponent:IsOptimizationOpen() end

---@param GEnableConvertStaticMeshComponent number
---@return boolean
function UAvatarComponent:CheckIfEnableConvertToStaticMesh(GEnableConvertStaticMeshComponent) end

---@return boolean
function UAvatarComponent:CheckIsFlowLightAvatar() end

---@param InSlotID number
---@return number
function UAvatarComponent:GetOriginalIDBySlotID(InSlotID) end

---@return boolean
function UAvatarComponent:CheckIsInLobbyAsyncMode() end

---@param InRoleAndQualitySelector FRoleAndQualitySelector
---@param InRoleAndQualityLobbySelector FRoleAndQualityLobbySelector
---@param InIsAutonomouse boolean
---@param InIsTeammate boolean
---@return boolean
function UAvatarComponent:IsConfigSelectedForLobbyOrBattle(InRoleAndQualitySelector, InRoleAndQualityLobbySelector, InIsAutonomouse, InIsTeammate) end

---@return boolean
function UAvatarComponent:CheckUseMaterialEffectSystem() end

---@param bShouldNegativeTick boolean
---@param IgnoreSlotList ULuaArrayHelper<number>
---@param bIgnoreMasterBone boolean
function UAvatarComponent:SetSkeletalMeshNegativeTickState(bShouldNegativeTick, IgnoreSlotList, bIgnoreMasterBone) end

---@param InSubSystemClass UAvatarSubSystem
function UAvatarComponent:DestorySubSystem(InSubSystemClass) end

---@param InSubSystemClass UAvatarSubSystem
function UAvatarComponent:ActiveSubSystem(InSubSystemClass) end

---@param InSubSystemClass UAvatarSubSystem
function UAvatarComponent:DeactiveSubSystem(InSubSystemClass) end

function UAvatarComponent:ClearAllSubSystem() end

---@param CurrentCharacterAvatarItemIDList ULuaArrayHelper<number>
function UAvatarComponent:ClientRefreshAvatarData(CurrentCharacterAvatarItemIDList) end

---@param CurrentCharacterAvatarItemIDList ULuaArrayHelper<number>
function UAvatarComponent:ClientCreateItemHandleListData(CurrentCharacterAvatarItemIDList) end

---@param CurrentItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param CurrentAsyncLoadMeshReqID number
function UAvatarComponent:ClientOnItemHandleListLoaded(CurrentItemHandleList, CurrentAsyncLoadMeshReqID) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarComponent:HandleClientAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

---@param CurrentItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param CurrentAsyncLoadMeshReqID number
function UAvatarComponent:ClientParseAvatarData(CurrentItemHandleList, CurrentAsyncLoadMeshReqID) end

---@return boolean
function UAvatarComponent:CanAsyncCheckAvatarPakWhenAvatarDataChange() end

---@return boolean
function UAvatarComponent:CanReportAsyncCheckTimeout() end

---@return boolean
function UAvatarComponent:CanForceFinishAsyncCheckOnTimeout() end

function UAvatarComponent:HandleClientHasReactivated() end

---@param Id number
function UAvatarComponent:SetCurrentResId(Id) end

---@param AvatarComponentType EAvatarComponentType
---@return boolean
function UAvatarComponent:ShouldClientOverrideAvatarMeshData(AvatarComponentType) end

---@param OldItemID number
---@param InOperationType ESyncOperation
---@param InHandle UBattleItemHandleBase
---@param InSlot number
function UAvatarComponent:TryBroadcastOnServerAvatarDataChange(OldItemID, InOperationType, InHandle, InSlot) end

function UAvatarComponent:RefreshTextureBulkNotExistsMipCount() end

---@param CheckPakFileList ULuaMapHelper<number, string>
function UAvatarComponent:AddCheckPakFileRecord(CheckPakFileList) end
