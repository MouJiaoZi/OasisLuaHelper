---@meta

---@class EParticleRotateType
---@field None number @无
---@field RotateToHitNormal number @命中后特效X轴旋转和击中面法线重合
---@field RotateToProjectile number @特效旋转到抛体方向
---@field RotateToCustomRotation number @特效旋转到自定义角度
---@field RotateZToHitNormal number @命中后特效Z轴旋转和击中面法线重合
---@field RotateYToHitNormal number @命中后特效Y轴旋转和击中面法线重合
EParticleRotateType = {}


---@class UProjectileActionEffect_Particle: UProjectileActionEffectBase
---@field bAdjustParticleScale boolean
---@field ParticleScale FVector
---@field bAttachToHitActor boolean
---@field DestroyTime FFloatGetter
---@field RotateType EParticleRotateType
---@field ParticleCustomRotation FRotator
local UProjectileActionEffect_Particle = {}
