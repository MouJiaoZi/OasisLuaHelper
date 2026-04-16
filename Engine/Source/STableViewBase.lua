---@meta

---If the list panel is arranging items horizontally, this enum dictates how the items should be aligned (basically, where any extra space is placed)
---@class EListItemAlignment
---@field EvenlyDistributed number @Items are distributed evenly along the row (any extra space is added as padding between the items)
---@field EvenlySize number @Items are distributed evenly along the row (any extra space is used to scale up the size of the item proportionally.)
---@field EvenlyWide number @Items are distributed evenly along the row, any extra space is used to scale up width of the items proportionally.)
---@field LeftAligned number @Items are left aligned on the row (any extra space is added to the right of the items)
---@field RightAligned number @Items are right aligned on the row (any extra space is added to the left of the items)
---@field CenterAligned number @Items are center aligned on the row (any extra space is halved and added to the left of the items)
---@field Fill number @Items are evenly horizontally stretched to distribute any extra space
EListItemAlignment = {}


---@class FOnTableViewScrolled : ULuaSingleDelegate
FOnTableViewScrolled = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTableViewScrolled:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FOnTableViewScrolled:Execute(Param1) end
