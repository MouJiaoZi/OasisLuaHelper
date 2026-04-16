---@meta

---@class FNavMeshDynamicExtLinkTileCoordsData
---@field DynamicExtLinkTileCoords ULuaSetHelper<FIntPoint>
FNavMeshDynamicExtLinkTileCoordsData = {}


---@class ANavMeshRegionReplaceManager: AActor
---@field NavMeshRegionReplaceList ULuaArrayHelper<UNavMeshRegionReplaceComponent>
---@field NavDynamicExtLinkTileCoords ULuaArrayHelper<FNavMeshDynamicExtLinkTileCoordsData>
local ANavMeshRegionReplaceManager = {}

---@param InReplaceArgs string
function ANavMeshRegionReplaceManager:ReplaceRegionNavMesh(InReplaceArgs) end

---@param InLoc FVector
---@param InReplaceKey string
function ANavMeshRegionReplaceManager:ReplaceRegionNavMeshAtLoc(InLoc, InReplaceKey) end
