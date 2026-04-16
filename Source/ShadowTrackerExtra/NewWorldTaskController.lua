---@meta

---@class ENewWorldTaskNodeControlType
---@field CTL_None number
---@field CTL_TraceButton number
ENewWorldTaskNodeControlType = {}


---@class FNewWorldTaskItemCacheInfo
---@field ReqID number
---@field ItemID number
---@field Count number
---@field TaskID number
FNewWorldTaskItemCacheInfo = {}


---@class FBigWorldTaskInteratorEventDelegate
---@field CommonTaskInteractorEventList ULuaArrayHelper<FOnBigWorldTaskActorSpawnState>
FBigWorldTaskInteratorEventDelegate = {}


---@class FOnBigWorldNPCRegisterInfoChanged : ULuaMulticastDelegate
FOnBigWorldNPCRegisterInfoChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NPCID: number, NPC: AActor, bRegister: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBigWorldNPCRegisterInfoChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param NPCID number
---@param NPC AActor
---@param bRegister boolean
function FOnBigWorldNPCRegisterInfoChanged:Broadcast(NPCID, NPC, bRegister) end


---@class FOnBigWorldTaskActorSpawnState : ULuaSingleDelegate
FOnBigWorldTaskActorSpawnState = {}

---绑定回调函数
---@param Callback fun(Obj: any, ParamID: string, bCreated: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBigWorldTaskActorSpawnState:Bind(Callback, Obj) end

---执行委托
---@param ParamID string
---@param bCreated boolean
function FOnBigWorldTaskActorSpawnState:Execute(ParamID, bCreated) end


---@class FOnPostRecoverDelegate : ULuaMulticastDelegate
FOnPostRecoverDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: UNewWorldTaskController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostRecoverDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC UNewWorldTaskController
function FOnPostRecoverDelegate:Broadcast(PC) end


---@class UNewWorldTaskController: UBigWorldTaskController
---@field bIsSwitchDSPlayer boolean
---@field bIsSwitchDataFinished boolean
---@field OnSwitchDataPostRecover FOnPostRecoverDelegate
---@field NPCPool ULuaMapHelper<number, AActor>
---@field OnBigWorldNPCRegisterInfoChanged FOnBigWorldNPCRegisterInfoChanged
---@field CacheInteratorEventData ULuaMapHelper<string, FBigWorldTaskInteratorEventDelegate>
---@field AddItemReqIDList ULuaMapHelper<number, FNewWorldTaskItemCacheInfo>
---@field DelItemReqIDList ULuaMapHelper<number, FNewWorldTaskItemCacheInfo>
local UNewWorldTaskController = {}

---@param TaskParams FDSBigWorldTaskBaseInfo
function UNewWorldTaskController:OnBigWorldTaskSyncRsp(TaskParams) end

function UNewWorldTaskController:BPPreOnPostRecover() end

function UNewWorldTaskController:OnBigWorldTaskInfoSyncStart() end

---@param TaskID number
---@param Group number
---@param Progress number
---@param IsExpired boolean
---@param NeedReset boolean
---@param LobbyCompleted boolean
---@param BinData ULuaArrayHelper<number>
function UNewWorldTaskController:OnBigWorldSyncTaskData(TaskID, Group, Progress, IsExpired, NeedReset, LobbyCompleted, BinData) end

---@param TaskID number
---@param CrossTaskID number
---@param Progress number
---@param TargetProgress number
function UNewWorldTaskController:OnBigWorldSyncCrossDSData(TaskID, CrossTaskID, Progress, TargetProgress) end

function UNewWorldTaskController:OnBigWorldTaskInfoSyncFinished() end

---@param Type number
---@param Params number
function UNewWorldTaskController:C2S_TestRPC(Type, Params) end

---@param Type number
---@param Params number
function UNewWorldTaskController:ReqTestRPC(Type, Params) end

---@param TaskID number
---@param MsgID number
---@param Type ENewWorldTaskNodeControlType
function UNewWorldTaskController:AddUIControl(TaskID, MsgID, Type) end

---@param TaskID number
---@param MsgID number
---@param Type ENewWorldTaskNodeControlType
function UNewWorldTaskController:RemoveUIControl(TaskID, MsgID, Type) end

---@param TaskID number
---@param MsgID number
---@param TargetLocation FVector
---@param MapMarkTypeID number
---@param CompassTypeID number
---@param ParticleSystemSoftObjPath FSoftObjectPath
function UNewWorldTaskController:NormalTaskTrace(TaskID, MsgID, TargetLocation, MapMarkTypeID, CompassTypeID, ParticleSystemSoftObjPath) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:NormalStopTrace(TaskID, MsgID) end

---@param TaskID number
---@param MsgID number
---@param MapMarkTypeID number
---@param TargetLocation FVector
---@return number
function UNewWorldTaskController:CreateTaskTraceMapMark(TaskID, MsgID, MapMarkTypeID, TargetLocation) end

---@param TaskID number
---@param MsgID number
---@param MapMarkID number
function UNewWorldTaskController:DestroyTaskTraceMapMark(TaskID, MsgID, MapMarkID) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:DestroyPhaseTaskTraceMapMark(TaskID, MsgID) end

---@param TaskID number
function UNewWorldTaskController:DestroyAllTaskTraceMapMark(TaskID) end

---@param TaskID number
---@param MsgID number
---@param CompassTypeID number
---@param TargetLocation FVector
---@return number
function UNewWorldTaskController:CreateTaskTraceCampassMark(TaskID, MsgID, CompassTypeID, TargetLocation) end

---@param TaskID number
---@param MsgID number
---@param CampassID number
function UNewWorldTaskController:DestroyTaskTraceCampassMark(TaskID, MsgID, CampassID) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:DestroyPhaseTaskTraceCompassMark(TaskID, MsgID) end

---@param TaskID number
function UNewWorldTaskController:DestroyAllTaskTraceCompassMark(TaskID) end

---@param TaskID number
---@param MsgID number
---@param ActorClass UClass
---@param ActorTransform FTransform
---@return number
function UNewWorldTaskController:CreateTaskTraceActor(TaskID, MsgID, ActorClass, ActorTransform) end

---@param TaskID number
---@param MsgID number
---@param InstanceID number
function UNewWorldTaskController:DestroyTaskTraceActor(TaskID, MsgID, InstanceID) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:DestroyPhaseTaskTraceActor(TaskID, MsgID) end

---@param TaskID number
function UNewWorldTaskController:DestroyAllTaskTraceActor(TaskID) end

---@param TaskID number
---@param MsgID number
---@param ParticleSystemSoftObjPath FSoftObjectPath
---@param Transform FTransform
---@param bAutoDestroy boolean
---@return number
function UNewWorldTaskController:CreateTaskTraceEmitterAtLocation(TaskID, MsgID, ParticleSystemSoftObjPath, Transform, bAutoDestroy) end

---@param TaskID number
---@param MsgID number
---@param ParticleSystemSoftObjPath FSoftObjectPath
---@param Transform FTransform
---@param AttachToComponent USceneComponent
---@param AttachPointName string
---@param LocationType EAttachLocation
---@param bAutoDestroy boolean
---@return number
function UNewWorldTaskController:CreateTaskTraceEmitterAttatched(TaskID, MsgID, ParticleSystemSoftObjPath, Transform, AttachToComponent, AttachPointName, LocationType, bAutoDestroy) end

---@param TaskID number
---@param MsgID number
---@param InstanceID number
function UNewWorldTaskController:DestroyTaskTraceEmitter(TaskID, MsgID, InstanceID) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:DestroyPhaseTaskTraceEmitter(TaskID, MsgID) end

---@param TaskID number
function UNewWorldTaskController:DestroyAllTaskTraceEmitter(TaskID) end

---@param PC APlayerController
---@param NPCID number
---@param NPCActor AActor
function UNewWorldTaskController:RegisterNPCInNewWorldTaskController(PC, NPCID, NPCActor) end

---@param PC APlayerController
---@param NPCID number
function UNewWorldTaskController:UnRegisterNPCInNewWorldTaskController(PC, NPCID) end

---@param PC APlayerController
---@param bHidden boolean
function UNewWorldTaskController:HidePawns(PC, bHidden) end

---@param ParamID string
---@param isCreated boolean
function UNewWorldTaskController:NotifyTaskInteractorEvent(ParamID, isCreated) end

---@param ParamID string
---@param EventDelegate FOnBigWorldTaskActorSpawnState
function UNewWorldTaskController:BindTaskInteractorEventByParamID(ParamID, EventDelegate) end

---@param ParamID string
---@param EventDelegate FOnBigWorldTaskActorSpawnState
function UNewWorldTaskController:UnBindTaskInteractorEventByParamID(ParamID, EventDelegate) end

---@param TaskID number
---@param ItemID number
---@param Count number
---@param ValidHours number
function UNewWorldTaskController:RequestAddItem(TaskID, ItemID, Count, ValidHours) end

---@param TaskID number
---@param ItemID number
---@param Count number
function UNewWorldTaskController:RequestDelItem(TaskID, ItemID, Count) end

---@param ItemID number
---@param PC ASTExtraPlayerController
function UNewWorldTaskController:OnUseItem(ItemID, PC) end

---@param ReqID number
---@param ErrorCode number
---@param DefineID FItemDefineID
function UNewWorldTaskController:OnAddItem(ReqID, ErrorCode, DefineID) end

---@param ReqID number
---@param ErrorCode number
function UNewWorldTaskController:OnDelItem(ReqID, ErrorCode) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:ShowGetRewardPerf(TaskID, MsgID) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:ShowGetRewardPerf_Lobby(TaskID, MsgID) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:ShowGetRewardPerf_BD(TaskID, MsgID) end

---@param TaskID number
---@param MsgID number
---@param RewardList ULuaArrayHelper<FBigWorldTaskClientRewardInfo>
function UNewWorldTaskController:ShowGetRewardSucceedPerf(TaskID, MsgID, RewardList) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:ShowGetRewardFailedPerf(TaskID, MsgID) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:OnTaskReadyFinish_LobbyShow(TaskID, MsgID) end

---@param TaskID number
---@param MsgID number
function UNewWorldTaskController:RemoveReadyFinishTask_LobbyShow(TaskID, MsgID) end
