---@meta

---@class EMaterialVectorCoordTransformSource
---@field TRANSFORMSOURCE_Tangent number @Tangent space (relative to the surface)
---@field TRANSFORMSOURCE_Local number @Local space (relative to the rendered object, = object space)
---@field TRANSFORMSOURCE_World number @World space, a unit is 1cm
---@field TRANSFORMSOURCE_View number @View space (relative to the camera/eye, = camera space, differs from camera space in the shadow passes)
---@field TRANSFORMSOURCE_Camera number @Camera space
---@field TRANSFORMSOURCE_ParticleWorld number @Particle space
---@field TRANSFORMSOURCE_Instance number @Instance Local space
---@field TRANSFORMSOURCE_MAX number
EMaterialVectorCoordTransformSource = {}


---@class EMaterialVectorCoordTransform
---@field TRANSFORM_Tangent number @Tangent space (relative to the surface)
---@field TRANSFORM_Local number @Local space (relative to the rendered object, = object space)
---@field TRANSFORM_World number @World space, a unit is 1cm
---@field TRANSFORM_View number @View space (relative to the camera/eye, = camera space, differs from camera space in the shadow passes)
---@field TRANSFORM_Camera number @Camera space
---@field TRANSFORM_ParticleWorld number @Particle space
---@field TRANSFORM_Instance number @Instance Local space
---@field TRANSFORM_MAX number
EMaterialVectorCoordTransform = {}


---@class UMaterialExpressionTransform: UMaterialExpression
---@field Input FExpressionInput @input expression for this transform
---@field TransformSourceType EMaterialVectorCoordTransformSource @Source coordinate space of the FVector
---@field TransformType EMaterialVectorCoordTransform @Destination coordinate space of the FVector
local UMaterialExpressionTransform = {}
