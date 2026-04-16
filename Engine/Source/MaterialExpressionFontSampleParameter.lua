---@meta

---@class UMaterialExpressionFontSampleParameter: UMaterialExpressionFontSample
---@field ParameterName string @name to be referenced when we want to find and set thsi parameter
---@field ExpressionGUID FGuid @GUID that should be unique within the material, this is used for parameter renaming.
---@field Group string @The name of the parameter Group to display in MaterialInstance Editor. Default is None group
local UMaterialExpressionFontSampleParameter = {}
