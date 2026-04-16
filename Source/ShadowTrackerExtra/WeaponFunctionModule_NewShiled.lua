---@meta

---盾牌功能模块
---@class UWeaponFunctionModule_NewShiled: UWeaponFunctionModuleBase
local UWeaponFunctionModule_NewShiled = {}

---@return number
function UWeaponFunctionModule_NewShiled:GetCurHP() end

---@param Val number
function UWeaponFunctionModule_NewShiled:SetCurHP(Val) end

---@return number
function UWeaponFunctionModule_NewShiled:GetMaxHP() end

---@return boolean
function UWeaponFunctionModule_NewShiled:GetIsAutoRecovering() end

---@param Val boolean
function UWeaponFunctionModule_NewShiled:SetIsAutoRecovering(Val) end

---@return number
function UWeaponFunctionModule_NewShiled:GetLastHitTime() end

---@return number
function UWeaponFunctionModule_NewShiled:GetAutoRecoverHPNoHitTime() end

---@return number
function UWeaponFunctionModule_NewShiled:GetLastAutoRecoverHPTime() end

---@param Time number
function UWeaponFunctionModule_NewShiled:SetLastAutoRecoverHPTime(Time) end

---@return number
function UWeaponFunctionModule_NewShiled:GetAutoRecoverHPPercent() end

---@return number
function UWeaponFunctionModule_NewShiled:GetAutoRecoverHPInterval() end

---@return boolean
function UWeaponFunctionModule_NewShiled:GetHasBroken() end

---@param Val boolean
function UWeaponFunctionModule_NewShiled:SetHasBroken(Val) end
