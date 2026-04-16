---@meta

---@class UBackpackWeaponDSEnableAbilityHandle: UBackpackWeaponAbilityHandle
local UBackpackWeaponDSEnableAbilityHandle = {}

---@param Enable boolean
---@param Slot ESurviveWeaponPropSlot
---@param Weapon ASTExtraWeapon
function UBackpackWeaponDSEnableAbilityHandle:OnEnableChange(Enable, Slot, Weapon) end

---@param Enable boolean
---@param Slot ESurviveWeaponPropSlot
---@param Weapon ASTExtraWeapon
function UBackpackWeaponDSEnableAbilityHandle:OnEnableChange_BP(Enable, Slot, Weapon) end

---@param Enable boolean
---@param Character ASTExtraBaseCharacter
---@param Weapon ASTExtraWeapon
function UBackpackWeaponDSEnableAbilityHandle:OnEnableChange2(Enable, Character, Weapon) end

---@param Enable boolean
---@param Character ASTExtraBaseCharacter
---@param Weapon ASTExtraWeapon
function UBackpackWeaponDSEnableAbilityHandle:OnEnableChange2_BP(Enable, Character, Weapon) end

---@param pawn APawn
function UBackpackWeaponDSEnableAbilityHandle:OnPlayerControllerPossess(pawn) end
