---@meta

---表情动画的播放音频通知
---@class UAnimNotifyState_EmoteTimeAkEvent: UAnimNotifyState_TimedAkEvent
---@field AkOwners ULuaMapHelper<number, USkeletalMeshComponent>
---@field FollowingPlayerKey number
local UAnimNotifyState_EmoteTimeAkEvent = {}

---是否满足播放音频条件
---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param TotalDuration number
---@param InvokeAnimInstance UAnimInstance
---@return boolean
function UAnimNotifyState_EmoteTimeAkEvent:CanPlayAkEvent(MeshComp, Animation, TotalDuration, InvokeAnimInstance) end
