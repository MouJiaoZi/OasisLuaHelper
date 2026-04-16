---@meta

---@class UWeaponAnimInstance_Upgraded_Wing: UWeaponAnimInstance_Upgraded
---@field bEnterUpgradedState_C boolean
---@field bLeaveUpgradedState_C boolean
---@field bUseMontageControl_C boolean
---@field TriggerWingStateList ULuaArrayHelper<EPawnState>
---@field ForbiddenWingStateList ULuaArrayHelper<EPawnState>
local UWeaponAnimInstance_Upgraded_Wing = {}

---@param InTargetState EPawnState
---@param InInterruptState EPawnState
---@param InIsInterrupted boolean
function UWeaponAnimInstance_Upgraded_Wing:RefreshWeaponWingState(InTargetState, InInterruptState, InIsInterrupted) end
