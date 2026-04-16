---@meta

---@class EClampMode
---@field CMODE_Clamp number
---@field CMODE_ClampMin number
---@field CMODE_ClampMax number
EClampMode = {}


---@class UMaterialExpressionClamp: UMaterialExpression
---@field Input FExpressionInput
---@field Min FExpressionInput
---@field Max FExpressionInput
---@field ClampMode EClampMode
---@field MinDefault number
---@field MaxDefault number
local UMaterialExpressionClamp = {}
