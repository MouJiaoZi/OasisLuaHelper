---@meta

---@class UMaterialExpressionBumpOffset: UMaterialExpression
---@field Coordinate FExpressionInput
---@field Height FExpressionInput
---@field HeightRatioInput FExpressionInput
---@field HeightRatio number
---@field ReferencePlane number
---@field ConstCoordinate number @only used if Coordinate is not hooked up
local UMaterialExpressionBumpOffset = {}
