---@meta

---@class UParticleModuleKillHeight: UParticleModuleKillBase
---@field Height any @The height at which to kill the particle.
---@field bAbsolute number @If true, the height should be treated as a world-space position.
---@field bFloor number @If true, the plane should be considered a floor - ie kill anything BELOW it. If false, if is a ceiling - ie kill anything ABOVE it.
---@field bApplyPSysScale number @If true, take the particle systems scale into account
local UParticleModuleKillHeight = {}
