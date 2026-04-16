---@meta

---Entry for a delegate to assign after a blueprint has been instanced
---@class FBlueprintComponentDelegateBinding
---@field ComponentPropertyName string @Name of component property that contains delegate we want to assign to.
---@field DelegatePropertyName string @Name of property on the component that we want to assign to.
---@field FunctionNameToBind string @Name of function that we want to bind to the delegate.
FBlueprintComponentDelegateBinding = {}


---@class UComponentDelegateBinding: UDynamicBlueprintBinding
---@field ComponentDelegateBindings ULuaArrayHelper<FBlueprintComponentDelegateBinding>
local UComponentDelegateBinding = {}
