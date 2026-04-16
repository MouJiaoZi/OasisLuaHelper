---@meta

---@class UAnimNotifyState_TimedAkEventWithTagComp: UAnimNotifyState
---@field bTeammateUseAnotherEvent boolean
---@field SocketName string
---@field TransformOffset FTransform
---@field ComponentTag string
---@field bStopWhenEnd boolean
---@field PlayingID number
local UAnimNotifyState_TimedAkEventWithTagComp = {}

---@param InTriggerMeshComp USkeletalMeshComponent
---@return boolean
function UAnimNotifyState_TimedAkEventWithTagComp:IsMeshCompOwnedByTeammate(InTriggerMeshComp) end
