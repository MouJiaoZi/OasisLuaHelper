---@meta

---@class FBlueprintInputActionDelegateBinding
---@field InputActionName string
---@field InputKeyEvent EInputEvent
---@field FunctionNameToBind string
FBlueprintInputActionDelegateBinding = {}


---@class UInputActionDelegateBinding: UInputDelegateBinding
---@field InputActionDelegateBindings ULuaArrayHelper<FBlueprintInputActionDelegateBinding>
local UInputActionDelegateBinding = {}
