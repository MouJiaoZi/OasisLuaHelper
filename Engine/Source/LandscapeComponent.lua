---@meta

---@class ELandscapeWeightmapUsage
---@field UseForOrigin number
---@field UseForPCNew number
---@field BothUse number
---@field BothNone number
ELandscapeWeightmapUsage = {}


---@class FSimpleMeshTangent
---@field TangentX FVector
---@field bFlipTangentY boolean
FSimpleMeshTangent = {}


---@class FSimpleMeshVertex
---@field Position FVector
---@field Normal FVector
---@field Tangent FSimpleMeshTangent
---@field Color FColor
---@field UV0 FVector2D
FSimpleMeshVertex = {}


---@class FSimpleMeshSection
---@field VertexBuffer ULuaArrayHelper<FSimpleMeshVertex>
---@field IndexBuffer ULuaArrayHelper<number>
---@field BoundingBox FBox
---@field Visible boolean
FSimpleMeshSection = {}


---@class FLandscapeEditToolRenderData
---@field SelectedType number
---@field DebugChannelR number
---@field DebugChannelG number
---@field DebugChannelB number
---@field DebugChannelA number
FLandscapeEditToolRenderData = {}


---@class FVisibilityData
---@field VisibilityData ULuaArrayHelper<number>
FVisibilityData = {}


---Stores information about which weightmap texture and channel each layer is stored
---@class FWeightmapLayerAllocationInfo
---@field WeightmapTextureIndex number
---@field WeightmapTextureChannel number
---@field bUseForWeightmapPCOnly ELandscapeWeightmapUsage
---@field WeightmapTextureIndex_ForPC number
---@field WeightmapTextureChannel_ForPC number
FWeightmapLayerAllocationInfo = {}


---@class FOverridePhyxMaterial
---@field OriginalPhysxMaterial ULuaArrayHelper<UPhysicalMaterial>
---@field OverridePhysxMaterial ULuaArrayHelper<UPhysicalMaterial>
FOverridePhyxMaterial = {}


---@class USimpleMeshComponent: UMeshComponent
---@field MeshSections ULuaArrayHelper<FSimpleMeshSection>
---@field LocalBounds FBoxSphereBounds
local USimpleMeshComponent = {}


---@class ULandscapeComponent: UPrimitiveComponent
---@field SectionBaseX number @X offset from global components grid origin (in quads)
---@field SectionBaseY number @Y offset from global components grid origin (in quads)
---@field ComponentSizeQuads number @Total number of quads for this component, has to be >0
---@field SubsectionSizeQuads number @Number of quads for a subsection of the component. SubsectionSizeQuads+1 must be a power of two.
---@field NumSubsections number @Number of subsections in X or Y axis
---@field bShouldSerializationGrassWeightDataForPC boolean
---@field OverrideOtherMaterials ULuaMapHelper<string, UMaterialInterface>
---@field OverridePhyxMaterial FOverridePhyxMaterial
---@field bOverrideGrassTypes number
---@field GrassTypes ULuaArrayHelper<ULandscapeGrassType>
---@field bOverrideGrassTypes_ForPC number
---@field GrassTypes_ForPC ULuaArrayHelper<ULandscapeGrassType>
---@field MaterialInstances ULuaArrayHelper<UMaterialInstanceConstant>
---@field OtherMaterialInstances ULuaMapHelper<string, UMaterialInstanceConstant>
---@field WeightmapLayerAllocations ULuaArrayHelper<FWeightmapLayerAllocationInfo> @List of layers, and the weightmap and channel they are stored
---@field WeightmapTextures ULuaArrayHelper<UTexture2D> @Weightmap texture reference
---@field MaterialInstances_ForPC ULuaArrayHelper<UMaterialInstanceConstant>
---@field WeightmapTextures_ForPC ULuaArrayHelper<UTexture2D> @Weightmap texture reference
---@field VisibilityLayerChannel number @Visibility layer channel in weightmap
---@field WeightmapScaleBias FVector4 @UV offset to component's weightmap data from component local coordinates
---@field WeightmapSubsectionOffset number @U or V offset into the weightmap for the first subsection, in texture UV space
---@field HeightmapScaleBias FVector4 @UV offset to Heightmap data from component local coordinates
---@field MultiVisibilityTextureData ULuaMapHelper<string, FVisibilityData>
---@field VisibleVisibilityLayer string
---@field CachedLocalBox FBox @Cached local-space bounding box, created at heightmap update time
---@field CollisionComponent TLazyObjectPtr<ULandscapeHeightfieldCollisionComponent> @Reference to associated collision component
---@field MapBuildDataId FGuid @Uniquely identifies this component's built map data.
---@field IrrelevantLights_DEPRECATED ULuaArrayHelper<FGuid> @Legacy irrelevant lights
---@field CollisionMipLevel number @Heightfield mipmap used to generate collision
---@field SimpleCollisionMipLevel number @Heightfield mipmap used to generate simple collision
---@field NegativeZBoundsExtension number @Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the negative Z axis, positive value increases bound size
---@field PositiveZBoundsExtension number @Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the positive Z axis, positive value increases bound size
---@field StaticLightingResolution number @StaticLightingResolution overriding per component, default value 0 means no overriding
---@field ForcedLOD number @Forced LOD level to use when rendering
---@field LODBias number @LOD level Bias to use when rendering
---@field MobileVertexHoleMaxLOD number @The max lod level that allow landscape component to use vertex hole. If the lod level greater than this limitation, all vertex hole on landscape will vanish
---@field LODDeltaVertex ULuaArrayHelper<number> @Subsection's Delta Vertex for fixing LOD level
---@field MaxDeltaVertex number
---@field StateId FGuid
---@field BakedTextureMaterialGuid FGuid @The Material Guid that used when baking, to detect material recompilations
---@field MobileBlendableLayerMask number @For ES2
---@field OtherMobileMaterialInterfaces ULuaMapHelper<string, UMaterialInterface>
---@field MobileWeightmapTextures ULuaArrayHelper<UTexture2D> @Generated weight/normal map texture used for ES2. Serialized only when cooking or loading cooked builds.
---@field bMobileMultiLayers number
---@field CachedHeightData ULuaArrayHelper<number>
---@field CachedHaltonBaseIndex ULuaArrayHelper<boolean>
---@field CachedAddHaltonBaseIndexList ULuaArrayHelper<number>
---@field bUseLandscapeDeform number
---@field bHasROCData boolean @Has ROCData？
local ULandscapeComponent = {}
