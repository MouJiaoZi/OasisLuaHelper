---@meta

---@class TextureCompressionSettings
---@field TC_Default number @Default (DXT1/5, BC1/3 on DX11)
---@field TC_Normalmap number @Normalmap (DXT5, BC5 on DX11)
---@field TC_Masks number @Masks (no sRGB)
---@field TC_Grayscale number @Grayscale (R8, RGB8 sRGB)
---@field TC_Displacementmap number @Displacementmap (8/16bit)
---@field TC_VectorDisplacementmap number @VectorDisplacementmap (RGBA8)
---@field TC_HDR number @HDR (RGB, no sRGB)
---@field TC_EditorIcon number @UserInterface2D (RGBA)
---@field TC_Alpha number @Alpha (no sRGB, BC4 on DX11)
---@field TC_DistanceFieldFont number @DistanceFieldFont (R8)
---@field TC_HDR_Compressed number @HDRCompressed (RGB, BC6H, DX11)
---@field TC_BC7 number @BC7 (DX11, optional A)
---@field TC_MAX number
TextureCompressionSettings = {}


---@class TextureFilter
---@field TF_Nearest number @Nearest
---@field TF_Bilinear number @Bi-linear
---@field TF_Trilinear number @Tri-linear
---@field TF_Default number @Use setting from the Texture Group.
---@field TF_MAX number
TextureFilter = {}


---@class TextureAddress
---@field TA_Wrap number @Wrap
---@field TA_Clamp number @Clamp
---@field TA_Mirror number @Mirror
---@field TA_MAX number
TextureAddress = {}


---@class ECompositeTextureMode
---@field CTM_Disabled number @Disabled
---@field CTM_NormalRoughnessToRed number @CompositingTexture needs to be a normal map with the same or larger size.
---@field CTM_NormalRoughnessToGreen number @CompositingTexture needs to be a normal map with the same or larger size.
---@field CTM_NormalRoughnessToBlue number @CompositingTexture needs to be a normal map with the same or larger size.
---@field CTM_NormalRoughnessToAlpha number @CompositingTexture needs to be a normal map with the same or larger size.
---@field CTM_MAX number
ECompositeTextureMode = {}


---@class ETextureMipCount
---@field TMC_ResidentMips number
---@field TMC_AllMips number
---@field TMC_AllMipsBiased number
---@field TMC_MAX number
ETextureMipCount = {}


---@class ETextureSourceArtType
---@field TSAT_Uncompressed number @FColor Data[SrcWidth * SrcHeight].
---@field TSAT_PNGCompressed number @PNG compresed version of FColor Data[SrcWidth * SrcHeight].
---@field TSAT_DDSFile number @DDS file with header.
---@field TSAT_MAX number
ETextureSourceArtType = {}


---@class ETextureSourceFormat
---@field TSF_Invalid number
---@field TSF_G8 number
---@field TSF_BGRA8 number
---@field TSF_BGRE8 number
---@field TSF_RGBA16 number
---@field TSF_RGBA16F number
---@field TSF_RGBA8 number
---@field TSF_RGBE8 number
---@field TSF_MAX number
ETextureSourceFormat = {}


---@class ETextureCompressionQuality
---@field TCQ_Default number @Default
---@field TCQ_Lowest number @Lowest
---@field TCQ_Low number @Low
---@field TCQ_Medium number @Medium
---@field TCQ_High number @High
---@field TCQ_Highest number @Highest
---@field TCQ_MAX number
ETextureCompressionQuality = {}


---@class ETextureCrunchSetting
---@field TCS_Default number @Default
---@field TCS_EnableCrunchCompression number @Enable Crunch Compression
---@field TCS_DisableCrunchCompression number @Disable Crunch Compression
ETextureCrunchSetting = {}


---@class ETextureBasisSetting
---@field TCS_BasisDefault number @Default
---@field TCS_EnableBasisCompression number @Enable Basis Compression
---@field TCS_DisableBasisCompression number @Disable Basis Compression
ETextureBasisSetting = {}


---Texture source data management.
---@class FTextureSource
FTextureSource = {}


---Platform-specific data used by the texture resource at runtime.
---@class FTexturePlatformData
FTexturePlatformData = {}


---@class UTexture: UObject, IInterface_AssetUserData
---@field LightingGuid FGuid @Unique ID for this material, used for caching during distributed lighting
---@field LODBias number @A bias to the index of the top mip level to use.
---@field ExpectedQualityLimit FExpectedQuality
---@field NumCinematicMipLevels number @Number of mip-levels to use for cinematic quality.
---@field SRGB number @This should be unchecked if using alpha channels individually as masks.
---@field bNotUsedInUltimateHighQuality number @A flag for using the simplified legacy gamma space e.g pow(color,1/2.2) for converting from FColor to FLinearColor, if we're doing sRGB.
---@field bNotUsedInHighQuality number
---@field bNotUsedInMediumQuality number
---@field bNotUsedInLowQuality number
---@field NeverStream number
---@field bNoTiling number @If true, the RHI texture will be created using TexCreate_NoTiling
---@field bUseCinematicMipLevels number @Whether to use the extra cinematic quality mip-levels, when we're forcing mip-levels to be resident.
---@field AssetUserData ULuaArrayHelper<UAssetUserData> @Array of user data stored with the asset
---@field CachedCombinedLODBias number @Cached combined group and texture LOD bias to use.
---@field bAsyncResourceReleaseHasBeenStarted number @Whether the async resource release process has already been kicked off or not
---@field CompressionSettings TextureCompressionSettings @Compression settings to use when building the texture.
---@field Filter TextureFilter @The texture filtering mode to use when sampling this texture.
---@field LODGroup TextureGroup @Texture group this texture belongs to
---@field CrunchSetting ETextureCrunchSetting
---@field bOverrideCrunchCompressionAmount number
---@field CrunchCompressionAmount number
---@field BasisSetting ETextureBasisSetting
---@field bOverrideBasisCompressionAmount number
---@field BasisCompressionAmount number
local UTexture = {}
