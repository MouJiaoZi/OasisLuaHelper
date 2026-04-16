---@meta

---聚能枪子弹
---@class AEnergyAccumulateBullet: AProjectileBulletBase
---@field LaunchSpeedMaxEnergy number
---@field LaunchEnergyPercent number
local AEnergyAccumulateBullet = {}

---@param _ImpactResult FHitResult
function AEnergyAccumulateBullet:OnImpactEnd(_ImpactResult) end

---@param _ImpactResult FHitResult
function AEnergyAccumulateBullet:OnImpact(_ImpactResult) end
