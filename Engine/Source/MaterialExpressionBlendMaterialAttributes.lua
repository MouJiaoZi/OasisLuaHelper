---@meta

---@class EMaterialAttributeBlend
---@field Blend number
---@field UseA number
---@field UseB number
EMaterialAttributeBlend = {}


---@class UMaterialExpressionBlendMaterialAttributes: UMaterialExpression
---@field A FMaterialAttributesInput
---@field B FMaterialAttributesInput
---@field Alpha FExpressionInput
---@field PixelAttributeBlendType EMaterialAttributeBlend
---@field VertexAttributeBlendType EMaterialAttributeBlend
local UMaterialExpressionBlendMaterialAttributes = {}
