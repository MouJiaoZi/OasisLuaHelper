---@meta

---@class UExplosionEffectDataAsset: UDataAsset
local UExplosionEffectDataAsset = {}


---@class ASTExtraExplosionEffect: AActor
---@field PCRandomSimpleEffect ULuaArrayHelper<UParticleSystem>
---@field NearToFarDistance number
---@field bExplodesionSoundEnableEnvironment boolean
---@field PlayEffectDelayTime number
---@field SurfaceHit FHitResult @surface data for spawning
---@field bPlayFallbackEffectIfFailed boolean
---@field VoiceCheckDistance number
---@field VoiceCheckLifeTime number
local ASTExtraExplosionEffect = {}

---@param InTemplate UParticleSystem
function ASTExtraExplosionEffect:SetExplosionFXOverride(InTemplate) end

---@param InAudioEvent UAkAudioEvent
function ASTExtraExplosionEffect:SetExplosionSoundOverride(InAudioEvent) end
