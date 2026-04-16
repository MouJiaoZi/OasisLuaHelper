---@meta

---@class UMaterialExpressionGIReplace: UMaterialExpression
---@field Default FExpressionInput @Used for direct lighting computations e.g. real-time shaders
---@field StaticIndirect FExpressionInput @Used for baked indirect lighting e.g. Lightmass
---@field DynamicIndirect FExpressionInput @Used for dynamic indirect lighting e.g. Light Propagation Volumes
local UMaterialExpressionGIReplace = {}
