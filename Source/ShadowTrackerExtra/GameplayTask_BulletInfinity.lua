---@meta

---@class UGameplayTask_BulletInfinity: UUAEGameplayTask
---@field bIsBackpack boolean
---@field bIsClip boolean
---@field bBackup_IsBackpack boolean
---@field bBackup_IsClip boolean
local UGameplayTask_BulletInfinity = {}

---@param bIsEquip boolean
---@param WeaponOwner AActor
---@param Weapon ASTExtraWeapon
function UGameplayTask_BulletInfinity:OnWeaponChange(bIsEquip, WeaponOwner, Weapon) end
