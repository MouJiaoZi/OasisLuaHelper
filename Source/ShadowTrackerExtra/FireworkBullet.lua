---@meta

---烟花子弹
---@class AFireworkBullet: ASpecialBulletBase
---@field ParticleScaleParamByDistanceToCamera number
---@field ExplosionParticleScaleParamByDistanceToCamera number
---@field TimeBeforeExplosion number
---@field InitialExplosionParticleScaleConfig number
---@field bHasExploded boolean
local AFireworkBullet = {}

function AFireworkBullet:OnExplode() end

---@param _ImpactResult FHitResult
---@param _ImpactVelocity FVector
function AFireworkBullet:OnBounce(_ImpactResult, _ImpactVelocity) end

function AFireworkBullet:ExplodeOnServer() end

---@param bOldVal boolean
function AFireworkBullet:OnRep_HasExploded(bOldVal) end
