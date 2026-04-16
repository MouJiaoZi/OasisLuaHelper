---@meta

---@class UEscapePreviewItemShowEntity: ULobbyModelShowEntity
local UEscapePreviewItemShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function UEscapePreviewItemShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
function UEscapePreviewItemShowEntity:ApplyAnimInstance(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matList ULuaArrayHelper<UMaterialInterface>
function UEscapePreviewItemShowEntity:SetMeshAndMaterial(battleItemHandleBase, meshComp, matList) end

---@param avatarHandle UEscapePreviewItemHandle
---@param meshComp UMeshComponent
---@param skeletalMesh USkeletalMesh
function UEscapePreviewItemShowEntity:GetSkMeshAppliedMaterials(avatarHandle, meshComp, skeletalMesh) end

---@param battleItemHandleBase UBattleItemHandleBase
function UEscapePreviewItemShowEntity:SetModelTranslucentState(battleItemHandleBase) end
