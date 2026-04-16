---@meta

---@class EDepthOfFieldFunctionValue
---@field TDOF_NearAndFarMask number @0:in Focus .. 1:Near or Far.
---@field TDOF_NearMask number @0:in Focus or Far .. 1:Near.
---@field TDOF_FarMask number @0:in Focus or Near .. 1:Far.
---@field TDOF_CircleOfConfusionRadius number @in pixels, only works for CircleDOF, use Abs for the actual radius as the sign of the value indicates near out of focus, positive indicates far out of focus
---@field TDOF_MAX number
EDepthOfFieldFunctionValue = {}


---@class UMaterialExpressionDepthOfFieldFunction: UMaterialExpression
---@field FunctionValue EDepthOfFieldFunctionValue @Determines the mapping place to use on the terrain.
---@field Depth FExpressionInput @usually nothing or PixelDepth
local UMaterialExpressionDepthOfFieldFunction = {}
