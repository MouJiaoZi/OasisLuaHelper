---@meta

---@class FoliageVertexColorMask
---@field FOLIAGEVERTEXCOLORMASK_Disabled number @Disabled
---@field FOLIAGEVERTEXCOLORMASK_Red number @Red
---@field FOLIAGEVERTEXCOLORMASK_Green number @Green
---@field FOLIAGEVERTEXCOLORMASK_Blue number @Blue
---@field FOLIAGEVERTEXCOLORMASK_Alpha number @Alpha
FoliageVertexColorMask = {}


---@class EVertexColorMaskChannel
---@field Red number
---@field Green number
---@field Blue number
---@field Alpha number
---@field MAX_None number
EVertexColorMaskChannel = {}


---@class EFoliageScaling
---@field Uniform number @Foliage instances will have uniform X,Y and Z scales.
---@field Free number @Foliage instances will have random X,Y and Z scales.
---@field LockXY number @Locks the X and Y axis scale.
---@field LockXZ number @Locks the X and Z axis scale.
---@field LockYZ number @Locks the Y and Z axis scale.
EFoliageScaling = {}


---@class FFoliageVertexColorChannelMask
---@field UseMask number @When checked, foliage will be masked from this mesh using this color channel
---@field MaskThreshold number @Specifies the threshold value above which the static mesh vertex color value must be, in order for foliage instances to be placed in a specific area
---@field InvertMask number @When unchecked, foliage instances will be placed only when the vertex color in the specified channel(s) is above the threshold amount. When checked, the vertex color must be less than the threshold amount
FFoliageVertexColorChannelMask = {}


---@class UFoliageType: UObject
---@field UpdateGuid FGuid
---@field Density number @Foliage instances will be placed at this density, specified in instances per 1000x1000 unit area
---@field DensityAdjustmentFactor number @The factor by which to adjust the density of instances. Values >1 will increase density while values <1 will decrease it.
---@field Radius number @The minimum distance between foliage instances
---@field Scaling EFoliageScaling @Specifies foliage instance scaling behavior when painting.
---@field ScaleX FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a foliage instance's X Scale property
---@field ScaleY FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a foliage instance's Y Scale property
---@field ScaleZ FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a foliage instance's Z Scale property
---@field VertexColorMask_DEPRECATED FoliageVertexColorMask @When painting on static meshes, foliage instance placement can be limited to areas where the static mesh has values in the selected vertex color channel(s). This allows a static mesh to mask out certain areas to prevent foliage from being placed there
---@field VertexColorMaskThreshold_DEPRECATED number @Specifies the threshold value above which the static mesh vertex color value must be, in order for foliage instances to be placed in a specific area
---@field VertexColorMaskInvert_DEPRECATED number @When unchecked, foliage instances will be placed only when the vertex color in the specified channel(s) is above the threshold amount. When checked, the vertex color must be less than the threshold amount
---@field ZOffset FFloatInterval @Specifies a range from minimum to maximum of the offset to apply to a foliage instance's Z location
---@field AlignToNormal number @Whether foliage instances should have their angle adjusted away from vertical to match the normal of the surface they're painted on If AlignToNormal is enabled and RandomYaw is disabled, the instance will be rotated so that the +X axis points down-slope
---@field AlignMaxAngle number @The maximum angle in degrees that foliage instances will be adjusted away from the vertical
---@field RandomYaw number @If selected, foliage instances will have a random yaw rotation around their vertical axis applied
---@field RandomPitchAngle number @A random pitch adjustment can be applied to each instance, up to the specified angle in degrees, from the original vertical
---@field GroundSlopeAngle FFloatInterval
---@field Height FFloatInterval
---@field LandscapeLayers ULuaArrayHelper<string> @If a layer name is specified, painting on landscape will limit the foliage to areas of landscape with the specified layer painted
---@field LandscapeLayer_DEPRECATED string
---@field CollisionWithWorld number
---@field CollisionScale FVector
---@field MinimumLayerWeight number @Specifies the minimum value above which the landscape layer weight value must be, in order for foliage instances to be placed in a specific area
---@field MeshBounds FBoxSphereBounds
---@field LowBoundOriginRadius FVector
---@field Mobility EComponentMobility @Mobility property to apply to foliage components
---@field CullDistance FInt32Interval @The distance where instances will begin to fade out if using a PerInstanceFadeAmount material node. 0 disables. When the entire cluster is beyond this distance, the cluster is completely culled and not rendered at all.
---@field NearCullDistance number
---@field bIsFlyType boolean
---@field bEnableStaticLighting_DEPRECATED number @Deprecated. Now use the Mobility setting to control static/dynamic lighting
---@field CastShadow number @Controls whether the foliage should cast a shadow or not.
---@field bAffectDynamicIndirectLighting number @Controls whether the foliage should inject light into the Light Propagation Volume.  This flag is only used if CastShadow is true.
---@field bAffectDistanceFieldLighting number @Controls whether the primitive should affect dynamic distance field lighting methods.  This flag is only used if CastShadow is true.
---@field bCastDynamicShadow number @Controls whether the foliage should cast shadows in the case of non precomputed shadowing.  This flag is only used if CastShadow is true.
---@field bCastStaticShadow number @Whether the foliage should cast a static shadow from shadow casting lights.  This flag is only used if CastShadow is true.
---@field bCastShadowAsTwoSided number @Whether this foliage should cast dynamic shadows as if it were a two sided material.
---@field bReceivesDecals number @Whether the foliage receives decals.
---@field bOverrideLightMapRes number @Whether to override the lightmap resolution defined in the static mesh.
---@field OverriddenLightMapRes number @Overrides the lightmap resolution defined in the static mesh
---@field LightmapType ELightmapType @Controls the type of lightmap used for this component.
---@field bUseAsOccluder number @If enabled, foliage will render a pre-pass which allows it to occlude other primitives, and also allows it to correctly receive DBuffer decals. Enabling this setting may have a negative performance impact.
---@field BodyInstance any @Custom collision for foliage
---@field CustomNavigableGeometry EHasCustomNavigableGeometry @Force navmesh
---@field LightingChannels FLightingChannels @Lighting channels that placed foliage will be assigned. Lights with matching channels will affect the foliage. These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.
---@field bRenderCustomDepth number @If true, the foliage will be rendered in the CustomDepth pass (usually used for outlines)
---@field CustomDepthStencilValue number @Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)
---@field CollisionRadius number @The CollisionRadius determines when two instances overlap. When two instances overlap a winner will be picked based on rules and priority.
---@field ShadeRadius number @The ShadeRadius determines when two instances overlap. If an instance can grow in the shade this radius is ignored.
---@field NumSteps number @The number of times we age the species and spread its seeds.
---@field InitialSeedDensity number @Specifies the number of seeds to populate along 10 meters. The number is implicitly squared to cover a 10m x 10m area
---@field AverageSpreadDistance number @The average distance between the spreading instance and its seeds. For example, a tree with an AverageSpreadDistance 10 will ensure the average distance between the tree and its seeds is 10cm
---@field SpreadVariance number @Specifies how much seed distance varies from the average. For example, a tree with an AverageSpreadDistance 10 and a SpreadVariance 1 will produce seeds with an average distance of 10cm plus or minus 1cm
---@field SeedsPerStep number @The number of seeds an instance will spread in a single step of the simulation.
---@field DistributionSeed number @The seed that determines placement of initial seeds.
---@field MaxInitialSeedOffset number @The seed that determines placement of initial seeds.
---@field bCanGrowInShade boolean @If true, seeds of this type will ignore shade radius during overlap tests with other types.
---@field bSpawnsInShade boolean @Whether new seeds are spawned exclusively in shade. Occurs in a second pass after all types that do not spawn in shade have been simulated. Only valid when CanGrowInShade is true.
---@field MaxInitialAge number @Allows a new seed to be older than 0 when created. New seeds will be randomly assigned an age in the range [0,MaxInitialAge]
---@field MaxAge number @Specifies the oldest a seed can be. After reaching this age the instance will still spread seeds, but will not get any older
---@field OverlapPriority number @When two instances overlap we must determine which instance to remove. The instance with a lower OverlapPriority will be removed. In the case where OverlapPriority is the same regular simulation rules apply.
---@field ProceduralScale FFloatInterval @The scale range of this type when being procedurally generated. Configured with the Scale Curve.
---@field ScaleCurve FRuntimeFloatCurve @Instance scale factor as a function of normalized age (i.e. Current Age / Max Age). X = 0 corresponds to Age = 0, X = 1 corresponds to Age = Max Age. Y = 0 corresponds to Min Scale, Y = 1 corresponds to Max Scale.
---@field ChangeCount number
---@field ReapplyDensity number @If checked, the density of foliage instances already placed will be adjusted by the density adjustment factor.
---@field ReapplyRadius number @If checked, foliage instances not meeting the new Radius constraint will be removed
---@field ReapplyAlignToNormal number @If checked, foliage instances will have their normal alignment adjusted by the Reapply tool
---@field ReapplyRandomYaw number @If checked, foliage instances will have their yaw adjusted by the Reapply tool
---@field ReapplyScaling number @If checked, foliage instances will have their scale adjusted to fit the specified scaling behavior by the Reapply tool
---@field ReapplyScaleX number @If checked, foliage instances will have their X scale adjusted by the Reapply tool
---@field ReapplyScaleY number @If checked, foliage instances will have their Y scale adjusted by the Reapply tool
---@field ReapplyScaleZ number @If checked, foliage instances will have their Z scale adjusted by the Reapply tool
---@field ReapplyRandomPitchAngle number @If checked, foliage instances will have their pitch adjusted by the Reapply tool
---@field ReapplyGroundSlope number @If checked, foliage instances not meeting the ground slope condition will be removed by the Reapply too
---@field ReapplyHeight number
---@field ReapplyLandscapeLayers number
---@field ReapplyZOffset number @If checked, foliage instances will have their Z offset adjusted by the Reapply tool
---@field ReapplyCollisionWithWorld number
---@field ReapplyVertexColorMask number
---@field bEnableDensityScaling number @Whether this foliage type should be affected by the Engine Scalability system's Foliage scalability setting. Enable for detail meshes that don't really affect the game. Disable for anything important. Typically, this will be enabled for small meshes without collision (e.g. grass) and disabled for large meshes with collision (e.g. trees)
local UFoliageType = {}
