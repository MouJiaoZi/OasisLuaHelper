---@meta

---@class FDefaultAvatarRes
FDefaultAvatarRes = {}


---@class FVehicleAvatarMaterialCurveData
---@field NamePair FVehicleAvatarMaterialName
---@field IsLoop boolean
---@field IsPingPong boolean
---@field AverageLerpSpeed number
---@field CurValue number
---@field LerpCurTime number
---@field LerpTotalTime number
---@field LerpStartValue number
---@field LerpEndValue number
FVehicleAvatarMaterialCurveData = {}


---@class FVehicleAvatarSkillInfo
---@field VehicleSkinID number
---@field ShouldRemoveWhenChangeToOtherAvatar boolean
---@field ShouldRemoveWhenChangeToSiblingAvatar boolean
FVehicleAvatarSkillInfo = {}


---@class FOnVehicleAvatarEnterMeshMode : ULuaMulticastDelegate
FOnVehicleAvatarEnterMeshMode = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewMeshMode: EVehicleMeshMode) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehicleAvatarEnterMeshMode:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewMeshMode EVehicleMeshMode
function FOnVehicleAvatarEnterMeshMode:Broadcast(NewMeshMode) end


---@class UVehicleAvatarComponent: UAvatarComponent
---@field OnEnterMeshMode FOnVehicleAvatarEnterMeshMode
---@field DefaultAttachmentMeshID ULuaMapHelper<number, number>
---@field PutOffMeshIfLeave boolean
---@field PutOffAttachIfLeave boolean
---@field VehicleSlotNameMap ULuaMapHelper<EVehicleAvatarSlot, string>
---@field bEnableCheckHandleLoaded boolean
---@field bApplyOriginGear boolean
---@field bForceApplyOriginVelocity boolean
---@field bApplyAllWheelRotationSpeed boolean
---@field bApplyAllRigidBodyOriginVelocity boolean
---@field WheelRotationSpeed ULuaArrayHelper<number>
---@field CurGearBeforeRenderEntity number
---@field RawEngineSpeedBeforeRenderEntity number
---@field VehicleMeshMode EVehicleMeshMode
---@field DefultAvatarRes FDefaultAvatarRes
---@field DefaultAvatarID FItemDefineID
---@field VehicleSkinTrigger AActor
---@field TempMultipleInstanceCounterMap ULuaMapHelper<number, number>
---@field bEntityBPEnable boolean
---@field EntityBP ULuaMapHelper<EVehicleAvatarSlot, UVehicleAvatarEntity>
---@field bEnableAvatarCompBP boolean
---@field bEnableHideDefaultMeshInBigWorld boolean
---@field bApplyNewAvatarCheckMesh boolean
---@field HideDefaultMeshMaxTime number
---@field bOnHidenDefaultMesh boolean
---@field VehicleUISkinTag string
---@field AbilitiesAssociation ULuaMapHelper<UItemHandleBase, FAssociationItem>
---@field SynData ULuaArrayHelper<FMeshSynDataFlag>
---@field VehicleAvatarSkillInfos ULuaArrayHelper<FVehicleAvatarSkillInfo>
---@field SynDataID ULuaArrayHelper<number>
---@field CachedVehicleSkinAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field CachedVehicleSkinAbilityList ULuaArrayHelper<FGameModePlayerItem>
local UVehicleAvatarComponent = {}

---@param defineID FItemDefineID
---@return boolean
function UVehicleAvatarComponent:CheckIsAlreadyEquipped(defineID) end

---@param slotID number
---@return boolean
function UVehicleAvatarComponent:CheckSlotIsEquipped(slotID) end

---@param itemHandle UBattleItemHandleBase
---@param skMesh USkeletalMesh
---@return boolean
function UVehicleAvatarComponent:PutOnMasterComponentByItemHandle(itemHandle, skMesh) end

---@param Index number
---@param itemHandle UBattleItemHandleBase
---@param skMesh USkeletalMesh
---@return boolean
function UVehicleAvatarComponent:PutOnMasterComponentByItemHandleAndSetFlowLightIndex(Index, itemHandle, skMesh) end

---@param itemHandle UBattleItemHandleBase
---@param skMesh USkeletalMesh
---@param stMesh UStaticMesh
---@param InInstanceID number
---@return boolean
function UVehicleAvatarComponent:PutOnEquipmentByItemHandle(itemHandle, skMesh, stMesh, InInstanceID) end

---@param InMainEntity UAvatarEntity
---@param InMultipleEntityInstanceHandle UBattleItemHandleBase
---@return boolean
function UVehicleAvatarComponent:TryCloneEntityForMultipleInstanceHandle(InMainEntity, InMultipleEntityInstanceHandle) end

---@param InItemHandle UBattleItemHandleBase
---@param InAssignedSlotID number
---@param InIsCloneEntityInstance boolean
---@return boolean
function UVehicleAvatarComponent:PutonEquipmentByAssignedSlotID(InItemHandle, InAssignedSlotID, InIsCloneEntityInstance) end

---@param InItemHandleBase UBattleItemHandleBase
---@return boolean
function UVehicleAvatarComponent:IsMultipleAvatarInstanceAvatarHandle(InItemHandleBase) end

---@param resID number
---@return boolean
function UVehicleAvatarComponent:PutOnEquipmentByResID(resID) end

---@param resID number
---@return boolean
function UVehicleAvatarComponent:PutOffEquimentByResID(resID) end

---@param itemHandle UBattleItemHandleBase
function UVehicleAvatarComponent:ClearMeshByItemHandle(itemHandle) end

---@param slot number
---@param putDefault boolean
function UVehicleAvatarComponent:ClearMeshBySlot(slot, putDefault) end

---@param Slot number
---@param Mesh USkeletalMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UVehicleAvatarComponent:ApplySkeletalMeshByID(Slot, Mesh, handle) end

---@param itemHandle UBattleItemHandleBase
---@param meshComp UMeshComponent
function UVehicleAvatarComponent:ApplyMaterial(itemHandle, meshComp) end

function UVehicleAvatarComponent:ResetAttachmentParent() end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UVehicleAvatarComponent:OnItemHandleListLoaded(ItemHandles, AsyncLoadID) end

---@param HandleList ULuaArrayHelper<UBattleItemHandleBase>
function UVehicleAvatarComponent:PushHandlesToPipeline(HandleList) end

---@param AvatarHandle UBattleItemHandleBase
---@param SyncData FMeshSynDataFlag
---@param InMatchCounter number
---@return boolean
function UVehicleAvatarComponent:PreFiltHandles(AvatarHandle, SyncData, InMatchCounter) end

---@param handleList ULuaArrayHelper<UBattleItemHandleBase>
---@param needDirectLoad boolean
---@return boolean
function UVehicleAvatarComponent:LoadMeshListAsync(handleList, needDirectLoad) end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
---@param AsyncLoadID number
function UVehicleAvatarComponent:OnAsyncLoadMeshList(AssetRef, AsyncLoadID) end

function UVehicleAvatarComponent:ApplyBrokenEffect() end

---@param handle UBattleItemHandleBase
---@param AssetRef FSoftObjectPath
---@param bUseLod00 boolean
---@param bExtraConfig boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@return boolean
function UVehicleAvatarComponent:GetMeshResRef(handle, AssetRef, bUseLod00, bExtraConfig, InIsIgnoreBodyTypeVariant) end

function UVehicleAvatarComponent:EnterFPPMode() end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
---@param AsyncLoadID number
---@param MeshMode EVehicleMeshMode
function UVehicleAvatarComponent:OnDetailMeshLoaded(AssetRef, AsyncLoadID, MeshMode) end

function UVehicleAvatarComponent:UpdateAvatarMaterialEffect() end

function UVehicleAvatarComponent:ExitFPPMode() end

function UVehicleAvatarComponent:EnterScopeMode() end

---@param MeshMode EVehicleMeshMode
function UVehicleAvatarComponent:EnterMeshMode(MeshMode) end

---@return boolean
function UVehicleAvatarComponent:IsUseDefaultAvatar() end

---@param InVehicleSkinTrigger AActor
function UVehicleAvatarComponent:SetVehicleSkinTrigger(InVehicleSkinTrigger) end

---@param MeshPack FVehicleMeshCfg
---@param MaterialAssets ULuaArrayHelper<FSoftObjectPath>
function UVehicleAvatarComponent:PrepareRenderAssets(MeshPack, MaterialAssets) end

---@param VehicleStatus ULuaArrayHelper<EAvatarVehicleStatus>
---@param ItemHandleStatus ULuaArrayHelper<EAvatarVehicleStatus>
---@return EAvatarVehicleStatus
function UVehicleAvatarComponent:GetVaildAvatarVehicleStatus(VehicleStatus, ItemHandleStatus) end

---@param StartValue number
---@param EndValue number
---@param CurTime number
---@param AverageLerpSpeed number
---@param ValueCurve UCurveFloat
---@return number
function UVehicleAvatarComponent:GetAvatarVehicleMatLerpValue(StartValue, EndValue, CurTime, AverageLerpSpeed, ValueCurve) end

---@param CurValue number
---@param StartValue number
---@param EndValue number
---@param DeltaTime number
---@param LoopSpeed number
---@return number
function UVehicleAvatarComponent:GetAvatarVehicleMatLoopValue(CurValue, StartValue, EndValue, DeltaTime, LoopSpeed) end

---@param CurValue number
---@param StartValue number
---@param EndValue number
---@param DeltaTime number
---@param LoopSpeed number
---@return number
function UVehicleAvatarComponent:GetAvatarVehicleMatPingPongValue(CurValue, StartValue, EndValue, DeltaTime, LoopSpeed) end

---@param InData FVehicleAvatarMaterialData
---@return boolean
function UVehicleAvatarComponent:IsVaildVehicleAvatarMaterialData(InData) end

---@param InData FVehicleAvatarMaterialData
---@param InCurState EAvatarVehicleStatus
function UVehicleAvatarComponent:AddOrUpdateCurveTickData(InData, InCurState) end

---@param InName FVehicleAvatarMaterialName
---@param InTime number
---@param InCurValue number
---@param InSpeed number
function UVehicleAvatarComponent:UpdateCurveTickData(InName, InTime, InCurValue, InSpeed) end

---@param InName FVehicleAvatarMaterialName
---@param InValue number
---@param InState EAvatarVehicleStatus
function UVehicleAvatarComponent:UpdateMatDataValue(InName, InValue, InState) end

---@param OutData FVehicleAvatarMaterialCurveData
---@param MatData FVehicleAvatarMaterialData
---@param InState EAvatarVehicleStatus
function UVehicleAvatarComponent:InitCurveCurveData(OutData, MatData, InState) end

---@param InVehicle ASTExtraWheeledVehicle
---@param InMinRunSpeed number
---@param InIsRun boolean
---@param InIsBrake boolean
function UVehicleAvatarComponent:OnTickAvatarMaterial(InVehicle, InMinRunSpeed, InIsRun, InIsBrake) end

---@param InMesh USkeletalMeshComponent
---@param InValue number
---@param InState EAvatarVehicleStatus
---@param InNames FVehicleAvatarMaterialName
function UVehicleAvatarComponent:SetDMIParamByNames(InMesh, InValue, InState, InNames) end

---@param InMesh USkeletalMeshComponent
---@param LerpIntervalTime number
function UVehicleAvatarComponent:OnTickCurveMaterial(InMesh, LerpIntervalTime) end

---@param meshPack FVehicleMeshCfg
---@return boolean
function UVehicleAvatarComponent:IsVehicleMatHighDeviceQuality(meshPack) end

function UVehicleAvatarComponent:GetComponetRenderAssets() end

---@param slot number
---@param type ESyncOperation
---@param handle UBattleItemHandleBase
function UVehicleAvatarComponent:NetSyncData(slot, type, handle) end

function UVehicleAvatarComponent:OnRep_AvatarMeshChanged() end

---@param InSlotID number
---@return FSyncAdditionDataArray
function UVehicleAvatarComponent:GetAdditionalDataBySlot(InSlotID) end

---@return boolean
function UVehicleAvatarComponent:GetEnableEntityBP() end

---@param SubSlotIDList ULuaArrayHelper<number>
function UVehicleAvatarComponent:GetEntityBP_Internal(SubSlotIDList) end

function UVehicleAvatarComponent:ProcessHideDefaultMeshInBigWorld() end

function UVehicleAvatarComponent:CreateHideDefaultMeshTimer() end

---@param NeedClearTimer boolean
function UVehicleAvatarComponent:OnShowNewMeshAvatarInBigWorld(NeedClearTimer) end

function UVehicleAvatarComponent:OnShowNewMeshAvatarInBigWorldTimeOut() end

---@param Widget UUAEUserWidget
---@param Force boolean
function UVehicleAvatarComponent:ApplyVehicleUISkin(Widget, Force) end

function UVehicleAvatarComponent:GetAbilityIDsFromAdditionalData() end

---@param InLoadedHandleList ULuaArrayHelper<UBattleItemHandleBase>
function UVehicleAvatarComponent:ClientBuildAssociations(InLoadedHandleList) end

---@param InBackpackVehicleHandle UBackpackVehicleHandle
function UVehicleAvatarComponent:AddVehicleAvatarAbilityItems(InBackpackVehicleHandle) end

---@param InBackpackVehicleHandle UBackpackVehicleHandle
function UVehicleAvatarComponent:RemoveVehicleAvatarAbilityItems(InBackpackVehicleHandle) end

---@param InAvatarDownloadType EAvatarDownloadSourceType
---@param bAutoDownload boolean
---@return boolean
function UVehicleAvatarComponent:TryDownloadNotExistAvatar(InAvatarDownloadType, bAutoDownload) end

function UVehicleAvatarComponent:TryStopDownloadNotExistAvatar() end

---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
---@return boolean
function UVehicleAvatarComponent:TryDownloadNotExistAvatarResponse(InAvatarDownloadParamForCallback) end

---@param InGameStateName string
function UVehicleAvatarComponent:HandleGameStateClassChangedForAvatarDownload(InGameStateName) end

---@param GameModeID string
function UVehicleAvatarComponent:OnGameModeIDChangedForAvatarDownload(GameModeID) end

---@param InNewGameState string
function UVehicleAvatarComponent:OnGameModeStateChangedForAvatarDownload(InNewGameState) end

---@param ClientModeID number
function UVehicleAvatarComponent:OnClientModeIDChangedForAvatarDownload(ClientModeID) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
function UVehicleAvatarComponent:AvatarSourceDownloadFinished(InAvatarComponent, InAvatarDownloadParamForCallback) end

---@return boolean
function UVehicleAvatarComponent:CheckIsFlowLightAvatar() end

function UVehicleAvatarComponent:GetAllMeshComponentList() end

---@param SkeletalMeshComponents ULuaArrayHelper<USkeletalMeshComponent>
---@param StaticMeshComponents ULuaArrayHelper<UStaticMeshComponent>
---@param MasterComponent UMeshComponent
---@param SlotIDArray ULuaArrayHelper<number>
---@param MasterSlotID number
---@param bIsHeadNeedConverted boolean
function UVehicleAvatarComponent:GetComponentsForRSS(SkeletalMeshComponents, StaticMeshComponents, MasterComponent, SlotIDArray, MasterSlotID, bIsHeadNeedConverted) end

---@return boolean
function UVehicleAvatarComponent:IsOptimizationOpen() end

---@param GEnableConvertStaticMeshComponent number
---@return boolean
function UVehicleAvatarComponent:CheckIfEnableConvertToStaticMesh(GEnableConvertStaticMeshComponent) end

---@param InVehicleAvatarSlot EVehicleAvatarSlot
---@return FMeshSynDataFlag
function UVehicleAvatarComponent:GetVehicleAvatarSyncDataBySlot(InVehicleAvatarSlot) end

---@param InVehicleAvatarSlot EVehicleAvatarSlot
---@return number
function UVehicleAvatarComponent:GetVehicleAvatarSyncDataIDBySlot(InVehicleAvatarSlot) end

---@param OldItemID number
---@param InOperationType ESyncOperation
---@param InHandle UBattleItemHandleBase
---@param InSlot number
function UVehicleAvatarComponent:TryBroadcastOnServerAvatarDataChange(OldItemID, InOperationType, InHandle, InSlot) end

---@param VehicleHandle UBackpackVehicleHandle
function UVehicleAvatarComponent:ApplyDisplayVehicleAnimation(VehicleHandle) end
