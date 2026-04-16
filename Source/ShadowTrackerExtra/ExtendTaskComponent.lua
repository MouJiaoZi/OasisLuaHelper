---@meta

---@class FExtendTaskState
---@field FExtendTaskState_None number
---@field FExtendTaskState_InProgress number
---@field FExtendTaskState_Finished number
---@field FExtendTaskState_Awarded number
---@field FExtendTaskState_Failed number
FExtendTaskState = {}


---@class FExtendTaskEventID
---@field FExtendTaskEventID_Kill number
---@field FExtendTaskEventID_HitFall number
---@field FExtendTaskEventID_DestroyVehicle number
---@field FExtendTaskEventID_OpenFire number
---@field FExtendTaskEventID_Damage number
---@field FExtendTaskEventID_AwardItem number
---@field FExtendTaskEventID_UseItem number
---@field FExtendTaskEventID_DoubleClimb number
---@field FExtendTaskEventID_BuyGoods number
---@field FExtendTaskEventID_SellGoods number
---@field FExtendTaskEventID_Revive number
---@field FExtendTaskEventID_Request number
---@field FExtendTaskEventID_DestroyDoor number
---@field FExtendTaskEventID_DestroyWindow number
---@field FExtendTaskEventID_DestroyWheel number
---@field FExtendTaskEventID_AddGas number
---@field FExtendTaskEventID_UseEmoji number
---@field FExtendTaskEventID_DestroyHelmet number
---@field FExtendTaskEventID_DestroyVehicle_Neon number
---@field FExtendTaskEventID_AddHealth number
---@field FExtendTaskEventID_BuyRandomGoods number
---@field FExtendTaskEventID_Move number
---@field FExtendTaskEventID_Support number
---@field FExtendTaskEventID_InteractRob number
---@field FExtendTaskEventID_Recover number
---@field FExtendTaskEventID_DestroyGround number
---@field FExtendTaskEventID_KillAI number
---@field FExtendTaskEventID_InteractElevator number
---@field FExtendTaskEventID_DestroyCage number
---@field FExtendTaskEventID_UsePhonograph number
---@field FExtendTaskEventID_UseFireworks number
---@field FExtendTaskEventID_DisturbFish number
---@field FExtendTaskEventID_DestroyDestr number
---@field FExtendTaskEventID_OpenSafety number
---@field FExtendTaskEventID_CostNeonCoin number
---@field FExtendTaskEventID_Eliminate number
---@field FExtendTaskEventID_AttachBuff number
---@field FExtendTaskEventID_UpLevel number
FExtendTaskEventID = {}


---@class FExtendTaskEventInfo
---@field Describe string
---@field TypeIDList ULuaArrayHelper<number>
---@field EventName string
FExtendTaskEventInfo = {}


---@class FExtendTaskInfo
---@field TaskID number
---@field TypeID number
---@field Params ULuaArrayHelper<string>
---@field TargetProgress number
FExtendTaskInfo = {}


---@class FExtendTaskRunTimeData
---@field TaskID number
---@field CurrentProgress number
---@field TargetProgress number
---@field TaskState FExtendTaskState
FExtendTaskRunTimeData = {}


---@class FOnTaskInit : ULuaMulticastDelegate
FOnTaskInit = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TaskID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTaskInit:Add(Callback, Obj) end

---触发 Lua 广播
---@param TaskID number
function FOnTaskInit:Broadcast(TaskID) end


---@class FOnTaskFinished : ULuaMulticastDelegate
FOnTaskFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TaskID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTaskFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param TaskID number
function FOnTaskFinished:Broadcast(TaskID) end


---@class FOnTaskDelete : ULuaMulticastDelegate
FOnTaskDelete = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TaskID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTaskDelete:Add(Callback, Obj) end

---触发 Lua 广播
---@param TaskID number
function FOnTaskDelete:Broadcast(TaskID) end


---@class FOnTaskProgressUpdate : ULuaMulticastDelegate
FOnTaskProgressUpdate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TaskID: number, CurrentProgress: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTaskProgressUpdate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TaskID number
---@param CurrentProgress number
function FOnTaskProgressUpdate:Broadcast(TaskID, CurrentProgress) end


---@class FOnTaskFailed : ULuaMulticastDelegate
FOnTaskFailed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TaskID: number, FailedType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTaskFailed:Add(Callback, Obj) end

---触发 Lua 广播
---@param TaskID number
---@param FailedType number
function FOnTaskFailed:Broadcast(TaskID, FailedType) end


---@class UExtendTaskComponent: UActorComponent, ILuaInterface
---@field CacheTaskData ULuaMapHelper<number, FExtendTaskInfo>
---@field FinishedTaskData ULuaMapHelper<number, FExtendTaskInfo>
---@field TaskProgressMap ULuaMapHelper<number, FExtendTaskRunTimeData>
---@field TaskInitDelegate FOnTaskInit
---@field TaskFailedDelegate FOnTaskFailed
---@field TaskFinishedDelegate FOnTaskFinished
---@field TaskDeleteDelegate FOnTaskDelete
---@field PostTaskDeleteDelegate FOnTaskDelete
---@field ClientTaskFinishedDelegate FOnTaskFinished
---@field TaskProgressUpdateDelegate FOnTaskProgressUpdate
---@field ClientTaskProgressUpdateDelegate FOnTaskProgressUpdate
---@field ClientReportEventIDMap ULuaArrayHelper<number>
---@field EventTypeMap ULuaMapHelper<number, FExtendTaskEventInfo>
---@field TypeFuncMap ULuaMapHelper<number, string>
---@field UpdateByTimerTypeIDArray ULuaArrayHelper<number>
local UExtendTaskComponent = {}

---@return string
function UExtendTaskComponent:GetLuaModule() end

---@param TaskID number
---@param Progress number
---@param ExtInfo string
function UExtendTaskComponent:HandleInitTaskData(TaskID, Progress, ExtInfo) end

function UExtendTaskComponent:HandleInitTaskDataFinished() end

---@param TaskID number
function UExtendTaskComponent:AcceptTask(TaskID) end

---@param TaskID number
---@param Progress number
---@param TaskInfo FExtendTaskInfo
---@param ExtInfo string
function UExtendTaskComponent:CreateTask(TaskID, Progress, TaskInfo, ExtInfo) end

---@param TaskID number
function UExtendTaskComponent:FinishTask(TaskID) end

---@param TaskID number
---@param FailedType number
function UExtendTaskComponent:FailedTask(TaskID, FailedType) end

---@param TaskID number
function UExtendTaskComponent:DeleteTask(TaskID) end

function UExtendTaskComponent:DeleteAllTasks() end

---@param TaskID number
---@param bFind boolean
---@return FExtendTaskInfo
function UExtendTaskComponent:GetTaskInfoFromTable(TaskID, bFind) end

---@param RuntimeData FExtendTaskRunTimeData
function UExtendTaskComponent:UpdateRepTaskList(RuntimeData) end

---@param EventID number
---@param ObjList ULuaArrayHelper<UObject>
---@param StrList ULuaArrayHelper<string>
function UExtendTaskComponent:ServerNotifyTasksByEventID(EventID, ObjList, StrList) end

---@param EventID number
---@param ObjList ULuaArrayHelper<UObject>
---@param StrList ULuaArrayHelper<string>
function UExtendTaskComponent:NotifyTasksByEventID(EventID, ObjList, StrList) end

---@param FailedType number
---@param ObjList ULuaArrayHelper<UObject>
---@param StrList ULuaArrayHelper<string>
function UExtendTaskComponent:NotifyTaskFailedByFailedType(FailedType, ObjList, StrList) end

---@param TaskID number
---@param TaskInfo FExtendTaskInfo
---@param ExtInfo string
function UExtendTaskComponent:TaskBegin(TaskID, TaskInfo, ExtInfo) end

---@param TaskID number
---@param TaskInfo FExtendTaskInfo
function UExtendTaskComponent:TaskFinish(TaskID, TaskInfo) end

---@param TaskID number
---@param TaskInfo FExtendTaskInfo
---@param Reason number
function UExtendTaskComponent:TaskFailed(TaskID, TaskInfo, Reason) end

---@param TaskID number
---@param TaskInfo FExtendTaskInfo
function UExtendTaskComponent:TaskDelete(TaskID, TaskInfo) end

function UExtendTaskComponent:InitTaskList() end

---@param TaskID number
---@param Progress number
---@param bCumulate boolean
function UExtendTaskComponent:UpdateTaskProgress(TaskID, Progress, bCumulate) end

---@param TaskID number
---@param NewProgress number
function UExtendTaskComponent:ReportTaskData(TaskID, NewProgress) end

---@param ProgressInfo ULuaMapHelper<number, number>
function UExtendTaskComponent:BatchUpdateTaskProgress(ProgressInfo) end

---@param EventID number
function UExtendTaskComponent:GetEventTaskInfoList(EventID) end

---@param TaskInfo FExtendTaskInfo
---@param bAdd boolean
function UExtendTaskComponent:UpdateEventCountMap(TaskInfo, bAdd) end

---@param TaskID number
function UExtendTaskComponent:ServerOnTaskFinished(TaskID) end

---@param ItemOperationInfo FItemOperationInfo
function UExtendTaskComponent:HandleItemOperation(ItemOperationInfo) end

---@param InBackpackComponent UBackpackComponent
---@param ItemHandle UItemHandleBase
---@param DefineID FItemDefineID
---@param Count number
function UExtendTaskComponent:HandleItemConsume(InBackpackComponent, ItemHandle, DefineID, Count) end

---@param SpecificID number
---@param Count number
function UExtendTaskComponent:HandleCommonItemConsume(SpecificID, Count) end

---@param savior ASTExtraPlayerController
function UExtendTaskComponent:HandlePlayerRevive(savior) end

---@param TypeID number
function UExtendTaskComponent:BindDelegate(TypeID) end

---@param TaskID number
function UExtendTaskComponent:S2C_TaskCreate(TaskID) end

---@param TaskID number
---@param FailedType number
function UExtendTaskComponent:S2C_TaskFailed(TaskID, FailedType) end

---@param TaskID number
function UExtendTaskComponent:S2C_TaskFinished(TaskID) end

---@param TaskID number
function UExtendTaskComponent:S2C_TaskDelete(TaskID) end

---@param TaskID number
function UExtendTaskComponent:S2C_OnTaskFinished(TaskID) end

---@param TaskID number
function UExtendTaskComponent:ClientOnTaskFinished(TaskID) end

---@param TaskID number
---@param Progress number
function UExtendTaskComponent:S2C_OnTaskProgressUpdate(TaskID, Progress) end

---@param TaskID number
---@param Progress number
function UExtendTaskComponent:ClientOnTaskProgressUpdate(TaskID, Progress) end

function UExtendTaskComponent:LoadClientEventMap() end

---@param TaskID number
---@return FExtendTaskRunTimeData
function UExtendTaskComponent:GetRuntimeData(TaskID) end

function UExtendTaskComponent:ClearEventCountMap() end

---@param TaskID number
---@return FExtendTaskState
function UExtendTaskComponent:GetTaskState(TaskID) end

---@param TaskID number
---@param NewState FExtendTaskState
function UExtendTaskComponent:SetTaskState(TaskID, NewState) end
