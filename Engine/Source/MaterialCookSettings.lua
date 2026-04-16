---@meta

---@class EMaterialCookFeatureLevel
---@field ES2 number @Feature level defined by the core capabilities of OpenGL ES2.
---@field ES3_1 number @Feature level defined by the core capabilities of OpenGL ES3.1 & Metal/Vulkan.
---@field SM4 number @Feature level defined by the capabilities of DX10 Shader Model 4.
---@field SM5 number @Feature level defined by the capabilities of DX11 Shader Model 5.
---@field Num number
EMaterialCookFeatureLevel = {}


---@class EMaterialCookQualityLevel
---@field Low number
---@field High number
---@field Medium number
---@field UltimateHigh number
---@field Num number
EMaterialCookQualityLevel = {}


---@class FMaterialShaderFeatureLevelQuality
---@field FeatureLevel EMaterialCookFeatureLevel
---@field QualityLevel EMaterialCookQualityLevel
FMaterialShaderFeatureLevelQuality = {}


---@class UMaterialCookSettings: UObject
---@field MaterialShaderFeatureLevelQualityToSkip ULuaArrayHelper<FMaterialShaderFeatureLevelQuality>
local UMaterialCookSettings = {}
