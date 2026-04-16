---@meta

---Manager for local navigation grids Builds non overlapping grid from multiple sources, that can be used later for pathfinding. Check also: UGridPathFollowingComponent, FNavLocalGridData
---@class UNavLocalGridManager: UObject
local UNavLocalGridManager = {}

---@param WorldContextObject UObject
---@param CellSize number
---@return boolean
function UNavLocalGridManager:SetLocalNavigationGridDensity(WorldContextObject, CellSize) end

---creates new grid data for single point
---@param WorldContextObject UObject
---@param Location FVector
---@param Radius2D number
---@param Height number
---@param bRebuildGrids boolean
---@return number
function UNavLocalGridManager:AddLocalNavigationGridForPoint(WorldContextObject, Location, Radius2D, Height, bRebuildGrids) end

---creates single grid data for set of points
---@param WorldContextObject UObject
---@param Locations ULuaArrayHelper<FVector>
---@param Radius2D number
---@param Height number
---@param bRebuildGrids boolean
---@return number
function UNavLocalGridManager:AddLocalNavigationGridForPoints(WorldContextObject, Locations, Radius2D, Height, bRebuildGrids) end

---@param WorldContextObject UObject
---@param Location FVector
---@param Extent FVector
---@param Rotation FRotator
---@param Radius2D number
---@param Height number
---@param bRebuildGrids boolean
---@return number
function UNavLocalGridManager:AddLocalNavigationGridForBox(WorldContextObject, Location, Extent, Rotation, Radius2D, Height, bRebuildGrids) end

---@param WorldContextObject UObject
---@param Location FVector
---@param CapsuleRadius number
---@param CapsuleHalfHeight number
---@param Radius2D number
---@param Height number
---@param bRebuildGrids boolean
---@return number
function UNavLocalGridManager:AddLocalNavigationGridForCapsule(WorldContextObject, Location, CapsuleRadius, CapsuleHalfHeight, Radius2D, Height, bRebuildGrids) end

---@param WorldContextObject UObject
---@param GridId number
---@param bRebuildGrids boolean
function UNavLocalGridManager:RemoveLocalNavigationGrid(WorldContextObject, GridId, bRebuildGrids) end

---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param PathPoints ULuaArrayHelper<FVector>
---@return boolean
function UNavLocalGridManager:FindLocalNavigationGridPath(WorldContextObject, Start, End, PathPoints) end
