---@meta

---defines how MipValue is used
---@class ETextureMipValueMode
---@field TMVM_None number @None (use computed mip level)
---@field TMVM_MipLevel number @MipLevel (absolute, 0 is full resolution)
---@field TMVM_MipBias number @MipBias (relative to the computed mip level)
---@field TMVM_Derivative number @Derivative (explicit derivative to compute mip level)
---@field TMVM_MAX number
ETextureMipValueMode = {}


---@class UMaterialExpressionTextureSample: UMaterialExpressionTextureBase
---@field Coordinates FExpressionInput
---@field TextureObject FExpressionInput @Texture object input which overrides Texture if specified. This only shows up in material functions and is used to implement texture parameters without actually putting the texture parameter in the function.
---@field MipValue FExpressionInput @Meaning depends on MipValueMode, a single unit is one mip level
---@field CoordinatesDX FExpressionInput @Enabled only if MipValueMode == TMVM_Derivative
---@field CoordinatesDY FExpressionInput @Enabled only if MipValueMode == TMVM_Derivative
---@field MipValueMode ETextureMipValueMode @Defines how the MipValue property is applied to the texture lookup
---@field SamplerSource ESamplerSourceMode @Controls where the sampler for this texture lookup will come from. Choose 'from texture asset' to make use of the UTexture addressing settings, Otherwise use one of the global samplers, which will not consume a sampler slot. This allows materials to use more than 16 unique textures on SM5 platforms.
---@field ConstCoordinate number @only used if Coordinates is not hooked up
---@field ConstMipValue number @only used if MipValue is not hooked up
local UMaterialExpressionTextureSample = {}
