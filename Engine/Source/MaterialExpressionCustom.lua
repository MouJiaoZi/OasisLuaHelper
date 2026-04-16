---@meta

---@class ECustomMaterialOutputType
---@field CMOT_Float1 number
---@field CMOT_Float2 number
---@field CMOT_Float3 number
---@field CMOT_Float4 number
---@field CMOT_MAX number
ECustomMaterialOutputType = {}


---@class FCustomInput
---@field InputName string
---@field Input FExpressionInput
FCustomInput = {}


---@class UMaterialExpressionCustom: UMaterialExpression
---@field Code string
---@field OutputType ECustomMaterialOutputType
---@field Description string
---@field Inputs ULuaArrayHelper<FCustomInput>
local UMaterialExpressionCustom = {}
