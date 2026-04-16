---@meta

---@class UParticleModuleVelocityRibbon: UParticleModuleVelocityBase
---@field ParentLinearVel any
---@field ParentLinearSpeed any
---@field ParentAngularVel any
---@field AngularSpeedEpsilon number @The scaling  value applied to the velocity. Value is retrieved using the RelativeTime of the particle.
---@field ParticleTurnRadiusRatio number @The scaling  value applied to the velocity. Value is retrieved using the RelativeTime of the particle.
---@field IntensityOverSpeed any @The scaling  value applied to the velocity. Value is retrieved using the RelativeTime of the particle.
---@field LengthOverSpeed any @The scaling  value applied to the velocity. Value is retrieved using the RelativeTime of the particle.
---@field MinRibbonBendRadius number
---@field MaxRibbonLength number
local UParticleModuleVelocityRibbon = {}
