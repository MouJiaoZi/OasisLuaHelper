---@meta

---@class UGameplayTask_AutoAim: UUAEGameplayTask
---@field AutoAimingConfig FAutoAimingConfig
---@field Config FAutoAimingTaskConfig
---@field bCanAimNPC boolean
---@field bCanAimNPC_Backup boolean
local UGameplayTask_AutoAim = {}

---@param bIsEquip boolean
---@param WeaponOwner AActor
---@param Weapon ASTExtraWeapon
function UGameplayTask_AutoAim:OnWeaponChange(bIsEquip, WeaponOwner, Weapon) end
