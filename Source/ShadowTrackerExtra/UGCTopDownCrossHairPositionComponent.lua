---@meta

---@class UUGCTopDownCrossHairPositionComponent: UUGCCustomCrossHairPositionComponent
local UUGCTopDownCrossHairPositionComponent = {}

---@param WeaponWidget UHUDWidgetBase
---@param PlayerOwner APlayerController
function UUGCTopDownCrossHairPositionComponent:OverridePosition(WeaponWidget, PlayerOwner) end

---@param ShootWeapon ASTExtraShootWeapon
---@return number
function UUGCTopDownCrossHairPositionComponent:GetBulletRange(ShootWeapon) end
