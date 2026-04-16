---@meta

---@class EGameplayTaskRunResult
---@field Error number @When tried running a null-task
---@field Failed number
---@field Success_Paused number @Successfully registered for running, but currently paused due to higher priority tasks running
---@field Success_Active number @Successfully activated
---@field Success_Finished number @Successfully activated, but finished instantly
EGameplayTaskRunResult = {}


---@class FOnClaimedResourcesChangeSignature : ULuaMulticastDelegate
FOnClaimedResourcesChangeSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewlyClaimed: FGameplayResourceSet, FreshlyReleased: FGameplayResourceSet) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClaimedResourcesChangeSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewlyClaimed FGameplayResourceSet
---@param FreshlyReleased FGameplayResourceSet
function FOnClaimedResourcesChangeSignature:Broadcast(NewlyClaimed, FreshlyReleased) end


---The core ActorComponent for interfacing with the GameplayAbilities System
---@class UGameplayTasksComponent: UActorComponent, IGameplayTaskOwnerInterface
---@field SimulatedTasks ULuaArrayHelper<UGameplayTask> @Tasks that run on simulated proxies
---@field AutonomousTasks ULuaArrayHelper<UGameplayTask>
---@field TaskPriorityQueue ULuaArrayHelper<UGameplayTask>
---@field TickingTasks ULuaArrayHelper<UGameplayTask> @Array of currently active UGameplayTask that require ticking
---@field KnownTasks ULuaArrayHelper<UGameplayTask> @All known tasks (processed by this component) referenced for GC
---@field OnClaimedResourcesChange FOnClaimedResourcesChangeSignature
local UGameplayTasksComponent = {}

function UGameplayTasksComponent:OnRep_SimulatedTasks() end

function UGameplayTasksComponent:OnRep_AutonomousTasks() end

---@param TaskOwner IGameplayTaskOwnerInterface
---@param Task UGameplayTask
---@param Priority number
---@param AdditionalRequiredResources ULuaArrayHelper<UGameplayTaskResource>
---@param AdditionalClaimedResources ULuaArrayHelper<UGameplayTaskResource>
---@return EGameplayTaskRunResult
function UGameplayTasksComponent:K2_RunGameplayTask(TaskOwner, Task, Priority, AdditionalRequiredResources, AdditionalClaimedResources) end
