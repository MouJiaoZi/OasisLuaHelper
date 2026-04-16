---@meta

---@class FPVENianAutoTargetingRepData
---@field bFinishedTargeting boolean
---@field SearchedStartTimeSec number
FPVENianAutoTargetingRepData = {}


---@class FOnAutoTargetingFinishedServer : ULuaMulticastDelegate
FOnAutoTargetingFinishedServer = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TargetActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAutoTargetingFinishedServer:Add(Callback, Obj) end

---触发 Lua 广播
---@param TargetActor AActor
function FOnAutoTargetingFinishedServer:Broadcast(TargetActor) end


---@class UPVENianAutoTargetingComponent: UActorComponent
---@field AutoTargetingFinishedServerDelegate FOnAutoTargetingFinishedServer
---@field TargetingAngularSpeed number
---@field TargetingTimeOffset number
---@field StopScorerActorCount number
---@field bDoObstacleTrace boolean
---@field ObstacleTraceChannels ULuaArrayHelper<ECollisionChannel>
---@field ObstacleTraceShapeRadius number
---@field AutoTargetingRepData FPVENianAutoTargetingRepData
---@field LastSearchedActorServer AActor
---@field SearchTargetTimer FTimerHandle
---@field ForceSyncTimer FTimerHandle
local UPVENianAutoTargetingComponent = {}

---@param InOwnerChar ASTExtraBaseCharacter
---@param SearchInterval number
---@param InTargetingSelectData FMeleeTargetSelectData
function UPVENianAutoTargetingComponent:StartSearchTargetServer(InOwnerChar, SearchInterval, InTargetingSelectData) end

function UPVENianAutoTargetingComponent:StopSearchTargetServer() end

---@param InTargetingComponent USceneComponent
---@param InSelectTargetRefActor AActor
function UPVENianAutoTargetingComponent:InitializeTargetingData(InTargetingComponent, InSelectTargetRefActor) end

---@param NewTargetingSelectData FMeleeTargetSelectData
function UPVENianAutoTargetingComponent:ChangeTargetingSelectData(NewTargetingSelectData) end

---@param NewSearchInterval number
function UPVENianAutoTargetingComponent:ChangeSearchTargetInterval(NewSearchInterval) end

function UPVENianAutoTargetingComponent:OnRep_AutoTargetingRepData() end

function UPVENianAutoTargetingComponent:SearchTargetOnceServer() end

function UPVENianAutoTargetingComponent:ForceSyncOnceServer() end

---@param InAngularSpeed number
function UPVENianAutoTargetingComponent:OnSetTargetingAngularSpeed(InAngularSpeed) end

---@param OutTransform FTransform
---@return boolean
function UPVENianAutoTargetingComponent:GetSearchOriginTransformBP(OutTransform) end
