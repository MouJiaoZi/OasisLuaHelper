---@meta

---@class EVisibilityAggressiveness
---@field VIS_LeastAggressive number
---@field VIS_ModeratelyAggressive number
---@field VIS_MostAggressive number
---@field VIS_Max number
EVisibilityAggressiveness = {}


---@class EVolumeLightingMethod
---@field VLM_VolumetricLightmap number @Lighting samples are computed in an adaptive grid which covers the entire Lightmass Importance Volume.  Higher density grids are used near geometry. The Volumetric Lightmap is interpolated efficiently on the GPU per-pixel, allowing accurate indirect lighting for dynamic objects and volumetric fog. Positions outside of the Importance Volume reuse the border texels of the Volumetric Lightmap (clamp addressing). On mobile, interpolation is done on the CPU at the center of each object's bounds.
---@field VLM_SparseVolumeLightingSamples number @Volume lighting samples are placed on top of static surfaces at medium density, and everywhere else in the Lightmass Importance Volume at low density.  Positions outside of the Importance Volume will have no indirect lighting. This method requires CPU interpolation so the Indirect Lighting Cache is used to interpolate results for each dynamic object, adding Rendering Thread overhead. Volumetric Fog cannot be affected by precomputed lighting with this method.
EVolumeLightingMethod = {}


---@class EPVSMode
---@field OnlyStatic number
---@field StaticAndDynamic number
---@field OnlyDynamic number
EPVSMode = {}


---@class EIdeaBakingMode
---@field BruteForce number
---@field TwoPass number
EIdeaBakingMode = {}


---@class EIdeaBakingLayout
---@field Sun3Sky number @Sun3 Sky
---@field Sun1SkyLocal1 number @Sun1 Sky Local1
---@field Sun3SkyLocal3 number @Sun3 Sky Local3
---@field Sun2SkyLocal1 number @Sun2 Sky Local1
---@field Local3Sky number @Local3 Sky
---@field Sun1PortalSkyLocal1 number @Sun1 Portal Sky Local1
---@field Sun1OccLocal1 number @Sun1 Occlusion Local1
---@field Sun1SkyLocal1Occ number @Sun1 Sky Local1 Occlusion
---@field Sun3SkyLocal3Occ number @Sun3 Sky Local3 Occlusion
EIdeaBakingLayout = {}


---@class ECellPlacementStrategy
---@field CPS_TOPDOWN number @TOPDOWN
---@field CPS_DOWNTOP number @DOWNTOP
ECellPlacementStrategy = {}


---@class FIdeaBakingWorldInfoSettings
---@field BakingLayout EIdeaBakingLayout @By luciuszhang: Baking layout mode
---@field NumCoarseSamples number @Number of first pass light samples.
---@field NumSamples number @Number of second pass light samples for two pass mode and samples for brute force mode.
---@field NumLightingBounces number @Number of light bounces to simulate for point / spot / directional lights, starting from the light source. 0 is direct lighting only, 1 is one bounce, etc. Bounce 1 takes the most time to calculate and contributes the most to visual quality, followed by bounce 2. Successive bounces don't really affect build times, but have a much lower visual impact, unless the material diffuse colors are close to 1.
---@field LightmapBoost number @Scales the lightmap result of idea baking.
---@field SunHardness number @Control Sun direction falloff, bigger SunHardness, three direction will be more separated
---@field BakingMode EIdeaBakingMode @Baking path tracing mode, just for debug
---@field bUseParallelBaking number @If true, parallel baking will be enabled.
---@field bUseConservativeRasterization number @If true, Conservative Rasterization (emulated by multi-tap) will be enabled.
---@field bUseLocalOcclusion number @If true, local ambient occlusion (A0) will be enabled.
---@field LocalOcclusionRadius number @Local ambient occlusion(A0) tracing radius.
---@field LocalOcclusionFallOff number @Local ambient occlusion(A0) transition speed.
---@field LocalOcclusionDistribution number @Local ambient occlusion(A0) sampling distribution.
---@field LocalOcclusionFadeRatio number @Local ambient occlusion(A0) fade start ratio.
---@field LocalOcclusionRes number @Local ambient occlusion(A0) resolution multiple.
---@field LocalOcclusionMultiple number @Local ambient occlusion(A0) sampling multiple.
---@field LocalOcclusionPower number @Local ambient occlusion(A0) strength, larger value, darker AO.
---@field LocalOcclusionDenoising number @Local ambient occlusion(A0) denoising filter count.
---@field LocalOcclusionDilation number @Local ambient occlusion(A0) dilation filter count.
---@field NumDenoisingIterators number @If true, denoise filter will be enabled.
---@field NumDilationIterators number @If true, dilation filter will be enabled.
---@field DirectLightDenoising number @Denoising filter iteration number for direct lighting.
---@field RayTraceMaxDistance number @By luciuszhang: Path tracing distance threshold in centimeters.
---@field RayTraceBias number @By luciuszhang: Path tracing ray bias in centimeters.
---@field RetraceDistance number @By luciuszhang: Retrace distance threshold in centimeters.
---@field SmallestTexelRadius number @By luciuszhang: Smallest texel radius allowed, useful for clamping edge cases where some texels have a radius of 0. This should be smaller than the smallest valid texel radius in the scene.
---@field AreaLightSampleCount number @Path tracing distance threshold in centimeters.
---@field bWithPortalDirectLighting number @If true, calculate portal light direct lighting.
---@field bWithGrayDiffuse number @If true, use gray diffuse material for sun indirect lighting.
FIdeaBakingWorldInfoSettings = {}


---@class FSurfelRayTracingSettings
---@field bAllowSurfelRayTracing number @Whether to allow surfel ray tracing for ray traced dynamic indirect lighting and ambient occlusion.
---@field SurfelVoxelSize FVector @The size in unreal unit of a voxel.
---@field SurfelHierarchyDimension FIntVector @The size of the dimension of Surfel Bricks. Each brick contain 4x4x4 voxels.
---@field IrradianceVolumeCellSize FVector @The cell world size of the dimension of Surfel Irradiance Volume.
---@field IrradianceVolumeDimension FIntVector @The size of the dimension of Surfel Irradiance Volume.
---@field IrradianceVolumeMipLevels number @The number of mip levels of Surfel Irradiance Volume.
---@field IrradianceMipScale FVector4 @The brick world size scale of each mip levels of Surfel Irradiance Volume.
---@field IrradianceVolumeOffset FVector @The position offset of Surfel Irradiance Volume.
---@field IrradianceVolumeCellDim number @The number of positions where a probe can be in the Irradiance Volume Cell. Value 5 means 5x5x5 positions.
---@field SurfelInjectSingleSize number @The size n of inject single mesh to Hierarchical Surfel of Surfel Bricks. Each brick contains 4x4x4 voxels. Default n=16 means 16x16x16 bricks.
---@field SurfelInjectSingleDistance number @The distance within which a primitive can be inject into the surfel.
---@field SurfelPoolInitScale number @The init size of the sparse surfel pool. Default 1x is 16 MB. Turn larger the pool size to avoid losing GI when resizing the pool, but consume more video memory.
---@field bSupportEmissive number @Whether emissive object should affect GI
---@field bSupportTOD number @Whether GI should support time of day, turning this off will cause significant delay of GI convergence in scenes with TOD
FSurfelRayTracingSettings = {}


---@class FLightmassPrecomputedVisibilitySettings
---@field BigBuildingSize number @Too big to split into small box
---@field bQucikPVS boolean @Set sample num to a small number
---@field bOnlyExternalPVS boolean @Only External PVS, to reduce memory
---@field SampleNumMultiplier number @Multiplier for the number of samples rays.
---@field bUseAccurateSamplingEndPoint boolean
---@field CellPlacementStrategy ECellPlacementStrategy
FLightmassPrecomputedVisibilitySettings = {}


---@class FLightmassWorldInfoSettings
---@field StaticLightingLevelScale number @Warning: Setting this to less than 1 will greatly increase build times! Scale of the level relative to real world scale (1 Unreal Unit = 1 cm). All scale-dependent Lightmass setting defaults have been tweaked to work well with real world scale, Any levels with a different scale should use this scale to compensate. For large levels it can drastically reduce build times to set this to 2 or 4.
---@field NumIndirectLightingBounces number @Number of light bounces to simulate for point / spot / directional lights, starting from the light source. 0 is direct lighting only, 1 is one bounce, etc. Bounce 1 takes the most time to calculate and contributes the most to visual quality, followed by bounce 2. Successive bounces don't really affect build times, but have a much lower visual impact, unless the material diffuse colors are close to 1.
---@field NumSkyLightingBounces number @Number of skylight and emissive bounces to simulate. Lightmass uses a non-distributable radiosity method for skylight bounces whose cost is proportional to the number of bounces.
---@field IndirectLightingQuality number @Warning: Setting this higher than 1 will greatly increase build times! Can be used to increase the GI solver sample counts in order to get higher quality for levels that need it. It can be useful to reduce IndirectLightingSmoothness somewhat (~.75) when increasing quality to get defined indirect shadows. Note that this can't affect compression artifacts, UV seams or other texture based artifacts.
---@field IndirectLightingSmoothness number @Smoothness factor to apply to indirect lighting.  This is useful in some lighting conditions when Lightmass cannot resolve accurate indirect lighting. 1 is default smoothness tweaked for a variety of lighting situations. Higher values like 3 smooth out the indirect lighting more, but at the cost of indirect shadows losing detail.
---@field EnvironmentColor FColor @Represents a constant color light surrounding the upper hemisphere of the level, like a sky. This light source currently does not get bounced as indirect lighting and causes reflection capture brightness to be incorrect.  Prefer using a Static Skylight instead.
---@field EnvironmentIntensity number @Scales EnvironmentColor to allow independent color and brightness controls.
---@field EmissiveBoost number @Scales the emissive contribution of all materials in the scene.  Currently disabled and should be removed with mesh area lights.
---@field DiffuseBoost number @Scales the diffuse contribution of all materials in the scene.
---@field VolumeLightingMethod EVolumeLightingMethod @Technique to use for providing precomputed lighting at all positions inside the Lightmass Importance Volume
---@field VolumetricLightmapDetailCellSize number @Size of an Volumetric Lightmap voxel at the highest density (used around geometry), in world space units. This setting has a large impact on build times and memory, use with caution. Halving the DetailCellSize can increase memory by up to a factor of 8x.
---@field VolumetricLightmapMaximumBrickMemoryMb number @Maximum amount of memory to spend on Volumetric Lightmap Brick data.  High density bricks will be discarded until this limit is met, with bricks furthest from geometry discarded first.
---@field VolumeLightSamplePlacementScale number @Scales the distances at which volume lighting samples are placed.  Volume lighting samples are computed by Lightmass and are used for GI on movable components. Using larger scales results in less sample memory usage and reduces Indirect Lighting Cache update times, but less accurate transitions between lighting areas.
---@field bUseVolumeLightmapStreaming number
---@field bUseAmbientOcclusion number @If true, AmbientOcclusion will be enabled.
---@field bGenerateAmbientOcclusionMaterialMask number @Whether to generate textures storing the AO computed by Lightmass. These can be accessed through the PrecomputedAOMask material node, Which is useful for blending between material layers on environment assets. Be sure to set DirectIlluminationOcclusionFraction and IndirectIlluminationOcclusionFraction to 0 if you only want the PrecomputedAOMask!
---@field DirectIlluminationOcclusionFraction number @How much of the AO to apply to direct lighting.
---@field IndirectIlluminationOcclusionFraction number @How much of the AO to apply to indirect lighting.
---@field OcclusionExponent number @Higher exponents increase contrast.
---@field FullyOccludedSamplesFraction number @Fraction of samples taken that must be occluded in order to reach full occlusion.
---@field MaxOcclusionDistance number @Maximum distance for an object to cause occlusion on another object.
---@field bVisualizeMaterialDiffuse number @If true, override normal direct and indirect lighting with just the exported diffuse term.
---@field bVisualizeAmbientOcclusion number @If true, override normal direct and indirect lighting with just the AO term.
---@field bCompressLightmaps number @Whether to compress lightmap textures.  Disabling lightmap texture compression will reduce artifacts but increase memory and disk size by 4x. Use caution when disabling this.
---@field bUseSimpleLightmap number @Whether to use simple lightmap on the mobile platform.
---@field LightmapResolutionScale number
FLightmassWorldInfoSettings = {}


---stores information on a viewer that actors need to be checked against for relevancy
---@class FNetViewer
---@field ViewLocation FVector @Where the viewer is looking from
---@field ViewDir FVector @Direction the viewer is looking
FNetViewer = {}


---@class FHierarchicalSimplification
---@field TransitionScreenSize number @The screen radius an mesh object should reach before swapping to the LOD actor, once one of parent displays, it won't draw any of children.
---@field OverrideDrawDistance number
---@field bUseOverrideDrawDistance boolean
---@field bAllowSpecificExclusion number
---@field bSimplifyMesh boolean @If this is true, it will simplify mesh but it is slower. If false, it will just merge actors but not simplify using the lower LOD if exists. For example if you build LOD 1, it will use LOD 1 of the mesh to merge actors if exists. If you merge material, it will reduce drawcalls.
---@field ProxySetting FMeshProxySettings @Simplification Setting if bSimplifyMesh is true
---@field MergeSetting FMeshMergingSettings @Merge Mesh Setting if bSimplifyMesh is false
---@field DesiredBoundRadius number @Desired Bounding Radius for clustering - this is not guaranteed but used to calculate filling factor for auto clustering
---@field DesiredFillingPercentage number @Desired Filling Percentage for clustering - this is not guaranteed but used to calculate filling factor  for auto clustering
---@field DesiredGridSize number
---@field DesiredGridOffset number
---@field DesiredGridVolume ULuaArrayHelper<FVector4>
---@field GridIgnoreStaticMeshs ULuaArrayHelper<string>
---@field MinNumberOfActorsToBuild number @Min number of actors to build LODActor
---@field bOnlyGenerateClustersForVolumes boolean @Min number of actors to build LODActor
---@field bReusePreviousLevelClusters boolean @Will reuse the clusters generated for the previous (lower) HLOD level
FHierarchicalSimplification = {}


---@class UHierarchicalLODSetup: UObject
---@field HierarchicalLODSetup ULuaArrayHelper<FHierarchicalSimplification> @Hierarchical LOD Setup
---@field OverrideBaseMaterial UMaterialInterface
local UHierarchicalLODSetup = {}


---Actor containing all script accessible world properties.
---@class AWorldSettings: AInfo, IInterface_AssetUserData
---@field BlueprintContainer AActor
---@field SaveLocOffset FVector
---@field bEnableFOVDistanceCulling number @FOV Distance Culling *
---@field FOVCulling ULuaArrayHelper<FVector2D>
---@field bEnableWorldBoundsChecks number @If true, enables CheckStillInWorld checks
---@field bEnableNavigationSystem number @if set to false navigation system will not get created (and all navigation functionality won't be accessible)
---@field bEnableAISystem number @if set to false AI system will not get created. Use it to disable all AI-related activity on a map
---@field bEnalbeLevelLoadConditionControl number
---@field bEnableWorldComposition number @Enables tools for composing a tiled world. Level has to be saved and all sub-levels removed before enabling this option.
---@field bWorldCompositionPIESupportLevelRotation number
---@field bPIECloseFixupLazyPointers number
---@field bEnableRescanRestriction number
---@field bOnlyIncludeWhiteList number
---@field bAlwaysExcludeBlackList number
---@field WhiteListRescanFolders ULuaArrayHelper<string>
---@field WhiteListRescanLevelPaths ULuaArrayHelper<string>
---@field BlackListRescanFolders ULuaArrayHelper<string>
---@field BlackListRescanLevelPaths ULuaArrayHelper<string>
---@field bUseClientSideLevelStreamingVolumes number @Enables client-side streaming volumes instead of server-side. Expected usage scenario: server has all streaming levels always loaded, clients independently stream levels in/out based on streaming volumes.
---@field bEnableWorldOriginRebasing number @World origin will shift to a camera position when camera goes far away from current origin
---@field bWorldGravitySet number @if set to true, when we call GetGravityZ we assume WorldGravityZ has already been initialized and skip the lookup of DefaultGravityZ and GlobalGravityZ
---@field bGlobalGravitySet number @If set to true we will use GlobalGravityZ instead of project setting DefaultGravityZ
---@field KillZ number
---@field KillZDamageType UDamageType
---@field WorldGravityZ number
---@field GlobalGravityZ number
---@field DefaultPhysicsVolumeClass ADefaultPhysicsVolume
---@field PhysicsCollisionHandlerClass UPhysicsCollisionHandler
---@field DefaultGameMode AGameModeBase @The default GameMode to use when starting this map in the game. If this value is NULL, the INI setting for default game type is used.
---@field GameNetworkManagerClass AGameNetworkManager @Class of GameNetworkManager to spawn for network games
---@field StreamVolumeExManagerClass AStreamVolumeExManager
---@field PackedLightAndShadowMapTextureSize number @Maximum size of textures for packed light and shadow maps
---@field bMinimizeBSPSections number @Causes the BSP build to generate as few sections as possible. This is useful when you need to reduce draw calls but can reduce texture streaming efficiency and effective lightmap resolution. Note - changes require a rebuild to propagate.  Also, be sure to select all surfaces and make sure they all have the same flags to minimize section count.
---@field DefaultColorScale FVector @Default color scale for the level
---@field DefaultMaxDistanceFieldOcclusionDistance number @Max occlusion distance used by mesh distance fields, overridden if there is a movable skylight.
---@field GlobalDistanceFieldViewDistance number @Distance from the camera that the global distance field should cover.
---@field bEnableUpdateTransformViewTranslated number
---@field bEnableWorldComposition2DLoading number
---@field MaxWorldSize number
---@field RegionSizeNear number
---@field RegionSizeFar number
---@field RegionXAdd boolean
---@field RegionYAdd boolean
---@field UnlimitedRegionZ boolean
---@field Graduation number
---@field CompositionSize number
---@field DynamicIndirectShadowsSelfShadowingIntensity number @Controls the intensity of self-shadowing from capsule indirect shadows. These types of shadows use approximate occluder representations, so reducing self-shadowing intensity can hide those artifacts.
---@field bPrecomputeVisibility number @Whether to place visibility cells inside Precomputed Visibility Volumes and along camera tracks in this level. Precomputing visibility reduces rendering thread time at the cost of some runtime memory and somewhat increased lighting build times.
---@field bPlaceCellsOnlyAlongCameraTracks number @Whether to place visibility cells only along camera tracks or only above shadow casting surfaces.
---@field VisibilityCellSize number @World space size of precomputed visibility cells in x and y. Smaller sizes produce more effective occlusion culling at the cost of increased runtime memory usage and lighting build times.
---@field PlayAreaHeight number @Play Area Height ( Cell Z
---@field DynamicCellSize FVector2D @Dynamic Cell Size ( Dynamic Cell XY, Z
---@field PrecomputedVisibilitySettings FLightmassPrecomputedVisibilitySettings
---@field VisibilityAggressiveness EVisibilityAggressiveness @Determines how aggressive precomputed visibility should be. More aggressive settings cull more objects but also cause more visibility errors like popping.
---@field bForceNoPrecomputedLighting number @Whether to force lightmaps and other precomputed lighting to not be created even when the engine thinks they are needed. This is useful for improving iteration in levels with fully dynamic lighting and shadowing. Note that any lighting and shadowing interactions that are usually precomputed will be lost if this is enabled.
---@field bUseLightmassSettingsIsolation number
---@field LightmassSettings any
---@field LightmassSettingsForPC any
---@field IdeaBakingSettings any
---@field SurfelRayTracingSettings any
---@field DefaultReverbSettings FReverbSettings @Default reverb settings used by audio volumes.
---@field DefaultAmbientZoneSettings FInteriorSettings @Default interior settings used by audio volumes.
---@field WorldToMeters number @scale of 1uu to 1m in real world measurements, for HMD and other physically tracked devices (e.g. 1uu = 1cm would be 100.0)
---@field MonoCullingDistance number @Distance from the player after which content will be rendered in mono if monoscopic far field rendering is activated
---@field TimeDilation number @Normally 1 - scales real time passage. Warning - most use cases should use GetEffectiveTimeDilation() instead of reading from this directly
---@field MatineeTimeDilation number
---@field DemoPlayTimeDilation number
---@field MinGlobalTimeDilation number @Lowest acceptable global time dilation.
---@field MaxGlobalTimeDilation number @Highest acceptable global time dilation.
---@field MinUndilatedFrameTime number @Smallest possible frametime, not considering dilation. Equiv to 1/FastestFPS.
---@field MaxUndilatedFrameTime number @Largest possible frametime, not considering dilation. Equiv to 1/SlowestFPS.
---@field bHighPriorityLoading number @when this flag is set, more time is allocated to background loading (replicated)
---@field bHighPriorityLoadingLocal number @copy of bHighPriorityLoading that is not replicated, for clientside-only loading operations
---@field ReplicationViewers ULuaArrayHelper<FNetViewer> @valid only during replication - information about the player(s) being replicated to (there could be more than one in the case of a splitscreen client)
---@field AssetUserData ULuaArrayHelper<UAssetUserData> @Array of user data stored with the asset
---@field LODRelativeDistances ULuaArrayHelper<number>
---@field bEnablestreamingLevelLOD boolean
---@field WorldCompositionNums number
---@field CompositionBlockLength number
---@field OriginOfTheRegion FVector
---@field bEnableObjectPool boolean
local AWorldSettings = {}

function AWorldSettings:SaveEntireWorld() end

function AWorldSettings:OnRep_WorldGravityZ() end
