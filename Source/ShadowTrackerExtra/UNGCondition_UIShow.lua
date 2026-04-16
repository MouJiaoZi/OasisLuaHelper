---@meta

---@class FUIVisibleCondition
---@field Outer UUAEUserWidget
---@field WidgetName string
---@field LogicManager string
FUIVisibleCondition = {}


---@class UUNGCondition_UIShow: USTNewbieGuideConditionBase
---@field ConditionUI FUIVisibleCondition
local UUNGCondition_UIShow = {}

---@param Widget UUAEUserWidget
---@param InWorld UWorld
function UUNGCondition_UIShow:OnUAEUserWdigetNativeConstruct(Widget, InWorld) end
