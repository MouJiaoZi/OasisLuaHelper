---@meta

---@class FNetworkFailureInfo
---@field ErrorMessage string
FNetworkFailureInfo = {}


---@class FTravelFailureInfo
---@field ErrorMessage string
FTravelFailureInfo = {}


---@class FGameEngineTickStat
---@field Duration number
---@field AvgTickDelta number
---@field bIsRecordingReplay boolean
FGameEngineTickStat = {}


---@class FGameEngineInit : ULuaMulticastDelegate
FGameEngineInit = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UGameEngine) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineInit:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UGameEngine
function FGameEngineInit:Broadcast(Param1) end


---@class FGameEngineTick : ULuaMulticastDelegate
FGameEngineTick = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineTick:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
function FGameEngineTick:Broadcast(Param1) end


---@class FGameEngineLowFrame : ULuaMulticastDelegate
FGameEngineLowFrame = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineLowFrame:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FGameEngineLowFrame:Broadcast(Param1) end


---@class FGameEngineShutdown : ULuaSingleDelegate
FGameEngineShutdown = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineShutdown:Bind(Callback, Obj) end

---执行委托
function FGameEngineShutdown:Execute() end


---@class FGameEngineNetworkFailure : ULuaMulticastDelegate
FGameEngineNetworkFailure = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FNetworkFailureInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineNetworkFailure:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FNetworkFailureInfo
function FGameEngineNetworkFailure:Broadcast(Param1) end


---@class FGameEngineTravelFailure : ULuaMulticastDelegate
FGameEngineTravelFailure = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FTravelFailureInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineTravelFailure:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FTravelFailureInfo
function FGameEngineTravelFailure:Broadcast(Param1) end


---@class FGameEngineGetStatFilename : ULuaSingleDelegate
FGameEngineGetStatFilename = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineGetStatFilename:Bind(Callback, Obj) end

---执行委托
function FGameEngineGetStatFilename:Execute() end


---@class FGameEngineTickStatCollected : ULuaMulticastDelegate
FGameEngineTickStatCollected = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FGameEngineTickStat) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineTickStatCollected:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FGameEngineTickStat
function FGameEngineTickStatCollected:Broadcast(Param1) end


---@class FGameEngineTickCaton : ULuaMulticastDelegate
FGameEngineTickCaton = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEngineTickCaton:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 number
---@param Param3 number
function FGameEngineTickCaton:Broadcast(Param1, Param2, Param3) end


---@class FSendPerfRecord : ULuaSingleDelegate
FSendPerfRecord = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendPerfRecord:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
---@param Param2 number
function FSendPerfRecord:Execute(Param1, Param2) end


---@class UUAEGameEngine: UGameEngine
---@field bEnableAutoStat_DS boolean
---@field bEnableAutoStat_WinClient boolean
---@field bEnableAutoLiteStats boolean
---@field bEnableStatCollection boolean
---@field StatSamplingInterval number
---@field StatCollection_AvgTickDeltaThreshold number
---@field AutoStat_AvgTickDeltaThreshold_DS number
---@field AutoStat_AvgTickDeltaThreshold_DS1 number
---@field AutoStat_AvgTickDeltaThreshold_DS2 number
---@field AutoStat_AvgTickDeltaThreshold_DS3 number
---@field AutoStat_AvgTickDeltaThreshold_DS4 number
---@field AutoStat_AvgTickDeltaThreshold_DS5 number
---@field AutoStat_AvgTickDeltaThreshold_WinClient number
---@field AutoStat_AvgTickDeltaThresholdTime number
---@field AutoStat_StartAfter number
---@field AutoStat_Duration number
---@field SendSvrAvgDeltaTime number
---@field AutoLiteStats_AvgTickDeltaThreshold number
---@field AutoLiteStats_StartAfter number
---@field AutoLiteStats_Duration number
---@field AutoLiteStats_Interval number
---@field AdaptiveGlobalNetConsiderFreq_RatioLB number
---@field AdaptiveGlobalNetConsiderFreq_RatioUB number
---@field AdaptiveGlobalNetConsiderFreq_FactorLB number
---@field AdaptiveGlobalNetConsiderFreq_FactorUB number
---@field AdaptiveGlobalNetConsiderFreq_StartAfter number
---@field AdaptiveGlobalNetConsiderFreq_StartThreshold number
---@field AdaptiveGlobalNetConsiderFreq_CheckInterval number
local UUAEGameEngine = {}
