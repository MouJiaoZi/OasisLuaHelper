---@meta

---说明：
--- - 创建实例: 使用 PromiseFuture.New() 创建新的 PromiseFuture 实例。
--- - 设置回调: 使用 Then 和 Else 方法设置成功和失败的回调函数。
--- - 执行逻辑: 使用 Set 方法定义 PromiseFuture 的执行逻辑，可以在其中使用 Yield 暂停执行。
--- - 前置条件: 可以将其他 PromiseFuture 实例作为前置条件，确保在执行当前 PromiseFuture 之前，所有前置条件都已完成。
--- - 自动恢复: 可以设置自动恢复功能，监控对象的状态并在需要时自动恢复执行。
---@class PromiseFuture
local PromiseFuture = {}

---手动恢复 PromiseFuture 的执行
---@param ... any @可选的参数，将传递给恢复的协程
---@return boolean @当 IsPrerequisitesEstablished() && IsEstablished() 时返回 true，否则返回 false
function PromiseFuture:Resume(...) end

---检查所有先决条件是否已建立
---@return boolean @如果所有先决条件都已建立则返回 true，否则返回 false
function PromiseFuture:IsPrerequisitesEstablished() end

---检查任意先决条件是否已被取消
---@return boolean @如果任意先决条件已被取消则返回 true，否则返回 false
function PromiseFuture:IsAnyPrerequisiteCancellationRequested() end

---检查当前 PromiseFuture 是否已建立
---@return boolean @如果已建立则返回 true，否则返回 false
function PromiseFuture:IsEstablished() end

---等待所有前置条件变为已建立状态
---如果前置条件未完成，则会自动 Yield
---只能在 Set 回调函数中使用
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:WaitForPrerequisites() end

---添加前置条件
---@param Prerequisite PromiseFuture @前置条件
---@param ... PromiseFuture @可选的前置条件
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:AddPrerequisites(Prerequisite, ...) end

---检查当前 PromiseFuture 是否已被取消
---@return boolean @如果已被取消则返回 true，否则返回 false
function PromiseFuture:IsCancellationRequested() end

---取消当前 PromiseFuture 的执行
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:Cancel() end

---取消当前 PromiseFuture 及其所有前置条件的执行
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:CancelAll() end

---获取 Set 回调函数的返回值
---只能在 Set、Then 回调函数中使用
---@return any @返回 Set 回调函数的所有返回值
function PromiseFuture:Get() end

---设置成功回调函数
---@param Callable function @回调函数
---@param ... any @可选的参数，将传递给回调函数
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:Then(Callable, ...) end

---设置失败回调函数
---@param Callable function @回调函数
---@param ... any @可选的参数，将传递给回调函数
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:Else(Callable, ...) end

---设置执行逻辑
---@param Setter function @回调函数
---@param SetterValue any
---@param ... any @其他可选参数
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:Set(Setter, SetterValue, ...) end

---暂停当前 PromiseFuture 的执行
---只能在 Set 回调函数中使用
---@param ... any @可选的参数，将传递给 yield(...) 方法
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:Yield(...) end

---设置自动恢复功能
---@param WatchedObject UObject @监控的对象，如果对象被销毁则停止自动恢复
---@param Interval number @自动恢复的间隔，单位为秒
---@param Timeout number @自动恢复的超时时间，单位为秒
---@return PromiseFuture @当前 PromiseFuture 实例，以支持链式调用
function PromiseFuture:AutoResume(WatchedObject, Interval, Timeout) end