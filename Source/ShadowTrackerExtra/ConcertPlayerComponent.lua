---@meta

---@class FOnReceiveConcertEvent : ULuaMulticastDelegate
FOnReceiveConcertEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsSyncData: boolean, InParamData: FConcertSequenceEventData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceiveConcertEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsSyncData boolean
---@param InParamData FConcertSequenceEventData
function FOnReceiveConcertEvent:Broadcast(IsSyncData, InParamData) end


---@class FOnSequencePlayOrStopEvent : ULuaMulticastDelegate
FOnSequencePlayOrStopEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsPlay: boolean, InPlayIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSequencePlayOrStopEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsPlay boolean
---@param InPlayIndex number
function FOnSequencePlayOrStopEvent:Broadcast(IsPlay, InPlayIndex) end


---@class FOnSequenceEvent : ULuaSingleDelegate
FOnSequenceEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSequenceEvent:Bind(Callback, Obj) end

---执行委托
function FOnSequenceEvent:Execute() end


---@class UConcertPlayerComponent: UActorComponent
---@field SequenceIsClientMode boolean
---@field SequenceLoadedNeedSync boolean
---@field PlayNextIfFinish boolean
---@field LevelConfigList ULuaArrayHelper<FConcertLevelSoftConfig>
---@field CurrentLevelConfig FConcertLevelHardConfig
---@field OnReceiveConcertEventBegin FOnReceiveConcertEvent
---@field OnReceiveConcertEventEnd FOnReceiveConcertEvent
---@field OnSequencePlayOrStopEvent FOnSequencePlayOrStopEvent
---@field OnSequencePlayEnd FOnSequenceEvent
---@field OnSequenceRequestSync FOnSequenceEvent
---@field OnSequenceSyncEnd FOnSequenceEvent
---@field ActivityList ULuaArrayHelper<AActor>
---@field DelayStartHandle FTimerHandle
---@field NeedMemoryEventList ULuaArrayHelper<EConcertEventType>
---@field TriggerEventList ULuaArrayHelper<FConcertSequenceEventData>
---@field LastConcertSyncData FConcertSyncData
---@field NeedMemoryEventNameList ULuaArrayHelper<string>
---@field NeedMemoryEventTypeList ULuaArrayHelper<number>
local UConcertPlayerComponent = {}

---@param IsSyncData boolean
---@param InParamData FConcertSequenceEventData
function UConcertPlayerComponent:ReceiveConcertEvent(IsSyncData, InParamData) end

---@param InActivity AActor
function UConcertPlayerComponent:RegisterActivity(InActivity) end

---@param InActivity AActor
function UConcertPlayerComponent:UnRegisterActivity(InActivity) end

---@param Index number
---@return boolean
function UConcertPlayerComponent:InitConcertConfig(Index) end

---@param Index number
---@param AssetRef FSoftObjectPath
function UConcertPlayerComponent:OnLoadSequenceDone(Index, AssetRef) end

---@param Index number
function UConcertPlayerComponent:SetupConcert(Index) end

function UConcertPlayerComponent:OnDelayStart() end

function UConcertPlayerComponent:StartConcert() end

---@param NetPlayAgain boolean
function UConcertPlayerComponent:StopConcert(NetPlayAgain) end

function UConcertPlayerComponent:OnSequenceFinish() end

function UConcertPlayerComponent:OnSequenceStop() end

---@param InObject UObject
---@param InBindingID FGuid
---@param InSequenceID FMovieSceneSequenceID
function UConcertPlayerComponent:OnSequenceObjectSpawned(InObject, InBindingID, InSequenceID) end

function UConcertPlayerComponent:OnDelayLoopSetup() end

---@param InPos number
function UConcertPlayerComponent:JumpToPos(InPos) end

---@param isServerTime boolean
---@return number
function UConcertPlayerComponent:GetTime(isServerTime) end

---@param InSecond number
---@return FTimespan
function UConcertPlayerComponent:GetTimeSpanFromSecond(InSecond) end

---@return number
function UConcertPlayerComponent:GetSequenceCurrentTime() end

---@param InEnable boolean
function UConcertPlayerComponent:SetActivityEnable(InEnable) end

---@param EventType EConcertEventType
---@return number
function UConcertPlayerComponent:GetTriggerEventDuraction(EventType) end

---@param EventTypeName string
---@param InParam string
---@return number
function UConcertPlayerComponent:GetTriggerEventNameDuraction(EventTypeName, InParam) end

---@param EventType number
---@param InParam string
---@param UseEventTime boolean
---@return number
function UConcertPlayerComponent:GetTriggerIntEventDuraction(EventType, InParam, UseEventTime) end

---@param EventType EConcertEventType
---@return number
function UConcertPlayerComponent:GetLastTriggerEventTime(EventType) end

---@param EventTypeName string
---@param InParam string
---@return number
function UConcertPlayerComponent:GetLastTriggerEventNameTime(EventTypeName, InParam) end

---@return boolean
function UConcertPlayerComponent:GetIsPlaying() end
