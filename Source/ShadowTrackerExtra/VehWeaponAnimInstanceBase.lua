---@meta

---载具武器动画蓝图基类
---@class UVehWeaponAnimInstanceBase: UAnimInstance
---@field bReload boolean
---@field bBindLocalUseWeaponStateChangedDelegate boolean
---@field C_Controlled boolean
---@field C_CameraRotator FRotator
---@field C_VehicleWeaponReloadRate number
local UVehWeaponAnimInstanceBase = {}

function UVehWeaponAnimInstanceBase:CacheWeaponWarmUpStateComp() end

---@param NewState EFreshWeaponStateType
function UVehWeaponAnimInstanceBase:HandlePlayerWeaponStateChanged(NewState) end

---当载具武器使用状态有变化时调用
---@param NewLocalUseWeapon boolean
function UVehWeaponAnimInstanceBase:HandleOnLocalUseWeaponStateChanged(NewLocalUseWeapon) end

---@param InWeaponWarmUpStateComp UWeaponWarmUpState
function UVehWeaponAnimInstanceBase:SetCachedWeaponWarmUpStateComp(InWeaponWarmUpStateComp) end

function UVehWeaponAnimInstanceBase:BindLocalUseWeaponStateChangedDelegate() end
