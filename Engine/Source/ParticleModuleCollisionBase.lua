---@meta

---Flags indicating what to do with the particle when MaxCollisions is reached
---@class EParticleCollisionComplete
---@field EPCC_Kill number @Kill the particle when MaxCollisions is reached
---@field EPCC_Freeze number @Freeze the particle in place
---@field EPCC_HaltCollisions number @Stop collision checks, but keep updating
---@field EPCC_FreezeTranslation number @Stop translations of the particle
---@field EPCC_FreezeRotation number @Stop rotations of the particle
---@field EPCC_FreezeMovement number @Stop all movement of the particle
---@field EPCC_MAX number
EParticleCollisionComplete = {}


---@class UParticleModuleCollisionBase: UParticleModule
local UParticleModuleCollisionBase = {}
