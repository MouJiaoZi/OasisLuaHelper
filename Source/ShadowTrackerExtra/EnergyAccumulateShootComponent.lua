---@meta

---聚能武器射击组件
---@class UEnergyAccumulateShootComponent: UNormalProjectileComponent
---@field StartAccMinThreshold number
---@field ReachMaxAccTime number
---@field BulletNumPerShoot number
---@field BulletImpactDamageEnergy number
---@field MaxOffsetShootDegree number
---@field BulletNumPerShootMaxEnergy number
---@field ComsumeBulletNumPerShootMaxEnergy number
---@field BulletImpactDamageMaxEnergy number
---@field EnergyBulletTemplate ASTExtraShootWeaponBulletBase
---@field MaxEnergyBulletTemplate ASTExtraShootWeaponBulletBase
---@field PreShootWeaponStateToChange EFreshWeaponStateType
---@field bSpawnBulletOnSimulateClients boolean
---@field bForceNoRangeAttenuat boolean
---@field CurAccEnergyPercent number
---@field bShootLocalBullet boolean
---@field NormalBulletCacheList ULuaArrayHelper<AActor>
---@field EnergyBulletCacheList ULuaArrayHelper<AActor>
---@field MaxEnergyBulletCacheList ULuaArrayHelper<AActor>
---@field DebugShootDir FRotator
---@field DebugShootMomentMuzzlePos FVector
---@field DebugAccEnergyPercent number
---@field bEnableDebugParam boolean
local UEnergyAccumulateShootComponent = {}

---@return number
function UEnergyAccumulateShootComponent:GetAccEnergyPercentForAnim() end

---@param ShootId number
---@return number
function UEnergyAccumulateShootComponent:GetEnergyPercentByShootId(ShootId) end

---@param LaunchParams ULuaArrayHelper<FShootMultiBulletsParam>
---@param InCurAccEnergyPercent number
function UEnergyAccumulateShootComponent:RPC_Multicast_ClientShootEnergyAccBullets(LaunchParams, InCurAccEnergyPercent) end

---@param Bullet ASTExtraShootWeaponBulletBase
function UEnergyAccumulateShootComponent:RemoveBullet(Bullet) end
