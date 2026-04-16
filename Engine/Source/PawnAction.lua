---@meta

---@class EPawnSubActionTriggeringPolicy
---@field CopyBeforeTriggering number
---@field ReuseInstances number
EPawnSubActionTriggeringPolicy = {}


---@class EPawnActionFailHandling
---@field RequireSuccess number
---@field IgnoreFailure number
EPawnActionFailHandling = {}


---@class FPawnActionEventDelegate : ULuaSingleDelegate
FPawnActionEventDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UPawnAction, Param2: EPawnActionEventType) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPawnActionEventDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 UPawnAction
---@param Param2 EPawnActionEventType
function FPawnActionEventDelegate:Execute(Param1, Param2) end


---Things to remember: * Actions are created paused
---@class UPawnAction: UObject
---@field bAllowNewSameClassInstance number @if this is FALSE and we're trying to push a new instance of a given class, but the top of the stack is already an instance of that class ignore the attempted push
---@field bReplaceActiveSameClassInstance number @if this is TRUE, when we try to push a new instance of an action who has the same class as the action on the top of the stack, pop the one on the stack, and push the new one NOTE: This trumps bAllowNewClassInstance (e.g. if this is true and bAllowNewClassInstance is false the active instance will still be replaced)
---@field bShouldPauseMovement number @this is a temporary solution to allow having movement action running in background while there's another action on top doing its thing
---@field bAlwaysNotifyOnFinished number @if set, action will call OnFinished notify even when ending as FailedToStart
local UPawnAction = {}

function UPawnAction:GetActionPriority() end

---@param WithResult EPawnActionResult
function UPawnAction:Finish(WithResult) end
