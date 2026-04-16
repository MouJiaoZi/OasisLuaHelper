---@meta

---@class USTExtraAnimFMObj_SubAnimMapReplacer_Weapon: UAnimFunctionModule_ObjInstance
---@field bSubAnimIsLoading boolean
---@field CurrentWeaponAnimUID FWeaponAnimTypeConfig
local USTExtraAnimFMObj_SubAnimMapReplacer_Weapon = {}

---是否需要替换武器动画
---@param WeaponAnimConfig FWeaponAnimTypeConfig
---@return boolean
function USTExtraAnimFMObj_SubAnimMapReplacer_Weapon:ShouldReplaceWeaponSubAnim(WeaponAnimConfig) end

---获取武器动画配置
---@param AnimInstance UAnimInstanceBase
---@param OutWeaponAnimConfig FWeaponAnimTypeConfig
---@return boolean
function USTExtraAnimFMObj_SubAnimMapReplacer_Weapon:GetWeaponAnimConfig(AnimInstance, OutWeaponAnimConfig) end
