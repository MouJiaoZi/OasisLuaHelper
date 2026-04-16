---@meta

---@class FClusterNode
---@field BoundMin FVector
---@field FirstChild number
---@field BoundMax FVector
---@field LastChild number
---@field FirstInstance number
---@field LastInstance number
FClusterNode = {}


---@class UHierarchicalInstancedStaticMeshComponent: UInstancedStaticMeshComponent
---@field SortedInstances ULuaArrayHelper<number>
---@field NumBuiltInstances number
---@field BuiltInstanceBounds FBox
---@field UnbuiltInstanceBounds FBox
---@field UnbuiltInstanceBoundsList ULuaArrayHelper<FBox>
---@field UnbuiltInstanceIndexList ULuaArrayHelper<number>
---@field bEnableDensityScaling number
---@field OcclusionLayerNumNodes number
---@field CacheMeshExtendedBounds FBoxSphereBounds
---@field bDisableCollision boolean
---@field MinInstancesToSplitNode number @Culling by Num
---@field OptimiMinInstancesToSplitNode number @Culling by Num For Optimization FClusterTree
---@field IsOpenTreeOptimi boolean @Mark Use OptimiMinInstancesToSplitNode With FClusterTree
---@field bEnableScaleOpt boolean
---@field AverageScale FVector
local UHierarchicalInstancedStaticMeshComponent = {}

---Removes all the instances with indices specified in the InstancesToRemove array. Returns true on success.
---@param InstancesToRemove ULuaArrayHelper<number>
---@return boolean
function UHierarchicalInstancedStaticMeshComponent:RemoveInstances(InstancesToRemove) end
