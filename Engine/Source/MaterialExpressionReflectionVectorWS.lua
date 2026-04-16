---@meta

---@class UMaterialExpressionReflectionVectorWS: UMaterialExpression
---@field CustomWorldNormal FExpressionInput @Optional world normal to reflect the camera view vector about. If unconnected, pixel normal is used
---@field bNormalizeCustomWorldNormal number @(true): The specified world normal will be normalized. (false): WorldNormal will just be used as is, faster but possible artifacts if normal length isn't 1
local UMaterialExpressionReflectionVectorWS = {}
