---@meta

---@class FOnCustomScrollBoxReleasedEvent : ULuaSingleDelegate
FOnCustomScrollBoxReleasedEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCustomScrollBoxReleasedEvent:Bind(Callback, Obj) end

---执行委托
function FOnCustomScrollBoxReleasedEvent:Execute() end


---@class FOnUserScrollEndedEvent : ULuaSingleDelegate
FOnUserScrollEndedEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUserScrollEndedEvent:Bind(Callback, Obj) end

---执行委托
function FOnUserScrollEndedEvent:Execute() end


---@class FOnDragListEvent : ULuaMulticastDelegate
FOnDragListEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Amount: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDragListEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Amount number
function FOnDragListEvent:Broadcast(Amount) end


---@class FBeforeApplyScrollOffset : ULuaSingleDelegate
FBeforeApplyScrollOffset = {}

---绑定回调函数
---@param Callback fun(Obj: any, Target: UCustomScrollBox, CurOffset: number, IsRightClickScroll: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBeforeApplyScrollOffset:Bind(Callback, Obj) end

---执行委托
---@param Target UCustomScrollBox
---@param CurOffset number
---@param IsRightClickScroll boolean
function FBeforeApplyScrollOffset:Execute(Target, CurOffset, IsRightClickScroll) end


---@class UCustomScrollBox: UPanelWidget
---@field WidgetStyle FScrollBoxStyle @The style
---@field WidgetBarStyle FScrollBarStyle @The bar style
---@field Orientation EOrientation @The orientation of the scrolling and stacking in the box.
---@field ScrollBarVisibility ESlateVisibility @Visibility
---@field ConsumeMouseWheel EConsumeMouseWheel @Enable to always consume mouse wheel event, even when scrolling is not possible
---@field bConsumeWheelOnlyWhenHovered boolean @当启用时，仅在鼠标悬停在该控件上时才消费滚轮事件；移出时不消费（将滚轮传递给父级/全局）
---@field ScrollbarThickness FVector2D
---@field AlwaysShowScrollbar boolean
---@field AllowOverscroll boolean @Disable to stop scrollbars from activating inertial overscrolling
---@field bHandleMouseWheelWhenConsumeModeIsAlways boolean @当启用且ConsumeMouseWheel为Always时消费掉鼠标滚轮操作
---@field NavigationDestination EDescendantScrollDestination
---@field NavigationScrollPadding number @The amount of padding to ensure exists between the item being navigated to, at the edge of the scrollbox.  Use this if you want to ensure there's a preview of the next item the user could scroll to.
---@field bAllowRightClickDragScrolling boolean @Option to disable right-click-drag scrolling
---@field OnUserScrolled FOnUserScrolledEvent @Called when the scroll has changed
---@field OnMoveOut FOnMoveOutEvent
---@field OnReleased FOnCustomScrollBoxReleasedEvent
---@field OnDragList FOnDragListEvent
---@field OnUserScrollEnded FOnUserScrollEndedEvent
---@field OnScrollToEndStop FOnUserScrollEndedEvent
---@field BeforeApplyScrollOffset FBeforeApplyScrollOffset
---@field ExtenScrollRatio number
local UCustomScrollBox = {}

---@param NewOrientation EOrientation
function UCustomScrollBox:SetOrientation(NewOrientation) end

---@param NewScrollBarVisibility ESlateVisibility
function UCustomScrollBox:SetScrollBarVisibility(NewScrollBarVisibility) end

---@param NewScrollbarThickness FVector2D
function UCustomScrollBox:SetScrollbarThickness(NewScrollbarThickness) end

---@param NewAlwaysShowScrollbar boolean
function UCustomScrollBox:SetAlwaysShowScrollbar(NewAlwaysShowScrollbar) end

---@param NewAllowOverscroll boolean
function UCustomScrollBox:SetAllowOverscroll(NewAllowOverscroll) end

---@param Content UWidget
---@param index number
function UCustomScrollBox:SwitchChildToIndex(Content, index) end

---@param NewConsumeMouseWheel EConsumeMouseWheel
function UCustomScrollBox:SetConsumeMouseWheel(NewConsumeMouseWheel) end

---Updates the scroll offset of the scrollbox.
---@param NewScrollOffset number
function UCustomScrollBox:SetScrollOffset(NewScrollOffset) end

---Gets the scroll offset of the scrollbox in Slate Units.
---@return number
function UCustomScrollBox:GetScrollOffset() end

---@return number
function UCustomScrollBox:GetMaxScrollOffset() end

---Scrolls the ScrollBox to the top instantly
function UCustomScrollBox:ScrollToStart() end

---Scrolls the ScrollBox to the bottom instantly during the next layout pass.
function UCustomScrollBox:ScrollToEnd() end

function UCustomScrollBox:ScrollStop() end

---Scrolls the ScrollBox to the widget during the next layout pass.
---@param WidgetToFind UWidget
---@param AnimateScroll boolean
---@param ScrollDesintion EDescendantScrollDestination
function UCustomScrollBox:ScrollWidgetIntoView(WidgetToFind, AnimateScroll, ScrollDesintion) end

---@param WidgetToFind UWidget
---@param AnimateScroll boolean
---@param ScrollDesintion EDescendantScrollDestination
function UCustomScrollBox:ScrollWidgetIntoView2(WidgetToFind, AnimateScroll, ScrollDesintion) end

---滚动到指定控件（支持嵌套，修正了锚点/对齐方式导致坐标计算错误的问题）
---@param WidgetToFind UWidget
---@param AnimateScroll boolean
---@param ScrollDesintion EDescendantScrollDestination
function UCustomScrollBox:ScrollWidgetIntoView3(WidgetToFind, AnimateScroll, ScrollDesintion) end

---@return number
function UCustomScrollBox:GetRealScrollOffset() end

---@param bAnimate boolean
function UCustomScrollBox:SetScrollAnimate(bAnimate) end

function UCustomScrollBox:ManuUnHoverScrollBar() end
