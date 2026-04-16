---@meta

---@class FLimitActorDetail
---@field TargetActor AActor
---@field OwnerKey string
---@field Order number
---@field TimeStamp number
---@field bHasProcessed boolean
FLimitActorDetail = {}


---@class FLimitTypeActorUnion
---@field ActorClassName string
---@field CounterActorList ULuaArrayHelper<FLimitActorDetail>
FLimitTypeActorUnion = {}


---@class FTaskDetailInfo
---@field TaskID number
---@field CurrentProcess number
---@field TotalProcess number
---@field WeekIndex number
FTaskDetailInfo = {}


---@class FEscapeTaskInfo
---@field TaskID number
---@field CurrentProcess number
---@field TaskState FExtendTaskState
---@field ExtInfo string
FEscapeTaskInfo = {}


---@class FEscapeTaskPickupItemInfo
---@field ItemID number
---@field TaskTypeList ULuaArrayHelper<number>
FEscapeTaskPickupItemInfo = {}


---@class FTaskRecord
---@field TaskDetailList ULuaArrayHelper<FTaskDetailInfo>
FTaskRecord = {}


---@class FTaskSimpleInfo
---@field WeekID number
---@field UnCompletedTaskNum number
FTaskSimpleInfo = {}


---@class FTaskExtraInfo
---@field TalkTime number
FTaskExtraInfo = {}


---@class FUnHandledTaskInfo
---@field TaskID number
---@field TaskType number
---@field Progress number
FUnHandledTaskInfo = {}


---@class FComprehensiveTaskInfo
---@field TaskID number
---@field CurrentProcess number
---@field TotalProcess number
---@field OwnerTaskID number
---@field PlayerKey number
FComprehensiveTaskInfo = {}


---@class FActorOutLimitDelegate : ULuaMulticastDelegate
FActorOutLimitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TargetActor: AActor, bIsDestroy: boolean, bReactivated: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorOutLimitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TargetActor AActor
---@param bIsDestroy boolean
---@param bReactivated boolean
function FActorOutLimitDelegate:Broadcast(TargetActor, bIsDestroy, bReactivated) end


---@class FActorLimitRegisterDelegate : ULuaMulticastDelegate
FActorLimitRegisterDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TargetActor: AActor, TargetKeyName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorLimitRegisterDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TargetActor AActor
---@param TargetKeyName string
function FActorLimitRegisterDelegate:Broadcast(TargetActor, TargetKeyName) end


---@class FOnReceiveWeekTasksDelegate : ULuaMulticastDelegate
FOnReceiveWeekTasksDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeekIndex: number, TaskDetailList: ULuaArrayHelper<FTaskDetailInfo>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceiveWeekTasksDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeekIndex number
---@param TaskDetailList ULuaArrayHelper<FTaskDetailInfo>
function FOnReceiveWeekTasksDelegate:Broadcast(WeekIndex, TaskDetailList) end


---@class FOnReceiveEscapeTasksDelegate : ULuaMulticastDelegate
FOnReceiveEscapeTasksDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TaskInfoList: ULuaArrayHelper<FEscapeTaskInfo>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceiveEscapeTasksDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TaskInfoList ULuaArrayHelper<FEscapeTaskInfo>
function FOnReceiveEscapeTasksDelegate:Broadcast(TaskInfoList) end


---@class FOnReceiveTaskSimpleInfosDelegate : ULuaMulticastDelegate
FOnReceiveTaskSimpleInfosDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SimpleInfos: ULuaArrayHelper<FTaskSimpleInfo>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceiveTaskSimpleInfosDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SimpleInfos ULuaArrayHelper<FTaskSimpleInfo>
function FOnReceiveTaskSimpleInfosDelegate:Broadcast(SimpleInfos) end


---@class FOnReceiveReelTaskInfosDelegate : ULuaMulticastDelegate
FOnReceiveReelTaskInfosDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TaskDetialInfos: ULuaArrayHelper<FComprehensiveTaskInfo>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceiveReelTaskInfosDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TaskDetialInfos ULuaArrayHelper<FComprehensiveTaskInfo>
function FOnReceiveReelTaskInfosDelegate:Broadcast(TaskDetialInfos) end


---@class FOnFinishedTaskParamsInit : ULuaMulticastDelegate
FOnFinishedTaskParamsInit = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFinishedTaskParamsInit:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC AActor
function FOnFinishedTaskParamsInit:Broadcast(PC) end


---玩家任务管理器，任务模板化，每个玩家持有的黑板不同而已，模板在GameMode上统一管理
---@class USeasonTaskListener: UUniversalTaskController
---@field EscapeReqTimeRecord number
---@field EscapeReqTimeLimit number
---@field EscapeSeasonReqTimeRecord number
---@field EscapeSeasonReqTimeLimit number
---@field EscapeTaskNeedPickupTipsItems ULuaSetHelper<number>
---@field EscapeTaskPickupItemInfoList ULuaArrayHelper<FEscapeTaskPickupItemInfo>
---@field TaskRecords ULuaMapHelper<number, FTaskRecord>
---@field TaskGlobalMap ULuaMapHelper<number, FTaskDetailInfo>
---@field OnReceiveWeakTaskData FOnReceiveWeekTasksDelegate
---@field OnReceiveEscapeTaskData FOnReceiveEscapeTasksDelegate
---@field OnReceiveEscapeSeasonTaskData FOnReceiveEscapeTasksDelegate
---@field OnReceiveTasksSimpleInfos FOnReceiveTaskSimpleInfosDelegate
---@field OnReceiveReelTasksInfos FOnReceiveReelTaskInfosDelegate
---@field OnFinishedTaskParamsInit FOnFinishedTaskParamsInit
---@field TaskReqFrequencyLimit number
---@field WeekDataReqTimeRecords ULuaMapHelper<number, number>
---@field SimpleInfoList ULuaArrayHelper<FTaskSimpleInfo>
---@field DetailInfoList ULuaArrayHelper<FTaskDetailInfo>
---@field ReqExtraInfo FTaskExtraInfo
---@field bComputeNonRealTimeTask boolean
---@field UnhandledTaskList ULuaArrayHelper<FUnHandledTaskInfo>
---@field bEnableOpt boolean
---@field EffectLimitNum number
---@field ActorLimitNum number
---@field bEnableReactivation boolean
---@field bUseDiffTypeStat boolean
---@field CounterLimitActorList ULuaArrayHelper<FLimitActorDetail>
---@field TypeCounterActorSet ULuaArrayHelper<FLimitTypeActorUnion>
---@field OnActorOutLimitDelegate FActorOutLimitDelegate
---@field OnActorLimitRegisterDelegate FActorLimitRegisterDelegate
---@field PersonalActorLimiteNum ULuaMapHelper<string, number>
local USeasonTaskListener = {}

function USeasonTaskListener:OnPlayerStartInitialized() end

---@param TaskID number
---@param TaskType number
---@param TargetProcess number
---@param TaskParam1 string
---@param TaskParam2 string
function USeasonTaskListener:HandlePreInitTaskData(TaskID, TaskType, TargetProcess, TaskParam1, TaskParam2) end

---@param TaskID number
---@param Process number
---@param ExtInfo string
function USeasonTaskListener:HandleInitTaskData(TaskID, Process, ExtInfo) end

---@param TaskID number
---@param CurrentCount number
---@param TotalCount number
function USeasonTaskListener:HandleInitCollectionData(TaskID, CurrentCount, TotalCount) end

---@param WeekIndex number
function USeasonTaskListener:RequestTasksByWeekIndex(WeekIndex) end

---@param TaskIdList ULuaArrayHelper<number>
function USeasonTaskListener:RequestTasksByID(TaskIdList) end

---@param WeekIndex number
---@param ExtraInfo FTaskExtraInfo
function USeasonTaskListener:C2S_RequestTasksPage(WeekIndex, ExtraInfo) end

---@param WeekIndex number
---@param TaskDetailList ULuaArrayHelper<FTaskDetailInfo>
function USeasonTaskListener:S2C_ResponseTasksPage(WeekIndex, TaskDetailList) end

function USeasonTaskListener:C2S_RequestTaskSimpleInfo() end

---@param TaskSimpleInfos ULuaArrayHelper<FTaskSimpleInfo>
function USeasonTaskListener:S2C_ResponseTaskSimpleInfo(TaskSimpleInfos) end

---@param TaskIdList ULuaArrayHelper<number>
---@param ExtraInfo FTaskExtraInfo
function USeasonTaskListener:C2S_RequestTasksDetail(TaskIdList, ExtraInfo) end

---@param TaskDetailList ULuaArrayHelper<FComprehensiveTaskInfo>
function USeasonTaskListener:S2C_ResponseReelTaskInfo(TaskDetailList) end

function USeasonTaskListener:C2S_RequestReelTasksDetail() end

function USeasonTaskListener:C2S_RequestEscapeTaskInfo() end

---@param TaskInfoList ULuaArrayHelper<FEscapeTaskInfo>
function USeasonTaskListener:S2C_ResponseEscapeTaskInfo(TaskInfoList) end

function USeasonTaskListener:C2S_RequestEscapeSeasonTaskInfo() end

---@param TaskInfoList ULuaArrayHelper<FEscapeTaskInfo>
function USeasonTaskListener:S2C_ResponseEscapeSeasonTaskInfo(TaskInfoList) end

---@param TaskID number
---@return FEscapeTaskInfo
function USeasonTaskListener:GetEscapeTaskDetail(TaskID) end

---@param TaskID number
---@return FEscapeTaskInfo
function USeasonTaskListener:GetEscapeSeasonTaskDetail(TaskID) end

---@param TaskID number
---@return number
function USeasonTaskListener:GetEscapeTaskProgress(TaskID) end

---@param TaskIdList ULuaArrayHelper<number>
function USeasonTaskListener:GetReelTaskDetail(TaskIdList) end

---@param TaskId number
---@param Process number
---@param bIsModeFit boolean
---@param TargetProcess number
---@param WeekIndex number
function USeasonTaskListener:UpdateRecord(TaskId, Process, bIsModeFit, TargetProcess, WeekIndex) end

---@param TaskId number
---@return boolean
function USeasonTaskListener:GetModeFitResult(TaskId) end

function USeasonTaskListener:GenerateReqExtraInfo() end

---@param IsEnable boolean
function USeasonTaskListener:EnableComputeNonRealTimeTask(IsEnable) end

---@param TaskType number
---@return boolean
function USeasonTaskListener:IsRealTimeComputingTask(TaskType) end

function USeasonTaskListener:ComputeAllTasksOnce() end

---@param TaskID number
---@return boolean
function USeasonTaskListener:HasTaskFinished(TaskID) end

---@param PlayerKey number
---@param Reason string
function USeasonTaskListener:OnPlayerSendBattleResult(PlayerKey, Reason) end

---@param TaskID number
---@return number
function USeasonTaskListener:GetUnhandledTaskProgress(TaskID) end

---@param TargetActor AActor
---@param ActorOwnerKey string
function USeasonTaskListener:RegisterActorForCounter(TargetActor, ActorOwnerKey) end

---@param TargetActor AActor
function USeasonTaskListener:UnRegisterActorForCounter(TargetActor) end

---@param tempName string
---@return number
function USeasonTaskListener:GetCurNumByName(tempName) end

---@param tempName string
---@param deltaNum number
function USeasonTaskListener:ChangeCurNumByName(tempName, deltaNum) end

---@param tempName string
---@return boolean
function USeasonTaskListener:AddValue(tempName) end

---@param tempName string
---@return boolean
function USeasonTaskListener:RemoveValue(tempName) end
