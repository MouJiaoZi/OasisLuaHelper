---@meta

---@class FPlayerMoveTaskCompletedSignature : ULuaMulticastDelegate
FPlayerMoveTaskCompletedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Result: EPathFollowingResult, Controller: AController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerMoveTaskCompletedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Result EPathFollowingResult
---@param Controller AController
function FPlayerMoveTaskCompletedSignature:Broadcast(Result, Controller) end


---@class UAITask_MoveTo_Player: UAITask_Player
---@field OnRequestFailed FGenericGameplayTaskDelegate
---@field OnMoveFinished FPlayerMoveTaskCompletedSignature
---@field MoveRequest FAIMoveRequest @parameters of move request
local UAITask_MoveTo_Player = {}
