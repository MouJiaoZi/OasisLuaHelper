---@meta

---@class EMaterialUsage
---@field MATUSAGE_SkeletalMesh number
---@field MATUSAGE_ParticleSprites number
---@field MATUSAGE_BeamTrails number
---@field MATUSAGE_MeshParticles number
---@field MATUSAGE_StaticLighting number
---@field MATUSAGE_MorphTargets number
---@field MATUSAGE_SplineMesh number
---@field MATUSAGE_InstancedStaticMeshes number
---@field MATUSAGE_Clothing number
---@field MATUSAGE_NiagaraSprites number
---@field MATUSAGE_NiagaraRibbons number
---@field MATUSAGE_NiagaraMeshParticles number
---@field MATUSAGE_IBL number
---@field MATUSAGE_GFur number
---@field MATUSAGE_VertexPointLight number
---@field MATUSAGE_DynamicBatching number
---@field MATUSAGE_DynamicMergeSkeletalMesh number
---@field MATUSAGE_CustomInstancedStaticMeshes number
---@field MATUSAGE_MAX number
EMaterialUsage = {}


---UMaterial interface settings for Lightmass
---@class FLightmassMaterialInterfaceSettings
---@field bCastShadowAsMasked number @If true, forces translucency to cast static shadows as if the material were masked.
---@field EmissiveBoost number @Scales the emissive contribution of this material to static lighting.
---@field DiffuseBoost number @Scales the diffuse contribution of this material to static lighting.
---@field ExportResolutionScale number @Scales the resolution that this material's attributes were exported at. This is useful for increasing material resolution when details are needed.
---@field bOverrideCastShadowAsMasked number @If true, override the bCastShadowAsMasked setting of the parent material.
---@field bOverrideEmissiveBoost number @If true, override the emissive boost setting of the parent material.
---@field bOverrideDiffuseBoost number @If true, override the diffuse boost setting of the parent material.
---@field bOverrideExportResolutionScale number @If true, override the export resolution scale setting of the parent material.
FLightmassMaterialInterfaceSettings = {}


---This struct holds data about how a texture is sampled within a material.
---@class FMaterialTextureInfo
---@field SamplingScale number @The scale used when sampling the texture
---@field UVChannelIndex number @The coordinate index used when sampling the texture
---@field TextureName string @The texture name. Used for debugging and also to for quick matching of the entries.
FMaterialTextureInfo = {}


---@class UMaterialInterface: UObject, IBlendableInterface
---@field LightmassSettings any @The Lightmass settings for this object.
---@field TextureStreamingData ULuaArrayHelper<FMaterialTextureInfo> @Data used by the texture streaming to know how each texture is sampled by the material. Sorted by names for quick access.
local UMaterialInterface = {}

---Force the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by this material.
---@param OverrideForceMiplevelsToBeResident boolean
---@param bForceMiplevelsToBeResidentValue boolean
---@param ForceDuration number
---@param CinematicTextureGroups number
function UMaterialInterface:SetForceMipLevelsToBeResident(OverrideForceMiplevelsToBeResident, bForceMiplevelsToBeResidentValue, ForceDuration, CinematicTextureGroups) end

---@param NewMipOffset number
---@param SizeLimited boolean
function UMaterialInterface:SetStreamingTextureMipOffset(NewMipOffset, SizeLimited) end
