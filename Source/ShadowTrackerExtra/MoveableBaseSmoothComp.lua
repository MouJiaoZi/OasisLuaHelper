---@meta

---@class UMoveableBaseSmoothComp: UActorComponent, IObjectPoolInterface
---@field SmoothNetUpdateTime number
---@field SmoothNetUpdateRotationTime number
---@field bFindFloorWhenSmoothInterpolate boolean
local UMoveableBaseSmoothComp = {}

---@param bFromPersistentPool boolean
function UMoveableBaseSmoothComp:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function UMoveableBaseSmoothComp:OnRecycled(bToPersistentPool) end
