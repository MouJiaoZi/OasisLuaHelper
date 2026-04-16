---@meta

---@class IWeaponMovementBaseInterface: IInterface
IWeaponMovementBaseInterface = {}

---@return boolean
function IWeaponMovementBaseInterface:CheckBulletMoveDependent() end

---@param ShootTraceHitInfo FHitResult
---@return boolean
function IWeaponMovementBaseInterface:CheckBulletMoveDependentOnSameMoveBase(ShootTraceHitInfo) end
