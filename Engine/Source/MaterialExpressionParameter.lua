---@meta

---@class UMaterialExpressionParameter: UMaterialExpression
---@field ParameterName string @The name of the parameter
---@field bCanCollectedForCustomData boolean
---@field CustomDataIndex number
---@field ExpressionGUID FGuid @GUID that should be unique within the material, this is used for parameter renaming.
---@field Group string @The name of the parameter Group to display in MaterialInstance Editor. Default is None group
local UMaterialExpressionParameter = {}
