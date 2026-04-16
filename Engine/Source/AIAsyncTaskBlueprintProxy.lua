---@meta

---@class FOAISimpleDelegate : ULuaMulticastDelegate
FOAISimpleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOAISimpleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
function FOAISimpleDelegate:Broadcast() end


---@class UAIAsyncTaskBlueprintProxy: UObject
---@field OnSuccess FOAISimpleDelegate
---@field OnFail FOAISimpleDelegate
local UAIAsyncTaskBlueprintProxy = {}

---@param RequestID FAIRequestID
---@param MovementResult EPathFollowingResult
function UAIAsyncTaskBlueprintProxy:OnMoveCompleted(RequestID, MovementResult) end
