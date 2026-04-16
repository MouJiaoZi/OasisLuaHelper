---@meta

---@class UMaterialExpressionLinearInterpolate: UMaterialExpression
---@field A FExpressionInput
---@field B FExpressionInput
---@field Alpha FExpressionInput
---@field ConstA number @only used if A is not hooked up
---@field ConstB number @only used if B is not hooked up
---@field ConstAlpha number @only used if Alpha is not hooked up
local UMaterialExpressionLinearInterpolate = {}
