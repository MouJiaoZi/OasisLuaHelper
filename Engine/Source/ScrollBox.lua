---@meta

---@class FOnUserScrolledEvent : ULuaMulticastDelegate
FOnUserScrolledEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentOffset: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUserScrolledEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentOffset number
function FOnUserScrolledEvent:Broadcast(CurrentOffset) end


---@class FOnMoveOutEvent : ULuaMulticastDelegate
FOnMoveOutEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bMoveOut: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMoveOutEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param bMoveOut boolean
function FOnMoveOutEvent:Broadcast(bMoveOut) end


---An arbitrary scrollable collection of widgets.  Great for presenting 10-100 widgets in a list.  Doesn't support virtualization.
---@class UScrollBox: UPanelWidget
---@field WidgetStyle FScrollBoxStyle @The style
---@field WidgetBarStyle FScrollBarStyle @The bar style
---@field OverscrollLooseness number @Overscroll Looseness
---@field Orientation EOrientation @The orientation of the scrolling and stacking in the box.
---@field ScrollBarVisibility ESlateVisibility @Visibility
---@field ConsumeMouseWheel EConsumeMouseWheel @Enable to always consume mouse wheel event, even when scrolling is not possible
---@field ScrollbarThickness FVector2D
---@field AlwaysShowScrollbar boolean
---@field AllowOverscroll boolean @Disable to stop scrollbars from activating inertial overscrolling
---@field NavigationDestination EDescendantScrollDestination
---@field NavigationScrollPadding number @The amount of padding to ensure exists between the item being navigated to, at the edge of the scrollbox.  Use this if you want to ensure there's a preview of the next item the user could scroll to.
---@field bAllowRightClickDragScrolling boolean @Option to disable right-click-drag scrolling
---@field bScrollEnabled boolean @启用滑动
---@field bScrollDisableHandled boolean @启用滑动
---@field bPreciseScroll boolean @启用精准滑动
---@field bDisableDragListScroll boolean @依旧可以通过拖拽bar或者鼠标滚轮滑动, 仅PC版生效
---@field OnUserScrolled FOnUserScrolledEvent @Called when the scroll has changed
---@field OnUserScrolledUnused FOnUserScrolledEvent @Called when the scroll has changed,the value is mouse movement in another direction -zhenzhai
---@field OnTouchFinish FOnTouchFinishEvent @Called when the touch has end
local UScrollBox = {}

---@param NewOrientation EOrientation
function UScrollBox:SetOrientation(NewOrientation) end

---@param NewScrollBarVisibility ESlateVisibility
function UScrollBox:SetScrollBarVisibility(NewScrollBarVisibility) end

---@param NewScrollbarThickness FVector2D
function UScrollBox:SetScrollbarThickness(NewScrollbarThickness) end

---@param NewAlwaysShowScrollbar boolean
function UScrollBox:SetAlwaysShowScrollbar(NewAlwaysShowScrollbar) end

---@param NewAllowOverscroll boolean
function UScrollBox:SetAllowOverscroll(NewAllowOverscroll) end

---@return number
function UScrollBox:GetCacheOverscrollOffset() end

---@param v number
function UScrollBox:SetOverscrollLooseness(v) end

---@param InScrollEnabled boolean
function UScrollBox:SetScrollEnabled(InScrollEnabled) end

---@param InScrollDisableHandled boolean
function UScrollBox:SetScrollDisableHandled(InScrollDisableHandled) end

---@param InScrollPrecise boolean
function UScrollBox:SetScrollPrecise(InScrollPrecise) end

---@param InDragListScrollEnabled boolean
function UScrollBox:SetDragListScrollEnabled(InDragListScrollEnabled) end

---@return boolean
function UScrollBox:IsReachEnd() end

---@return boolean
function UScrollBox:IsLargerThanContentSize() end

---Updates the scroll offset of the scrollbox.
---@param NewScrollOffset number
function UScrollBox:SetScrollOffset(NewScrollOffset) end

---Gets the scroll offset of the scrollbox in Slate Units.
---@return number
function UScrollBox:GetScrollOffset() end

---Scrolls the ScrollBox to the top instantly
function UScrollBox:ScrollToStart() end

---Scrolls the ScrollBox to the bottom instantly during the next layout pass.
function UScrollBox:ScrollToEnd() end

function UScrollBox:StopScroll() end

---Scrolls the ScrollBox to the widget during the next layout pass.
---@param WidgetToFind UWidget
---@param AnimateScroll boolean
---@param ScrollDestination EDescendantScrollDestination
function UScrollBox:ScrollWidgetIntoView(WidgetToFind, AnimateScroll, ScrollDestination) end
