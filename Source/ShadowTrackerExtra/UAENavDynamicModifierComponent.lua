---@meta

---@class UUAENavDynamicModifierComponent: UNavModifierComponent
---@field QueryPolysBoxExpand FVector
---@field AreaSortCostOverride number @AreaSortCostOverride > 1 to Override default cost
---@field NotNavModifierAreaTag string
---@field bDrawDebugQueryBox boolean
---@field DrawDebugQueryBoxLifeTime number
local UUAENavDynamicModifierComponent = {}

---@param bWalkable boolean
function UUAENavDynamicModifierComponent:SetNavModifierAreaWalkbale(bWalkable) end

---@param NavMesh AUAERecastNavMesh
function UUAENavDynamicModifierComponent:CacheNavMeshModifiedPolygons(NavMesh) end

---@param WorldContextObject UObject
---@param InLocation FVector
---@param bWalkable boolean
function UUAENavDynamicModifierComponent:SetNavModifierAreaWalkbaleInLocation(WorldContextObject, InLocation, bWalkable) end
