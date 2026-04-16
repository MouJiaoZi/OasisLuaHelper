---@meta

---@class ASpecialBulletBase: AActor
---@field LifeTime number
---@field LaunchGravityScale number
---@field OnLaunchBullet FLaunchBulletDelegate
local ASpecialBulletBase = {}

---@param Velocity FVector
---@param Gravity number
---@param Trans FTransform
---@param OwnerWeapon ASTExtraShootWeapon
function ASpecialBulletBase:RPC_Multicast_StartLaunch(Velocity, Gravity, Trans, OwnerWeapon) end

---@param OwningShootWeapon ASTExtraShootWeapon
function ASpecialBulletBase:CheckMovementAttachment(OwningShootWeapon) end
