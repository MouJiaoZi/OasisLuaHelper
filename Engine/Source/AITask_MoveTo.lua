---@meta

---@class FMoveTaskCompletedSignature : ULuaMulticastDelegate
FMoveTaskCompletedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Result: EPathFollowingResult, AIController: AAIController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMoveTaskCompletedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Result EPathFollowingResult
---@param AIController AAIController
function FMoveTaskCompletedSignature:Broadcast(Result, AIController) end


---@class UAITask_MoveTo: UAITask
---@field OnRequestFailed FGenericGameplayTaskDelegate
---@field OnMoveFinished FMoveTaskCompletedSignature
---@field MoveRequest FAIMoveRequest @parameters of move request
local UAITask_MoveTo = {}
