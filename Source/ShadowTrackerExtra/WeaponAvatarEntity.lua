---@meta

---@class UWeaponAvatarEntity: UAvatarEntity
---@field MeshCfg FWeaponMeshCfg
---@field bOffhandEntity boolean
---@field bUseOverridedMat boolean
---@field OverridedMeshMat UMaterialInterface
---@field OverridedMeshMatParams ULuaMapHelper<string, number>
---@field CachedPathForFPP ULuaArrayHelper<UObject>
---@field bShouldDelayReleaseBehaviorFeature boolean
---@field CurrentParticleEffects ULuaArrayHelper<UParticleSystemComponent>
local UWeaponAvatarEntity = {}

---@param InSlotID number
---@param InSubSlotID number
---@param AvatarComp UAvatarComponent
function UWeaponAvatarEntity:Init(InSlotID, InSubSlotID, AvatarComp) end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UWeaponAvatarEntity:PutOnEquipmentLogic(ItemHandle) end

function UWeaponAvatarEntity:EnterLogicPipeline() end

---@param PutDefault boolean
function UWeaponAvatarEntity:ClearEquipmentLogic(PutDefault) end

---@param DisableCheck boolean
function UWeaponAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end

---@param SoftPath FSoftObjectPath
function UWeaponAvatarEntity:RenderEntity(SoftPath) end

---@param SoftPath FSoftObjectPath
---@return boolean
function UWeaponAvatarEntity:CreateAndApplyResource(SoftPath) end

function UWeaponAvatarEntity:OnPostRender() end

function UWeaponAvatarEntity:ApplyParticleEffect() end

function UWeaponAvatarEntity:HideParticleEffect() end

function UWeaponAvatarEntity:ShowParticleEffect() end

function UWeaponAvatarEntity:ApplyMaterialParameters() end

function UWeaponAvatarEntity:Apply3DUI_Implementation() end

function UWeaponAvatarEntity:Clear3DUI_Implementation() end

---@param SelfMesh USkeletalMesh
---@return EMeshType
function UWeaponAvatarEntity:GetMeshType(SelfMesh) end

---@return FItemDefineID
function UWeaponAvatarEntity:GetDefineID() end

function UWeaponAvatarEntity:SetSocketName() end

---@return boolean
function UWeaponAvatarEntity:IsForceEnableAnim() end

---@return boolean
function UWeaponAvatarEntity:NeedSyncWithCharacter() end

---@param visibie boolean
function UWeaponAvatarEntity:SetWeaponEntityVisibility(visibie) end

---@param IsEquipped boolean
function UWeaponAvatarEntity:BroadcastWeaponEquipEvent(IsEquipped) end

---@param ForceClear boolean
function UWeaponAvatarEntity:ClearEntity(ForceClear) end

function UWeaponAvatarEntity:SetLobbyLODBias() end

function UWeaponAvatarEntity:ApplyMeshOffsetAdaptation() end

function UWeaponAvatarEntity:InitAvatarBehaviorFeature() end

function UWeaponAvatarEntity:ReleaseAvatarBehaviorFeature() end

function UWeaponAvatarEntity:HandleWeaponEquipped() end

function UWeaponAvatarEntity:HandleWeaponUnequipped() end

function UWeaponAvatarEntity:UpdateRenderQualityApply() end

---@param InTargetVisibility boolean
function UWeaponAvatarEntity:RefreshForAvatarVisibilityFreature(InTargetVisibility) end
