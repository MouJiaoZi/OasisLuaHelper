---@meta

---@class FObjectPoolConfig
---@field ObjectClassName string
---@field ObjectClassFullPath string
---@field MaxObjectNum number
---@field MinObjectNum number
---@field CleanupTimeout number
---@field AllocateObjectGapTimeOverride number
FObjectPoolConfig = {}


---@class FOnRecycledDelegate : ULuaMulticastDelegate
FOnRecycledDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AActor, Param2: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRecycledDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AActor
---@param Param2 boolean
function FOnRecycledDelegate:Broadcast(Param1, Param2) end


---@class FOnRespawnedDelegate : ULuaMulticastDelegate
FOnRespawnedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRespawnedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FOnRespawnedDelegate:Broadcast(Param1) end


---@class UObjectPoolUtility: UBlueprintFunctionLibrary
local UObjectPoolUtility = {}

---@return boolean
function UObjectPoolUtility:IsAllocatingObject() end
