---@meta

---@class UMaterialExpressionDepthFade: UMaterialExpression
---@field InOpacity FExpressionInput @Input opacity which will be scaled by the result of the fade.
---@field FadeDistance FExpressionInput @World space distance over which the fade should take place.
---@field OpacityDefault number @Opacity which will be scaled by the result of the fade.  This is used when InOpacity is unconnected.
---@field FadeDistanceDefault number @World space distance over which the fade should take place.  This is used when FadeDistance is unconnected.
---@field bSupportFPR boolean
local UMaterialExpressionDepthFade = {}
