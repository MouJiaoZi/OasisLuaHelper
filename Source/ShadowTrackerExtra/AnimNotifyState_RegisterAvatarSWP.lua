---@meta

---@class UAnimNotifyState_RegisterAvatarSWP: UAnimNotifyState
---@field SkinWeightProfileName string
---@field bNeedTryEnterSWPInDelegate boolean
---@field CachedAnimSequenceName string
---@field bIsEnd boolean
---@field bForceDisable boolean
local UAnimNotifyState_RegisterAvatarSWP = {}

---@param MeshComp USkeletalMeshComponent
---@param RegisterName string
---@param bIsSetSWP boolean
function UAnimNotifyState_RegisterAvatarSWP:RegisterSWP(MeshComp, RegisterName, bIsSetSWP) end

---@param SkelMesh USkeletalMeshComponent
---@param bIsBind boolean
function UAnimNotifyState_RegisterAvatarSWP:BindDelgate(SkelMesh, bIsBind) end

---@param AvatarCmp UCharacterAvatarComponent
---@param SkelMesh USkeletalMeshComponent
---@param ChangedData FAvatarSkinWeightChangedData
---@param bIsSet boolean
function UAnimNotifyState_RegisterAvatarSWP:OnAvatarSkinweightChanged(AvatarCmp, SkelMesh, ChangedData, bIsSet) end
