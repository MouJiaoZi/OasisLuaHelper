---@meta

---@class FBoundOutWidgetInfo
FBoundOutWidgetInfo = {}


---@class UBorderSensitiveWidget: UUAEUserWidget
---@field SensitiveWidgetList ULuaArrayHelper<UWidget>
local UBorderSensitiveWidget = {}

---@param index number
---@param Out FVector4
function UBorderSensitiveWidget:OnBoundOut(index, Out) end

---@param widgetList ULuaArrayHelper<UWidget>
function UBorderSensitiveWidget:SetSensitiveWidgetList(widgetList) end
