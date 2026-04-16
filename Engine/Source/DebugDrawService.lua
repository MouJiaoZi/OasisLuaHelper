---@meta

---@class FDebugDrawDelegate : ULuaSingleDelegate
FDebugDrawDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UCanvas, Param2: APlayerController) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDebugDrawDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 UCanvas
---@param Param2 APlayerController
function FDebugDrawDelegate:Execute(Param1, Param2) end


---@class UDebugDrawService: UBlueprintFunctionLibrary
local UDebugDrawService = {}
