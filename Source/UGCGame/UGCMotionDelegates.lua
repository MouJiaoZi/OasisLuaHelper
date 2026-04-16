---@meta

---@class FMotionDelegate : ULuaMulticastDelegate
FMotionDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MotionActor: AActor, ConfigIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMotionDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param MotionActor AActor
---@param ConfigIndex number
function FMotionDelegate:Broadcast(MotionActor, ConfigIndex) end


---@class UUGCMotionDelegates: UObject
---@field OnStartMotionDelegate FMotionDelegate
---@field OnPauseMotionDelegate FMotionDelegate
---@field OnResetMotionDelegate FMotionDelegate
local UUGCMotionDelegates = {}
