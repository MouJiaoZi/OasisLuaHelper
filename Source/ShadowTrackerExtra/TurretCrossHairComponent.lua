---@meta

---@class UTurretCrossHairComponent: UCrossHairComponent
---@field ShootTargetLoc FVector
---@field ScreenLocation FVector2D
---@field bIsGunADS boolean
local UTurretCrossHairComponent = {}

---@param bIgnorADS boolean
---@param bIgnorShootMode boolean
---@param bFromCenter boolean
---@return FVector2D
function UTurretCrossHairComponent:CalcScreenLoc(bIgnorADS, bIgnorShootMode, bFromCenter) end

---@param WorldSpacePoint FVector
---@return FVector
function UTurretCrossHairComponent:WorldSpaceToScreenSpace(WorldSpacePoint) end

---@param WeaponHudWidget UHUDWidgetBase
---@param DeltaTime number
function UTurretCrossHairComponent:DrawWeaponCrosshairInner(WeaponHudWidget, DeltaTime) end
