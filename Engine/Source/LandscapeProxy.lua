---@meta

---@class ELandscapeImportAlphamapType
---@field Additive number
---@field Layered number
ELandscapeImportAlphamapType = {}


---@class ELandscapeLayerPaintingRestriction
---@field None number @No restriction, can paint anywhere (default).
---@field UseMaxLayers number @Uses the MaxPaintedLayersPerComponent setting from the LandscapeProxy.
---@field ExistingOnly number @Restricts painting to only components that already have this layer.
---@field UseComponentWhitelist number @Restricts painting to only components that have this layer in their whitelist.
ELandscapeLayerPaintingRestriction = {}


---@class ELandscapeLayerDisplayMode
---@field Default number @Material sorting display mode
---@field Alphabetical number @Alphabetical sorting display mode
---@field UserSpecific number @User specific sorting display mode
ELandscapeLayerDisplayMode = {}


---@class ELandscapeLODFalloff
---@field Linear number @Default mode.
---@field SquareRoot number @Square Root give more natural transition, and also keep the same LOD.
ELandscapeLODFalloff = {}


---Structure storing channel usage for weightmap textures
---@class FLandscapeWeightmapUsage
FLandscapeWeightmapUsage = {}


---@class FLandscapeEditorLayerSettings
FLandscapeEditorLayerSettings = {}


---@class FLandscapeLayerStruct
FLandscapeLayerStruct = {}


---Structure storing Layer Data for import
---@class FLandscapeImportLayerInfo
FLandscapeImportLayerInfo = {}


---@class FOnLandscapeProxyComponentDataChanged : ULuaMulticastDelegate
FOnLandscapeProxyComponentDataChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: ALandscapeProxy, Param2: FLandscapeProxyComponentDataChangedParams) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLandscapeProxyComponentDataChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 ALandscapeProxy
---@param Param2 FLandscapeProxyComponentDataChangedParams
function FOnLandscapeProxyComponentDataChanged:Broadcast(Param1, Param2) end


---@class ALandscapeProxy: AActor
---@field LandscapeGuid FGuid @Guid for LandscapeEditorInfo *
---@field BoundingGuid FGuid
---@field LandscapeSectionOffset FIntPoint @Offset in quads from global components grid origin (in quads) *
---@field MaxLODLevel number @Max LOD level to use when rendering, -1 means the max available
---@field MaxLODLevel_PC number @Combined material used to render the landscape
---@field LODDistanceFactor_PC number
---@field LODStartDistance_PC number
---@field LODFalloff_PC ELandscapeLODFalloff
---@field LODDistanceFactor number
---@field LODFalloff ELandscapeLODFalloff
---@field bUseScreenSizeLOD boolean
---@field LOD0DistributionSetting number @The distribution setting used to change the LOD 0 generation, 1.75 is the normal distribution, numbers influence directly the LOD0 proportion on screen.
---@field LODDistributionSetting number @The distribution setting used to change the LOD generation, 2 is the normal distribution, small number mean you want your last LODs to take more screen space and big number mean you want your first LODs to take more screen space.
---@field NearMaxLOD_Baked number
---@field NearFactor_Baked number
---@field NearExtent_Baked number
---@field FarFactor_Baked number
---@field LandscapeRoughness number
---@field EnableImproveLOD boolean
---@field ImproveLODValues ULuaArrayHelper<number> @LOD Values
---@field NearMaxLOD number
---@field NearFactor number
---@field NearExtent number
---@field FarFactor number
---@field StaticLightingLOD number @LOD level to use when running lightmass (increase to 1 or 2 for large landscapes to stop lightmass crashing)
---@field StreamingDistanceMultiplier number @Allows artists to adjust the distance where textures using UV 0 are streamed in/out. 1.0 is the default, whereas a higher value increases the streamed-in resolution. Value can be < 0 (from legcay content, or code changes)
---@field bCacheHeightData number
---@field bOverrideGrassTypes_ForPC number
---@field GrassTypes_ForPC ULuaArrayHelper<ULandscapeGrassType>
---@field OtherMaterials ULuaMapHelper<string, UMaterialInterface> @Other materials allow LandscapeComponent to change its material in runtime
---@field bOverrideGrassTypes number
---@field GrassTypes ULuaArrayHelper<ULandscapeGrassType>
---@field MinGrassWeightThreshold number @Minimal weight threshold to generate landscape grass
---@field NegativeZBoundsExtension number @Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the negative Z axis, positive value increases bound size Note that this can also be overridden per-component when the component is selected with the component select tool
---@field PositiveZBoundsExtension number @Allows overriding the landscape bounds. This is useful if you distort the landscape with world-position-offset, for example Extension value in the positive Z axis, positive value increases bound size Note that this can also be overridden per-component when the component is selected with the component select tool
---@field GrassColor_UVScale_WorldMaskNoise FVector2D
---@field GrassColor_Center_WorldMaskNoise FVector2D
---@field LandscapeComponents ULuaArrayHelper<ULandscapeComponent> @The array of LandscapeComponent that are used by the landscape
---@field CollisionComponents ULuaArrayHelper<ULandscapeHeightfieldCollisionComponent> @Array of LandscapeHeightfieldCollisionComponent
---@field FoliageComponents ULuaArrayHelper<UHierarchicalInstancedStaticMeshComponent>
---@field StillUsed ULuaSetHelper<UHierarchicalInstancedStaticMeshComponent>
---@field bHasLandscapeGrass boolean
---@field StaticLightingResolution number @The resolution to cache lighting at, in texels/quad in one axis Total resolution would be changed by StaticLightingResolution*StaticLightingResolution Automatically calculate proper value for removing seams
---@field bCastStaticShadow number
---@field bCastShadowAsTwoSided number @Whether this primitive should cast dynamic shadows as if it were a two sided material.
---@field bCastFarShadow number @Whether this primitive should cast shadows in the far shadow cascades.
---@field LightingChannels FLightingChannels @Channels that this Landscape should be in.  Lights with matching channels will affect the Landscape. These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.
---@field bUseMaterialPositionOffsetInStaticLighting number @Whether to use the landscape material's vertical world position offset when calculating static lighting. Note: Only z (vertical) offset is supported. XY offsets are ignored. Does not work correctly with an XY offset map (mesh collision)
---@field bRenderCustomDepth number @If true, the Landscape will be rendered in the CustomDepth pass (usually used for outlines)
---@field CustomDepthStencilValue number @Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)
---@field LightmassSettings FLightmassPrimitiveSettings @The Lightmass settings for this object.
---@field CollisionMipLevel number
---@field SimpleCollisionMipLevel number
---@field CollisionThickness number @Thickness of the collision surface, in unreal units
---@field BodyInstance FBodyInstance @Collision profile settings for this landscape
---@field bGenerateOverlapEvents number @If true, Landscape will generate overlap events when other components are overlapping it (eg Begin Overlap). Both the Landscape and the other component must have this flag enabled for overlap events to occur.
---@field bBakeMaterialPositionOffsetIntoCollision number @Whether to bake the landscape material's vertical world position offset into the collision heightfield. Note: Only z (vertical) offset is supported. XY offsets are ignored. Does not work with an XY offset map (mesh collision)
---@field bUseHoleConsistent number @Set to true before digging, making the physical data consistent with the rendered data, added by huiwenjiang
---@field ComponentSizeQuads number @Data set at creation time
---@field SubsectionSizeQuads number
---@field NumSubsections number
---@field bUsedForNavigation number @Hints navigation system whether this landscape will ever be navigated on. true by default, but make sure to set it to false for faraway, background landscapes
---@field bMobileMultiLayers number
---@field NavigationGeometryGatheringMode ENavDataGatheringMode
---@field bUseLandscapeForCullingInvisibleHLODVertices boolean @Flag whether or not this Landscape's surface can be used for culling hidden triangles *
---@field DeformComponentMap ULuaMapHelper<FIntPoint, number>
---@field DeformWeightTileMap ULuaArrayHelper<number>
---@field DeformWeightData ULuaArrayHelper<number>
local ALandscapeProxy = {}

---@param InbUseScreenSizeLOD boolean
function ALandscapeProxy:ChangebUseScreenSizeLOD(InbUseScreenSizeLOD) end

---Change the Level of Detail distance factor
---@param InLODDistanceFactor number
function ALandscapeProxy:ChangeLODDistanceFactor(InLODDistanceFactor) end

function ALandscapeProxy:ChangeLOD0DistributionSettingConsoleVariable() end

function ALandscapeProxy:ChangeLODDistributionSettingConsoleVariable() end

---Deform landscape using a given spline
---@param InSplineComponent USplineComponent
---@param StartWidth number
---@param EndWidth number
---@param StartSideFalloff number
---@param EndSideFalloff number
---@param StartRoll number
---@param EndRoll number
---@param NumSubdivisions number
---@param bRaiseHeights boolean
---@param bLowerHeights boolean
---@param PaintLayer ULandscapeLayerInfoObject
function ALandscapeProxy:EditorApplySpline(InSplineComponent, StartWidth, EndWidth, StartSideFalloff, EndSideFalloff, StartRoll, EndRoll, NumSubdivisions, bRaiseHeights, bLowerHeights, PaintLayer) end
