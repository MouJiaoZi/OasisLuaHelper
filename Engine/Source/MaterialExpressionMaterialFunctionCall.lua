---@meta

---Struct that stores information about a function input which is needed to maintain connections and implement the function call.
---@class FFunctionExpressionInput
---@field ExpressionInputId FGuid @Id of the FunctionInput, used to link ExpressionInput.
---@field Input FExpressionInput @Actual input struct which stores information about how this input is connected in the material.
FFunctionExpressionInput = {}


---Struct that stores information about a function output which is needed to maintain connections and implement the function call.
---@class FFunctionExpressionOutput
---@field ExpressionOutputId FGuid @Id of the FunctionOutput, used to link ExpressionOutput.
---@field Output FExpressionOutput @Actual output struct which stores information about how this output is connected in the material.
FFunctionExpressionOutput = {}


---@class UMaterialExpressionMaterialFunctionCall: UMaterialExpression
---@field FunctionInputs ULuaArrayHelper<FFunctionExpressionInput> @Array of all the function inputs that this function exposes.
---@field FunctionOutputs ULuaArrayHelper<FFunctionExpressionOutput> @Array of all the function outputs that this function exposes.
local UMaterialExpressionMaterialFunctionCall = {}
