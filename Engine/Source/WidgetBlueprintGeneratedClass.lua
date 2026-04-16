---@meta

---@class EBindingKind
---@field Function number
---@field Property number
EBindingKind = {}


---@class FDelegateRuntimeBinding
---@field ObjectName string @The widget that will be bound to the live data.
---@field PropertyName string @The property on the widget that will have a binding placed on it.
---@field FunctionName string @The function or property we're binding to on the source object.
---@field SourcePath FDynamicPropertyPath
---@field Kind EBindingKind @The kind of binding we're performing, are we binding to a property or a function.
FDelegateRuntimeBinding = {}


---The widget blueprint generated class allows us to create blueprint-able widgets for UMG at runtime. All WBPGC's are of UUserWidget classes, and they perform special post initialization using this class to give themselves many of the same capabilities as AActor blueprints, like dynamic delegate binding for widgets.
---@class UWidgetBlueprintGeneratedClass: UBlueprintGeneratedClass
---@field WidgetTreePath FSoftObjectPath
---@field bAutoReleaseWidgetTree number
---@field bAllowTemplate number
---@field bValidTemplate number
---@field bTemplateInitialized number
---@field bCookedTemplate number
---@field Bindings ULuaArrayHelper<FDelegateRuntimeBinding>
---@field Animations ULuaArrayHelper<UWidgetAnimation>
---@field NamedSlots ULuaArrayHelper<string>
---@field TemplateAsset UUserWidget
local UWidgetBlueprintGeneratedClass = {}
