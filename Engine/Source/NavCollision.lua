---@meta

---@class FNavCollisionCylinder
---@field Offset FVector
---@field Radius number
---@field Height number
FNavCollisionCylinder = {}


---@class FNavCollisionBox
---@field Offset FVector
---@field Extent FVector
FNavCollisionBox = {}


---@class UNavCollision: UObject
---@field CylinderCollision ULuaArrayHelper<FNavCollisionCylinder> @list of nav collision cylinders
---@field BoxCollision ULuaArrayHelper<FNavCollisionBox> @list of nav collision boxes
---@field AreaClass UNavArea @navigation area type (empty = default obstacle)
---@field bIsDynamicObstacle number @If set, mesh will be used as dynamic obstacle (don't create navmesh on top, much faster adding/removing)
---@field bGatherConvexGeometry number @If set, convex collisions will be exported offline for faster runtime navmesh building (increases memory usage)
local UNavCollision = {}
