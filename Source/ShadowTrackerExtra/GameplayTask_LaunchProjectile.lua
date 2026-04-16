---@meta

---@class UGameplayTask_LaunchProjectile: UUAEGameplayTask
---@field OnProjectileDestroyedDelegate FOnProjectileDestroyed
---@field ProjectileClass AUniversalProjectileCore
---@field ProjectileParams FProjectileParams
---@field ProjectileActorPtr AUniversalProjectileCore
local UGameplayTask_LaunchProjectile = {}

function UGameplayTask_LaunchProjectile:OnBulletDestroyed() end
