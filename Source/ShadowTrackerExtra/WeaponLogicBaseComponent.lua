---@meta

---@class UWeaponLogicBaseComponent: UActorComponent
---@field bApplyOwnerNetRelavance boolean
---@field bOverrideOwnerNetRelavance boolean
---@field bTickInSimulator boolean
local UWeaponLogicBaseComponent = {}

---@param TargetWeapon ASTExtraWeapon
function UWeaponLogicBaseComponent:Init(TargetWeapon) end

---@param TargetWeapon ASTExtraWeapon
function UWeaponLogicBaseComponent:InitBP(TargetWeapon) end

---@param OwnerActor AActor
function UWeaponLogicBaseComponent:BP_HandleGetOwnerActor(OwnerActor) end

---@return boolean
function UWeaponLogicBaseComponent:IsLocalOrSpectorPlayer() end

---@param Role ENetRole
---@param bTickEnable boolean
function UWeaponLogicBaseComponent:MarkWeaponLogicComponentTickRoleEnable(Role, bTickEnable) end

---@param bTickEnable boolean
function UWeaponLogicBaseComponent:MarkWeaponLogicComponentTickAllRoleEnable(bTickEnable) end

---@param Role ENetRole
---@return boolean
function UWeaponLogicBaseComponent:IsWeaponLogicComponentTickRoleEnabled(Role) end

---@return boolean
function UWeaponLogicBaseComponent:IsWeaponLogicComponentTickEnabled() end

---@return ENetRole
function UWeaponLogicBaseComponent:GetOwnerPawnRole() end

---@param Weapon ASTExtraWeapon
function UWeaponLogicBaseComponent:RegisterWeaponLogicComponentTick(Weapon) end

---@return boolean
function UWeaponLogicBaseComponent:IsWeaponOwnerOBTarget() end
