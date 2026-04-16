---@meta

---@class FAvatarSlotAnimCondition
---@field TargetAvatarSlot EAvatarSlotType
---@field bDisableBoneSolver boolean
---@field bForceStopOverridePoseType boolean
FAvatarSlotAnimCondition = {}


---@class UAnimNotifyState_AvatarPlayMontage: UAnimNotifyState
---@field bDisableNotify boolean
---@field bDisableBoneSolver boolean
---@field bForceStopOverridePoseType boolean
---@field TargetAvatarSlot EAvatarSlotType
---@field SameAvatarSlotAnimConditions ULuaArrayHelper<FAvatarSlotAnimCondition>
---@field AvatarSlotAnimConditions ULuaArrayHelper<FAvatarSlotAnimCondition>
local UAnimNotifyState_AvatarPlayMontage = {}
