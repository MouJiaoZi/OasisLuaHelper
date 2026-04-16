---@meta

---Supported input types
---@class EFunctionInputType
---@field FunctionInput_Scalar number
---@field FunctionInput_Vector2 number
---@field FunctionInput_Vector3 number
---@field FunctionInput_Vector4 number
---@field FunctionInput_Texture2D number
---@field FunctionInput_TextureCube number
---@field FunctionInput_StaticBool number
---@field FunctionInput_MaterialAttributes number
---@field FunctionInput_MAX number
EFunctionInputType = {}


---@class UMaterialExpressionFunctionInput: UMaterialExpression
---@field Preview FExpressionInput @Used for previewing when editing the function, or when bUsePreviewValueAsDefault is enabled.
---@field InputName string @The input's name, which will be drawn on the connector in function call expressions that use this function.
---@field Description string @The input's description, which will be used as a tooltip on the connector in function call expressions that use this function.
---@field Id FGuid @Id of this input, used to maintain references through name changes.
---@field InputType EFunctionInputType @Type of this input. Input code chunks will be cast to this type, and a compiler error will be emitted if the cast fails.
---@field PreviewValue FVector4 @Value used to preview this input when editing the material function.
---@field bUsePreviewValueAsDefault number @Whether to use the preview value or texture as the default value for this input.
---@field SortPriority number @Controls where the input is displayed relative to the other inputs.
---@field bCompilingFunctionPreview number @true when this expression is being compiled in a function preview, false when this expression is being compiled into a material that uses the function. Only valid in Compile()
local UMaterialExpressionFunctionInput = {}
