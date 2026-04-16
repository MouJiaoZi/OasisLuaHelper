---@meta

---@class FObjectCountOverThreshold : ULuaSingleDelegate
FObjectCountOverThreshold = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FObjectCountOverThreshold:Bind(Callback, Obj) end

---执行委托
function FObjectCountOverThreshold:Execute() end


---@class UObjectCountWatcherComponent: UActorComponent
local UObjectCountWatcherComponent = {}

---@param Category string
---@param NewObject UObject
---@return number
function UObjectCountWatcherComponent:AddObject(Category, NewObject) end

---@param Category string
---@param Object UObject
---@return number
function UObjectCountWatcherComponent:RemoveObject(Category, Object) end

---@param Category string
---@return number
function UObjectCountWatcherComponent:GetObjectNum(Category) end

---@param WorldContextObject UObject
---@param Category string
function UObjectCountWatcherComponent:GetObjectsByCategory(WorldContextObject, Category) end
