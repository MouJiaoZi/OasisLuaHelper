---@meta

---@class EAspectRatioAxisConstraint
---@field AspectRatio_MaintainYFOV number @Maintain Y-Axis FOV
---@field AspectRatio_MaintainXFOV number @Maintain X-Axis FOV
---@field AspectRatio_MajorAxisFOV number @Maintain Major Axis FOV
---@field AspectRatio_MAX number
EAspectRatioAxisConstraint = {}


---The type of metric we want about the actor *
---@class EActorMetricsType
---@field METRICS_VERTS number
---@field METRICS_TRIS number
---@field METRICS_SECTIONS number
---@field METRICS_MAX number
EActorMetricsType = {}


---Rules for attaching components - needs to be kept synced to EDetachmentRule
---@class EAttachmentRule
---@field KeepRelative number @Keeps current relative transform as the relative transform to the new parent.
---@field KeepWorld number @Automatically calculates the relative transform such that the attached component maintains the same world transform.
---@field SnapToTarget number @Snaps transform to the attach point
EAttachmentRule = {}


---Rules for detaching components - needs to be kept synced to EAttachmentRule
---@class EDetachmentRule
---@field KeepRelative number @Keeps current relative transform.
---@field KeepWorld number @Automatically calculates the relative transform such that the detached component maintains the same world transform.
EDetachmentRule = {}


---@class EAttachLocation
---@field KeepRelativeOffset number @Keeps current relative transform as the relative transform to the new parent.
---@field KeepWorldPosition number @Automatically calculates the relative transform such that the attached component maintains the same world transform.
---@field SnapToTarget number @Snaps location and rotation to the attach point. Calculates the relative scale so that the final world scale of the component remains the same.
---@field SnapToTargetIncludingScale number @Snaps entire transform to target, including scale.
EAttachLocation = {}


---A priority for sorting scene elements by depth. Elements with higher priority occlude elements with lower priority, disregarding distance.
---@class ESceneDepthPriorityGroup
---@field SDPG_World number @World scene DPG.
---@field SDPG_Foreground number @Foreground scene DPG.
---@field SDPG_MAX number
ESceneDepthPriorityGroup = {}


---@class EIndirectLightingCacheQuality
---@field ILCQ_Off number @The indirect lighting cache will be disabled for this object, so no GI from stationary lights on movable objects.
---@field ILCQ_Point number @A single indirect lighting sample computed at the bounds origin will be interpolated which fades over time to newer results.
---@field ILCQ_Volume number @The object will get a 5x5x5 stable volume of interpolated indirect lighting, which allows gradients of lighting intensity across the receiving object.
EIndirectLightingCacheQuality = {}


---@class ELightmapType
---@field Default number @Use the default based on Mobility: Surface Lightmap for Static components, Volumetric Lightmap for Movable components.
---@field ForceSurface number @Force Surface Lightmap, even if the component moves, which should otherwise change the lighting.  This is only supported on components which support surface lightmaps, like static meshes.
---@field ForceVolumetric number @Force Volumetric Lightmaps, even if the component is static and could have supported surface lightmaps. Volumetric Lightmaps have better directionality and no Lightmap UV seams, but are much lower resolution than Surface Lightmaps and frequently have self-occlusion and leaking problems. Note: Lightmass currently requires valid lightmap UVs and sufficient lightmap resolution to compute bounce lighting, even though the Volumetric Lightmap will be used at runtime.
ELightmapType = {}


---@class EVLMOptimizeType
---@field Default number @Use the default Engine Setting.
---@field ForceGpuVlmSH2 number @Force using SH2, if it is a GPU VLM.
---@field ForceCpuInterpolation number @Force the use of data based on object CPU interpolation VLM to be provided to the GPU.
EVLMOptimizeType = {}


---@class EOcclusionCombineMode
---@field OCM_Minimum number @Take the minimum occlusion value.  This is effective for avoiding over-occlusion from multiple methods, but can result in indoors looking too flat.
---@field OCM_Multiply number @Multiply together occlusion values from Distance Field Ambient Occlusion and Screen Space Ambient Occlusion. This gives a good sense of depth everywhere, but can cause over-occlusion. SSAO should be tweaked to be less strong compared to Minimum.
---@field OCM_MAX number
EOcclusionCombineMode = {}


---Note: This is mirrored in Lightmass, be sure to update the blend mode structure and logic there if this changes.
---@class EBlendMode
---@field BLEND_Opaque number @Opaque
---@field BLEND_Masked number @Masked
---@field BLEND_Translucent number @Translucent
---@field BLEND_Additive number @Additive
---@field BLEND_Modulate number @Modulate
---@field BLEND_AlphaComposite number @AlphaComposite (Premultiplied Alpha)
---@field BLEND_Multiply number @Multiply
---@field BLEND_Screen number @Screen
---@field BLEND_MAX number
EBlendMode = {}


---@class EOITBlendMode
---@field OIT_None number @None
---@field OIT_McGuire number @McGuire
---@field OIT_McGuireWithDepth number @McGuire Depth Weighted
---@field OIT_MAX number
EOITBlendMode = {}


---@class ESamplerSourceMode
---@field SSM_FromTextureAsset number @Get the sampler from the texture.  Every unique texture will consume a sampler slot, which are limited in number.
---@field SSM_Wrap_WorldGroupSettings number @Shared sampler source that does not consume a sampler slot.  Uses wrap addressing and gets filter mode from the world texture group.
---@field SSM_Clamp_WorldGroupSettings number @Shared sampler source that does not consume a sampler slot.  Uses clamp addressing and gets filter mode from the world texture group.
ESamplerSourceMode = {}


---@class ETranslucencyLightingMode
---@field TLM_VolumetricNonDirectional number @Lighting will be calculated for a volume, without directionality.  Use this on particle effects like smoke and dust. This is the cheapest per-pixel lighting method, however the material normal is not taken into account.
---@field TLM_VolumetricDirectional number @Lighting will be calculated for a volume, with directionality so that the normal of the material is taken into account. Note that the default particle tangent space is facing the camera, so enable bGenerateSphericalParticleNormals to get a more useful tangent space.
---@field TLM_VolumetricPerVertexNonDirectional number @Same as Volumetric Non Directional, but lighting is only evaluated at vertices so the pixel shader cost is significantly less. Note that lighting still comes from a volume texture, so it is limited in range.  Directional lights become unshadowed in the distance.
---@field TLM_VolumetricPerVertexDirectional number @Same as Volumetric Directional, but lighting is only evaluated at vertices so the pixel shader cost is significantly less. Note that lighting still comes from a volume texture, so it is limited in range.  Directional lights become unshadowed in the distance.
---@field TLM_Surface number @Lighting will be calculated for a surface. The light in accumulated in a volume so the result is blurry, limited distance but the per pixel cost is very low. Use this on translucent surfaces like glass and water. Only diffuse lighting is supported.
---@field TLM_SurfacePerPixelLighting number @Lighting will be calculated for a surface. Use this on translucent surfaces like glass and water. This is implemented with forward shading so specular highlights from local lights are supported, however many deferred-only features are not. This is the most expensive translucency lighting method as each light's contribution is computed per-pixel.
---@field TLM_MAX number
ETranslucencyLightingMode = {}


---Determines how the refraction offset should be computed for the material.
---@class ERefractionMode
---@field RM_IndexOfRefraction number @Refraction is computed based on the camera vector entering a medium whose index of refraction is defined by the Refraction material input. The new medium's surface is defined by the material's normal.  With this mode, a flat plane seen from the side will have a constant refraction offset. This is a physical model of refraction but causes reading outside the scene color texture so is a poor fit for large refractive surfaces like water.
---@field RM_PixelNormalOffset number @The refraction offset into Scene Color is computed based on the difference between the per-pixel normal and the per-vertex normal. With this mode, a material whose normal is the default (0, 0, 1) will never cause any refraction.  This mode is only valid with tangent space normals. The refraction material input scales the offset, although a value of 1.0 maps to no refraction, and a value of 2 maps to a scale of 1.0 on the offset. This is a non-physical model of refraction but is useful on large refractive surfaces like water, since offsets have to stay small to avoid reading outside scene color.
---@field RM_ScopeDistortion number @In-Scope Distortion
ERefractionMode = {}


---Enumerates available options for the translucency sort policy.
---@class ETranslucentSortPolicy
---@field SortByDistance number @Sort based on distance from camera centerpoint to bounding sphere centerpoint. (Default, best for 3D games.)
---@field SortByProjectedZ number @Sort based on the post-projection Z distance to the camera.
---@field SortAlongAxis number @Sort based on the projection onto a fixed axis. (Best for 2D games.)
ETranslucentSortPolicy = {}


---@class ESceneCaptureSource
---@field SCS_SceneColorHDR number @SceneColor (HDR) in RGB, Inv Opacity in A
---@field SCS_SceneColorHDRNoAlpha number @SceneColor (HDR) in RGB, 0 in A
---@field SCS_FinalColorLDR number @Final Color (LDR) in RGB
---@field SCS_SceneColorSceneDepth number @SceneColor (HDR) in RGB, SceneDepth in A
---@field SCS_SceneDepth number @SceneDepth in R
---@field SCS_DeviceDepth number @DeviceDepth in RGB
---@field SCS_Normal number @Normal in RGB (Deferred Renderer only)
---@field SCS_BaseColor number @BaseColor in RGB (Deferred Renderer only)
---@field SCS_FastColorLDR number @Fast Color (LDR) in RGB, Inv Opacity in A
---@field SCS_FinalColorLDR_InvOpacity number @Final Color (LDR) in RGB, Inv Opacity in A (Mobile Platform only)
ESceneCaptureSource = {}


---@class ESceneCaptureCompositeMode
---@field SCCM_Overwrite number @Overwrite
---@field SCCM_Additive number @Additive
---@field SCCM_Composite number @Composite
ESceneCaptureCompositeMode = {}


---@class EGBufferFormat
---@field Force8BitsPerChannel number @Force 8 Bits Per Channel
---@field Default number
---@field HighPrecisionNormals number
---@field Force16BitsPerChannel number @Force 16 Bits Per Channel
EGBufferFormat = {}


---Controls the way that the width scale property affects animation trails.
---@class ETrailWidthMode
---@field ETrailWidthMode_FromCentre number @From Centre
---@field ETrailWidthMode_FromFirst number @From First Socket
---@field ETrailWidthMode_FromSecond number @From Second Socket
ETrailWidthMode = {}


---@class EParticleCollisionMode
---@field SceneDepth number @Scene Depth
---@field DistanceField number @Distance Field
EParticleCollisionMode = {}


---@class EMaterialShadingModel
---@field MSM_Unlit number @Unlit
---@field MSM_DefaultLit number @Default Lit
---@field MSM_Subsurface number @Subsurface
---@field MSM_PreintegratedSkin number @Preintegrated Skin
---@field MSM_ClearCoat number @Clear Coat(Disabled,Do Not Use)
---@field MSM_SubsurfaceProfile number @Subsurface Profile
---@field MSM_TwoSidedFoliage number @Two Sided Foliage
---@field MSM_Hair number @Hair
---@field MSM_Cloth number @Cloth
---@field MSM_Eye number @Eye
---@field MSM_IdeaLit number @Idea Lit
---@field MSM_IdeaLitS3 number @Idea Lit S3
---@field MSM_IdeaLitS2 number @Idea Lit S2
---@field MSM_IdeaLitS1 number @Idea Lit S1
---@field MSM_IdeaLitS1D number @Idea Lit S1D
---@field MSM_Water number @Water
---@field MSM_SingleLayerWater number @SingleLayerWater
---@field MSM_DeferHair number @DeferHair
---@field MSM_MAX number
EMaterialShadingModel = {}


---@class EMaterialShadowOverride
---@field MSO_Default number @Default
---@field MSO_NoShadow number @NoShadow
---@field MSO_NoFilter number @NoFilter
---@field MSO_PCF1x1 number @PCF1x1
---@field MSO_MAX number
EMaterialShadowOverride = {}


---@class ESimpleVertexNormalSituation
---@field SVNS_None number
---@field SVNS_UsedInFullyRough number @Simple normal when Fully Rough
---@field SVNS_UsedInNonMetalAndFullyRough number @Simple normal when Non-Metal or Fully Rough
---@field SVNS_Always number @Always use simple normal
---@field SVNS_MAX number
ESimpleVertexNormalSituation = {}


---This is used by the drawing passes to determine tessellation policy, so changes here need to be supported in native code.
---@class EMaterialTessellationMode
---@field MTM_NoTessellation number @Tessellation disabled.
---@field MTM_FlatTessellation number @Simple tessellation.
---@field MTM_PNTriangles number @Simple spline based tessellation.
---@field MTM_MAX number
EMaterialTessellationMode = {}


---@class EMaterialSamplerType
---@field SAMPLERTYPE_Color number @Color
---@field SAMPLERTYPE_Grayscale number @Grayscale
---@field SAMPLERTYPE_Alpha number @Alpha
---@field SAMPLERTYPE_Normal number @Normal
---@field SAMPLERTYPE_Masks number @Masks
---@field SAMPLERTYPE_DistanceFieldFont number @Distance Field Font
---@field SAMPLERTYPE_LinearColor number @Linear Color
---@field SAMPLERTYPE_LinearGrayscale number @Linear Grayscale
---@field SAMPLERTYPE_External number @External
---@field SAMPLERTYPE_MAX number
EMaterialSamplerType = {}


---@class EMaterialShadingRate
---@field MSR_1x1 number @1x1
---@field MSR_2x1 number @2x1
---@field MSR_1x2 number @1x2
---@field MSR_2x2 number @2x2
---@field MSR_4x2 number @4x2
---@field MSR_2x4 number @2x4
---@field MSR_4x4 number @4x4
---@field MSR_Count number
EMaterialShadingRate = {}


---Lighting build quality enumeration
---@class ELightingBuildQuality
---@field Quality_Preview number
---@field Quality_Medium number
---@field Quality_High number
---@field Quality_Production number
---@field Quality_MAX number
ELightingBuildQuality = {}


---@class ETriangleSortOption
---@field TRISORT_None number
---@field TRISORT_CenterRadialDistance number
---@field TRISORT_Random number
---@field TRISORT_MergeContiguous number
---@field TRISORT_Custom number
---@field TRISORT_CustomLeftRight number
---@field TRISORT_MAX number
ETriangleSortOption = {}


---Enum to specify which axis to use for the forward vector when using TRISORT_CustomLeftRight sort mode.
---@class ETriangleSortAxis
---@field TSA_X_Axis number
---@field TSA_Y_Axis number
---@field TSA_Z_Axis number
---@field TSA_MAX number
ETriangleSortAxis = {}


---Movement modes for Characters.
---@class EMovementMode
---@field MOVE_None number @None (movement is disabled).
---@field MOVE_Walking number @Walking on a surface.
---@field MOVE_NavWalking number @Simplified walking on navigation data (e.g. navmesh). If bGenerateOverlapEvents is true, then we will perform sweeps with each navmesh move. If bGenerateOverlapEvents is false then movement is cheaper but characters can overlap other objects without some extra process to repel/resolve their collisions.
---@field MOVE_Falling number @Falling under the effects of gravity, such as after jumping or walking off the edge of a surface.
---@field MOVE_Swimming number @Swimming through a fluid volume, under the effects of gravity and buoyancy.
---@field MOVE_Flying number @Flying, ignoring the effects of gravity. Affected by the current physics volume's fluid friction.
---@field MOVE_Custom number @User-defined custom movement mode, including many possible sub-modes.
---@field MOVE_MAX number
EMovementMode = {}


---Smoothing approach used by network interpolation for Characters.
---@class ENetworkSmoothingMode
---@field Disabled number @No smoothing, only change position as network position updates are received.
---@field Linear number @Linear interpolation from source to target.
---@field Exponential number @Exponential. Faster as you are further from target.
---@field Replay number @Special linear interpolation designed specifically for replays. Not intended as a selectable mode in-editor.
ENetworkSmoothingMode = {}


---Enum indicating different type of objects for rigid-body collision purposes.
---@class ECollisionChannel
---@field ECC_WorldStatic number @WorldStatic
---@field ECC_WorldDynamic number @WorldDynamic
---@field ECC_Pawn number @Pawn
---@field ECC_Visibility number @Visibility
---@field ECC_Camera number @Camera
---@field ECC_PhysicsBody number @PhysicsBody
---@field ECC_Vehicle number @Vehicle
---@field ECC_Destructible number @Destructible
---@field ECC_EngineTraceChannel1 number @Reserved for gizmo collision
---@field ECC_EngineTraceChannel2 number
---@field ECC_EngineTraceChannel3 number
---@field ECC_EngineTraceChannel4 number
---@field ECC_EngineTraceChannel5 number
---@field ECC_EngineTraceChannel6 number
---@field ECC_GameTraceChannel1 number
---@field ECC_GameTraceChannel2 number
---@field ECC_GameTraceChannel3 number
---@field ECC_GameTraceChannel4 number
---@field ECC_GameTraceChannel5 number
---@field ECC_GameTraceChannel6 number
---@field ECC_GameTraceChannel7 number
---@field ECC_GameTraceChannel8 number
---@field ECC_GameTraceChannel9 number
---@field ECC_GameTraceChannel10 number
---@field ECC_GameTraceChannel11 number
---@field ECC_GameTraceChannel12 number
---@field ECC_GameTraceChannel13 number
---@field ECC_GameTraceChannel14 number
---@field ECC_GameTraceChannel15 number
---@field ECC_GameTraceChannel16 number
---@field ECC_GameTraceChannel17 number
---@field ECC_GameTraceChannel18 number
---@field ECC_OverlapAll_Deprecated number @Add only nonserialized/transient flags below
---@field ECC_MAX number
ECollisionChannel = {}


---@class EOverlapFilterOption
---@field OverlapFilter_All number @AllObjects
---@field OverlapFilter_DynamicOnly number @AllDynamicObjects
---@field OverlapFilter_StaticOnly number @AllStaticObjects
EOverlapFilterOption = {}


---@class EObjectTypeQuery
---@field ObjectTypeQuery1 number
---@field ObjectTypeQuery2 number
---@field ObjectTypeQuery3 number
---@field ObjectTypeQuery4 number
---@field ObjectTypeQuery5 number
---@field ObjectTypeQuery6 number
---@field ObjectTypeQuery7 number
---@field ObjectTypeQuery8 number
---@field ObjectTypeQuery9 number
---@field ObjectTypeQuery10 number
---@field ObjectTypeQuery11 number
---@field ObjectTypeQuery12 number
---@field ObjectTypeQuery13 number
---@field ObjectTypeQuery14 number
---@field ObjectTypeQuery15 number
---@field ObjectTypeQuery16 number
---@field ObjectTypeQuery17 number
---@field ObjectTypeQuery18 number
---@field ObjectTypeQuery19 number
---@field ObjectTypeQuery20 number
---@field ObjectTypeQuery21 number
---@field ObjectTypeQuery22 number
---@field ObjectTypeQuery23 number
---@field ObjectTypeQuery24 number
---@field ObjectTypeQuery25 number
---@field ObjectTypeQuery26 number
---@field ObjectTypeQuery27 number
---@field ObjectTypeQuery28 number
---@field ObjectTypeQuery29 number
---@field ObjectTypeQuery30 number
---@field ObjectTypeQuery31 number
---@field ObjectTypeQuery32 number
---@field ObjectTypeQuery_MAX number
EObjectTypeQuery = {}


---@class ETraceTypeQuery
---@field TraceTypeQuery1 number
---@field TraceTypeQuery2 number
---@field TraceTypeQuery3 number
---@field TraceTypeQuery4 number
---@field TraceTypeQuery5 number
---@field TraceTypeQuery6 number
---@field TraceTypeQuery7 number
---@field TraceTypeQuery8 number
---@field TraceTypeQuery9 number
---@field TraceTypeQuery10 number
---@field TraceTypeQuery11 number
---@field TraceTypeQuery12 number
---@field TraceTypeQuery13 number
---@field TraceTypeQuery14 number
---@field TraceTypeQuery15 number
---@field TraceTypeQuery16 number
---@field TraceTypeQuery17 number
---@field TraceTypeQuery18 number
---@field TraceTypeQuery19 number
---@field TraceTypeQuery20 number
---@field TraceTypeQuery21 number
---@field TraceTypeQuery22 number
---@field TraceTypeQuery23 number
---@field TraceTypeQuery24 number
---@field TraceTypeQuery25 number
---@field TraceTypeQuery26 number
---@field TraceTypeQuery27 number
---@field TraceTypeQuery28 number
---@field TraceTypeQuery29 number
---@field TraceTypeQuery30 number
---@field TraceTypeQuery31 number
---@field TraceTypeQuery32 number
---@field TraceTypeQuery_MAX number
ETraceTypeQuery = {}


---Enum indicating which physics scene to use.
---@class EPhysicsSceneType
---@field PST_Sync number @The synchronous scene, which must finish before Unreal simulation code is run.
---@field PST_Cloth number @The cloth scene, which may run while Unreal simulation code runs.
---@field PST_Async number @The asynchronous scene, which may run while Unreal simulation code runs.
---@field PST_MAX number
EPhysicsSceneType = {}


---Enum indicating how each type should respond
---@class ECollisionResponse
---@field ECR_Ignore number @Ignore
---@field ECR_Overlap number @Overlap
---@field ECR_Block number @Block
---@field ECR_MAX number
ECollisionResponse = {}


---@class EFilterInterpolationType
---@field BSIT_Average number @Averaged Interpolation
---@field BSIT_Linear number @Linear Interpolation
---@field BSIT_Cubic number @Cubic Interpolation
---@field BSIT_MAX number
EFilterInterpolationType = {}


---@class EInputConsumeOptions
---@field ICO_ConsumeAll number @This component consumes all input and no components lower in the stack are processed.
---@field ICO_ConsumeBoundKeys number @This component consumes all events for a keys it has bound (whether or not they are handled successfully).  Components lower in the stack will not receive events from these keys.
---@field ICO_ConsumeNone number @All input events will be available to components lower in the stack.
---@field ICO_MAX number
EInputConsumeOptions = {}


---Enum for controlling the falloff of strength of a radial impulse as a function of distance from Origin.
---@class ERadialImpulseFalloff
---@field RIF_Constant number @Impulse is a constant strength, up to the limit of its range.
---@field RIF_Linear number @Impulse should get linearly weaker the further from origin.
---@field RIF_MAX number
ERadialImpulseFalloff = {}


---Presets of values used in considering when put this body to sleep.
---@class ESleepFamily
---@field Normal number @Engine defaults.
---@field Sensitive number @A family of values with a lower sleep threshold; good for slower pendulum-like physics.
---@field Custom number @Specify your own sleep threshold multiplier
ESleepFamily = {}


---Enum used to indicate what type of timeline signature a function matches.
---@class ETimelineSigType
---@field ETS_EventSignature number
---@field ETS_FloatSignature number
---@field ETS_VectorSignature number
---@field ETS_LinearColorSignature number
---@field ETS_InvalidSignature number
---@field ETS_MAX number
ETimelineSigType = {}


---Enum used to describe what type of collision is enabled on a body.
---@class ECollisionEnabled
---@field NoCollision number @Will not create any representation in the physics engine. Cannot be used for spatial queries (raycasts, sweeps, overlaps) or simulation (rigid body, constraints). Best performance possible (especially for moving objects)
---@field QueryOnly number @Only used for spatial queries (raycasts, sweeps, and overlaps). Cannot be used for simulation (rigid body, constraints). Useful for character movement and things that do not need physical simulation. Performance gains by keeping data out of simulation tree.
---@field PhysicsOnly number @Only used only for physics simulation (rigid body, constraints). Cannot be used for spatial queries (raycasts, sweeps, overlaps). Useful for jiggly bits on characters that do not need per bone detection. Performance gains by keeping data out of query tree
---@field QueryAndPhysics number @Can be used for both spatial queries (raycasts, sweeps, overlaps) and simulation (rigid body, constraints).
ECollisionEnabled = {}


---@class ELightMapPaddingType
---@field LMPT_NormalPadding number
---@field LMPT_PrePadding number
---@field LMPT_NoPadding number
ELightMapPaddingType = {}


---Bit-field flags that affects storage (e.g. packing, streaming) and other info about a shadowmap.
---@class EShadowMapFlags
---@field SMF_None number @No flags.
---@field SMF_Streamed number @Shadowmap should be placed in a streaming texture.
EShadowMapFlags = {}


---Enum for controlling buckets for update rate optimizations if we need to stagger Multiple actor populations separately.
---@class EUpdateRateShiftBucket
---@field ShiftBucket0 number
---@field ShiftBucket1 number
---@field ShiftBucket2 number
---@field ShiftBucket3 number
---@field ShiftBucket4 number
---@field ShiftBucket5 number
---@field ShiftBucketMax number
EUpdateRateShiftBucket = {}


---@class ENetRole
---@field ROLE_None number @No role at all.
---@field ROLE_SimulatedProxy number @Locally simulated proxy of this actor.
---@field ROLE_AutonomousProxy number @Locally autonomous proxy of this actor.
---@field ROLE_Authority number @Authoritative control over the actor.
---@field ROLE_MAX number
ENetRole = {}


---@class ENetDormancy
---@field DORM_Never number @This actor can never go network dormant.
---@field DORM_Awake number @This actor can go dormant, but is not currently dormant. Game code will tell it when it go dormant.
---@field DORM_DormantAll number @This actor wants to go fully dormant for all connections.
---@field DORM_DormantPartial number @This actor may want to go dormant for some connections, GetNetDormancy() will be called to find out which.
---@field DORM_Initial number @This actor is initially dormant for all connection if it was placed in map.
---@field DORN_MAX number
ENetDormancy = {}


---@class EAutoReceiveInput
---@field Disabled number
---@field Player0 number
---@field Player1 number
---@field Player2 number
---@field Player3 number
---@field Player4 number
---@field Player5 number
---@field Player6 number
---@field Player7 number
EAutoReceiveInput = {}


---@class EAutoPossessAI
---@field Disabled number @Feature is disabled (do not automatically possess AI).
---@field PlacedInWorld number @Only possess by an AI Controller if Pawn is placed in the world.
---@field Spawned number @Only possess by an AI Controller if Pawn is spawned after the world has loaded.
---@field PlacedInWorldOrSpawned number @Pawn is automatically possessed by an AI Controller whenever it is created.
EAutoPossessAI = {}


---@class EEndPlayReason
---@field Destroyed number @When the Actor or Component is explicitly destroyed.
---@field LevelTransition number @When the world is being unloaded for a level transition.
---@field EndPlayInEditor number @When the world is being unloaded because PIE is ending.
---@field RemovedFromWorld number @When the level it is a member of is streamed out.
---@field Quit number @When the application is being exited.
EEndPlayReason = {}


---@class EVectorQuantization
---@field RoundWholeNumber number @Each vector component will be rounded to the nearest whole number.
---@field RoundOneDecimal number @Each vector component will be rounded, preserving one decimal place.
---@field RoundTwoDecimals number @Each vector component will be rounded, preserving two decimal places.
EVectorQuantization = {}


---@class ERotatorQuantization
---@field ByteComponents number @The rotator will be compressed to 8 bits per component.
---@field ShortComponents number @The rotator will be compressed to 16 bits per component.
ERotatorQuantization = {}


---Controls behavior of WalkableSlopeOverride, determining how to affect walkability of surfaces for Characters.
---@class EWalkableSlopeBehavior
---@field WalkableSlope_Default number @Don't affect the walkable slope. Walkable slope angle will be ignored.
---@field WalkableSlope_Increase number @Increase walkable slope. Makes it easier to walk up a surface, by allowing traversal over higher-than-usual angles.
---@field WalkableSlope_Decrease number @Decrease walkable slope. Makes it harder to walk up a surface, by restricting traversal to lower-than-usual angles.
---@field WalkableSlope_Unwalkable number @Make surface unwalkable. Note: WalkableSlopeAngle will be ignored.
---@field WalkableSlope_Max number
EWalkableSlopeBehavior = {}


---Types of surfaces in the game.
---@class EPhysicalSurface
---@field SurfaceType_Default number @Default
---@field SurfaceType1 number
---@field SurfaceType2 number
---@field SurfaceType3 number
---@field SurfaceType4 number
---@field SurfaceType5 number
---@field SurfaceType6 number
---@field SurfaceType7 number
---@field SurfaceType8 number
---@field SurfaceType9 number
---@field SurfaceType10 number
---@field SurfaceType11 number
---@field SurfaceType12 number
---@field SurfaceType13 number
---@field SurfaceType14 number
---@field SurfaceType15 number
---@field SurfaceType16 number
---@field SurfaceType17 number
---@field SurfaceType18 number
---@field SurfaceType19 number
---@field SurfaceType20 number
---@field SurfaceType21 number
---@field SurfaceType22 number
---@field SurfaceType23 number
---@field SurfaceType24 number
---@field SurfaceType25 number
---@field SurfaceType26 number
---@field SurfaceType27 number
---@field SurfaceType28 number
---@field SurfaceType29 number
---@field SurfaceType30 number
---@field SurfaceType31 number
---@field SurfaceType32 number
---@field SurfaceType33 number
---@field SurfaceType34 number
---@field SurfaceType35 number
---@field SurfaceType36 number
---@field SurfaceType37 number
---@field SurfaceType38 number
---@field SurfaceType39 number
---@field SurfaceType40 number
---@field SurfaceType41 number
---@field SurfaceType42 number
---@field SurfaceType43 number
---@field SurfaceType44 number
---@field SurfaceType45 number
---@field SurfaceType46 number
---@field SurfaceType47 number
---@field SurfaceType48 number
---@field SurfaceType49 number
---@field SurfaceType50 number
---@field SurfaceType51 number
---@field SurfaceType52 number
---@field SurfaceType53 number
---@field SurfaceType54 number
---@field SurfaceType55 number
---@field SurfaceType56 number
---@field SurfaceType57 number
---@field SurfaceType58 number
---@field SurfaceType59 number
---@field SurfaceType60 number
---@field SurfaceType61 number
---@field SurfaceType62 number
---@field SurfaceType_Max number
EPhysicalSurface = {}


---Describes how often this component is allowed to move.
---@class EComponentMobility
---@field Static number @Static objects cannot be moved or changed in game. - Allows baked lighting - Fastest rendering
---@field Stationary number @A stationary light will only have its shadowing and bounced lighting from static geometry baked by Lightmass, all other lighting will be dynamic. - It can change color and intensity in game. - Can't move - Allows partial baked lighting - Dynamic shadows
---@field Movable number @Movable objects can be moved and changed in game. - Totally dynamic - Can cast dynamic shadows - Slowest rendering
EComponentMobility = {}


---Type of a socket on a scene component.
---@class EComponentSocketType
---@field Invalid number @Not a valid socket or bone name.
---@field Bone number @Skeletal bone.
---@field Socket number @Socket.
EComponentSocketType = {}


---@class EAngularConstraintMotion
---@field ACM_Free number @No constraint against this axis.
---@field ACM_Limited number @Limited freedom along this axis.
---@field ACM_Locked number @Fully constraint against this axis.
---@field ACM_MAX number
EAngularConstraintMotion = {}


---Enum to indicate which frame we want.
---@class EConstraintFrame
---@field Frame1 number
---@field Frame2 number
EConstraintFrame = {}


---Defines available strategies for handling the case where an actor is spawned in such a way that it penetrates blocking collision.
---@class ESpawnActorCollisionHandlingMethod
---@field Undefined number @Fall back to default settings.
---@field AlwaysSpawn number @Actor will spawn in desired location, regardless of collisions.
---@field AdjustIfPossibleButAlwaysSpawn number @Actor will try to find a nearby non-colliding location (based on shape components), but will always spawn even if one cannot be found.
---@field AdjustIfPossibleButDontSpawnIfColliding number @Actor will try to find a nearby non-colliding location (based on shape components), but will NOT spawn unless one is found.
---@field DontSpawnIfColliding number @Actor will fail to spawn.
---@field TryToFindASuitablePlaceButAlwaysSpawn number @Actor will try to find a nearby non-colliding location in Circular area(based on shape components, Only in XY-Coordinates), but will always spawn even if one cannot be found.
ESpawnActorCollisionHandlingMethod = {}


---Which processors will have access to Mesh Vertex Buffers.
---@class EMeshBufferAccess
---@field Default number @Access will be determined based on the assets used in the mesh and hardware / software capability.
---@field ForceCPUAndGPU number @Force access on both CPU and GPU.
EMeshBufferAccess = {}


---@class EIndoorOutdoorMask
---@field IOM_NONE number @None
---@field IOM_INDOOR number @Indoor
---@field IOM_OUTDOOR number @Outdoor
---@field IOM_BOTH number @Both
---@field IOM_MAX number
EIndoorOutdoorMask = {}


---Information about the draw dyeing mode.
---@class EDrawDyeingMode
---@field EDDM_STENCIL number @OnlyWithStencil
---@field EDDM_WHOLE number @DyeingWholeBody
---@field EDDM_OCCLUDED number @DyeingOccluded
EDrawDyeingMode = {}


---@class FLightingChannels
---@field bChannel0 number @Default channel for all primitives and lights.
---@field bChannel1 number
---@field bChannel2 number
FLightingChannels = {}


---@class FResponseChannel
---@field Channel string @This should match DisplayName of ECollisionChannel Meta data of custom channels can be used as well
---@field Response ECollisionResponse
FResponseChannel = {}


---Container for indicating a set of collision channels that this object will collide with.
---@class FCollisionResponseContainer
FCollisionResponseContainer = {}


---Describes the physical state of a rigid body.
---@class FRigidBodyState
---@field Position FVector_NetQuantize100
---@field Quaternion FQuat
---@field LinVel FVector_NetQuantize100
---@field AngVel FVector_NetQuantize100
---@field Flags number
FRigidBodyState = {}


---Rigid body error correction data
---@class FRigidBodyErrorCorrection
---@field LinearDeltaThresholdSq number @max squared position difference to perform velocity adjustment
---@field LinearInterpAlpha number @strength of snapping to desired linear velocity
---@field LinearRecipFixTime number @inverted duration after which linear velocity adjustment will fix error
---@field AngularDeltaThreshold number @max squared angle difference (in radians) to perform velocity adjustment
---@field AngularInterpAlpha number @strength of snapping to desired angular velocity
---@field AngularRecipFixTime number @inverted duration after which angular velocity adjustment will fix error
---@field BodySpeedThresholdSq number @min squared body speed to perform velocity adjustment
FRigidBodyErrorCorrection = {}


---Rigid body error correction data
---@class FRigidBodyErrorCorrectionNew
---@field PingExtrapolation number @Value between 0 and 1 which indicates how much velocity and ping based correction to use
---@field PingLimit number @For the purpose of extrapolation, ping will be clamped to this value
---@field ErrorPerLinearDifference number @Error per centimeter
---@field ErrorPerAngularDifference number @Error per degree
---@field MaxRestoredStateError number @Maximum allowable error for a state to be considered "resolved"
---@field MaxLinearHardSnapDistance number
---@field PositionLerp number @How much to directly lerp to the correct position. Generally this should be very low, if not zero. A higher value will increase precision along with jerkiness.
---@field AngleLerp number @How much to directly lerp to the correct angle.
---@field LinearVelocityCoefficient number @This is the coefficient `k` in the differential equation: dx/dt = k ( x_target(t) - x(t) ), which is used to update the velocity in a replication step.
---@field AngularVelocityCoefficient number @This is the angular analog to LinearVelocityCoefficient.
---@field ErrorAccumulationSeconds number @Number of seconds to remain in a heuristically unresolveable state before hard snapping.
---@field ErrorAccumulationDistanceSq number @If the body has moved less than the square root of this amount towards a resolved state in the previous frame, then error may accumulate towards a hard snap.
---@field ErrorAccumulationSimilarity number @If the previous error projected onto the current error is greater than this value (indicating "similarity" between states), then error may accumulate towards a hard snap.
FRigidBodyErrorCorrectionNew = {}


---Information about one contact between a pair of rigid bodies.
---@class FRigidBodyContactInfo
---@field ContactPosition FVector
---@field ContactNormal FVector
---@field ContactPenetration number
FRigidBodyContactInfo = {}


---Information about an overall collision, including contacts.
---@class FCollisionImpactData
---@field ContactInfos ULuaArrayHelper<FRigidBodyContactInfo> @all the contact points in the collision
---@field TotalNormalImpulse FVector @the total impulse applied as the two objects push against each other
---@field TotalFrictionImpulse FVector @the total counterimpulse applied of the two objects sliding against each other
FCollisionImpactData = {}


---Struct used to hold effects for destructible damage events
---@class FFractureEffect
FFractureEffect = {}


---Struct for handling positions relative to a base actor, which is potentially moving
---@class FBasedPosition
---@field Position FVector
---@field CachedBaseLocation FVector
---@field CachedBaseRotation FRotator
---@field CachedTransPosition FVector
FBasedPosition = {}


---A line of subtitle text and the time at which it should be displayed.
---@class FSubtitleCue
---@field Text string @The text to appear in the subtitle.
---@field Time number @The time at which the subtitle is to be displayed, in seconds relative to the beginning of the line.
FSubtitleCue = {}


---A subtitle localized to a specific language.
---@class FLocalizedSubtitle
---@field LanguageExt string @The 3-letter language for this subtitle
---@field Subtitles ULuaArrayHelper<FSubtitleCue> @Subtitle cues.  If empty, use SoundNodeWave's SpokenText as the subtitle.  Will often be empty, as the contents of the subtitle is commonly identical to what is spoken.
---@field bMature number @true if this sound is considered to contain mature content.
---@field bManualWordWrap number @true if the subtitles have been split manually.
---@field bSingleLine number @true if the subtitles should be displayed one line at a time.
FLocalizedSubtitle = {}


---Per-light settings for Lightmass
---@class FLightmassLightSettings
---@field IndirectLightingSaturation number @0 will be completely desaturated, 1 will be unchanged
---@field ShadowExponent number @Controls the falloff of shadow penumbras
---@field bUseAreaShadowsForStationaryLight boolean @Whether to use area shadows for stationary light precomputed shadowmaps. Area shadows get softer the further they are from shadow casters, but require higher lightmap resolution to get the same quality where the shadow is sharp.
FLightmassLightSettings = {}


---Point/spot settings for Lightmass
---@class FLightmassPointLightSettings
FLightmassPointLightSettings = {}


---Directional light settings for Lightmass
---@class FLightmassDirectionalLightSettings
---@field LightSourceAngle number @Angle that the directional light's emissive surface extends relative to a receiver, affects penumbra sizes.
FLightmassDirectionalLightSettings = {}


---@class FIdeaBakingPrimitiveSettings
---@field IdeaMaterialDiffuse number @When baking, use this diffuse calculate reflection fro sun related lighting, not use really material's diffuse texture
---@field LightmapBoost number @Scales the lightmap result of idea baking.
---@field DiscardPixelFrontfaceFactor number @When ray intersected surface frontface counter lower DiscardPixelFrontfaceFactor * NumRays, the pixel will be discard. Larger value will help decrease black edge artifact. But if scene has two side surface(like flags), will cause another artifact, pixels behind back side of flags maybe discarded wrong.
---@field SunIntensity number @By luciuszhang: Control the sun intensity from the sky, unit is cd/m^2, default value is 1.0.
---@field LocalLightsAffectMaxDistance number @By luciuszhang: Control the sun indirect intensity from the sky, unit is cd/m^2, default value is 1.0.
FIdeaBakingPrimitiveSettings = {}


---Per-object settings for Lightmass
---@class FLightmassPrimitiveSettings
---@field bUseTwoSidedLighting number @If true, this object will be lit as if it receives light from both sides of its polygons.
---@field bShadowIndirectOnly number @If true, this object will only shadow indirect lighting.
---@field bUseEmissiveForStaticLighting number @If true, allow using the emissive for static lighting.
---@field bUseVertexNormalForHemisphereGather number @Typically the triangle normal is used for hemisphere gathering which prevents incorrect self-shadowing from artist-tweaked vertex normals. However in the case of foliage whose vertex normal has been setup to match the underlying terrain, gathering in the direction of the vertex normal is desired.
---@field EmissiveLightFalloffExponent number @Direct lighting falloff exponent for mesh area lights created from emissive areas on this primitive.
---@field EmissiveLightExplicitInfluenceRadius number @Direct lighting influence radius. The default is 0, which means the influence radius should be automatically generated based on the emissive light brightness. Values greater than 0 override the automatic method.
---@field EmissiveBoost number @Scales the emissive contribution of all materials applied to this object.
---@field DiffuseBoost number @Scales the diffuse contribution of all materials applied to this object.
---@field FullyOccludedSamplesFraction number @Fraction of samples taken that must be occluded in order to reach full occlusion.
FLightmassPrimitiveSettings = {}


---Debug options for Lightmass
---@class FLightmassDebugOptions
---@field bDebugMode number @If false, UnrealLightmass.exe is launched automatically (default) If true, it must be launched manually (e.g. through a debugger) with the -debug command line parameter.
---@field bStatsEnabled number @If true, all participating Lightmass agents will report back detailed stats to the log.
---@field bGatherBSPSurfacesAcrossComponents number @If true, BSP surfaces split across model components are joined into 1 mapping
---@field CoplanarTolerance number @The tolerance level used when gathering BSP surfaces.
---@field bUseImmediateImport number @If true, Lightmass will import mappings immediately as they complete. It will not process them, however.
---@field bImmediateProcessMappings number @If true, Lightmass will process appropriate mappings as they are imported. NOTE: Requires ImmediateMode be enabled to actually work.
---@field bSortMappings number @If true, Lightmass will sort mappings by texel cost.
---@field bDumpBinaryFiles number @If true, the generate coefficients will be dumped to binary files.
---@field bDebugMaterials number @If true, Lightmass will write out BMPs for each generated material property sample to <GAME>\ScreenShots\Materials.
---@field bPadMappings number @If true, Lightmass will pad the calculated mappings to reduce/eliminate seams.
---@field bDebugPaddings number @If true, will fill padding of mappings with a color rather than the sampled edges. Means nothing if bPadMappings is not enabled...
---@field bOnlyCalcDebugTexelMappings number @If true, only the mapping containing a debug texel will be calculated, all others will be set to white
---@field bUseRandomColors number @If true, color lightmaps a random color
---@field bColorBordersGreen number @If true, a green border will be placed around the edges of mappings
---@field bColorByExecutionTime number @If true, Lightmass will overwrite lightmap data with a shade of red relating to how long it took to calculate the mapping (Red = Time / ExecutionTimeDivisor)
---@field ExecutionTimeDivisor number @The amount of time that will be count as full red when bColorByExecutionTime is enabled
FLightmassDebugOptions = {}


---Debug options for Swarm
---@class FSwarmDebugOptions
---@field bDistributionEnabled number @If true, Swarm will distribute jobs. If false, only the local machine will execute the jobs.
---@field bForceContentExport number @If true, Swarm will force content to re-export rather than using the cached version. If false, Swarm will attempt to use the cached version.
---@field bInitialized number
FSwarmDebugOptions = {}


---Reference to a specific material in a PrimitiveComponent.
---@class FPrimitiveMaterialRef
---@field ElementIndex number
FPrimitiveMaterialRef = {}


---Structure containing information about one hit of a trace, such as point of impact and surface normal at that point.
---@class FHitResult
---@field bBlockingHit number @Indicates if this hit was a result of blocking collision. If false, there was no hit or it was an overlap/touch instead.
---@field bStartPenetrating number @Whether the trace started in penetration, i.e. with an initial blocking overlap. In the case of penetration, if PenetrationDepth > 0.f, then it will represent the distance along the Normal vector that will result in minimal contact between the swept shape and the object that was hit. In this case, ImpactNormal will be the normal opposed to movement at that location (ie, Normal may not equal ImpactNormal). ImpactPoint will be the same as Location, since there is no single impact point to report.
---@field Time number @'Time' of impact along trace direction (ranging from 0.0 to 1.0) if there is a hit, indicating time between TraceStart and TraceEnd. For swept movement (but not queries) this may be pulled back slightly from the actual time of impact, to prevent precision problems with adjacent geometry.
---@field Distance number @The distance from the TraceStart to the Location in world space. This value is 0 if there was an initial overlap (trace started inside another colliding object).
---@field Location FVector_NetQuantize @The location in world space where the moving shape would end up against the impacted object, if there is a hit. Equal to the point of impact for line tests. Example: for a sphere trace test, this is the point where the center of the sphere would be located when it touched the other object. For swept movement (but not queries) this may not equal the final location of the shape since hits are pulled back slightly to prevent precision issues from overlapping another surface.
---@field ImpactPoint FVector_NetQuantize @Location in world space of the actual contact of the trace shape (box, sphere, ray, etc) with the impacted object. Example: for a sphere trace test, this is the point where the surface of the sphere touches the other object.
---@field Normal FVector_NetQuantizeNormal @Normal of the hit in world space, for the object that was swept. Equal to ImpactNormal for line tests. This is computed for capsules and spheres, otherwise it will be the same as ImpactNormal. Example: for a sphere trace test, this is a normalized vector pointing in towards the center of the sphere at the point of impact.
---@field ImpactNormal FVector_NetQuantizeNormal @Normal of the hit in world space, for the object that was hit by the sweep, if any. For example if a box hits a flat plane, this is a normalized vector pointing out from the plane. In the case of impact with a corner or edge of a surface, usually the "most opposing" normal (opposed to the query direction) is chosen.
---@field TraceStart FVector_NetQuantize @Start location of the trace. For example if a sphere is swept against the world, this is the starting location of the center of the sphere.
---@field TraceEnd FVector_NetQuantize @End location of the trace; this is NOT where the impact occurred (if any), but the furthest point in the attempted sweep. For example if a sphere is swept against the world, this would be the center of the sphere if there was no blocking hit.
---@field PenetrationDepth number @If this test started in penetration (bStartPenetrating is true) and a depenetration vector can be computed, this value is the distance along Normal that will result in moving out of penetration. If the distance cannot be computed, this distance will be zero.
---@field Item number @Extra data about item that was hit (hit primitive specific).
---@field PhysMaterial UPhysicalMaterial @Physical material that was hit.
---@field Actor AActor @Actor hit by the trace.
---@field Component UPrimitiveComponent @PrimitiveComponent hit by the trace.
---@field BoneName string @Name of bone we hit (for skeletal meshes).
---@field FaceIndex number @Face index we hit (for complex hits with triangle meshes).
FHitResult = {}


---Structure containing information about one hit of an overlap test
---@class FOverlapResult
---@field Actor AActor @Actor that the check hit.
---@field Component UPrimitiveComponent @PrimitiveComponent that the check hit.
---@field bBlockingHit number @Indicates if this hit was requesting a block - if false, was requesting a touch instead
FOverlapResult = {}


---Structure containing information about minimum translation direction (MTD)
---@class FMTDResult
---@field Direction FVector @Normalized direction of the minimum translation required to fix penetration.
---@field Distance number @Distance required to move along the MTD vector (Direction).
FMTDResult = {}


---Struct used for passing information from Matinee to an Actor for blending animations during a sequence.
---@class FAnimSlotInfo
---@field SlotName string @Name of slot that we want to play the animtion in.
---@field ChannelWeights ULuaArrayHelper<number> @Strength of each Channel within this Slot. Channel indexs are determined by track order in Matinee.
FAnimSlotInfo = {}


---Used to indicate each slot name and how many channels they have.
---@class FAnimSlotDesc
---@field SlotName string @Name of the slot.
---@field NumChannels number @Number of channels that are available in this slot.
FAnimSlotDesc = {}


---Container for Animation Update Rate parameters. They are shared for all components of an Actor, so they can be updated in sync.
---@class FAnimUpdateRateParameters
---@field UpdateRate number @How often animation will be updated/ticked. 1 = every frame, 2 = every 2 frames, etc.
---@field EvaluationRate number @How often animation will be evaluated. 1 = every frame, 2 = every 2 frames, etc. has to be a multiple of UpdateRate.
---@field bInterpolateSkippedFrames number @When skipping a frame, should it be interpolated or frozen?
---@field bShouldUseLodMap number @Whether or not to use the defined LOD/Frameskip map instead of separate distance factor thresholds
---@field bShouldUseMinLod number @If set, LOD/Frameskip map will be queried with mesh's MinLodModel instead of current LOD (PredictedLODLevel)
---@field bSkipUpdate number @(This frame) animation update should be skipped.
---@field bSkipEvaluation number @(This frame) animation evaluation should be skipped.
---@field TickedPoseOffestTime number
---@field AdditionalTime number @Track time we have lost via skipping
---@field BaseNonRenderedUpdateRate number @Rate of animation evaluation when non rendered (off screen and dedicated servers). a value of 4 means evaluated 1 frame, then 3 frames skipped
---@field BaseNonRenderedUpdateRateHigh number
---@field MaxDistFromMainChar number
---@field BaseVisibleDistanceFactorThesholds ULuaArrayHelper<number> @Array of MaxDistanceFactor to use for AnimUpdateRate when mesh is visible (rendered). MaxDistanceFactor is size on screen, as used by LODs Example: BaseVisibleDistanceFactorThesholds.Add(0.4f) BaseVisibleDistanceFactorThesholds.Add(0.2f) means: 0 frame skip, MaxDistanceFactor > 0.4f 1 frame skip, MaxDistanceFactor > 0.2f 2 frame skip, MaxDistanceFactor > 0.0f
---@field BaseVisibleDistanceFactorSkipNum number
---@field MinEvaluationRate number
---@field LockAnimUpdateRate number
---@field EnableUROInterpolation boolean
---@field LODToFrameSkipMap ULuaMapHelper<number, number> @Map of LOD levels to frame skip amounts. if bShouldUseLodMap is set these values will be used for the frameskip amounts and the distance factor thresholds will be ignored. The flag and these values should be configured using the customization callback when parameters are created for a component. Note that this is # of frames to skip, so if you have 20, that means every 21th frame, it will update, and evaluate.
---@field MaxEvalRateForInterpolation number @Max Evaluation Rate allowed for interpolation to be enabled. Beyond, interpolation will be turned off.
---@field ShiftBucket EUpdateRateShiftBucket @The bucket to use when deciding which counter to use to calculate shift values
FAnimUpdateRateParameters = {}


---Point Of View type.
---@class FPOV
---@field Location FVector @Location
---@field Rotation FRotator @Rotation
---@field FOV number @FOV angle
FPOV = {}


---Settings applied when building a mesh.
---@class FMeshBuildSettings
---@field bUseMikkTSpace boolean @If true, degenerate triangles will be removed.
---@field bRecomputeNormals boolean @If true, normals in the raw mesh are ignored and recomputed.
---@field bRecomputeTangents boolean @If true, tangents in the raw mesh are ignored and recomputed.
---@field bRemoveDegenerates boolean @If true, degenerate triangles will be removed.
---@field bBuildAdjacencyBuffer boolean @Required for PNT tessellation but can be slow. Recommend disabling for larger meshes.
---@field bBuildReversedIndexBuffer boolean @Required to optimize mesh in mirrored transform. Double index buffer size.
---@field bIgnoreTriangleOrderOptimization boolean
---@field bUseHighPrecisionTangentBasis boolean @If true, Tangents will be stored at 16 bit vs 8 bit precision.
---@field bUseFullPrecisionUVs boolean @If true, UVs will be stored at full floating point precision.
---@field bGenerateLightmapUVs boolean
---@field MinLightmapResolution number
---@field SrcLightmapIndex number
---@field DstLightmapIndex number
---@field BuildScale_DEPRECATED number
---@field BuildScale3D FVector @The local scale applied when building the mesh
---@field DistanceFieldResolutionScale number @Scale to apply to the mesh when allocating the distance field volume texture. The default scale is 1, which is assuming that the mesh will be placed unscaled in the world.
---@field bGenerateDistanceFieldAsIfTwoSided boolean @Whether to generate the distance field treating every triangle hit as a front face. When enabled prevents the distance field from being discarded due to the mesh being open, but also lowers Distance Field AO quality.
---@field DistanceFieldBias_DEPRECATED number
FMeshBuildSettings = {}


---@class FDamageEvent
---@field DamageTypeClass UDamageType @Optional DamageType for this event.  If nullptr, UDamageType will be assumed.
---@field DamageImpulseScale number
FDamageEvent = {}


---@class FCustomDamageEvent
FCustomDamageEvent = {}


---@class FPointDamageEvent
---@field Damage number
---@field ShotDirection FVector_NetQuantizeNormal @Direction the shot came from. Should be normalized.
---@field HitInfo any
FPointDamageEvent = {}


---@class FRadialDamageParams
---@field BaseDamage number
---@field MinimumDamage number
---@field InnerRadius number
---@field OuterRadius number
---@field DamageFalloff number
FRadialDamageParams = {}


---@class FRadialDamageEvent
---@field Params FRadialDamageParams
---@field Origin FVector
---@field ComponentHits ULuaArrayHelper<FHitResult>
FRadialDamageEvent = {}


---用于区分不同类型的计时器句柄
---@class FTimerHandle
---@field Handle number
FTimerHandle = {}


---Replicated movement data of our RootComponent. Struct used for efficient replication as velocity and location are generally replicated together (this saves a repindex) and velocity.Z is commonly zero (most position replications are for walking pawns).
---@class FRepMovement
---@field LinearVelocity FVector
---@field AngularVelocity FVector
---@field Location FVector
---@field Rotation FRotator
---@field bSimulatedPhysicSleep number @If set, RootComponent should be sleeping.
---@field bRepPhysics number @If set, additional physic data (angular velocity) will be replicated.
---@field bPredictionLocation number
---@field LocationQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.
---@field VelocityQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated velocity vectors. You should only need to change this from the default if you see visual artifacts.
---@field RotationQuantizationLevel ERotatorQuantization @Allows tuning the compression level for replicated rotation. You should only need to change this from the default if you see visual artifacts.
FRepMovement = {}


---Handles attachment replication to clients. Movement replication will not happen while AttachParent is non-nullptr
---@class FRepAttachment
---@field LocationOffset FVector_NetQuantize100
---@field RelativeScale3D FVector_NetQuantize100
---@field RotationOffset FRotator
---@field AttachSocket string
---@field bHasValidParent boolean
FRepAttachment = {}


---Struct allowing control over "walkable" normals, by allowing a restriction or relaxation of what steepness is normally walkable.
---@class FWalkableSlopeOverride
---@field WalkableSlopeBehavior EWalkableSlopeBehavior @Behavior of this surface (whether we affect the walkable slope).
---@field WalkableSlopeAngle number @Override walkable slope angle (in degrees), applying the rules of the Walkable Slope Behavior.
FWalkableSlopeOverride = {}


---Struct used to specify the property name of the component to constrain
---@class FConstrainComponentPropName
---@field ComponentName string @Name of property
FConstrainComponentPropName = {}


---Struct that allows for different ways to reference a component. If just an Actor is specified, will return RootComponent of that Actor.
---@class FComponentReference
---@field ComponentProperty string @Name of component property to use
FComponentReference = {}


---Structure for file paths that are displayed in the UI.
---@class FFilePath
---@field FilePath string @The path to the file.
FFilePath = {}


---Structure for directory paths that are displayed in the UI.
---@class FDirectoryPath
---@field Path string @The path to the directory.
FDirectoryPath = {}


---Reference to an editor collection of assets. This allows an editor-only picker UI
---@class FCollectionReference
---@field CollectionName string @Name of the collection
FCollectionReference = {}


---This is used for redirecting old name to new name We use manually parsing array, but that makes harder to modify from property setting So adding this USTRUCT to support it properly
---@class FRedirector
---@field OldName string
---@field NewName string @Types of objects that this physics objects will collide with.
FRedirector = {}


---Structure for recording float values and displaying them as an Histogram through DrawDebugFloatHistory.
---@class FDebugFloatHistory
---@field Samples ULuaArrayHelper<number> @Samples
---@field MaxSamples number @Max Samples to record.
---@field MinValue number @Min value to record.
---@field MaxValue number @Max value to record.
---@field bAutoAdjustMinMax boolean @Auto adjust Min/Max as new values are recorded?
FDebugFloatHistory = {}


---info for glow when using depth field rendering
---@class FDepthFieldGlowInfo
---@field bEnableGlow number @whether to turn on the outline glow (depth field fonts only)
---@field GlowColor FLinearColor @base color to use for the glow
---@field GlowOuterRadius FVector2D @if bEnableGlow, outline glow outer radius (0 to 1, 0.5 is edge of character silhouette) glow influence will be 0 at GlowOuterRadius.X and 1 at GlowOuterRadius.Y
---@field GlowInnerRadius FVector2D @if bEnableGlow, outline glow inner radius (0 to 1, 0.5 is edge of character silhouette) glow influence will be 1 at GlowInnerRadius.X and 0 at GlowInnerRadius.Y
FDepthFieldGlowInfo = {}


---information used in font rendering
---@class FFontRenderInfo
---@field bClipText number @whether to clip text
---@field bEnableShadow number @whether to turn on shadowing
---@field GlowInfo any @depth field glow parameters (only usable if font was imported with a depth field)
FFontRenderInfo = {}


---Simple 2d triangle with UVs
---@class FCanvasUVTri
---@field V0_Pos FVector2D @Position of first vertex
---@field V0_UV FVector2D @UV of first vertex
---@field V0_Color FLinearColor @Color of first vertex
---@field V1_Pos FVector2D @Position of second vertex
---@field V1_UV FVector2D @UV of second vertex
---@field V1_Color FLinearColor @Color of second vertex
---@field V2_Pos FVector2D @Position of third vertex
---@field V2_UV FVector2D @UV of third vertex
---@field V2_Color FLinearColor @Color of third vertex
FCanvasUVTri = {}


---The description of a user activity
---@class FUserActivity
---@field ActionName string @Describes the user's activity
FUserActivity = {}


---@class FDeferedComponentUnit
FDeferedComponentUnit = {}


---@class FOnConstraintBroken : ULuaSingleDelegate
FOnConstraintBroken = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnConstraintBroken:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FOnConstraintBroken:Execute(Param1) end


---@class FTimerDynamicDelegate : ULuaSingleDelegate
FTimerDynamicDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTimerDynamicDelegate:Bind(Callback, Obj) end

---执行委托
function FTimerDynamicDelegate:Execute() end


---@class FTimerDynamicParamDelegate : ULuaSingleDelegate
FTimerDynamicParamDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, DeltaTime: number, Duration: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTimerDynamicParamDelegate:Bind(Callback, Obj) end

---执行委托
---@param DeltaTime number
---@param Duration number
function FTimerDynamicParamDelegate:Execute(DeltaTime, Duration) end


---Dynamic delegate to use by components that want to route the broken-event into blueprints
---@class FConstraintBrokenSignature : ULuaMulticastDelegate
FConstraintBrokenSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ConstraintIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FConstraintBrokenSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param ConstraintIndex number
function FConstraintBrokenSignature:Broadcast(ConstraintIndex) end


---@class UEngineTypes: UObject
local UEngineTypes = {}
