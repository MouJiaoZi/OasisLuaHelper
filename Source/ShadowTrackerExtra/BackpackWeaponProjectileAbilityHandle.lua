---@meta

---@class UBackpackWeaponProjectileAbilityHandle: UBackpackWeaponAbilityHandle
local UBackpackWeaponProjectileAbilityHandle = {}

---@param InProjectile AActor
function UBackpackWeaponProjectileAbilityHandle:ReceiveModifyProjectile(InProjectile) end

---@param Name string
---@return FSoftObjectPath
function UBackpackWeaponProjectileAbilityHandle:FindAsset(Name) end
