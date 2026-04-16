---@meta

---Optimization settings used to simplify mesh LODs.
---@class ENormalMode
---@field NM_PreserveSmoothingGroups number
---@field NM_RecalculateNormals number
---@field NM_RecalculateNormalsSmooth number
---@field NM_RecalculateNormalsHard number
---@field TEMP_BROKEN number
---@field ENormalMode_MAX number
ENormalMode = {}


---@class EImportanceLevel
---@field IL_Off number
---@field IL_Lowest number
---@field IL_Low number
---@field IL_Normal number
---@field IL_High number
---@field IL_Highest number
---@field TEMP_BROKEN2 number
---@field EImportanceLevel_MAX number
EImportanceLevel = {}


---Enum specifying the reduction type to use when simplifying static meshes.
---@class EOptimizationType
---@field OT_NumOfTriangles number
---@field OT_MaxDeviation number
---@field OT_MAX number
EOptimizationType = {}


---@class EStaticMeshLODType
---@field Reduction number
---@field Proxy number
EStaticMeshLODType = {}


---@class FRuntimeMergingOverrideMaterial
---@field OverrideMaterials ULuaArrayHelper<UMaterialInterface>
FRuntimeMergingOverrideMaterial = {}


---@class FRuntimeMergingSettings
---@field ComponentToWorldTransforms ULuaArrayHelper<FTransform>
---@field RuntimeMergingOverrideMaterial ULuaArrayHelper<FRuntimeMergingOverrideMaterial>
FRuntimeMergingSettings = {}


---Old optimization settings.
---@class FStaticMeshOptimizationSettings
---@field ReductionMethod EOptimizationType @The method to use when optimizing the skeletal mesh LOD
---@field NumOfTrianglesPercentage number @If ReductionMethod equals SMOT_NumOfTriangles this value is the ratio of triangles [0-1] to remove from the mesh
---@field MaxDeviationPercentage number @If ReductionMethod equals SMOT_MaxDeviation this value is the maximum deviation from the base mesh as a percentage of the bounding sphere.
---@field WeldingThreshold number @The welding threshold distance. Vertices under this distance will be welded.
---@field bRecalcNormals boolean @Whether Normal smoothing groups should be preserved. If false then NormalsThreshold is used *
---@field NormalsThreshold number @If the angle between two triangles are above this value, the normals will not be smooth over the edge between those two triangles. Set in degrees. This is only used when PreserveNormals is set to false
---@field SilhouetteImportance number @How important the shape of the geometry is (EImportanceLevel).
---@field TextureImportance number @How important texture density is (EImportanceLevel).
---@field ShadingImportance number @How important shading quality is.
FStaticMeshOptimizationSettings = {}


---@class FGroupedStaticMeshOptimizationSettings
---@field LevelOfDetailType EStaticMeshLODType @The type to use when optimizing the skeletal mesh LOD
---@field ReductionSettings FMeshReductionSettings
---@field ProxySettings FMeshProxySettings
FGroupedStaticMeshOptimizationSettings = {}


---Source model from which a renderable static mesh is built.
---@class FStaticMeshSourceModel
---@field BuildSettings FMeshBuildSettings @Settings applied when building the mesh.
---@field ReductionSettings FMeshReductionSettings @Reduction settings to apply when building render data.
---@field RemeshingSettings_DEPRECATED FSimplygonRemeshingSettings
---@field bHasBeenSimplified boolean
---@field OptimizationSettings FGroupedStaticMeshOptimizationSettings
---@field LODDistance_DEPRECATED number @Allow per-LOD overriding of lightmap resolution
---@field ScreenSize number @ScreenSize to display this LOD. The screen size is based around the projected diameter of the bounding sphere of the model. i.e. 0.5 means half the screen's maximum dimension.
---@field SourceImportFilename string @The file path that was used to import this LOD.
FStaticMeshSourceModel = {}


---Per-section settings.
---@class FMeshSectionInfo
---@field MaterialIndex number @Index in to the Materials array on UStaticMesh.
---@field bEnableCollision boolean @If true, collision is enabled for this section.
---@field bCastShadow boolean @If true, this section will cast shadows.
FMeshSectionInfo = {}


---Map containing per-section settings for each section of each LOD.
---@class FMeshSectionInfoMap
---@field Map ULuaMapHelper<number, FMeshSectionInfo> @Maps an LOD+Section to the material it should render with.
FMeshSectionInfoMap = {}


---@class FAssetEditorOrbitCameraPosition
---@field bIsSet boolean @Whether or not this has been set to a valid value
---@field CamOrbitPoint FVector @The position to orbit the camera around
---@field CamOrbitZoom FVector @The distance of the camera from the orbit point
---@field CamOrbitRotation FRotator @The rotation to apply around the orbit point
FAssetEditorOrbitCameraPosition = {}


---@class FSubBoundsIncludedVertices
---@field VertexIndexes ULuaArrayHelper<number>
FSubBoundsIncludedVertices = {}


---@class FStaticMaterial
FStaticMaterial = {}


---@class FStaticSimpleMaterial
---@field MaterialIndex number
FStaticSimpleMaterial = {}


---@class FMaterialRemapIndex
---@field ImportVersionKey number
---@field MaterialRemap ULuaArrayHelper<number>
FMaterialRemapIndex = {}


---@class FTextureDensityInfo
---@field TextureName string
---@field bSetMaxInPC boolean
---@field TextureWidth number
---@field TextureHeight number
---@field TexelDensity number
---@field bIsWithinRange boolean
FTextureDensityInfo = {}


---@class FSectionTexelDensity
---@field MeshArea number
---@field UVArea number
---@field bIsOverSpace boolean
---@field bIsInPCDictionary boolean
---@field SectionIndex number
---@field TextureDensities ULuaArrayHelper<FTextureDensityInfo>
FSectionTexelDensity = {}


---delegate type for pre mesh build events
---@class FOnPreMeshBuild : ULuaMulticastDelegate
FOnPreMeshBuild = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UStaticMesh) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreMeshBuild:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UStaticMesh
function FOnPreMeshBuild:Broadcast(Param1) end


---delegate type for pre mesh build events
---@class FOnPostMeshBuild : ULuaMulticastDelegate
FOnPostMeshBuild = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UStaticMesh) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostMeshBuild:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UStaticMesh
function FOnPostMeshBuild:Broadcast(Param1) end


---Container UObject which holds a MeshDescription for every SourceModel LOD. Eventually this will be outered to the static mesh's package, so the data is saved along with the static mesh, but will not be referenced by it. The static mesh can later load the mesh description container on demand.
---@class UStaticMeshDescriptions: UObject
local UStaticMeshDescriptions = {}


---A StaticMesh is a piece of geometry that consists of a static set of polygons. Static Meshes can be translated, rotated, and scaled, but they cannot have their vertices animated in any way. As such, they are more efficient to render than other types of geometry such as USkeletalMesh, and they are often the basic building block of levels created in the engine.
---@class UStaticMesh: UObject, IInterface_CollisionDataProvider, IInterface_AssetUserData
---@field bSkipHISMBoundCheck boolean
---@field bHasROCData boolean
---@field PerLODBiasTypeInfo ULuaArrayHelper<FMeshPerLODBiasArray> @Imported raw mesh bulk data.
---@field bUseLODBiasExt boolean
---@field bAutoUpdateLODBiasExt boolean
---@field PerLODBiasTypeInfoExt ULuaArrayHelper<FMeshLODBiasCondition>
---@field MinLOD number @Minimum LOD to use for rendering.  This is the default setting for the mesh and can be overridden by component settings.
---@field Materials_DEPRECATED ULuaArrayHelper<UMaterialInterface> @Materials used by this static mesh. Individual sections index in to this array.
---@field StaticMaterials ULuaArrayHelper<FStaticMaterial>
---@field LightmapUVDensity number
---@field LightMapResolution number
---@field LightMapCoordinateIndex number @The light map coordinate index
---@field DistanceFieldSelfShadowBias number @Useful for reducing self shadowing from distance field methods when using world position offset to animate the mesh's vertices.
---@field ExpectedQualityLimit FExpectedQuality
---@field bGenerateMeshDistanceField number @Whether to generate a distance field for this mesh, which can be used by DistanceField Indirect Shadows. This is ignored if the project's 'Generate Mesh Distance Fields' setting is enabled.
---@field bLazyLoadBulkData number @Lazy load bulk data for reduce memory used
---@field bAllowMinLodBiasCfg number @allow MinLodBias for global config (r.StaticMeshMinLodBias)
---@field bDisableGenerateHLOD number
---@field LODForCollision number @Specifies which mesh LOD to use for complex (per-poly) collision. Sometimes it can be desirable to use a lower poly representation for collision to reduce memory usage, improve performance and behaviour. Collision representation does not change based on distance to camera.
---@field CullingScreenSize number @Culling screen size
---@field bUseScreenSizeModifier boolean
---@field ScreenSizeCullingRoughDistance number @Rough Distance of Screen size Culling
---@field bIsGrass boolean @Whether to Flaten Landscape
---@field bIsTree boolean
---@field bStripComplexCollisionForConsole_DEPRECATED number @If true, strips unwanted complex collision data aka kDOP tree when cooking for consoles. On the Playstation 3 data of this mesh will be stored in video memory.
---@field bHasNavigationData number @If true, mesh will have NavCollision property with additional data for navmesh generation and usage. Set to false for distant meshes (always outside navigation bounds) to save memory on collision data.
---@field bIsStreamable boolean
---@field HiddenStreamFactor number
---@field bCompressData boolean
---@field bUseCoarseGIMip boolean
---@field NotInlineLODCount number @Next id to be used by a static mesh.
---@field bSupportUniformlyDistributedSampling number @Mesh supports uniformly distributed sampling in constant time. Memory cost is 8 bytes per triangle. Example usage is uniform spawning of particles.
---@field LpvBiasMultiplier number @Bias multiplier for Light Propagation Volume lighting
---@field bAllowCPUAccess boolean @If true, will keep geometry data CPU-accessible in cooked builds, rather than uploading to GPU memory and releasing it from CPU memory. This is required if you wish to access StaticMesh geometry data on the CPU at runtime in cooked builds (e.g. to convert StaticMesh to ProceduralMeshComponent)
---@field bCustomWaterBeOccludeed boolean
---@field EncodeBits_Position number @Importing data and options used for this mesh
---@field EncodeBits_TexCoord number
---@field EncodeBits_Normal number
---@field EncodeBits_Generic number
---@field EncodeBits_VertexColor number
---@field EncodeSpeed number
---@field DecodeSpeed number
---@field Sockets ULuaArrayHelper<UStaticMeshSocket> @Array of named socket locations, set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the StaticMeshComponent.
---@field PositiveBoundsExtension FVector @Bound extension values in the positive direction of XYZ, positive value increases bound size
---@field NegativeBoundsExtension FVector @Bound extension values in the negative direction of XYZ, positive value increases bound size
---@field ExtendedBounds FBoxSphereBounds @Original mesh bounds extended with Positive/NegativeBoundsExtension
---@field SubLocalBounds ULuaArrayHelper<FBoxSphereBounds>
---@field OcclusionCullingVertex ULuaArrayHelper<FVector4>
---@field IndirectLightingCachePositionOffset FVector
---@field bUseQuantization boolean
---@field ElementToIgnoreForTexFactor number @Index of an element to ignore while gathering streaming texture factors. This is useful to disregard automatically generated vertex data which breaks texture factor heuristics.
---@field AssetUserData ULuaArrayHelper<UAssetUserData> @Array of user data stored with the asset
---@field SimpleMaterials ULuaArrayHelper<FStaticSimpleMaterial> @Simple material setting *
local UStaticMesh = {}

function UStaticMesh:GetAllSectionTexelDensities() end

function UStaticMesh:RefreshBulkNotExistsLODCount() end

---Returns the number of LODs used by the mesh.
---@return number
function UStaticMesh:GetNumLODs() end

---Returns the number of bounds of the mesh.
---@return FBoxSphereBounds
function UStaticMesh:GetBounds() end

---Returns the bounding box, in local space including bounds extension(s), of the StaticMesh asset
---@return FBox
function UStaticMesh:GetBoundingBox() end

---Returns number of Sections that this StaticMesh has, in the supplied LOD (LOD 0 is the highest)
---@param InLOD number
---@return number
function UStaticMesh:GetNumSections(InLOD) end

---Gets a Material index given a slot name
---@param MaterialSlotName string
---@return number
function UStaticMesh:GetMaterialIndex(MaterialSlotName) end
