---@meta

---@class ULobbyModelCombineShowEntity: ULobbyModelShowEntity
---@field MeshComponentList ULuaArrayHelper<UMeshComponent>
---@field AvatarComponentList ULuaArrayHelper<UCharacterAvatarComponent>
---@field bUseOldCombineConfigMode boolean
local ULobbyModelCombineShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelCombineShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelCombineShowEntity:ApplyAnimInstance(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matList ULuaArrayHelper<UMaterialInterface>
function ULobbyModelCombineShowEntity:SetMeshAndMaterial(battleItemHandleBase, meshComp, matList) end

---@param avatarHandle UBackpackCombineModelHandle
---@param meshComp UMeshComponent
---@param skeletalMesh USkeletalMesh
function ULobbyModelCombineShowEntity:GetMeshAppliedMaterials(avatarHandle, meshComp, skeletalMesh) end

function ULobbyModelCombineShowEntity:ClearEntity() end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelCombineShowEntity:SetModelTranslucentState(battleItemHandleBase) end

---@param ClothHandle UBackpackAvatarHandle
---@param CharAvatarComponent UCharacterAvatarComponent
---@param bIsMale boolean
---@param LODConfig FLOD00Config
---@param AssetRef FSoftObjectPath
---@return boolean
function ULobbyModelCombineShowEntity:GetMeshResRef(ClothHandle, CharAvatarComponent, bIsMale, LODConfig, AssetRef) end

---@param SkMesh USkeletalMeshComponent
---@param SkeletalMeshPath FSoftObjectPath
---@param AnimAssetPath FSoftObjectPath
function ULobbyModelCombineShowEntity:EnterAsyncLoadMeshLogic(SkMesh, SkeletalMeshPath, AnimAssetPath) end

---@param CharAvatarComponent UCharacterAvatarComponent
---@param CurAvatarHandle UBackpackAvatarHandle
---@param SkMesh USkeletalMeshComponent
---@param Gender number
function ULobbyModelCombineShowEntity:EnterSyncPutOnLogic(CharAvatarComponent, CurAvatarHandle, SkMesh, Gender) end

---@param CharAvatarComponent UCharacterAvatarComponent
---@param AnimAssetRef FSoftObjectPath
function ULobbyModelCombineShowEntity:EnterSyncAnimLogic(CharAvatarComponent, AnimAssetRef) end

---@param CharAvatarComponent UCharacterAvatarComponent
function ULobbyModelCombineShowEntity:InitCharacterAvatarComponent(CharAvatarComponent) end

---@param SkMesh USkeletalMeshComponent
---@param Transform FTransform
function ULobbyModelCombineShowEntity:SetSkeletalMeshOffset(SkMesh, Transform) end

---@param SkMesh USkeletalMeshComponent
---@param SkeletalMeshPath FSoftObjectPath
function ULobbyModelCombineShowEntity:SetSKMesh(SkMesh, SkeletalMeshPath) end

---@return number
function ULobbyModelCombineShowEntity:GetCurDeviceLevel() end

---@param CharAvatarComponent UCharacterAvatarComponent
function ULobbyModelCombineShowEntity:ForceSyncUpdateAvatar(CharAvatarComponent) end

---@param CharAvatarComponent UCharacterAvatarComponent
function ULobbyModelCombineShowEntity:ReceiveShowModelBySyncMode(CharAvatarComponent) end

---@param CharAvatarComponent UCharacterAvatarComponent
function ULobbyModelCombineShowEntity:ReceiveShowModelByAsyncMode(CharAvatarComponent) end

---@param SKMesh USkeletalMeshComponent
---@param SkeletalMeshTranslucentMap ULuaMapHelper<USkeletalMesh, FCombineModelTranslucentDetailConfig>
function ULobbyModelCombineShowEntity:SetModelTranslucentConfigByAsyncMode(SKMesh, SkeletalMeshTranslucentMap) end

---@param battleItemHandleBase UBattleItemHandleBase
---@return boolean
function ULobbyModelCombineShowEntity:EnterHotUpdateLogic(battleItemHandleBase) end

---@param SkMesh USkeletalMeshComponent
function ULobbyModelCombineShowEntity:OnNextTickSetMeshVisibility(SkMesh) end
