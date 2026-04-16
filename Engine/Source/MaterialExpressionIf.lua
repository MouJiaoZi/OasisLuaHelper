---@meta

---@class UMaterialExpressionIf: UMaterialExpression
---@field A FExpressionInput
---@field B FExpressionInput
---@field AGreaterThanB FExpressionInput
---@field AEqualsB FExpressionInput
---@field ALessThanB FExpressionInput
---@field EqualsThreshold number
---@field ConstB number @only used if B is not hooked up
---@field ConstAEqualsB_DEPRECATED number
local UMaterialExpressionIf = {}
