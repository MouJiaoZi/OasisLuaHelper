---@meta

---@class UParticleModuleLocationDirect: UParticleModuleLocationBase
---@field Location any @The location of the particle at a give time. Retrieved using the particle RelativeTime. IMPORTANT: the particle location is set to this value, thereby over-writing any previous module impacts.
---@field LocationOffset any @An offset to apply to the position retrieved from the Location calculation. The offset is retrieved using the EmitterTime. The offset will remain constant over the life of the particle.
---@field ScaleFactor any @Scales the velocity of the object at a given point in the time-line.
---@field Direction any @Currently unused.
local UParticleModuleLocationDirect = {}
