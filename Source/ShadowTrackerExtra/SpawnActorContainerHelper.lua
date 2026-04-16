---@meta

---@class FContainActorEndPlayDelegate : ULuaSingleDelegate
FContainActorEndPlayDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UClass) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FContainActorEndPlayDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 UClass
function FContainActorEndPlayDelegate:Execute(Param1) end


---@class USpawnActorContainerHelper: UActorComponent
local USpawnActorContainerHelper = {}
