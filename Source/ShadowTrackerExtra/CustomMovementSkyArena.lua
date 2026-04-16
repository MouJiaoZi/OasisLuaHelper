---@meta

---@class UCustomMovementSkyArena: UCustomMovementFlying
local UCustomMovementSkyArena = {}

---@param HitResult FHitResult
---@param TimeSlice number
---@param MoveDelta FVector
---@return boolean
function UCustomMovementSkyArena:BP_ShouldProcessHitBlockedWhenInValidLandingSpot(HitResult, TimeSlice, MoveDelta) end
