---@meta

---@class UAvatarEntity: UObject
---@field SlotID number
---@field SubSlotID number
---@field EntityMeshData FMeshData
---@field CachedEntityMeshData FMeshData
---@field DelayRenderDirtyFlag boolean
---@field RenderDirtyFlag boolean
---@field bAppearanceGenderDirty boolean
---@field InnerVisibility boolean
---@field OuterVisibility boolean
---@field IsDrawOutline boolean
---@field SocketName string
---@field SavedAddData FSyncAdditionDataArray
---@field bIsLobbySoloShow boolean
---@field ParticleComponents ULuaArrayHelper<UParticleSystemComponent>
---@field AkComponents ULuaArrayHelper<UAkComponent>
---@field WithModelParticleComponents ULuaSetHelper<UParticleSystemComponent>
---@field MeshAssetPath FSoftObjectPath
---@field ParentDefineID FItemDefineID
---@field SubEntityList ULuaMapHelper<string, UAvatarEntity>
---@field DynamicAvatarBehaviorFeatureList ULuaArrayHelper<UAvatarBehaviorFeature>
---@field TickAvatarBehaviorFeatureList ULuaArrayHelper<UAvatarBehaviorFeature>
---@field bTickTriggerByAvatarBehavior boolean
---@field bBodyTypeDirty boolean
---@field BehaviorPartMap ULuaMapHelper<string, UParticleSystemComponent>
---@field HardObjectReference ULuaSetHelper<UObject>
---@field LastUseMeshPath FSoftObjectPath
local UAvatarEntity = {}

---@param SlotID number
---@param SubSlotID number
---@param AvatarComponent UAvatarComponent
function UAvatarEntity:Init(SlotID, SubSlotID, AvatarComponent) end

---@param ForceClear boolean
function UAvatarEntity:ClearEntity(ForceClear) end

---@param DisableCheck boolean
function UAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end

---@return boolean
function UAvatarEntity:IsAnimHiddenByLOD() end

---@return boolean
function UAvatarEntity:IsAnimHiddenByLODEnable() end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UAvatarEntity:PutOnEquipmentLogic(ItemHandle) end

function UAvatarEntity:EnterLogicPipeline() end

---@param PutDefault boolean
function UAvatarEntity:ClearEquipmentLogic(PutDefault) end

---@param CurrSlotID number
---@param PutDefault boolean
function UAvatarEntity:ClearEquipmentRenderData(CurrSlotID, PutDefault) end

---@param SlotType EAvatarSlotType
function UAvatarEntity:PutOnDefaultEquipment(SlotType) end

---@param InFallbackSlot EAvatarSlotType
---@param InOldItemHandle UBattleItemHandleBase
---@return boolean
function UAvatarEntity:PutOnFallbackItem(InFallbackSlot, InOldItemHandle) end

---@param VisibilityType EAvatarVisiblityType
---@param InSlotID number
---@return boolean
function UAvatarEntity:IsEntityAvailable(VisibilityType, InSlotID) end

function UAvatarEntity:SetSocketName() end

---@return boolean
function UAvatarEntity:IsForceIgnoreSlotSocket() end

function UAvatarEntity:RegisterTick() end

function UAvatarEntity:UnRegisterTick() end

function UAvatarEntity:InitAvatarBehaviorFeature() end

function UAvatarEntity:ReleaseAvatarBehaviorFeature() end

---@param OutBehaviorFeatureResList ULuaArrayHelper<FSoftObjectPath>
function UAvatarEntity:CollectAvatarBehaviorFeatureResource(OutBehaviorFeatureResList) end

---@param OutBehaviorFeatureResList ULuaArrayHelper<FSoftObjectPath>
function UAvatarEntity:LobbyCollectAvatarBehaviorFeatureResource(OutBehaviorFeatureResList) end

function UAvatarEntity:NotifyBehaviorFeatureMeshVisibilityChange() end

function UAvatarEntity:InitAvatarBodyTypeVariant() end

function UAvatarEntity:ReleaseAvatarBodyTypeVariant() end

---@param InOldBodyType number
function UAvatarEntity:AvatarBodyTypeDirty(InOldBodyType) end

---@param OutVariantResList ULuaArrayHelper<FSoftObjectPath>
function UAvatarEntity:CollectAvatarBodyTypeVariantResource(OutVariantResList) end

---@param InOldAppearanceGender number
---@param InOldAppearanceGenderMasterSlot number
function UAvatarEntity:AvatarAppearanceGenderDirty(InOldAppearanceGender, InOldAppearanceGenderMasterSlot) end

---@param OutVariantResList ULuaArrayHelper<FSoftObjectPath>
function UAvatarEntity:CollectAbilityHandleResource(OutVariantResList) end

---@param SoftPath FSoftObjectPath
function UAvatarEntity:RenderEntity(SoftPath) end

---@param SoftPath FSoftObjectPath
function UAvatarEntity:RefreshEntityRender(SoftPath) end

---@param SoftPath FSoftObjectPath
---@return boolean
function UAvatarEntity:CreateAndApplyResource(SoftPath) end

function UAvatarEntity:ApplyAnimation() end

function UAvatarEntity:EnterRenderPipeline() end

---@param InTargetSlotID number
---@param visibie boolean
---@param isForce boolean
---@param MaskValue number
function UAvatarEntity:SetAvatarVisibility(InTargetSlotID, visibie, isForce, MaskValue) end

function UAvatarEntity:UpdateVisibility() end

function UAvatarEntity:OnPreRender() end

function UAvatarEntity:OnPostRender() end

---@param DeltaTime number
function UAvatarEntity:TickEntity(DeltaTime) end

---@param AddData FSyncAdditionDataArray
function UAvatarEntity:ParseAdditionalItem(AddData) end

---@param visibie boolean
function UAvatarEntity:SetAvatarEntityParticleVisibility(visibie) end

---@param InTargetSlotID number
function UAvatarEntity:PreMeshCompDestroy(InTargetSlotID) end

---@param InSkeletalMesh USkeletalMesh
---@param InIsLobby boolean
---@param InIsAutonomous boolean
function UAvatarEntity:ExtractLODDynamicMaskForSkeletalMesh(InSkeletalMesh, InIsLobby, InIsAutonomous) end

---@param InNewCameraMode EPlayerCameraMode
function UAvatarEntity:HandleCameraModeChange(InNewCameraMode) end

---@param SelfMesh USkeletalMesh
---@return EMeshType
function UAvatarEntity:GetMeshType(SelfMesh) end

---@return FItemDefineID
function UAvatarEntity:GetDefineID() end

---@param WorldContextObj UObject
---@return number
function UAvatarEntity:GetReloadDefineID(WorldContextObj) end

---@return FSyncAdditionDataArray
function UAvatarEntity:GetAdditionalData() end

---@param SyncData FSyncAdditionDataArray
function UAvatarEntity:SetAdditionalData(SyncData) end

---@return FMeshData
function UAvatarEntity:GetMeshData() end

function UAvatarEntity:RevertEntityMeshData() end

---@param bEnable boolean
function UAvatarEntity:DrawOutline(bEnable) end

---@param CurrSlotID number
function UAvatarEntity:DestoryRenderRes(CurrSlotID) end

function UAvatarEntity:Clear3DUI() end

function UAvatarEntity:Apply3DUI() end

---@param ParticleComp UParticleSystemComponent
---@param Template UParticleSystem
---@param InParticleSocket string
---@return boolean
function UAvatarEntity:GetOriginPart(ParticleComp, Template, InParticleSocket) end

---@param Name string
function UAvatarEntity:RemoveAdditionalData(Name) end

---@param Name string
---@return FSyncAdditionData
function UAvatarEntity:GetAdditionalDataByName(Name) end

function UAvatarEntity:HandleNearClipPlane() end
