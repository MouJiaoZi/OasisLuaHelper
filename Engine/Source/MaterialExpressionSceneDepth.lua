---@meta

---@class UMaterialExpressionSceneDepth: UMaterialExpression
---@field InputMode EMaterialSceneAttributeInputMode @Coordinates - UV coordinates to apply to the scene depth lookup. OffsetFraction - An offset to apply to the scene depth lookup in a 2d fraction of the screen.
---@field Input FExpressionInput @Based on the input mode the input will be treated as either: UV coordinates to apply to the scene depth lookup or an offset to apply to the scene depth lookup, in a 2d fraction of the screen.
---@field Coordinates_DEPRECATED FExpressionInput
---@field ConstInput FVector2D @only used if Input is not hooked up
local UMaterialExpressionSceneDepth = {}
