---@meta

---@class E_AnimNotifyState_AdaptType
---@field E_ANS_AdaptType_BeginAndEnd number @开始通知、结束通知都执行
---@field E_ANS_AdaptType_NotifyBegin number @仅执行开始通知
---@field E_ANS_AdaptType_NotifyEnd number @仅执行结束通知
E_AnimNotifyState_AdaptType = {}


---@class UAnimNotifyState_BoneRetarget_AdjustSocketAttachedComp: UAnimNotifyState
---@field AdjustType E_AnimNotifyState_AdaptType
---@field AdjustFromSlot EAvatarSlotType
---@field bFromSlotMustUseAdjustSocketAttachedCompFeature boolean
---@field AdjustToSlot EAvatarSlotType
---@field bToSlotMustUseAdjustSocketAttachedCompFeature boolean
---@field AdjustSocketName string
---@field CustomParamMatchName string
local UAnimNotifyState_BoneRetarget_AdjustSocketAttachedComp = {}

---@param InTriggerActor AActor
---@param InAdjustSocketAttachedCompInfo FAdjustSocketAttachedCompInfo
function UAnimNotifyState_BoneRetarget_AdjustSocketAttachedComp:NotifyBegin_NonAnim(InTriggerActor, InAdjustSocketAttachedCompInfo) end

---@param InTriggerActor AActor
---@param InAdjustSocketAttachedCompInfo FAdjustSocketAttachedCompInfo
function UAnimNotifyState_BoneRetarget_AdjustSocketAttachedComp:NotifyEnd_NonAnim(InTriggerActor, InAdjustSocketAttachedCompInfo) end
