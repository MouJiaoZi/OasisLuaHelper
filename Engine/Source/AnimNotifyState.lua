---@meta

---@class UAnimNotifyState: UObject
---@field InOldFPPAnimMode_ChangeToNewFPPMesh boolean
---@field bEnableBoneRetargetAdaptFeature boolean
---@field bCheckAnimIsolation boolean
---@field bCheckAnimIsolation_OnlyNewFPP boolean
---@field bCheckAnimIsolation_OnlyNewFPP_IgnoreOldAnimMode boolean
---@field bCheckAnimIsolation_OnlyTPP boolean @仅在TPP（第三人称）下生效，开启后此NotifyState只会在TPP AnimInstance中触发
local UAnimNotifyState = {}

---Implementable event to get a custom name for the notify
---@return string
function UAnimNotifyState:GetNotifyName() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration number
---@param InvokeAnimInstance UAnimInstance
---@return boolean
function UAnimNotifyState:Received_NotifyBegin(MeshComp, Animation, TotalDuration, InvokeAnimInstance) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param FrameDeltaTime number
---@param InvokeAnimInstance UAnimInstance
---@return boolean
function UAnimNotifyState:Received_NotifyTick(MeshComp, Animation, FrameDeltaTime, InvokeAnimInstance) end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param InvokeAnimInstance UAnimInstance
---@return boolean
function UAnimNotifyState:Received_NotifyEnd(MeshComp, Animation, InvokeAnimInstance) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAnimNotifyState:ClearBoneRetargetAdaptState(InTargetSkelMeshComp) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
---@return boolean
function UAnimNotifyState:IsBoneRetargetAdaptInitDone(InTargetSkelMeshComp) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
---@return boolean
function UAnimNotifyState:IsEnableBoneRetargetAdaptFeature(InTargetSkelMeshComp) end
