---@meta

---@class UParticleModuleColor: UParticleModuleColorBase
---@field StartColor any @Initial color for a particle as a function of Emitter time.
---@field StartAlpha any @Initial alpha for a particle as a function of Emitter time.
---@field StartColorHDR any @Initial color for a particle as a function of Emitter time.
---@field StartAlphaHDR any @Initial alpha for a particle as a function of Emitter time.
---@field bClampAlpha number @If true, the alpha value will be clamped to the [0..1] range.
local UParticleModuleColor = {}
