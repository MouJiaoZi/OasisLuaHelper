---@meta

---@class UObserverSmoothComponent: UActorComponent, IObjectPoolInterface
---@field SmoothNetUpdateLocationTime number
---@field SmoothNetUpdateRotationTime number
---@field SmoothNetLocationTolerate number
---@field SmoothNetRotationTolerate number
---@field SimulateSyncSmooth FSimulateSyncSmooth
---@field bIsOpenExceededDSMaxDisLimit boolean
---@field ExceededDSMaxDisLimit number
---@field ZToFloorInterpSpeed number
---@field bIsOpenInterpToFloor boolean
---@field bIsOpenZToFloor boolean
---@field MoveAlongFloorCheckMaxZDis number
---@field CanMoveAlongFloorOffsetZ number
---@field bIsOpenNotFloorZToServerZ boolean
local UObserverSmoothComponent = {}

---@param bFromPersistentPool boolean
function UObserverSmoothComponent:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function UObserverSmoothComponent:OnRecycled(bToPersistentPool) end
