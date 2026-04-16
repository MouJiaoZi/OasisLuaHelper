---@meta

---@class EMaterialPositionTransformSource
---@field TRANSFORMPOSSOURCE_Local number @Local space
---@field TRANSFORMPOSSOURCE_World number @Absolute world space
---@field TRANSFORMPOSSOURCE_TranslatedWorld number @Camera relative world space
---@field TRANSFORMPOSSOURCE_View number @View space (differs from camera space in the shadow passes)
---@field TRANSFORMPOSSOURCE_Camera number @Camera space
---@field TRANSFORMPOSSOURCE_Particle number @Particle space
---@field TRANSFORMPOSSOURCE_BigWorldTranslated number @Big World Camera relative world space (only for items attached to the player)
---@field TRANSFORMPOSSOURCE_Instance number @Instance Local space
---@field TRANSFORMPOSSOURCE_MAX number
EMaterialPositionTransformSource = {}


---@class UMaterialExpressionTransformPosition: UMaterialExpression
---@field Input FExpressionInput @input expression for this transform
---@field TransformSourceType EMaterialPositionTransformSource @source format of the position that will be transformed
---@field TransformType EMaterialPositionTransformSource @type of transform to apply to the input expression
local UMaterialExpressionTransformPosition = {}
