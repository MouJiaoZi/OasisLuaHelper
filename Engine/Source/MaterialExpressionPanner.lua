---@meta

---@class UMaterialExpressionPanner: UMaterialExpression
---@field Coordinate FExpressionInput
---@field Time FExpressionInput
---@field Speed FExpressionInput
---@field SpeedX number
---@field SpeedY number
---@field ConstCoordinate number @only used if Coordinate is not hooked up
---@field bFractionalPart boolean
local UMaterialExpressionPanner = {}
