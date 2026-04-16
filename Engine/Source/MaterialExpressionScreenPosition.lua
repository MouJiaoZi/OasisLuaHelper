---@meta

---@class EMaterialExpressionScreenPositionMapping
---@field MESP_SceneTextureUV number @A UV in the 0..1 range for use with the ScreeTnexture material expression.
---@field MESP_ViewportUV number @A UV in the 0..1 range that maps to the local viewport
---@field MESP_Max number
EMaterialExpressionScreenPositionMapping = {}


---@class UMaterialExpressionScreenPosition: UMaterialExpression
---@field Mapping EMaterialExpressionScreenPositionMapping @View input property to be accessed
local UMaterialExpressionScreenPosition = {}
