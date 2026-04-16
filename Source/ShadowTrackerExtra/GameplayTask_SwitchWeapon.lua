---@meta

---@class FGameplayTask_SwitchWeapon_Data
---@field WeaponSlot ESurviveWeaponPropSlot
---@field SwitchBackWhenFinish boolean
---@field bUseAnimation boolean
---@field bForceFinishPreviousSwitch boolean
---@field bIgnoreState boolean
---@field bDSForceSwitch boolean
FGameplayTask_SwitchWeapon_Data = {}


---@class UGameplayTask_SwitchWeapon: UUAEGameplayTask
---@field SwitchWeapon_Data FGameplayTask_SwitchWeapon_Data
---@field bSwitched boolean
local UGameplayTask_SwitchWeapon = {}
