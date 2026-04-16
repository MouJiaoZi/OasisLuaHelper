---@meta

---Subset of EPixelFormat exposed to UTextureRenderTarget2D
---@class ETextureRenderTargetFormat
---@field RTF_R8 number @R channel, 8 bit per channel fixed point, range [0, 1].
---@field RTF_RG8 number @RG channels, 8 bit per channel fixed point, range [0, 1].
---@field RTF_RGBA8 number @RGBA channels, 8 bit per channel fixed point, range [0, 1].
---@field RTF_RGBA8_SRGB number @RGBA channels, 8 bit per channel fixed point, range [0, 1]. RGB is encoded with sRGB gamma curve. A is always stored as linear.
---@field RTF_R16f number @R channel, 16 bit per channel floating point, range [-65504, 65504]
---@field RTF_RG16f number @RG channels, 16 bit per channel floating point, range [-65504, 65504]
---@field RTF_RGBA16f number @RGBA channels, 16 bit per channel floating point, range [-65504, 65504]
---@field RTF_R32f number @R channel, 32 bit per channel floating point, range [-3.402823 x 10^38, 3.402823 x 10^38]
---@field RTF_RG32f number @RG channels, 32 bit per channel floating point, range [-3.402823 x 10^38, 3.402823 x 10^38]
---@field RTF_RGBA32f number @RGBA channels, 32 bit per channel floating point, range [-3.402823 x 10^38, 3.402823 x 10^38]
ETextureRenderTargetFormat = {}


---TextureRenderTarget2D 2D render target texture resource. This can be used as a target for rendering as well as rendered as a regular 2D texture resource.
---@class UTextureRenderTarget2D: UTextureRenderTarget
---@field SizeX number @The width of the texture.
---@field SizeY number @The height of the texture.
---@field ClearColor FLinearColor @the color the texture is cleared to
---@field AddressX TextureAddress @The addressing mode to use for the X axis.
---@field AddressY TextureAddress @The addressing mode to use for the Y axis.
---@field bForceLinearGamma number @True to force linear gamma space for this render target
---@field bHDR_DEPRECATED number @Whether to support storing HDR values, which requires more memory.
---@field RenderTargetFormat ETextureRenderTargetFormat @Format of the texture render target. Data written to the render target will be quantized to this format, which can limit the range and precision. The largest format (RTF_RGBA32f) uses 16x more memory and bandwidth than the smallest (RTF_R8) and can greatly affect performance. Use the smallest format that has enough precision and range for what you are doing.
---@field bGPUSharedFlag number @Whether to support GPU sharing of the underlying native texture resource.
---@field bAutoGenerateMips number @Whether to support Mip maps for this render target texture
---@field OverrideFormat EPixelFormat @Normally the format is derived from RenderTargetFormat, this allows code to set the format explicitly.
local UTextureRenderTarget2D = {}
