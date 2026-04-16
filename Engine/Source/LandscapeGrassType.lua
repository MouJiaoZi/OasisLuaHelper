---@meta

---@class EGrassScaling
---@field Uniform number @Grass instances will have uniform X, Y and Z scales.
---@field Free number @Grass instances will have random X, Y and Z scales.
---@field LockXY number @X and Y will be the same random scale, Z will be another
EGrassScaling = {}


---@class FGrassVariety
---@field GrassDensity number
---@field bUseGrid boolean
---@field PlacementJitter number
---@field StartCullDistance number
---@field EndCullDistance number @The distance where instances will have completely faded out when using a PerInstanceFadeAmount material node. 0 disables. When the entire cluster is beyond this distance, the cluster is completely culled and not rendered at all.
---@field MinLOD number @Specifies the smallest LOD that will be used for this component. If -1 (default), the MinLOD of the static mesh asset will be used instead.
---@field Scaling EGrassScaling @Specifies grass instance scaling type
---@field ScaleX FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a grass instance's X Scale property
---@field ScaleY FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a grass instance's Y Scale property
---@field ScaleZ FFloatInterval @Specifies the range of scale, from minimum to maximum, to apply to a grass instance's Z Scale property
---@field RandomRotation boolean @Whether the grass instances should be placed at random rotation (true) or all at the same rotation (false)
---@field AlignToSurface boolean @Whether the grass instances should be tilted to the normal of the landscape (true), or always vertical (false)
---@field bUseLandscapeLightmap boolean
---@field LightingChannels FLightingChannels @Lighting channels that the grass will be assigned. Lights with matching channels will affect the grass. These channels only apply to opaque materials, direct lighting, and dynamic lighting and shadowing.
---@field bReceivesDecals boolean @Whether the grass instances should receive decals.
FGrassVariety = {}


---@class ULandscapeGrassType: UObject
---@field GrassVarieties ULuaArrayHelper<FGrassVariety>
---@field GrassDensity_DEPRECATED number
---@field PlacementJitter_DEPRECATED number
---@field StartCullDistance_DEPRECATED number
---@field EndCullDistance_DEPRECATED number
---@field RandomRotation_DEPRECATED boolean
---@field AlignToSurface_DEPRECATED boolean
local ULandscapeGrassType = {}
