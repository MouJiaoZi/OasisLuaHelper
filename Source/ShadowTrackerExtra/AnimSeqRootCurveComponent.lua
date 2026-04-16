---@meta

---@class ECurvePlayerEndType
---@field NotEnd number
---@field EndNormal number
---@field EndInterrupt number
---@field InterruptNotNormalEnd number
ECurvePlayerEndType = {}


---@class FRootCurveEvent
---@field EventTimers number
---@field EventNames string
FRootCurveEvent = {}


---@class FRootCurveDataConfig
---@field UniqueConfigName string
---@field MontageToPlayList ULuaArrayHelper<UAnimMontage>
---@field CallbackStr string
---@field CurveEvent ULuaArrayHelper<FRootCurveEvent>
---@field CurveModifier_Axis FVector
---@field AccumulateTimer_Rate number
---@field bIsWorldTransform boolean
---@field bIsCompareWithFirstFrame boolean
FRootCurveDataConfig = {}


---@class FRootCurvePlayer
---@field UniqueID number
---@field CurveDataIndex number
---@field MontagePlayingIndex number
---@field MontageToPlayList ULuaArrayHelper<UAnimMontage>
---@field AccumulateTimer_Server number
---@field AccumulateTimer number
---@field AccumulateTotalTime number
---@field AccumulateTimer_Rate number
---@field bIsBeginPlaying boolean
---@field bClientCurveWaitToActivate boolean
---@field PlayerEndType ECurvePlayerEndType
---@field OriginalTransform FTransform
---@field bIsWorldTransform boolean
---@field bIsCompareWithFirstFrame boolean
---@field NextMontageAccumulateTimer number
---@field CurveModifier_Axis FVector
---@field CurveModifier_Angle number
---@field CurveModifier_PositionScale FVector
---@field CallbackStr string
---@field CurveEvent ULuaArrayHelper<FRootCurveEvent>
---@field bIsNotifyClientPlayEnd boolean
---@field CacheAddOffsetRotation FRotator
FRootCurvePlayer = {}


---@class FBeginPlayingEvent : ULuaMulticastDelegate
FBeginPlayingEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MCPlayInfo: FRootCurvePlayer) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBeginPlayingEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MCPlayInfo FRootCurvePlayer
function FBeginPlayingEvent:Broadcast(MCPlayInfo) end


---@class FInterruptPlayingEvent : ULuaMulticastDelegate
FInterruptPlayingEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MCPlayInfo: FRootCurvePlayer, HitResults: ULuaArrayHelper<FHitResult>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInterruptPlayingEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MCPlayInfo FRootCurvePlayer
---@param HitResults ULuaArrayHelper<FHitResult>
function FInterruptPlayingEvent:Broadcast(MCPlayInfo, HitResults) end


---@class FInterruptNotNormalEndEvent : ULuaMulticastDelegate
FInterruptNotNormalEndEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MCPlayInfo: FRootCurvePlayer) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInterruptNotNormalEndEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MCPlayInfo FRootCurvePlayer
function FInterruptNotNormalEndEvent:Broadcast(MCPlayInfo) end


---@class FFinishPlayingEvent : ULuaMulticastDelegate
FFinishPlayingEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MCPlayInfo: FRootCurvePlayer) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFinishPlayingEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MCPlayInfo FRootCurvePlayer
function FFinishPlayingEvent:Broadcast(MCPlayInfo) end


---@class FPlayingTimerEvent : ULuaMulticastDelegate
FPlayingTimerEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MCPlayInfo: FRootCurvePlayer, EventName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayingTimerEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MCPlayInfo FRootCurvePlayer
---@param EventName string
function FPlayingTimerEvent:Broadcast(MCPlayInfo, EventName) end


---@class FStopPlayingEvent : ULuaMulticastDelegate
FStopPlayingEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MCPlayInfo: FRootCurvePlayer) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FStopPlayingEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MCPlayInfo FRootCurvePlayer
function FStopPlayingEvent:Broadcast(MCPlayInfo) end


---@class UAnimSeqRootCurveComponent: UActorComponent
---@field MaxDurationTime number
---@field RootCurveDataConfig ULuaArrayHelper<FRootCurveDataConfig>
---@field AdditionalRootCurveDataConfig ULuaArrayHelper<FRootCurveDataConfig>
---@field RootCurvePlayers_Server ULuaArrayHelper<FRootCurvePlayer>
---@field RootCurvePlayers_Client ULuaArrayHelper<FRootCurvePlayer>
---@field DeviationBetweenCS number
---@field OnRootCurveBeginPlaying FBeginPlayingEvent
---@field OnRootCurveInterrupted FInterruptPlayingEvent
---@field OnRootCurveInterruptNotNormalEnd FInterruptNotNormalEndEvent
---@field OnRootCurveFinishPlaying FFinishPlayingEvent
---@field OnRootCurvePlayingTimerEvent FPlayingTimerEvent
---@field OnRootCurveStopPlaying FStopPlayingEvent
---@field CacheDeltaTickTime number
---@field bEnableTickCheckBP_Server boolean
---@field bEnableTickCheckBP_Client boolean
---@field bCheckBeginplayExistCurve boolean
---@field bDisableRepeatCurvesPlay boolean @通过 UniqueID 判断，能否重复播放相同 UniqueID 的曲线
---@field MaxCachePlayedCurveUID number
---@field bFindSpecificSkeletalMesh boolean
---@field SpecificSkeletalMeshTag string
local UAnimSeqRootCurveComponent = {}

---@param RootCurvePlayerInfo FRootCurvePlayer
---@return boolean
function UAnimSeqRootCurveComponent:FillDataToClientCurve(RootCurvePlayerInfo) end

---@param RootCurvePlayerInfo FRootCurvePlayer
function UAnimSeqRootCurveComponent:PlayRootCurve_Server(RootCurvePlayerInfo) end

---@param MCPlayInfo FRootCurvePlayer
---@return FRootCurvePlayer
function UAnimSeqRootCurveComponent:PlayRootCurve_Server_Native(MCPlayInfo) end

---@param RootCurvePlayerInfo FRootCurvePlayer
function UAnimSeqRootCurveComponent:PlayRootCurve_Multi(RootCurvePlayerInfo) end

---@param MCPlayInfo FRootCurvePlayer
---@return FRootCurvePlayer
function UAnimSeqRootCurveComponent:PlayRootCurve_Multi_Native(MCPlayInfo) end

---@param UniqueID number
---@param EndType ECurvePlayerEndType
---@param bIsNotifyClient boolean
function UAnimSeqRootCurveComponent:StopPlayRootCurve_Server(UniqueID, EndType, bIsNotifyClient) end

---@param UniqueID number
---@param EndType ECurvePlayerEndType
---@param bIsNotifyClient boolean
function UAnimSeqRootCurveComponent:StopPlayRootCurve_Server_Native(UniqueID, EndType, bIsNotifyClient) end

---@param UniqueID number
---@param EndType ECurvePlayerEndType
function UAnimSeqRootCurveComponent:StopPlayRootCurve_Client(UniqueID, EndType) end

---@param UniqueID number
---@param EndType ECurvePlayerEndType
function UAnimSeqRootCurveComponent:StopPlayRootCurve_Client_Native(UniqueID, EndType) end

---@return boolean
function UAnimSeqRootCurveComponent:CheckValidUsePlayRootCurve() end

---@param MCPlayInfo FRootCurvePlayer
function UAnimSeqRootCurveComponent:TickMontage(MCPlayInfo) end

---@param MCPlayInfo FRootCurvePlayer
function UAnimSeqRootCurveComponent:TickCurve(MCPlayInfo) end

---@param MCPlayInfo FRootCurvePlayer
function UAnimSeqRootCurveComponent:TickTimer(MCPlayInfo) end

---@param bIsServer boolean
---@param CurveUID number
function UAnimSeqRootCurveComponent:ForceTickCurveProcess(bIsServer, CurveUID) end

---@param CurveIndex number
---@param DeltaTime number
function UAnimSeqRootCurveComponent:TickCheckBP_Server(CurveIndex, DeltaTime) end

---@param CurveIndex number
---@param DeltaTime number
function UAnimSeqRootCurveComponent:TickCheckBP_Client(CurveIndex, DeltaTime) end

function UAnimSeqRootCurveComponent:OnRep_RootCurveChange() end

---@param PlayerInfo FRootCurvePlayer
---@param EndType ECurvePlayerEndType
function UAnimSeqRootCurveComponent:HandleEndCurve(PlayerInfo, EndType) end

function UAnimSeqRootCurveComponent:ClearServerFinishCurve_Client() end

---@param MyriapodVehicle ASTExtraMyriapodVehicle
---@return boolean
function UAnimSeqRootCurveComponent:VehicleIsOnMoveBase(MyriapodVehicle) end
