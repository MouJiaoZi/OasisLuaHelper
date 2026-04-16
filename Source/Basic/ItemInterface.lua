---@meta

---@class FItemArray
---@field Items ULuaArrayHelper<IItemInterface>
FItemArray = {}


---@class FOnItemDirtyDelegate : ULuaSingleDelegate
FOnItemDirtyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemDirtyDelegate:Bind(Callback, Obj) end

---执行委托
function FOnItemDirtyDelegate:Execute() end
