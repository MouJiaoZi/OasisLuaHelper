---@meta

---激光跟踪导弹准心组件
---@class ULaserSeekAndLockCrossHairComponent: USeekAndLockCrossHairComponent
---@field CrossHairDataStage2 ULuaArrayHelper<FWeaponCrossHairPerformData>
---@field CrossHairDataStage3 ULuaArrayHelper<FWeaponCrossHairPerformData>
local ULaserSeekAndLockCrossHairComponent = {}

---@param WeaponHudWidget UHUDWidgetBase
---@param Canvas UCanvas
function ULaserSeekAndLockCrossHairComponent:DrawHUD(WeaponHudWidget, Canvas) end

---@param InCrossHairData ULuaArrayHelper<FWeaponCrossHairPerformData>
---@param WeaponHudWidget UHUDWidgetBase
---@param DeltaTime number
function ULaserSeekAndLockCrossHairComponent:LocalDrawWeaponCrosshair(InCrossHairData, WeaponHudWidget, DeltaTime) end
