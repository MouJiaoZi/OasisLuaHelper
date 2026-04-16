---@meta

---@class FDynamicItemListPaintDelegate : ULuaSingleDelegate
FDynamicItemListPaintDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDynamicItemListPaintDelegate:Bind(Callback, Obj) end

---执行委托
function FDynamicItemListPaintDelegate:Execute() end


---@class UDynamicItemListWidget: UItemListWidget, IProxyWidgetContainerInterface
---@field OnDynamicItemListPaintDelegate FDynamicItemListPaintDelegate
---@field DynamicItemWidget UUserWidget
---@field ItemSize FVector2D
---@field BlankItemWidget UUserWidget
---@field FillBlankItemCount number
---@field PreviewCount number
---@field EnterViewWidgetList ULuaSetHelper<UProxyWidget>
---@field CachedViewWidgetList ULuaSetHelper<UProxyWidget>
local UDynamicItemListWidget = {}

---@return number
function UDynamicItemListWidget:GetItemCount() end

function UDynamicItemListWidget:RefreshList() end

---@param NewScrollOffset number
function UDynamicItemListWidget:ScrollToOffset(NewScrollOffset) end

---@return number
function UDynamicItemListWidget:GetScrollMaxOffset() end

---@return number
function UDynamicItemListWidget:GetCurScrollOffset() end

---@param offset number
function UDynamicItemListWidget:RefreshScrollList(offset) end
