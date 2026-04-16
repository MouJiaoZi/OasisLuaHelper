---@meta

---@class UCommonLobbyModelShowEntity: ULobbyModelShowEntity
local UCommonLobbyModelShowEntity = {}

---@param showActor ALobbyItemShowActor
function UCommonLobbyModelShowEntity:Init(showActor) end

---@param battleItemHandleBase UBattleItemHandleBase
function UCommonLobbyModelShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matList ULuaArrayHelper<UMaterialInterface>
function UCommonLobbyModelShowEntity:SetMeshAndMaterial(battleItemHandleBase, meshComp, matList) end

function UCommonLobbyModelShowEntity:ClearEntity() end

---@param avatarHandle UBackpackAvatarHandle
---@param meshComp UMeshComponent
---@param skeletalMesh USkeletalMesh
---@param staticMesh UStaticMesh
function UCommonLobbyModelShowEntity:GetMeshAppliedMaterials(avatarHandle, meshComp, skeletalMesh, staticMesh) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param fatherComp USceneComponent
---@param fatherEntity ULobbyModelShowEntity
---@param SocketName string
function UCommonLobbyModelShowEntity:ApplyMeshComp(battleItemHandleBase, fatherComp, fatherEntity, SocketName) end

---@param battleItemHandleBase UBattleItemHandleBase
function UCommonLobbyModelShowEntity:SetMeshCompTrans(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function UCommonLobbyModelShowEntity:ApplyAnimInstance(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function UCommonLobbyModelShowEntity:ApplyParticle(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@return number
function UCommonLobbyModelShowEntity:GetSlotID(battleItemHandleBase) end
