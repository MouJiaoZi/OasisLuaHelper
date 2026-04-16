---@meta

---@class EExplosionEnvironment
---@field Explosion_InValid number @无效的，占位 
---@field Explosion_InNormal number
---@field Explosion_InAir number
---@field Explosion_InWater number
EExplosionEnvironment = {}


---@class UExplosionEnvEffect: UObject
---@field ExplosionParticle UParticleSystem
local UExplosionEnvEffect = {}


---爆炸抛体子弹类
---@class AExplosionProjectileBullet: AProjectileBulletBase
---@field bAdjustExplosionParticleScale boolean
---@field ExplosionParticleScale FVector
---@field EffectMap ULuaMapHelper<EExplosionEnvironment, UExplosionEnvEffect>
---@field bUseFlyDirAsImpactEffectDir boolean
---@field RadialDamageParams any
---@field TimeBeforeExplosion number
---@field VoiceCheckShowTime number
---@field VoiceCheckDis number
---@field ExplosionCenterOffset number
---@field bNeedCheckOwnerPlayerStateOnServerAfterLaunch boolean
---@field bNeedCheckOwnerPlayerState_HasWeapon boolean
---@field bNeedCheckOwnerPlayerState_HasPlayer boolean
---@field bNeedCheckOwnerPlayerState_IsAlive boolean
---@field bEnableExplosionByInactive boolean
---@field ExplosionFinderNew IExplosionFinderInterface
---@field SpesificExplosionDir FVector
---@field bUseSpesificExplosionDir boolean
---@field bHasExploded boolean
---@field bHasExplodedRep boolean
---@field OnBulletExplosionDelegate FOnBulletExplosionDelegate
---@field bUseModifyDamage boolean
---@field bUseCustomImpactEffect boolean
---@field OnBulletExplosionTimeOutDelegate FOnBulletExplosionTimeOutDelegate
local AExplosionProjectileBullet = {}

---@param _ImpactResult FHitResult
---@param RadiusAddtive number
function AExplosionProjectileBullet:HandleOnImpactIml(_ImpactResult, RadiusAddtive) end

---@param _ImpactResult FHitResult
function AExplosionProjectileBullet:CustomImpactEff(_ImpactResult) end

---@param _ImpactResult FHitResult
function AExplosionProjectileBullet:GetCustomIgnorActors(_ImpactResult) end

---@param Target AActor
---@param _ImpactResult FHitResult
---@return boolean
function AExplosionProjectileBullet:CustomDamageFilter(Target, _ImpactResult) end

---@param _ImpactResult FHitResult
function AExplosionProjectileBullet:RPC_Multicast_OnImpact(_ImpactResult) end

---@return number
function AExplosionProjectileBullet:CheckOwnerPlayerStateOnServer() end

---@param bOldVal boolean
function AExplosionProjectileBullet:OnRep_HasExploded(bOldVal) end

---@return boolean
function AExplosionProjectileBullet:IsCurrentUnderWater() end

function AExplosionProjectileBullet:ForceTriggerExplosionOnServer() end

function AExplosionProjectileBullet:BP_HandleBulletOutOfRange() end

---@return number
function AExplosionProjectileBullet:GetTimeBeforeExplosion() end
