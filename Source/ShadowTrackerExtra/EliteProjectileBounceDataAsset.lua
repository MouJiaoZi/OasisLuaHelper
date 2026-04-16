---@meta

---@class UEliteProjectileBounceDataAsset: UDataAsset
---@field bForceDefaultFX boolean
---@field bForceDefaultSound boolean
local UEliteProjectileBounceDataAsset = {}

---@param InAk UAkComponent
---@param Hit FHitResult
---@param OutFX UParticleSystemComponent
---@param OutSoundInstance number
function UEliteProjectileBounceDataAsset:PlayImpactEffects(InAk, Hit, OutFX, OutSoundInstance) end
