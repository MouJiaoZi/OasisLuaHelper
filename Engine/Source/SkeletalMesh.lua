---@meta

---Enum specifying the importance of properties when simplifying skeletal meshes.
---@class SkeletalMeshOptimizationImportance
---@field SMOI_Off number @Off
---@field SMOI_Lowest number @Lowest
---@field SMOI_Low number @Low
---@field SMOI_Normal number @Normal
---@field SMOI_High number @High
---@field SMOI_Highest number @Highest
---@field SMOI_MAX number
SkeletalMeshOptimizationImportance = {}


---Enum specifying the reduction type to use when simplifying skeletal meshes.
---@class SkeletalMeshOptimizationType
---@field SMOT_NumOfTriangles number @Triangle Ratio
---@field SMOT_MaxDeviation number @Max Deviation
---@field SMOT_ScreenSize number @Screen Size
---@field SMOT_MAX number
SkeletalMeshOptimizationType = {}


---Enum specifying the LOD type to use when simplifying skeletal meshes.
---@class ESkeletalMeshLODType
---@field Reduction number
---@field Proxy number
ESkeletalMeshLODType = {}


---@class FBoneMirrorInfo
---@field SourceIndex number @The bone to mirror.
---@field BoneFlipAxis EAxis @Axis the bone is mirrored across.
FBoneMirrorInfo = {}


---Structure to export/import bone mirroring information
---@class FBoneMirrorExport
---@field BoneName string
---@field SourceBoneName string
---@field BoneFlipAxis EAxis
FBoneMirrorExport = {}


---Struct containing triangle sort settings for a particular section
---@class FTriangleSortSettings
---@field TriangleSorting ETriangleSortOption
---@field CustomLeftRightAxis ETriangleSortAxis
---@field CustomLeftRightBoneName string
FTriangleSortSettings = {}


---FSkeletalMeshOptimizationSettings - The settings used to optimize a skeletal mesh LOD.
---@class FSkeletalMeshOptimizationSettings
---@field ReductionMethod SkeletalMeshOptimizationType @The method to use when optimizing the skeletal mesh LOD
---@field NumOfTrianglesPercentage number @If ReductionMethod equals SMOT_NumOfTriangles this value is the ratio of triangles [0-1] to remove from the mesh
---@field MaxDeviationPercentage number @If ReductionMethod equals SMOT_MaxDeviation this value is the maximum deviation from the base mesh as a percentage of the bounding sphere.
---@field ScreenSize number @If ReductionMethod equals SMOT_ScreenSize this value is the screen size in pixel at which the LOD should be viewed
---@field WeldingThreshold number @The welding threshold distance. Vertices under this distance will be welded.
---@field bRecalcNormals boolean @Whether Normal smoothing groups should be preserved. If false then NormalsThreshold is used *
---@field NormalsThreshold number @If the angle between two triangles are above this value, the normals will not be smooth over the edge between those two triangles. Set in degrees. This is only used when PreserveNormals is set to false
---@field SilhouetteImportance SkeletalMeshOptimizationImportance @How important the shape of the geometry is.
---@field TextureImportance SkeletalMeshOptimizationImportance @How important texture density is.
---@field ShadingImportance SkeletalMeshOptimizationImportance @How important shading quality is.
---@field SkinningImportance SkeletalMeshOptimizationImportance @How important skinning quality is.
---@field BoneReductionRatio number @The ratio of bones that will be removed from the mesh
---@field MaxBonesPerVertex number @Maximum number of bones that can be assigned to each vertex.
---@field bTransferMorphTarget boolean @Specify if morph targets should be transfered to the LOD or not
---@field BonesToRemove_DEPRECATED ULuaArrayHelper<FBoneReference>
---@field BaseLOD number @Index to which LOD model you want as source when generating the LOD
---@field LODChainLastIndex number
---@field bUseVertexWeights boolean @Vertex colors are converted to weights. The weights are used to determine how important it is to keep the vertices when the static mesh is reduced. - Green: Vertices more important and less probable to be removed - Red: Vertices will be less important
---@field bUseVertexWeightsForMaterial boolean
---@field bSimplifyMaterials boolean
---@field MaterialLODSettings_DEPRECATED FSimplygonMaterialLODSettings
---@field MaterialSettings FMaterialProxySettings
---@field bForceRebuild boolean @This is a transient property used to pass "force build" option from UI to FLODUtilities
FSkeletalMeshOptimizationSettings = {}


---Struct holding parameters needed when creating a new clothing asset or sub asset (LOD)
---@class FSkeletalMeshClothBuildParams
---@field TargetAsset UClothingAssetBase
---@field TargetLod number
---@field bRemapParameters boolean
---@field AssetName string
---@field LodIndex number
---@field SourceSection number
---@field bRemoveFromMesh boolean
---@field PhysicsAsset UPhysicsAsset
FSkeletalMeshClothBuildParams = {}


---@class FGroupedSkeletalOptimizationSettings
---@field bAutoComputeLODDistance boolean @Whether to compute LOD switch distance or not
---@field LevelOfDetailType ESkeletalMeshLODType @The type to use when optimizing the skeletal mesh LOD
---@field ReductionSettings FSkeletalMeshOptimizationSettings
---@field ProxySettings FMeshProxySettings
---@field bForceLODRebuild boolean
FGroupedSkeletalOptimizationSettings = {}


---Struct containing information for a particular LOD level, such as materials and info for when to use it.
---@class FSkeletalMeshLODInfo
---@field ScreenSize number @ScreenSize to display this LOD. The screen size is based around the projected diameter of the bounding sphere of the model. i.e. 0.5 means half the screen's maximum dimension.
---@field LODHysteresis number @Used to avoid 'flickering' when on LOD boundary. Only taken into account when moving from complex->simple.
---@field LODMaterialMap ULuaArrayHelper<number> @Mapping table from this LOD's materials to the USkeletalMesh materials array.
---@field UVOffsets ULuaArrayHelper<FVector4>
---@field bEnableShadowCasting_DEPRECATED ULuaArrayHelper<boolean> @Per-section control over whether to enable shadow casting.
---@field TriangleSortSettings ULuaArrayHelper<FTriangleSortSettings>
---@field bHasBeenSimplified number @Whether to disable morph targets for this LOD.
---@field ReductionSettings FSkeletalMeshOptimizationSettings @Reduction settings to apply when building render data.
---@field RemeshingSettings_DEPRECATED FSimplygonRemeshingSettings @Remeshing settings to apply when building render data.
---@field OptimizationSettings FGroupedSkeletalOptimizationSettings
---@field RemovedBones_DEPRECATED ULuaArrayHelper<string> @This has been removed in editor. We could re-apply this in import time or by mesh reduction utilities
---@field BonesToRemove ULuaArrayHelper<FBoneReference> @Bones which should be removed from the skeleton for the LOD level
---@field SourceImportFilename string @The filename of the file tha was used to import this LOD if it was not auto generated.
---@field bHasPerLODVertexColors number
FSkeletalMeshLODInfo = {}


---Legacy object for back-compat loading, no longer used by clothing system
---@class FClothPhysicsProperties_Legacy
---@field VerticalResistance number
---@field HorizontalResistance number
---@field BendResistance number
---@field ShearResistance number
---@field Friction number
---@field Damping number
---@field TetherStiffness number
---@field TetherLimit number
---@field Drag number
---@field StiffnessFrequency number
---@field GravityScale number
---@field MassScale number
---@field InertiaBlend number
---@field SelfCollisionThickness number
---@field SelfCollisionSquashScale number
---@field SelfCollisionStiffness number
---@field SolverFrequency number
---@field FiberCompression number
---@field FiberExpansion number
---@field FiberResistance number
FClothPhysicsProperties_Legacy = {}


---@class FClothingAssetData_Legacy
---@field AssetName string
---@field ApexFileName string
---@field bClothPropertiesChanged boolean
---@field PhysicsProperties FClothPhysicsProperties_Legacy
FClothingAssetData_Legacy = {}


---@class FSkeletalMaterial
---@field bEnableShadowCasting_DEPRECATED boolean
---@field bRecomputeTangent_DEPRECATED boolean
---@field MaterialSlotName string
---@field UVChannelData FMeshUVChannelInfo @Data used for texture streaming relative to each UV channels.
---@field MaterialSoftRef FSoftObjectPath
FSkeletalMaterial = {}


---delegate type for pre skeletal mesh build events
---@class FOnPostMeshCache : ULuaMulticastDelegate
FOnPostMeshCache = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: USkeletalMesh) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostMeshCache:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 USkeletalMesh
function FOnPostMeshCache:Broadcast(Param1) end


---SkeletalMesh is geometry bound to a hierarchical skeleton of bones which can be animated for the purpose of deforming the mesh. Skeletal Meshes are built up of two parts; a set of polygons composed to make up the surface of the mesh, and a hierarchical skeleton which can be used to animate the polygons. The 3D models, rigging, and animations are created in an external modeling and animation application (3DSMax, Maya, Softimage, etc).
---@class USkeletalMesh: UObject, IInterface_CollisionDataProvider, IInterface_AssetUserData
---@field bAllowCPUAccess boolean
---@field bForceAllowCPUAccess boolean @Ignore "FreeSkeletalMeshBuffers" console value. *
---@field EncodeBits_Position number
---@field EncodeBits_TexCoord number
---@field EncodeBits_Normal number
---@field EncodeBits_Generic number
---@field EncodeBits_VertexColor number
---@field EncodeSpeed number
---@field DecodeSpeed number
---@field ImportedBounds FBoxSphereBounds @Original imported mesh bounds
---@field ExtendedBounds FBoxSphereBounds @Bounds extended by user values below
---@field PositiveBoundsExtension FVector @Bound extension values in addition to imported bound in the positive direction of XYZ, positive value increases bound size and negative value decreases bound size. The final bound would be from [Imported Bound - Negative Bound] to [Imported Bound + Positive Bound].
---@field NegativeBoundsExtension FVector @Bound extension values in addition to imported bound in the negative direction of XYZ, positive value increases bound size and negative value decreases bound size. The final bound would be from [Imported Bound - Negative Bound] to [Imported Bound + Positive Bound].
---@field bIsStreamable boolean
---@field bCompressData boolean
---@field IndirectLightingCachePositionOffset FVector
---@field NotInlineLODCount number @Next id to be used by a static mesh.
---@field Materials ULuaArrayHelper<FSkeletalMaterial> @List of materials applied to this mesh.
---@field SkelMirrorTable ULuaArrayHelper<FBoneMirrorInfo> @List of bones that should be mirrored.
---@field SkelMirrorAxis EAxis
---@field SkelMirrorFlipAxis EAxis
---@field CullingScreenSize number @Culling screen size
---@field LODInfo ULuaArrayHelper<FSkeletalMeshLODInfo> @Struct containing information for each LOD level, such as materials to use, and when use the LOD.
---@field bUseAnyLODFeature boolean
---@field PerLODBiasTypeInfo ULuaArrayHelper<FMeshPerLODBiasArray>
---@field bUseLODBiasExt boolean
---@field bAutoUpdateLODBiasExt boolean
---@field PerLODBiasTypeInfoExt ULuaArrayHelper<FMeshLODBiasCondition>
---@field bUseFullPrecisionUVs number @If true, use 32 bit UVs. If false, use 16 bit UVs to save memory
---@field bUsedWithDynamicInstancing number @Whether or not this mesh can be used with dynamic instancing.
---@field bHasBeenSimplified number @true if this mesh has ever been simplified with Simplygon.
---@field bHasVertexColors number @Whether or not the mesh has vertex colors
---@field bEnablePerPolyCollision number @Uses skinned data for collision data. Per poly collision cannot be used for simulation, in most cases you are better off using the physics asset
---@field bEnableSelfCollision number @Need self-collision in an aggregate. In most cases you don't need if the aggregate isn't containing the ragdoll. submit by elvisxu
---@field NodeMappingData ULuaArrayHelper<UNodeMappingContainer> @Mapping data that is saved
---@field LodModelsHasSkinweight boolean @use for FStaticLODModel Serialize SkinweightProfilesData
---@field MorphTargets ULuaArrayHelper<UMorphTarget> @Importing data and options used for this mesh
---@field ClothingAssets_DEPRECATED ULuaArrayHelper<FClothingAssetData_Legacy> @Legacy clothing asset data, will be converted to new assets after loading
---@field PostProcessAnimBlueprint UAnimInstance @Animation Blueprint class to run as a post process for this mesh. This blueprint will be ran before physics, but after the main anim instance for any skeletal mesh component using this mesh.
---@field MeshClothingAssets ULuaArrayHelper<UClothingAssetBase> @Clothing assets imported to this mesh. May or may not be in use currently on the mesh. Ordering not guaranteed, use the provided getters to access elements in this array whenever possible
---@field AssetUserData ULuaArrayHelper<UAssetUserData> @Array of user data stored with the asset
---@field Sockets ULuaArrayHelper<USkeletalMeshSocket> @Array of named socket locations, set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the SkeletalMeshComponent.
---@field TemplateRetargetSource string
---@field RefBoneNames ULuaArrayHelper<string>
---@field SkinWeightProfiles ULuaArrayHelper<FSkinWeightProfileInfo> @Set of skin weight profiles associated with this mesh
local USkeletalMesh = {}

function USkeletalMesh:RefreshBulkNotExistsLODCount() end

---Get the extended bounds of this mesh (imported bounds plus bounds extension)
---@return FBoxSphereBounds
function USkeletalMesh:GetBounds() end

---Get the original imported bounds of the skel mesh
---@return FBoxSphereBounds
function USkeletalMesh:GetImportedBounds() end

---@param InSocket USkeletalMeshSocket
function USkeletalMesh:AddDynamicSocket(InSocket) end

---Returns the number of sockets available. Both on this mesh and it's skeleton.
---@return number
function USkeletalMesh:NumSockets() end

---Checks whether the provided section is using APEX cloth. if bCheckCorrespondingSections is true disabled sections will defer to correspond sections to see if they use cloth (non-cloth sections are disabled and another section added when cloth is enabled, using this flag allows for a check on the original section to succeed)
---@param InSectionIndex number
---@param bCheckCorrespondingSections boolean
---@return boolean
function USkeletalMesh:IsSectionUsingCloth(InSectionIndex, bCheckCorrespondingSections) end
