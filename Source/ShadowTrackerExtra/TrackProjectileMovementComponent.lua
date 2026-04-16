---@meta

---@class UTrackProjectileMovementComponent: UProjectileMovementComponent
---@field RandomOffset ULuaArrayHelper<FVector>
---@field DefaultHomingDir FVector
local UTrackProjectileMovementComponent = {}

---@param InDirection FVector
---@return FVector
function UTrackProjectileMovementComponent:RandomInitialDir(InDirection) end
