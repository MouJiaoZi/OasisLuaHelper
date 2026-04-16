---@meta

---@class ULobbyModelAircraftShowEntity: ULobbyModelShowEntity
local ULobbyModelAircraftShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelAircraftShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelAircraftShowEntity:ApplyAnimInstance(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matList ULuaArrayHelper<UMaterialInterface>
function ULobbyModelAircraftShowEntity:SetMeshAndMaterial(battleItemHandleBase, meshComp, matList) end

function ULobbyModelAircraftShowEntity:ClearEntity() end

---@param avatarHandle UBackpackWingPlaneHandle
---@param meshComp UMeshComponent
---@param skeletalMesh USkeletalMesh
function ULobbyModelAircraftShowEntity:GetMeshAppliedMaterials(avatarHandle, meshComp, skeletalMesh) end

---@param montage UAnimMontage
---@param NotifySocketName string
---@param AssetPath FSoftObjectPath
function ULobbyModelAircraftShowEntity:SetParticleNotifyResource(montage, NotifySocketName, AssetPath) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelAircraftShowEntity:ShowStaticMesh(battleItemHandleBase) end

---@param AvatarHandle UBackpackWingPlaneHandle
---@param Mesh USkeletalMeshComponent
---@return boolean
function ULobbyModelAircraftShowEntity:IsMatHighDeviceQuality(AvatarHandle, Mesh) end

---@param SkelMeshComp USkeletalMeshComponent
---@param AvatarHandle UBackpackWingPlaneHandle
function ULobbyModelAircraftShowEntity:ApplyPlayerMaterial(SkelMeshComp, AvatarHandle) end
