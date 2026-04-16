---@meta

---@class ERecastPartitioning
---@field Monotone number
---@field Watershed number
---@field ChunkyMonotone number
ERecastPartitioning = {}


---@class ERecastWithoutLayerCachePartitioning
---@field Watershed number
---@field Monotone number
---@field LayerRegion number
ERecastWithoutLayerCachePartitioning = {}


---@class EDynamicNavAffectorUpdateMode
---@field TimedTrigger number
---@field ManualTrigger number
EDynamicNavAffectorUpdateMode = {}


---@class FOnNavMeshUpdate : ULuaSingleDelegate
FOnNavMeshUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNavMeshUpdate:Bind(Callback, Obj) end

---执行委托
function FOnNavMeshUpdate:Execute() end


---@class USubvisionMethodBase: UObject
local USubvisionMethodBase = {}


---@class ARecastNavMesh: ANavigationData
---@field navMeshFileName string
---@field bDrawTriangleEdges number @should we draw edges of every navmesh's triangle
---@field bDrawPolyEdges number @should we draw edges of every poly (i.e. not only border-edges)
---@field bDrawFilledPolys number @if disabled skips filling drawn navmesh polygons
---@field bDrawNavMeshEdges number @should we draw border-edges
---@field bDrawTileBounds number @should we draw the tile boundaries
---@field bDrawPathCollidingGeometry number @Draw input geometry passed to the navmesh generator.  Recommend disabling other geometry rendering via viewport showflags in editor.
---@field bDrawTileLabels number
---@field bDrawPolygonLabels number
---@field bDrawDefaultPolygonCost number
---@field bDrawLabelsOnPathNodes number
---@field bDrawNavLinks number
---@field bDrawFailedNavLinks number
---@field bDrawClusters number
---@field bDrawOctree number @should we draw edges of every navmesh's triangle
---@field bDistinctlyDrawTilesBeingBuilt number
---@field bDrawNavMesh number
---@field DrawOffset number @vertical offset added to navmesh's debug representation for better readability
---@field bFixedTilePoolSize number @if true, the NavMesh will allocate fixed size pool for tiles, should be enabled to support streaming
---@field TilePoolSize number @maximum number of tiles NavMesh can hold
---@field TileSizeUU number @size of single tile, expressed in uu
---@field CellSize number @horizontal size of voxelization cell
---@field CellHeight number @vertical size of voxelization cell
---@field AgentRadius number @Radius of smallest agent to traverse this navmesh
---@field AgentHeight number
---@field AgentMaxHeight number @Size of the tallest agent that will path with this navmesh.
---@field AgentMaxSlope number
---@field AgentMaxStepHeight number
---@field MinRegionArea number
---@field MergeRegionSize number
---@field MaxSimplificationError number @How much navigable shapes can get simplified - the higher the value the more freedom
---@field MaxSimultaneousTileGenerationJobsCount number
---@field TileNumberHardLimit number @Absolute hard limit to number of navmesh tiles. Be very, very careful while modifying it while having big maps with navmesh. A single, empty tile takes 176 bytes and empty tiles are allocated up front (subject to change, but that's where it's at now)
---@field PolyRefTileBits number
---@field PolyRefNavPolyBits number
---@field PolyRefSaltBits number
---@field DefaultDrawDistance number @navmesh draw distance in game (always visible in editor)
---@field DefaultMaxSearchNodes number @specifes default limit to A* nodes used when performing navigation queries. Can be overridden by passing custom FNavigationQueryFilter
---@field DefaultMaxHierarchicalSearchNodes number @specifes default limit to A* nodes used when performing hierarchical navigation queries.
---@field bWithoutLayerCache boolean @creating navmesh polys without layer cache
---@field WithoutLayerCachePartitioning ERecastWithoutLayerCachePartitioning @partitioning method for creating navmesh polys when not use layer cache
---@field RegionPartitioning ERecastPartitioning @partitioning method for creating navmesh polys
---@field LayerPartitioning ERecastPartitioning @partitioning method for creating tile layers
---@field RegionChunkSplits number @number of chunk splits (along single axis) used for region's partitioning: ChunkyMonotone
---@field LayerChunkSplits number @number of chunk splits (along single axis) used for layer's partitioning: ChunkyMonotone
---@field bSortNavigationAreasByCost number @Controls whether Navigation Areas will be sorted by cost before application to navmesh during navmesh generation. This is relevant then there are areas overlapping and we want to have area cost express area relevancy as well. Setting it to true will result in having area sorted by cost, but it will also increase navmesh generation cost a bit
---@field bPerformVoxelFiltering number @controls whether voxel filterring will be applied (via FRecastTileGenerator::ApplyVoxelFilter). Results in generated navemesh better fitting navigation bounds, but hits (a bit) generation performance
---@field bMarkLowHeightAreas number @mark areas with insufficient free height above instead of cutting them out
---@field bDoFullyAsyncNavDataGathering number
---@field bUseBetterOffsetsFromCorners number @TODO: switch to disable new code from OffsetFromCorners if necessary - remove it later
---@field bStoreEmptyTileLayers number @If set, tiles generated without any navmesh data will be marked to distinguish them from not generated / streamed out ones. Defaults to false.
---@field bUseVirtualFilters number @Indicates whether default navigation filters will use virtual functions. Defaults to true.
---@field bAllowNavLinkAsPathEnd number @If set, paths can end at navlink poly (not the ground one!)
---@field bOnlySavedOnDS boolean
---@field bAllowedDynamicNavAffectors boolean
---@field DynamicAffectorUpdateInterval number @Minimal time, in seconds, between active tiles set update
---@field DynamicAffectorUpdateMode EDynamicNavAffectorUpdateMode
---@field bAllowedDynamicObstacle boolean
---@field bUseVoxelCache number @Cache rasterized voxels instead of just collision vertices/indices in navigation octree
---@field TileSetUpdateInterval number @indicates how often we will sort navigation tiles to mach players position
---@field HeuristicScale number @Euclidean distance heuristic scale used while pathfinding
---@field VerticalDeviationFromGroundCompensation number @Value added to each search height to compensate for error between navmesh polys and walkable geometry
local ARecastNavMesh = {}
