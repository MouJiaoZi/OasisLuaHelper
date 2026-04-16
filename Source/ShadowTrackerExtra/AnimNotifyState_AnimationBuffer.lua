---@meta

---动画后摇区域，支持提前打断，begin位置为动画实际结束时间点（缩放计算）
---@class UAnimNotifyState_AnimationBuffer: UAnimNotifyState
---@field bEnableStopSlotAnim boolean
---@field bInterruptOwnerMontage boolean
---@field StopAnimPawnState EPawnState
---@field StopAnimSlotName string
---@field bIsStopWeaponAnimation boolean
---@field WeaponStopAnimSlotName string
---@field BlendOutTimeWhenStop number
local UAnimNotifyState_AnimationBuffer = {}
