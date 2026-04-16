---@meta

---@class UMaterialExpressionScalarParameter: UMaterialExpressionParameter
---@field DefaultValue number
---@field SliderMin number @Sets the lower bound for the slider on this parameter in the material instance editor.
---@field SliderMax number @Sets the upper bound for the slider on this parameter in the material instance editor. The slider will be disabled if SliderMax <= SliderMin.
local UMaterialExpressionScalarParameter = {}
