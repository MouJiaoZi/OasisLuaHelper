---@meta

---@class UPhysicsCollisionHandler: UObject
---@field ImpactThreshold number @How hard an impact must be to trigger effect/sound
---@field ImpactReFireDelay number @Min time between effect/sound being triggered
---@field LastImpactSoundTime number @Time since last impact sound
local UPhysicsCollisionHandler = {}
