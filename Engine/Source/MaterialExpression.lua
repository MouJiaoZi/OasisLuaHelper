---@meta

---@class FExpressionInput
---@field OutputIndex number @Index into Expression's outputs array that this input is connected to.
---@field InputName string @optional FName of the input. Note that this is the only member which is not derived from the output currently connected.
---@field Mask number
---@field MaskR number
---@field MaskG number
---@field MaskB number
---@field MaskA number
---@field ExpressionName string @Material expression name that this input is connected to, or None if not connected. Used only in cooked builds
FExpressionInput = {}


---@class FMaterialAttributesInput
---@field PropertyConnectedBitmask number
FMaterialAttributesInput = {}


---@class FExpressionOutput
---@field OutputName string
---@field Mask number
---@field MaskR number
---@field MaskG number
---@field MaskB number
---@field MaskA number
FExpressionOutput = {}


---@class UMaterialExpression: UObject
---@field Desc string @A description that level designers can add (shows in the material editor UI).
---@field BorderColor FColor @Color of the expression's border outline.
---@field bRealtimePreview number @Set to true by RecursiveUpdateRealtimePreview() if the expression's preview needs to be updated in realtime in the material editor.
---@field bNeedToUpdatePreview number @If true, we should update the preview next render. This is set when changing bRealtimePreview.
---@field bIsParameterExpression number @Indicates that this is a 'parameter' type of expression and should always be loaded (ie not cooked away) because we might want the default parameter.
---@field bCommentBubbleVisible number @If true, the comment bubble will be visible in the graph editor
---@field bShowOutputNameOnPin number @If true, use the output name as the label for the pin
---@field bShowMaskColorsOnPin number @If true, changes the pin color to match the output mask
---@field bHidePreviewWindow number @If true, do not render the preview window for the expression
---@field bCollapsed number @If true, show a collapsed version of the node
---@field bShaderInputData number @Whether the node represents an input to the shader or not.  Used to color the node's background.
---@field bShowInputs number @Whether to draw the expression's inputs.
---@field bShowOutputs number @Whether to draw the expression's outputs.
---@field Outputs ULuaArrayHelper<FExpressionOutput> @The expression's outputs, which are set in default properties by derived classes.
local UMaterialExpression = {}
