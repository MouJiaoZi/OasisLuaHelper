---@meta

---@class FLimitationTask
---@field ExtraTag string
---@field Priority number
---@field LimitObject UObject
FLimitationTask = {}


---@class FTypePriorityLimitActorDetail
---@field TargetActor AActor
---@field OwnerKey string
---@field Order number
---@field TimeStamp number
---@field bHasProcessed boolean
FTypePriorityLimitActorDetail = {}


---@class FTypePriorityLimitTypeActorUnion
---@field ActorClassName string
---@field CounterActorList ULuaArrayHelper<FTypePriorityLimitActorDetail>
FTypePriorityLimitTypeActorUnion = {}


---@class FClientLimitationSetting
---@field CurrentActiveCount number
---@field AddPriority number
---@field LimitCount number
---@field EffectTags FGameplayTagContainer
FClientLimitationSetting = {}


---@class FClientLimitationSettingMap
---@field CurrentActiveCount number
---@field DefaultLimitCount number
---@field LimitSettingMap ULuaMapHelper<string, FClientLimitationSetting>
FClientLimitationSettingMap = {}


---@class FLimitTaskQueue
FLimitTaskQueue = {}


---@class FLimitActiveList
---@field ActiveTasks ULuaArrayHelper<FLimitationTask>
FLimitActiveList = {}


---@class FActorOutLimitDelegateNew : ULuaMulticastDelegate
FActorOutLimitDelegateNew = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TargetActor: AActor, bIsDestroy: boolean, bReactivated: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorOutLimitDelegateNew:Add(Callback, Obj) end

---触发 Lua 广播
---@param TargetActor AActor
---@param bIsDestroy boolean
---@param bReactivated boolean
function FActorOutLimitDelegateNew:Broadcast(TargetActor, bIsDestroy, bReactivated) end


---@class FActorLimitRegisterDelegateNew : ULuaMulticastDelegate
FActorLimitRegisterDelegateNew = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TargetActor: AActor, TargetKeyName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorLimitRegisterDelegateNew:Add(Callback, Obj) end

---触发 Lua 广播
---@param TargetActor AActor
---@param TargetKeyName string
function FActorLimitRegisterDelegateNew:Broadcast(TargetActor, TargetKeyName) end


---@class UTestClientLimitObject: UObject, ILimitationInterface
---@field Priority number
---@field IsRendering boolean
---@field EffectTags FGameplayTagContainer
---@field ActiveState boolean
local UTestClientLimitObject = {}


---@class UClientLimitationComponent: UActorComponent
---@field DefaultQueueName string
---@field ClientInteractLimitIndex number
---@field DefaultClientInteractLimitCount number
---@field RenderCheckRate number
---@field DistPriorityFactor number
---@field DeviceClientInteractLimitCount ULuaArrayHelper<FClientLimitationSettingMap>
---@field IgnoreClassList ULuaArrayHelper<string>
---@field LimitObjectPool ULuaArrayHelper<UObject>
---@field NamedActiveTaskList ULuaMapHelper<string, FLimitActiveList>
---@field TestObjects ULuaArrayHelper<UTestClientLimitObject>
---@field PendingTaskQueue FLimitTaskQueue
---@field FrameEliminateTasks ULuaArrayHelper<FLimitationTask>
---@field NamedPendingTaskNum ULuaMapHelper<string, number>
---@field bEnableOpt boolean
---@field EffectLimitNum number
---@field ActorLimitNum number
---@field bEnableReactivation boolean
---@field bUseDiffTypeStat boolean
---@field CounterLimitActorList ULuaArrayHelper<FTypePriorityLimitActorDetail>
---@field TypeCounterActorSet ULuaArrayHelper<FTypePriorityLimitTypeActorUnion>
---@field OnActorOutLimitDelegate FActorOutLimitDelegateNew
---@field OnActorLimitRegisterDelegate FActorLimitRegisterDelegateNew
local UClientLimitationComponent = {}

---@param EffectObject UObject
---@param Enable boolean
function UClientLimitationComponent:RegisterApplyEffect(EffectObject, Enable) end

---@param EffectObject UPersistEffectBase
function UClientLimitationComponent:HandlePersistEffect(EffectObject) end

---@param EffectObject UObject
function UClientLimitationComponent:HandleInterfaceEffect(EffectObject) end

---@return number
function UClientLimitationComponent:GetCurMaxLimitCount() end

---@param Name string
---@return number
function UClientLimitationComponent:GetLimitCount(Name) end

---@param Name string
---@return number
function UClientLimitationComponent:GetActiveCount(Name) end

---@param Task string
---@return boolean
function UClientLimitationComponent:CheckIsLimit(Task) end

---@return boolean
function UClientLimitationComponent:CheckHasLimit() end

---@param Task FLimitationTask
function UClientLimitationComponent:PendingPriorityQueueEnqueue(Task) end

---@return FLimitationTask
function UClientLimitationComponent:PendingPriorityQueueDequeue() end

---@param EffectObject UObject
function UClientLimitationComponent:AddTaskQueue(EffectObject) end

---@param Task FLimitationTask
---@param IsActive boolean
function UClientLimitationComponent:RecordActiveObject(Task, IsActive) end

---@param Task FLimitationTask
---@param Num number
function UClientLimitationComponent:RecordTaskQueueNum(Task, Num) end

function UClientLimitationComponent:UpdateCurrentActiveCount() end

---@param DeltaTime number
function UClientLimitationComponent:UpdateTask(DeltaTime) end

---@param DeltaTime number
function UClientLimitationComponent:CleanupActiveEffect(DeltaTime) end

function UClientLimitationComponent:CleanupInvalidEffect() end

---@param DeltaTime number
function UClientLimitationComponent:CalculatePriorityTaskQueue(DeltaTime) end

---@param Name string
function UClientLimitationComponent:CalculateSinglePriorityQueue(Name) end

---@param Task FLimitationTask
function UClientLimitationComponent:CalculateTaskPriority(Task) end

---@param Task FLimitationTask
---@return boolean
function UClientLimitationComponent:SwapLowPriorityActiveEffect(Task) end

function UClientLimitationComponent:InitializeTestObjectTask() end

function UClientLimitationComponent:UpdateTestObjectState() end

---@param DeltaTime number
function UClientLimitationComponent:VerifyTestLimitResult(DeltaTime) end

function UClientLimitationComponent:GetAllActiveList() end

---@param TargetActor AActor
---@param ActorOwnerKey string
function UClientLimitationComponent:RegisterActorForCounter(TargetActor, ActorOwnerKey) end

---@param TargetActor AActor
function UClientLimitationComponent:UnRegisterActorForCounter(TargetActor) end
