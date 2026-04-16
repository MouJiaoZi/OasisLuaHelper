---@meta

---@class UParticleModuleSizeScale: UParticleModuleSizeBase
---@field SizeScale any @The amount the BaseSize should be scaled before being used as the size of the particle. The value is retrieved using the RelativeTime of the particle during its update. NOTE: this module overrides any size adjustments made prior to this module in that frame.
---@field EnableX number @Ignored
---@field EnableY number @Ignored
---@field EnableZ number @Ignored
local UParticleModuleSizeScale = {}
