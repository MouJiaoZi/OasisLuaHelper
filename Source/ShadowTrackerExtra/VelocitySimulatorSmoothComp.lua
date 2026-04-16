---@meta

---@class UVelocitySimulatorSmoothComp: UActorComponent, IObjectPoolInterface
---@field SmoothNetUpdateTime number
---@field SmoothNetUpdateRotationTime number
---@field bFindFloorWhenSmoothInterpolate boolean
local UVelocitySimulatorSmoothComp = {}

---@param bFromPersistentPool boolean
function UVelocitySimulatorSmoothComp:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function UVelocitySimulatorSmoothComp:OnRecycled(bToPersistentPool) end
