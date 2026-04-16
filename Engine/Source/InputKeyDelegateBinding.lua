---@meta

---@class FBlueprintInputKeyDelegateBinding
---@field InputChord FInputChord
---@field InputKeyEvent EInputEvent
---@field FunctionNameToBind string
FBlueprintInputKeyDelegateBinding = {}


---@class UInputKeyDelegateBinding: UInputDelegateBinding
---@field InputKeyDelegateBindings ULuaArrayHelper<FBlueprintInputKeyDelegateBinding>
local UInputKeyDelegateBinding = {}
