---@meta

---@class UCharacterAvatarEntity: UAvatarEntity
---@field PendingRenderFlag boolean
---@field EquipedPendantSlotID number
---@field EquipedDefaultPendantSlotID number
---@field ExcludeUseMasterLODList ULuaArrayHelper<number>
---@field NeedUnHideBone ULuaArrayHelper<string>
---@field ForceHide boolean
---@field ChildOf ULuaArrayHelper<number>
---@field MarkMatOverride boolean
---@field bEmotionFeatureExcluded boolean
---@field bRecordPendingReplacedAvatarHandle boolean
local UCharacterAvatarEntity = {}

---@param ForceClear boolean
function UCharacterAvatarEntity:ClearEntity(ForceClear) end

---@param DisableCheck boolean
function UCharacterAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end

---@return boolean
function UCharacterAvatarEntity:IsAnimHiddenByLOD() end

---@return boolean
function UCharacterAvatarEntity:IsAnimHiddenByLODEnable() end

---@return boolean
function UCharacterAvatarEntity:IsConsiderAnimHiddenByLOD() end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UCharacterAvatarEntity:PutOnEquipmentLogic(ItemHandle) end

function UCharacterAvatarEntity:EnterLogicPipeline() end

---@param PutDefault boolean
function UCharacterAvatarEntity:ClearEquipmentLogic(PutDefault) end

---@param SlotType EAvatarSlotType
function UCharacterAvatarEntity:PutOnDefaultEquipment(SlotType) end

---@param InFallbackSlot EAvatarSlotType
---@param InOldItemHandle UBattleItemHandleBase
---@return boolean
function UCharacterAvatarEntity:PutOnFallbackItem(InFallbackSlot, InOldItemHandle) end

function UCharacterAvatarEntity:InitAvatarBehaviorFeature() end

function UCharacterAvatarEntity:ReleaseAvatarBehaviorFeature() end

function UCharacterAvatarEntity:InitAvatarBodyTypeVariant() end

function UCharacterAvatarEntity:ReleaseAvatarBodyTypeVariant() end

---@param InOldBodyType number
function UCharacterAvatarEntity:AvatarBodyTypeDirty(InOldBodyType) end

function UCharacterAvatarEntity:CheckExcludeSlotFeatureTag() end

function UCharacterAvatarEntity:DoPostLogic() end

---@param InItemHandle UBackpackAvatarHandle
function UCharacterAvatarEntity:CheckPendantForEquipmentPutOn(InItemHandle) end

---@param InItemHandle UBackpackAvatarHandle
function UCharacterAvatarEntity:CheckDefaultPendantForEquipmentPutOn(InItemHandle) end

function UCharacterAvatarEntity:CheckPendantForEquipmentPutOff() end

function UCharacterAvatarEntity:CheckClothingUpgradeCondition() end

---@param ShouldHide boolean
function UCharacterAvatarEntity:DealSlotHidden(ShouldHide) end

---@param Slot number
---@param DoHiddenSlot number
---@param ShouldHide boolean
---@return boolean
function UCharacterAvatarEntity:SetSlotHidden(Slot, DoHiddenSlot, ShouldHide) end

---@param IsShow boolean
function UCharacterAvatarEntity:SetInnerVisibility(IsShow) end

function UCharacterAvatarEntity:DealSelfHide() end

function UCharacterAvatarEntity:DealSelfReplaced() end

---@param HideMark boolean
function UCharacterAvatarEntity:ProcessBoneVisibility(HideMark) end

function UCharacterAvatarEntity:ProcessSelfBoneVisbility() end

---@param ReplacedMark boolean
function UCharacterAvatarEntity:SetSlotMeshByReplacedMark(ReplacedMark) end

---@param SourceSlot number
---@param DestSlot number
---@param ReplaceMark boolean
---@return boolean
function UCharacterAvatarEntity:ReplaceTargetSlotMesh(SourceSlot, DestSlot, ReplaceMark) end

---@param ReplaceMark boolean
function UCharacterAvatarEntity:RefreshMultiReplaceData(ReplaceMark) end

---@param ID number
---@param OtherSlot ULuaArrayHelper<number>
function UCharacterAvatarEntity:AddMultiReplacedData(ID, OtherSlot) end

---@param InNewPutonSlot number
function UCharacterAvatarEntity:CheckMultiReplaceDataUpdate(InNewPutonSlot) end

---@param NeedReplace boolean
function UCharacterAvatarEntity:ProcessReplaceMaterial(NeedReplace) end

---@param SourceSlot number
---@param DestSlot number
---@param IsReplace boolean
function UCharacterAvatarEntity:ReplaceTargetMaterial(SourceSlot, DestSlot, IsReplace) end

function UCharacterAvatarEntity:DealWithSelfReplaceMaterial() end

function UCharacterAvatarEntity:ApplyMeshCompCollision() end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:LobbyCollectDesiredResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:LobbyCollectMaterialResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:LobbyCollectMeshResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:LobbyCollectAnimResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:LobbyCollectParticleResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UCharacterAvatarEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:CollectMaterialResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:CollectMeshResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:CollectAnimResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:CollectParticleResource(CollectRes) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarEntity:CollectAudioResource(CollectRes) end

function UCharacterAvatarEntity:CollectAudioResourceForClothingUpgrade() end

function UCharacterAvatarEntity:CollectParticleResourceForClothingUpgrade() end

---@param InPawnState EPawnState
---@param InGender number
---@param CharacterAvatarActionEffectsDataItemInHandle FCharacterAvatarActionEffectsDataItem
---@param Type EResourceType
---@param AvatarActionEffectAbilityHandles ULuaArrayHelper<UBackpackCharacterAvatarActionEffectAbilityHandle>
function UCharacterAvatarEntity:GetActionEffectAssetPathWithAbilityHandle(InPawnState, InGender, CharacterAvatarActionEffectsDataItemInHandle, Type, AvatarActionEffectAbilityHandles) end

---@param InTwinsAbilityHandle UBackpackCharacterAvatarTwinsAbilityHandle
---@param Type EResourceType
---@param Gender number
function UCharacterAvatarEntity:GetChangeTwinsAssetWithAbilityHandle(InTwinsAbilityHandle, Type, Gender) end

---@param SoftPath FSoftObjectPath
function UCharacterAvatarEntity:RenderEntity(SoftPath) end

---@param SoftPath FSoftObjectPath
---@return boolean
function UCharacterAvatarEntity:CreateAndApplyResource(SoftPath) end

---@param InTargetMeshType EMeshType
function UCharacterAvatarEntity:TryClearDirtyMeshComp(InTargetMeshType) end

function UCharacterAvatarEntity:EnterRenderPipeline() end

function UCharacterAvatarEntity:ApplyAnimation() end

function UCharacterAvatarEntity:ApplyOverrideMaterial() end

---@param CurrSlotID number
---@param PutDefault boolean
function UCharacterAvatarEntity:ClearEquipmentRenderData(CurrSlotID, PutDefault) end

---@param CurrSlotID number
---@param PutDefault boolean
function UCharacterAvatarEntity:AvatarAsync_ClearEquipmentRenderData(CurrSlotID, PutDefault) end

function UCharacterAvatarEntity:RefreshVisable() end

function UCharacterAvatarEntity:UpdateVisibility() end

---@param Inner boolean
---@param Outer boolean
function UCharacterAvatarEntity:SetVisibilityProcess(Inner, Outer) end

---@param Visible boolean
function UCharacterAvatarEntity:SetParticleVisiblity(Visible) end

function UCharacterAvatarEntity:DealHideBone() end

---@return FSyncAdditionDataArray
function UCharacterAvatarEntity:GetAdditionalData() end

---@param SyncData FSyncAdditionDataArray
function UCharacterAvatarEntity:ParseAdditionalItem(SyncData) end

---@param ClearHandle UBattleItemHandleBase
---@param InIsResetChildInfo boolean
function UCharacterAvatarEntity:ClearAdditionalItem(ClearHandle, InIsResetChildInfo) end

---@param InClearHandle UBattleItemHandleBase
function UCharacterAvatarEntity:ClearSelfFromAdditionalItem(InClearHandle) end

---@return boolean
function UCharacterAvatarEntity:IsChildEntity() end

---@param InTargetMeshComp UMeshComponent
function UCharacterAvatarEntity:ProcessMeshLODBias(InTargetMeshComp) end

---@param InTargetSlotID number
function UCharacterAvatarEntity:PreMeshCompDestroy_Implementation(InTargetSlotID) end

function UCharacterAvatarEntity:UpdateRenderQualityApply() end

function UCharacterAvatarEntity:UpdateLobbyAvatarFeature() end

---@param DoReplaceSlots ULuaArrayHelper<number>
function UCharacterAvatarEntity:GetReplacingSlots(DoReplaceSlots) end

---@param SelfMesh USkeletalMesh
---@return EMeshType
function UCharacterAvatarEntity:GetMeshType(SelfMesh) end

---@return FItemDefineID
function UCharacterAvatarEntity:GetDefineID() end

function UCharacterAvatarEntity:OnLoadParticles() end

---@param InParticleComponent UParticleSystemComponent
---@param NewTransform FTransform
function UCharacterAvatarEntity:RefreshParticlesScaleInAsyncMode(InParticleComponent, NewTransform) end

function UCharacterAvatarEntity:OnRefreshParticles() end

function UCharacterAvatarEntity:DetectAvatarSickLOD() end

---@return boolean
function UCharacterAvatarEntity:IsEmotionFeatureDeactived() end

function UCharacterAvatarEntity:TryActiveEmotionFeature() end

function UCharacterAvatarEntity:TryDeactiveEmotionFeature() end

---@param PredictedLOD number
function UCharacterAvatarEntity:OnMeshLODChanged(PredictedLOD) end

---@param InSkMeshComp USkeletalMeshComponent
function UCharacterAvatarEntity:OnMeshVisibilityChanged(InSkMeshComp) end

---@param InTargetVisibility boolean
function UCharacterAvatarEntity:RefreshForAvatarVisibilityFreature(InTargetVisibility) end

function UCharacterAvatarEntity:CheckAvatarMeshCompatibleWithMaster() end

---@param InShouldAlwaysShow boolean
function UCharacterAvatarEntity:CheckAvatarMeshError(InShouldAlwaysShow) end

---@return boolean
function UCharacterAvatarEntity:LobbyGetLod00State() end

function UCharacterAvatarEntity:HandleBackWeaponOffsetTransform() end

---@param OverrideSlot number
---@return boolean
function UCharacterAvatarEntity:CheckOverrideHideBoneConfigMatch(OverrideSlot) end

---@param BoneNameArray ULuaArrayHelper<string>
---@param CurSlotId number
function UCharacterAvatarEntity:AfterClearUnHideBoneForOverrider(BoneNameArray, CurSlotId) end

---@param InSkMeshComp USkeletalMeshComponent
function UCharacterAvatarEntity:OnMeshHideParticle(InSkMeshComp) end

function UCharacterAvatarEntity:UpdateEntityChildOfProperty() end

---@param InAnimIns UAnimInstance
function UCharacterAvatarEntity:MarkAnimBPIsAvatarBP(InAnimIns) end
