---@meta

---@class UMaterialExpressionSphereMask: UMaterialExpression
---@field A FExpressionInput @1 to 4 dimensional vector, should be the same type as B
---@field B FExpressionInput @1 to 4 dimensional vector, should be the same type as A
---@field Radius FExpressionInput @in the units that A and B are measured, if not hooked up the internal constant is used
---@field Hardness FExpressionInput @0..1 for the range of 0\% to 100\%, if not hooked up the internal constant is used
---@field AttenuationRadius number @in the unit that A and B are measured
---@field HardnessPercent number @in percent 0%=soft .. 100%=hard
local UMaterialExpressionSphereMask = {}
