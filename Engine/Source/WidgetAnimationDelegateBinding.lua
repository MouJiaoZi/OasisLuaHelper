---@meta

---@class FBlueprintWidgetAnimationDelegateBinding
---@field Action EWidgetAnimationEvent
---@field AnimationToBind string
---@field FunctionNameToBind string
---@field UserTag string
FBlueprintWidgetAnimationDelegateBinding = {}


---@class UWidgetAnimationDelegateBinding: UDynamicBlueprintBinding
---@field WidgetAnimationDelegateBindings ULuaArrayHelper<FBlueprintWidgetAnimationDelegateBinding>
local UWidgetAnimationDelegateBinding = {}
