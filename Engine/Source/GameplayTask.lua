---@meta

---@class EGameplayTaskState
---@field Uninitialized number
---@field AwaitingActivation number
---@field Paused number
---@field Active number
---@field Finished number
EGameplayTaskState = {}


---@class ETaskResourceOverlapPolicy
---@field StartOnTop number @Pause overlapping same-priority tasks.
---@field StartAtEnd number @Wait for other same-priority tasks to finish.
ETaskResourceOverlapPolicy = {}


---@class FGameplayResourceSet
FGameplayResourceSet = {}


---@class UGameplayTask: UObject, IGameplayTaskOwnerInterface
---@field InstanceName string @This name allows us to find the task later so that we can end it.
---@field ResourceOverlapPolicy ETaskResourceOverlapPolicy
local UGameplayTask = {}

---Called to trigger the actual task once the delegates have been set up
function UGameplayTask:ReadyForActivation() end

---Called explicitly to end the task (usually by the task itself). Calls OnDestroy. If you don't the task will still be in an "active" state while the event receivers may assume it's already "finished"
function UGameplayTask:EndTask() end
