---@meta

---@class IProjectileHitInterface: IInterface
IProjectileHitInterface = {}

---@param Projectile AActor
---@return boolean
function IProjectileHitInterface:CheckIgnoreProjectileOnImpact(Projectile) end
