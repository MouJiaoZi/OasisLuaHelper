---@meta

---@class UAnimNotifyState_TryEnterAvatarSWP: UAnimNotifyState
---@field AvatarEnterNotifyName string
---@field AvatarEndNotifyName string
---@field bNeedTryEnterSWPInDelegate boolean
---@field bNeedTryEnterSWPInTick boolean
---@field TryEnterIntervalTime number
---@field bRemoveSkinweightAtNotifyEnd boolean
---@field IntervalTimer number
---@field IsInit boolean
---@field CachedEnterNotify FAnimNotifyEvent
---@field CachedEndNotify FAnimNotifyEvent
local UAnimNotifyState_TryEnterAvatarSWP = {}

---@param MeshComp USkeletalMeshComponent
---@param IsSet boolean
function UAnimNotifyState_TryEnterAvatarSWP:TrySetAvatarSkinweight(MeshComp, IsSet) end

---@param Animation UAnimSequenceBase
function UAnimNotifyState_TryEnterAvatarSWP:InitSingleAnimNotify(Animation) end

---@param Animation UAnimSequenceBase
---@return boolean
function UAnimNotifyState_TryEnterAvatarSWP:InitSingleAnimNotifyBySequence(Animation) end

---@param SkelMesh USkeletalMeshComponent
---@param bIsBind boolean
function UAnimNotifyState_TryEnterAvatarSWP:BindDelgate(SkelMesh, bIsBind) end

---@param AvatarCmp UCharacterAvatarComponent
---@param SkelMesh USkeletalMeshComponent
---@param ChangedData FAvatarSkinWeightChangedData
---@param bIsSet boolean
function UAnimNotifyState_TryEnterAvatarSWP:OnAvatarSkinweightChanged(AvatarCmp, SkelMesh, ChangedData, bIsSet) end
