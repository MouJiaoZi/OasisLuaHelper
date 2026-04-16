---@meta

---@class UParticleModuleSizeMultiplyLife: UParticleModuleSizeBase
---@field LifeMultiplier any @The scale factor for the size that should be used for a particle. The value is retrieved using the RelativeTime of the particle during its update.
---@field MultiplyX number @If true, the X-component of the scale factor will be applied to the particle size X-component. If false, the X-component is left unaltered.
---@field MultiplyY number @If true, the Y-component of the scale factor will be applied to the particle size Y-component. If false, the Y-component is left unaltered.
---@field MultiplyZ number @If true, the Z-component of the scale factor will be applied to the particle size Z-component. If false, the Z-component is left unaltered.
local UParticleModuleSizeMultiplyLife = {}
