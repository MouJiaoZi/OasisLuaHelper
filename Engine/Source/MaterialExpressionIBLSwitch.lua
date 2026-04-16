---@meta

---@class UMaterialExpressionIBLSwitch: UMaterialExpression
---@field IBLOn FExpressionInput
---@field IBLOff FExpressionInput
---@field ConstA number @only used if A is not hooked up
---@field ConstB number @only used if B is not hooked up
local UMaterialExpressionIBLSwitch = {}
