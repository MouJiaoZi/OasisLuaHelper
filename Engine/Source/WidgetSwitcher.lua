---@meta

---@class FWidgetSwitcherIndexChanged : ULuaMulticastDelegate
FWidgetSwitcherIndexChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WidgetIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWidgetSwitcherIndexChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param WidgetIndex number
function FWidgetSwitcherIndexChanged:Broadcast(WidgetIndex) end


---A widget switcher is like a tab control, but without tabs. At most one widget is visible at time.
---@class UWidgetSwitcher: UPanelWidget
---@field ActiveWidgetIndex number @The slot index to display
---@field bHideInactiveWidgets boolean
---@field ActiveWidgetIndexDelegate FGetInt32
---@field OnActiveIndexChanged FWidgetSwitcherIndexChanged
---@field OnActiveIndexChangeDelegate FActiveIndexChangeDelegate
local UWidgetSwitcher = {}

---Gets the number of widgets that this switcher manages.
---@return number
function UWidgetSwitcher:GetNumWidgets() end

---Gets the slot index of the currently active widget
---@return number
function UWidgetSwitcher:GetActiveWidgetIndex() end

---@return number
function UWidgetSwitcher:GetLocalActiveWidgetIndex() end

---Activates the widget at the specified index.
---@param Index number
function UWidgetSwitcher:SetActiveWidgetIndex(Index) end

---Activates the widget and makes it the active index.
---@param Widget UWidget
function UWidgetSwitcher:SetActiveWidget(Widget) end
