---@meta

---@class UParticleModuleColorOverLife: UParticleModuleColorBase
---@field ColorOverLife any @The color to apply to the particle, as a function of the particle RelativeTime.
---@field AlphaOverLife any @The alpha to apply to the particle, as a function of the particle RelativeTime.
---@field ColorOverLifeHDR any @Initial color for a particle as a function of Emitter time.
---@field AlphaOverLifeHDR any @Initial alpha for a particle as a function of Emitter time.
---@field bClampAlpha number @If true, the alpha value will be clamped to the [0..1] range.
local UParticleModuleColorOverLife = {}
