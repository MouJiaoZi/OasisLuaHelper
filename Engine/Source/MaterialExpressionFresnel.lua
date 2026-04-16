---@meta

---@class UMaterialExpressionFresnel: UMaterialExpression
---@field ExponentIn FExpressionInput
---@field Exponent number @The exponent to pass into the pow() function
---@field BaseReflectFractionIn FExpressionInput
---@field BaseReflectFraction number @Specifies the fraction of specular reflection when the surfaces is viewed from straight on. A value of 1 effectively disables Fresnel.
---@field Normal FExpressionInput @The normal to dot with the camera FVector
local UMaterialExpressionFresnel = {}
