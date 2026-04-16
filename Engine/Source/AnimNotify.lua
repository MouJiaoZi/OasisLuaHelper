---@meta

---@class FBranchingPointNotifyPayload
FBranchingPointNotifyPayload = {}


---@class UAnimNotify: UObject
---@field bCheckAnimIsolation boolean
---@field bCheckAnimIsolation_OnlyNewFPP boolean
---@field bCheckAnimIsolation_OnlyNewFPP_IgnoreOldAnimMode boolean
local UAnimNotify = {}

---Implementable event to get a custom name for the notify
---@return string
function UAnimNotify:GetNotifyName() end

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param InvokeAnimInstance UAnimInstance
---@return boolean
function UAnimNotify:Received_Notify(MeshComp, Animation, InvokeAnimInstance) end
