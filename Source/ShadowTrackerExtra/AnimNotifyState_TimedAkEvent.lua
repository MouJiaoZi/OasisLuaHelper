---@meta

---@class UAnimNotifyState_TimedAkEvent: UAnimNotifyState
---@field bTeammateUseAnotherEvent boolean
---@field SocketName string
---@field TransformOffset FTransform
---@field ComponentTag string
local UAnimNotifyState_TimedAkEvent = {}

---@param InTriggerMeshComp USkeletalMeshComponent
---@return boolean
function UAnimNotifyState_TimedAkEvent:IsMeshCompOwnedByTeammate(InTriggerMeshComp) end
