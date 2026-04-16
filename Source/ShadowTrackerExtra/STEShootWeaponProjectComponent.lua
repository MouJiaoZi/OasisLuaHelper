---@meta

---@class USTEShootWeaponProjectComponent: USTExtraShootWeaponComponent
---@field bUseBulletCache boolean
---@field BulletLifeTimeAfterImpact number
---@field BulletCacheList ULuaArrayHelper<AActor>
local USTEShootWeaponProjectComponent = {}

---@param StartLoc FVector
---@param StartRot FRotator
---@param ShootID number
---@param Pellet number
---@return boolean
function USTEShootWeaponProjectComponent:OverrideShootBulletLogic(StartLoc, StartRot, ShootID, Pellet) end

---@param Bullet ASTExtraShootWeaponBulletBase
function USTEShootWeaponProjectComponent:RecycleBullet(Bullet) end
