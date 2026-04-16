---@meta

---@class ETextureSizingType
---@field TextureSizingType_UseSingleTextureSize number @Use TextureSize for all material properties
---@field TextureSizingType_UseAutomaticBiasedSizes number @Use automatically biased texture sizes based on TextureSize
---@field TextureSizingType_UseManualOverrideTextureSize number @Use per property manually overriden texture sizes
---@field TextureSizingType_UseSimplygonAutomaticSizing number @Use Simplygon's automatic texture sizing
---@field TextureSizingType_MAX number
ETextureSizingType = {}


---@class EMaterialMergeType
---@field MaterialMergeType_Default number
---@field MaterialMergeType_Simplygon number
EMaterialMergeType = {}


---@class EUVStrech
---@field Small number
---@field Medium number
---@field Large number
---@field VeryLarge number
EUVStrech = {}


---@class EMaterialProxySmaplingQuality
---@field Poor number
---@field Low number
---@field Medium number
---@field High number
EMaterialProxySmaplingQuality = {}


---@class EOptimizationMetric
---@field TrianglePercentage number
---@field OnScreenSize number
---@field MaxDeviation number
EOptimizationMetric = {}


---@class ESimplygonLODType
---@field Reduction number
---@field Remeshing number
ESimplygonLODType = {}


---@class EMaterialLODType
---@field Off number
---@field BakeTexture number
---@field BakeVertexColor number
---@field Replace number
EMaterialLODType = {}


---@class ESimplygonTextureStrech
---@field None number
---@field VerySmall number
---@field Small number
---@field Medium number
---@field Large number
---@field VeryLarge number
ESimplygonTextureStrech = {}


---@class ESimplygonCasterType
---@field None number
---@field Color number
---@field Normals number
---@field Opacity number
ESimplygonCasterType = {}


---@class ESimplygonTextureSamplingQuality
---@field Poor number
---@field Low number
---@field Medium number
---@field High number
ESimplygonTextureSamplingQuality = {}


---@class ESimplygonColorChannels
---@field RGBA number
---@field RGB number
---@field L number
ESimplygonColorChannels = {}


---@class ESimplygonTextureResolution
---@field TextureResolution_64 number @64
---@field TextureResolution_128 number @128
---@field TextureResolution_256 number @256
---@field TextureResolution_512 number @512
---@field TextureResolution_1024 number @1024
---@field TextureResolution_2048 number @2048
---@field TextureResolution_4096 number @4096
---@field TextureResolution_8192 number @8192
ESimplygonTextureResolution = {}


---@class ESimplygonMaterialChannel
---@field SG_MATERIAL_CHANNEL_AMBIENT number @Ambient
---@field SG_MATERIAL_CHANNEL_DIFFUSE number @Diffuse
---@field SG_MATERIAL_CHANNEL_SPECULAR number @Specular
---@field SG_MATERIAL_CHANNEL_OPACITY number @Opacity
---@field SG_MATERIAL_CHANNEL_EMISSIVE number @Emissive
---@field SG_MATERIAL_CHANNEL_NORMALS number @Normals
---@field SG_MATERIAL_CHANNEL_DISPLACEMENT number @Displacement
---@field SG_MATERIAL_CHANNEL_BASECOLOR number @Basecolor
---@field SG_MATERIAL_CHANNEL_ROUGHNESS number @Roughness
---@field SG_MATERIAL_CHANNEL_METALLIC number @Metallic
---@field SG_MATERIAL_CHANNEL_AO number @AmbientOcclusion
---@field SG_MATERIAL_CHANNEL_SUBSURFACE number @SubsurfaceColor
---@field SG_MATERIAL_CHANNEL_OPACITYMASK number @OpacityMask
ESimplygonMaterialChannel = {}


---@class FSimplygonChannelCastingSettings
---@field MaterialChannel ESimplygonMaterialChannel
---@field Caster ESimplygonCasterType
---@field bActive boolean
---@field ColorChannels ESimplygonColorChannels
---@field BitsPerChannel number
---@field bUseSRGB boolean
---@field bBakeVertexColors boolean
---@field bFlipBackfacingNormals boolean
---@field bUseTangentSpaceNormals boolean
---@field bFlipGreenChannel boolean
FSimplygonChannelCastingSettings = {}


---@class FMaterialProxySettings
---@field TextureSize FIntPoint
---@field TextureSizingType ETextureSizingType
---@field GutterSpace number
---@field SamplingQuality EMaterialProxySmaplingQuality
---@field UVStrech EUVStrech
---@field bSplitProxyMaterialBasedOnType boolean
---@field bUseTangentSpace boolean
---@field bNormalMap boolean
---@field bMetallicMap boolean
---@field MetallicConstant number
---@field bRoughnessMap boolean
---@field RoughnessConstant number
---@field bSpecularMap boolean
---@field SpecularConstant number
---@field bEmissiveMap boolean
---@field bOpacityMap boolean
---@field OpacityConstant number
---@field AOConstant_DEPRECATED number
---@field bOpacityMaskMap boolean
---@field OpacityMaskConstant number
---@field bAmbientOcclusionMap boolean
---@field AmbientOcclusionConstant number
---@field DiffuseTextureSize FIntPoint
---@field NormalTextureSize FIntPoint
---@field MetallicTextureSize FIntPoint
---@field RoughnessTextureSize FIntPoint
---@field SpecularTextureSize FIntPoint
---@field EmissiveTextureSize FIntPoint
---@field OpacityTextureSize FIntPoint
---@field OpacityMaskTextureSize FIntPoint
---@field AmbientOcclusionTextureSize FIntPoint
---@field MaterialMergeType EMaterialMergeType
---@field BlendMode EBlendMode
FMaterialProxySettings = {}


---@class FOutputMaterialInfo
FOutputMaterialInfo = {}


---@class FSimplygonMaterialLODSettings
---@field bActive boolean
---@field MaterialLODType EMaterialLODType
---@field bUseAutomaticSizes boolean
---@field TextureWidth ESimplygonTextureResolution
---@field TextureHeight ESimplygonTextureResolution
---@field SamplingQuality ESimplygonTextureSamplingQuality
---@field GutterSpace number
---@field TextureStrech ESimplygonTextureStrech
---@field bReuseExistingCharts boolean
---@field ChannelsToCast ULuaArrayHelper<FSimplygonChannelCastingSettings>
---@field bBakeVertexData boolean
---@field bBakeActorData boolean
---@field bAllowMultiMaterial boolean
---@field bPreferTwoSideMaterials boolean
---@field bUseVertexWeights boolean
---@field OutputMaterialInfo FOutputMaterialInfo
FSimplygonMaterialLODSettings = {}
