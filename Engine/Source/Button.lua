---@meta

---@class EListenEscMethod
---@field None number @命名识别
---@field Listen number @监听
---@field NotListen number @禁止监听
EListenEscMethod = {}


---@class EButtonListenActionEvent
---@field Clicked number @Only Clicked
---@field PressedReleased number @Pressed Released
---@field ClickedPressedReleased number @Clicked Pressed Released
EButtonListenActionEvent = {}


---@class FButtonListenAction
---@field ActionName string
---@field EventType EButtonListenActionEvent
FButtonListenAction = {}


---@class FEscRespondSetting
---@field bIsRespondEsc boolean
---@field HandlerFunctionName string
FEscRespondSetting = {}


---@class FOnButtonClickedEvent : ULuaSingleDelegate
FOnButtonClickedEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnButtonClickedEvent:Bind(Callback, Obj) end

---执行委托
function FOnButtonClickedEvent:Execute() end


---@class FOnButtonPressedEvent : ULuaSingleDelegate
FOnButtonPressedEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnButtonPressedEvent:Bind(Callback, Obj) end

---执行委托
function FOnButtonPressedEvent:Execute() end


---@class FOnButtonReleasedEvent : ULuaSingleDelegate
FOnButtonReleasedEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnButtonReleasedEvent:Bind(Callback, Obj) end

---执行委托
function FOnButtonReleasedEvent:Execute() end


---@class FOnButtonHoverEvent : ULuaSingleDelegate
FOnButtonHoverEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnButtonHoverEvent:Bind(Callback, Obj) end

---执行委托
function FOnButtonHoverEvent:Execute() end


---@class FOnButtonPressedParamEvent : ULuaMulticastDelegate
FOnButtonPressedParamEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MyGeometry: FGeometry, MouseEvent: FPointerEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnButtonPressedParamEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function FOnButtonPressedParamEvent:Broadcast(MyGeometry, MouseEvent) end


---@class FOnButtonRecordReplayEvent : ULuaMulticastDelegate
FOnButtonRecordReplayEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnButtonRecordReplayEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventIndex number
function FOnButtonRecordReplayEvent:Broadcast(EventIndex) end


---@class FOnButtonClickedGlobalEvent : ULuaSingleDelegate
FOnButtonClickedGlobalEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any, InButton: UButton) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnButtonClickedGlobalEvent:Bind(Callback, Obj) end

---执行委托
---@param InButton UButton
function FOnButtonClickedGlobalEvent:Execute(InButton) end


---@class UWST_ButtonListenAction: UWigetSkinType
---@field ListenActions ULuaArrayHelper<FButtonListenAction>
local UWST_ButtonListenAction = {}


---The button is a click-able primitive widget to enable basic interaction, you can place any other widget inside a button to make a more complex and interesting click-able element in your UI. * Single Child * Clickable
---@class UButton: UContentWidget, IWidgetSkinInterface
---@field WidgetStyle FButtonStyle @The button style used at runtime
---@field ColorAndOpacity FLinearColor @The color multiplier for the button content
---@field BackgroundColor FLinearColor @The color multiplier for the button background
---@field ClickMethod EButtonClickMethod @The type of mouse action required by the user to trigger the buttons 'Click'
---@field TouchMethod EButtonTouchMethod @The type of touch action required by the user to trigger the buttons 'Click'
---@field ListenEscMethod EListenEscMethod @通过命名识别关闭按钮，识别忽略大小写下划线，推荐命名(Button_Close,NewButton_Close...)
---@field ListenActions ULuaArrayHelper<FButtonListenAction> @通过监听Action，来统一模拟按键点击，扩展Esc模拟点击功能
---@field IsTipsBgBtn boolean @是否为Tips背景按钮
---@field IsFocusable boolean @Sometimes a button should only be mouse-clickable and never keyboard focusable.
---@field IsPassMouseEvent boolean
---@field IsImgAlphaBtn boolean
---@field bUseCustomSettings boolean
---@field CustomHitAreaAlpha number
---@field bIsShowHover boolean
---@field OnClicked FOnButtonClickedEvent @Called when the button is clicked
---@field OnPressed FOnButtonPressedEvent @Called when the button is pressed
---@field OnReleased FOnButtonReleasedEvent @Called when the button is released
---@field OnHovered FOnButtonHoverEvent
---@field OnUnhovered FOnButtonHoverEvent
---@field OnPressedParam FOnButtonPressedParamEvent
---@field OnReleasedParam FOnButtonPressedParamEvent
---@field OnReplayRecordNotify FOnButtonRecordReplayEvent
---@field OnMouseButtonDownEvent FOnPointerEvent
---@field OnMouseButtonUpEvent FOnPointerEvent
---@field OnMouseMoveEvent FOnPointerEvent
---@field InputActionBindings FButtonInputActionBindingsStruct
---@field EscRespondSetting FEscRespondSetting
---@field IsThisFrameClicked boolean
local UButton = {}

---Sets the color multiplier for the button background
---@param InStyle FButtonStyle
function UButton:SetStyle(InStyle) end

---Sets the color multiplier for the button content
---@param InColorAndOpacity FLinearColor
function UButton:SetColorAndOpacity(InColorAndOpacity) end

---Sets the color multiplier for the button background
---@param InBackgroundColor FLinearColor
function UButton:SetBackgroundColor(InBackgroundColor) end

---Returns true if the user is actively pressing the button.  Do not use this for detecting 'Clicks', use the OnClicked event instead.
---@return boolean
function UButton:IsPressed() end

function UButton:Release() end

---@param InClickMethod EButtonClickMethod
function UButton:SetClickMethod(InClickMethod) end

---@param InTouchMethod EButtonTouchMethod
function UButton:SetTouchMethod(InTouchMethod) end

---@param InShowHover boolean
function UButton:SetShowHover(InShowHover) end

---@param InActionName string
---@param InType EButtonListenActionEvent
function UButton:AddListenAction(InActionName, InType) end

---@param InActionName string
function UButton:RemoveListenAction(InActionName) end

function UButton:ClearListenActions() end

---return CacheLayerId only windows
---@return number
function UButton:GetCacheLayerId() end

function UButton:RespondEscape() end

---@param OutButtons ULuaArrayHelper<UButton>
---@param InAction string
---@return boolean
function UButton:GetButtonsFromAction(OutButtons, InAction) end

function UButton:ClearInvalidForListenActions() end

function UButton:GetButtonsFromTipsBg() end

---@param InEvent FOnButtonClickedGlobalEvent
function UButton:SetButtonClickedGlobalEvent(InEvent) end

function UButton:ClearButtonClickedGlobalEvent() end

---@param InFocusable boolean
function UButton:SetIsFocusable(InFocusable) end
