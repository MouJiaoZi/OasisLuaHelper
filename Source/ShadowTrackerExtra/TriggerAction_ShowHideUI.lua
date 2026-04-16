---@meta

---@class EUIOperateType
---@field Show number @显示
---@field Hide number @隐藏
EUIOperateType = {}


---@class FTriggerAction_ShowHideUIInfo
---@field WidgetClassPath UUAEUserWidget
---@field MountName string
---@field MountOuterName string
---@field LayoutData FAnchorData
---@field LogicManagerNames string
---@field bAutoSize boolean @When AutoSize is true we use the widget's desired size
---@field ZOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
FTriggerAction_ShowHideUIInfo = {}


---@class UTriggerAction_ShowHideUI: UTriggerAction
---@field GenerateItemsTarget FTrigger_TargetParameter
---@field OperateType EUIOperateType
---@field IsDestroy boolean
---@field UIInfo FTriggerAction_ShowHideUIInfo
local UTriggerAction_ShowHideUI = {}
