---@meta

---@class UPCAutoHideComponent: UActorComponent
---@field AutoHideUIMap ULuaMapHelper<string, string>
---@field MaxSearchDepth number
local UPCAutoHideComponent = {}

---@param OldUserWidget UUAEUserWidget
---@param NewUserWidget UUAEUserWidget
function UPCAutoHideComponent:OnFocusChangingEvent(OldUserWidget, NewUserWidget) end

---@param Root UUAEUserWidget
---@param UserWidget UUAEUserWidget
---@return boolean
function UPCAutoHideComponent:IsChildWidget(Root, UserWidget) end
