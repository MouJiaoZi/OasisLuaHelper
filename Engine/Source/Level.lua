---@meta

---@class EWorldTileLodPlatform
---@field Default number
---@field PC number
---@field Num number
EWorldTileLodPlatform = {}


---Structure containing all information needed for determining the screen space size of an object/ texture instance.
---@class FStreamableTextureInstance
FStreamableTextureInstance = {}


---Serialized ULevel information about dynamic texture instances
---@class FDynamicTextureInstance
---@field bAttached boolean @Whether the primitive that uses this texture is attached to the scene or not.
---@field OriginalRadius number @Original bounding sphere radius, at the time the TexelFactor was calculated originally.
FDynamicTextureInstance = {}


---@class FLevelSimplificationDetails
---@field bCreatePackagePerAsset boolean @Whether to create separate packages for each generated asset. All in map package otherwise
---@field DetailsPercentage number @Percentage of details for static mesh proxy
---@field StaticMeshMaterialSettings FMaterialProxySettings @Landscape material simplification
---@field bOverrideLandscapeExportLOD boolean @Base color assigned to LOD geometry that can't be associated with the source geometry: e.g. doors and windows that have been closed by the Merge Distance
---@field LandscapeExportLOD number @Landscape LOD to use for static mesh generation, when not specified 'Max LODLevel' from landscape actor will be used
---@field LandscapeMaterialSettings FMaterialProxySettings @Landscape material simplification
---@field bBakeFoliageToLandscape boolean @Whether to bake foliage into landscape static mesh texture
---@field bBakeGrassToLandscape boolean @Whether to bake grass into landscape static mesh texture
---@field bGenerateMeshNormalMap_DEPRECATED boolean
---@field bGenerateMeshMetallicMap_DEPRECATED boolean
---@field bGenerateMeshRoughnessMap_DEPRECATED boolean
---@field bGenerateMeshSpecularMap_DEPRECATED boolean
---@field bGenerateLandscapeNormalMap_DEPRECATED boolean
---@field bGenerateLandscapeMetallicMap_DEPRECATED boolean
---@field bGenerateLandscapeRoughnessMap_DEPRECATED boolean
---@field bGenerateLandscapeSpecularMap_DEPRECATED boolean
---@field bUseLandscapeCulling boolean @Whether or not to use available landscape geometry to cull away invisible triangles
---@field LandscapeCullingPrecision ELandscapeCullingPrecision @Level of detail of the landscape that should be used for the culling
FLevelSimplificationDetails = {}


---A Level is a collection of Actors (lights, volumes, mesh instances etc.). Multiple Levels can be loaded and unloaded into the World to create a streaming experience.
---@class ULevel: UObject, IInterface_AssetUserData
---@field ModelComponents ULuaArrayHelper<UModelComponent> @BSP Model components used for rendering.
---@field NumTextureStreamingUnbuiltComponents number @Num of components missing valid texture streaming data. Updated in map check.
---@field NumTextureStreamingDirtyResources number @Num of resources that have changed since the last texture streaming build. Updated in map check.
---@field NavDataChunks ULuaArrayHelper<UNavigationDataChunk> @Navigation related data that can be stored per level
---@field LightmapTotalSize number @Total number of KB used for lightmap textures in the level.
---@field ShadowmapTotalSize number @Total number of KB used for shadowmap textures in the level.
---@field StaticNavigableGeometry ULuaArrayHelper<FVector> @threes of triangle vertices - AABB filtering friendly. Stored if there's a runtime need to rebuild navigation that accepts BSPs as well - it's a lot easier this way than retrieve this data at runtime
---@field StreamingTextureGuids ULuaArrayHelper<FGuid> @The Guid of each texture refered by FStreamingTextureBuildInfo::TextureLevelIndex
---@field PVSHandlerHash string
---@field bIsLightingScenario boolean @Whether the level is a lighting scenario.  Lighting is built separately for each lighting scenario level with all other scenario levels hidden. Only one lighting scenario level should be visible at a time for correct rendering, and lightmaps from that level will be used on the rest of the world. Note: When a lighting scenario level is present, lightmaps for all streaming levels are placed in the scenario's _BuildData package. This means that lightmaps for those streaming levels will not be streamed with them.
---@field LevelBuildDataId FGuid @Identifies map build data specific to this level, eg lighting volume samples.
---@field LightBuildLevelOffset FIntVector @Level offset at time when lighting was built
---@field bTextureStreamingRotationChanged number @Whether a level transform rotation was applied since the texture streaming builds. Invalidates the precomputed streaming bounds.
---@field bIsVisible number @Whether the level is currently visible/ associated with the world
---@field bLocked number @Whether this level is locked; that is, its actors are read-only Used by WorldBrowser to lock a level when corresponding ULevelStreaming does not exist
---@field bPVSDirty number
---@field RCRCommunicatorClassName FSoftClassPath
---@field MeshRefCounter ULuaMapHelper<UStaticMesh, number>
---@field AssetUserData ULuaArrayHelper<UAssetUserData> @Array of user data stored with the asset
local ULevel = {}
