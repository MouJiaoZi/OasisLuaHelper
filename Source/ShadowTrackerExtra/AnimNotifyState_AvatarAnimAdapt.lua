---@meta

---@class UAnimNotifyState_AvatarAnimAdapt: UAnimNotifyState
---@field bEnableTickDetect boolean
---@field AvatarAnimAdaptMap ULuaMapHelper<EAvatarSlotType, FAvatarAnimAdaptParam>
local UAnimNotifyState_AvatarAnimAdapt = {}

---@param InTriggerActor AActor
---@param InAdaptSlot EAvatarSlotType
---@param InAnimAdaptParam FAvatarAnimAdaptParam
function UAnimNotifyState_AvatarAnimAdapt:NotifyBegin_NonAnim_AvatarAnimAdapt(InTriggerActor, InAdaptSlot, InAnimAdaptParam) end

---@param InTriggerActor AActor
---@param InAdaptSlot EAvatarSlotType
---@param InAnimAdaptParam FAvatarAnimAdaptParam
function UAnimNotifyState_AvatarAnimAdapt:NotifyEnd_NonAnim_AvatarAnimAdapt(InTriggerActor, InAdaptSlot, InAnimAdaptParam) end
