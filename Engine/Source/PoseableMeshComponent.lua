---@meta

---UPoseableMeshComponent that allows bone transforms to be driven by blueprint.
---@class UPoseableMeshComponent: USkinnedMeshComponent
local UPoseableMeshComponent = {}

---@param BoneName string
---@param InTransform FTransform
---@param BoneSpace EBoneSpaces
function UPoseableMeshComponent:SetBoneTransformByName(BoneName, InTransform, BoneSpace) end

---@param BoneName string
---@param InLocation FVector
---@param BoneSpace EBoneSpaces
function UPoseableMeshComponent:SetBoneLocationByName(BoneName, InLocation, BoneSpace) end

---@param BoneName string
---@param InRotation FRotator
---@param BoneSpace EBoneSpaces
function UPoseableMeshComponent:SetBoneRotationByName(BoneName, InRotation, BoneSpace) end

---@param BoneName string
---@param InScale3D FVector
---@param BoneSpace EBoneSpaces
function UPoseableMeshComponent:SetBoneScaleByName(BoneName, InScale3D, BoneSpace) end

---@param BoneName string
---@param BoneSpace EBoneSpaces
---@return FTransform
function UPoseableMeshComponent:GetBoneTransformByName(BoneName, BoneSpace) end

---@param BoneName string
---@param BoneSpace EBoneSpaces
---@return FVector
function UPoseableMeshComponent:GetBoneLocationByName(BoneName, BoneSpace) end

---@param BoneName string
---@param BoneSpace EBoneSpaces
---@return FRotator
function UPoseableMeshComponent:GetBoneRotationByName(BoneName, BoneSpace) end

---@param BoneName string
---@param BoneSpace EBoneSpaces
---@return FVector
function UPoseableMeshComponent:GetBoneScaleByName(BoneName, BoneSpace) end

---@param BoneName string
function UPoseableMeshComponent:ResetBoneTransformByName(BoneName) end

---@param InComponentToCopy USkeletalMeshComponent
function UPoseableMeshComponent:CopyPoseFromSkeletalComponent(InComponentToCopy) end
