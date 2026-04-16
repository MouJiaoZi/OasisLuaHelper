---@meta

---@class ETextureColorChannel
---@field TCC_Red number
---@field TCC_Green number
---@field TCC_Blue number
---@field TCC_Alpha number
---@field TCC_MAX number
ETextureColorChannel = {}


---@class UMaterialExpressionAntialiasedTextureMask: UMaterialExpressionTextureSampleParameter2D
---@field Threshold number
---@field Channel ETextureColorChannel
local UMaterialExpressionAntialiasedTextureMask = {}
