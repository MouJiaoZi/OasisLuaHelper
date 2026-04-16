---@meta

---@class FFoliageActorPostLoadDel : ULuaSingleDelegate
FFoliageActorPostLoadDel = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AInstancedFoliageActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFoliageActorPostLoadDel:Bind(Callback, Obj) end

---执行委托
---@param Param1 AInstancedFoliageActor
function FFoliageActorPostLoadDel:Execute(Param1) end


---@class AInstancedFoliageActor: AActor
local AInstancedFoliageActor = {}
