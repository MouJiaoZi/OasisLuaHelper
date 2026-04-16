---@meta

---@class FWidgetCollapseInfo
---@field Priority number
---@field ShowTime number @Cached time seconds when the widget turns visible from invisible.
---@field UserWidget UUAEUserWidget @Cached user widget pointer the widget is in.
---@field CollapseWidget UWidget @Widget pointer to be collapsed.
---@field FunctionName string @Function to be called when the widget is collapsed. If none, call UWidget::SetVisibility.
---@field Tags ULuaArrayHelper<string>
FWidgetCollapseInfo = {}
