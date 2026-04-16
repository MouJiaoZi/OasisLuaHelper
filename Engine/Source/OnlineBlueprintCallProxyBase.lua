---@meta

---@class FEmptyOnlineDelegate : ULuaSingleDelegate
FEmptyOnlineDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEmptyOnlineDelegate:Bind(Callback, Obj) end

---执行委托
function FEmptyOnlineDelegate:Execute() end


---@class UOnlineBlueprintCallProxyBase: UObject
local UOnlineBlueprintCallProxyBase = {}

function UOnlineBlueprintCallProxyBase:Activate() end
