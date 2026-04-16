---@meta

---@class FOnExpandableAreaExpansionChanged : ULuaMulticastDelegate
FOnExpandableAreaExpansionChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Area: UExpandableArea, bIsExpanded: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnExpandableAreaExpansionChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Area UExpandableArea
---@param bIsExpanded boolean
function FOnExpandableAreaExpansionChanged:Broadcast(Area, bIsExpanded) end


---@class UExpandableArea: UWidget, INamedSlotInterface
---@field Style FExpandableAreaStyle
---@field BorderBrush FSlateBrush
---@field BorderColor FSlateColor
---@field bIsExpanded boolean
---@field MaxHeight number @The maximum height of the area
---@field HeaderPadding FMargin
---@field AreaPadding FMargin
---@field OnExpansionChanged FOnExpandableAreaExpansionChanged @A bindable delegate for the IsChecked.
local UExpandableArea = {}

---@return boolean
function UExpandableArea:GetIsExpanded() end

---@param IsExpanded boolean
function UExpandableArea:SetIsExpanded(IsExpanded) end

---@param IsExpanded boolean
function UExpandableArea:SetIsExpanded_Animated(IsExpanded) end
