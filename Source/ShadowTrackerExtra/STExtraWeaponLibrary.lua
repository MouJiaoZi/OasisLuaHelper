---@meta

---@class USTExtraWeaponLibrary: UBlueprintFunctionLibrary
local USTExtraWeaponLibrary = {}

---@param Weapon ASTExtraWeapon
---@return boolean
function USTExtraWeaponLibrary:IsWeaponInFastDraw(Weapon) end

---@param WeaponState EFreshWeaponStateType
---@return boolean
function USTExtraWeaponLibrary:IsWeaponStateInFastDraw(WeaponState) end

---@param Weapon ASTExtraWeapon
---@return boolean
function USTExtraWeaponLibrary:IsWeaponKeepInFastDraw(Weapon) end

---@param Weapon ASTExtraWeapon
---@return boolean
function USTExtraWeaponLibrary:IsWeaponEnteringFastDraw(Weapon) end

---@param Weapon ASTExtraWeapon
---@return boolean
function USTExtraWeaponLibrary:IsWeaponLeavingFastDraw(Weapon) end
