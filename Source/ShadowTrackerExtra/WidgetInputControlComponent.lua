---@meta

---@class FInputControlInfo
---@field WidgetPtr UWidget
---@field UserWidgetPtr UUAEUserWidget
---@field bBlockInputOnShow boolean
---@field CustomActionWhiteList ULuaSetHelper<string>
---@field ActionBlackListOnShow ULuaSetHelper<string>
FInputControlInfo = {}


---@class FLockViewInfo
---@field WidgetPtr UWidget
---@field UserWidgetPtr UUAEUserWidget
FLockViewInfo = {}


---@class FWidgetMouseControlInfo
---@field Widget UWidget
---@field UserWidget UUAEUserWidget
---@field bDelayHideMouseCursor boolean
---@field DelayTime number
FWidgetMouseControlInfo = {}


---@class UWidgetInputControlComp: UActorComponent
---@field WidgetWorldSettingsInputPriority number
---@field MouseCursorInfos ULuaMapHelper<UWidget, FWidgetMouseControlInfo>
---@field ShowCursorWidgets ULuaArrayHelper<UWidget>
---@field DefaultWhiteList ULuaSetHelper<string>
local UWidgetInputControlComp = {}

---@param CreatedWidget UUAEUserWidget
function UWidgetInputControlComp:OnUAEUserWidgetCreated(CreatedWidget) end

---@param DestructWidget UUAEUserWidget
function UWidgetInputControlComp:OnUAEUserWidgetDestruct(DestructWidget) end

function UWidgetInputControlComp:InitInputControl() end

---@param OldVisibility ESlateVisibility
---@param NewVisibility ESlateVisibility
---@param Widget UWidget
function UWidgetInputControlComp:HandleVisibilityChanged_InputBlock(OldVisibility, NewVisibility, Widget) end

---@param OldVisibility ESlateVisibility
---@param NewVisibility ESlateVisibility
---@param Widget UWidget
function UWidgetInputControlComp:HandleVisibilityChanged_LockView(OldVisibility, NewVisibility, Widget) end

---@param OldVisibility ESlateVisibility
---@param NewVisibility ESlateVisibility
---@param Widget UWidget
function UWidgetInputControlComp:HandleVisibilityChanged_ShowMouseCursor(OldVisibility, NewVisibility, Widget) end

---@param Widget UWidget
---@param OutControlInfo FInputControlInfo
---@return boolean
function UWidgetInputControlComp:GetControlInfo(Widget, OutControlInfo) end

---@param BindWidget UUAEUserWidget
function UWidgetInputControlComp:BindInputBlock(BindWidget) end

---@param UnbindWidget UUAEUserWidget
function UWidgetInputControlComp:UnbindInputBlock(UnbindWidget) end

---@param BindWidget UUAEUserWidget
function UWidgetInputControlComp:BindInput(BindWidget) end

---@param UnbindWidget UUAEUserWidget
function UWidgetInputControlComp:UnbindInput(UnbindWidget) end

---@param BindWidget UUAEUserWidget
function UWidgetInputControlComp:BindLockView(BindWidget) end

---@param UnbindWidget UUAEUserWidget
function UWidgetInputControlComp:UnbindLockView(UnbindWidget) end

---@param BindWidget UUAEUserWidget
function UWidgetInputControlComp:BindShowMouseCursor(BindWidget) end

---@param UnbindWidget UUAEUserWidget
function UWidgetInputControlComp:UnbindShowMouseCursor(UnbindWidget) end

function UWidgetInputControlComp:PrintWidgetInputControlInfo() end

function UWidgetInputControlComp:DelaySetIsBlockingInput() end

function UWidgetInputControlComp:DelayHideMouseCursor() end
