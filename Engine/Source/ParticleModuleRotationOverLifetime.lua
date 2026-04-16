---@meta

---@class UParticleModuleRotationOverLifetime: UParticleModuleRotationBase
---@field RotationOverLife any @The rotation of the particle (1.0 = 360 degrees). The value is retrieved using the RelativeTime of the particle.
---@field Scale number @If true,  the particle rotation is multiplied by the value retrieved from RotationOverLife. If false, the particle rotation is incremented by the value retrieved from RotationOverLife.
local UParticleModuleRotationOverLifetime = {}
