---@meta

---@class ELostConnectionToDSReason
---@field LostConnectionToDSReason_None number
---@field LostConnectionToDSReason_TravelFailure_Default number
---@field LostConnectionToDSReason_LocalConnectionLost number
---@field LostConnectionToDSReason_LocalDetectedTimeout number
---@field LostConnectionToDSReason_NMTFailure_Default number
ELostConnectionToDSReason = {}


---@class FNetConnectionLongTimeNoReceived : ULuaSingleDelegate
FNetConnectionLongTimeNoReceived = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionLongTimeNoReceived:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FNetConnectionLongTimeNoReceived:Execute(Param1) end


---@class FNetConnectionRecentlyReceived : ULuaSingleDelegate
FNetConnectionRecentlyReceived = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionRecentlyReceived:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FNetConnectionRecentlyReceived:Execute(Param1) end


---@class FNetConnectionActorChannelError : ULuaSingleDelegate
FNetConnectionActorChannelError = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionActorChannelError:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FNetConnectionActorChannelError:Execute(Param1) end


---@class FNetConnectionClosed : ULuaSingleDelegate
FNetConnectionClosed = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: EConnectionClosedReason, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionClosed:Bind(Callback, Obj) end

---执行委托
---@param Param1 EConnectionClosedReason
---@param Param2 string
function FNetConnectionClosed:Execute(Param1, Param2) end


---@class FReportConnectionNetStat : ULuaSingleDelegate
FReportConnectionNetStat = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FConnectionNetStat) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportConnectionNetStat:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FConnectionNetStat
function FReportConnectionNetStat:Execute(Param1, Param2) end


---@class FNetConnectionGetNetConsideredRegionRange : ULuaSingleDelegate
FNetConnectionGetNetConsideredRegionRange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionGetNetConsideredRegionRange:Bind(Callback, Obj) end

---执行委托
function FNetConnectionGetNetConsideredRegionRange:Execute() end


---@class FNetConnectionPreProcessRelevancy : ULuaSingleDelegate
FNetConnectionPreProcessRelevancy = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionPreProcessRelevancy:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FNetConnectionPreProcessRelevancy:Execute(Param1) end


---@class FNetConnectionBuildRelevantListMap : ULuaSingleDelegate
FNetConnectionBuildRelevantListMap = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FRelevancyList, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionBuildRelevantListMap:Bind(Callback, Obj) end

---执行委托
---@param Param1 FRelevancyList
---@param Param2 number
function FNetConnectionBuildRelevantListMap:Execute(Param1, Param2) end


---@class FNetConnectionBuildTrueSightRelevantListMap : ULuaSingleDelegate
FNetConnectionBuildTrueSightRelevantListMap = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FRelevancyList, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionBuildTrueSightRelevantListMap:Bind(Callback, Obj) end

---执行委托
---@param Param1 FRelevancyList
---@param Param2 number
function FNetConnectionBuildTrueSightRelevantListMap:Execute(Param1, Param2) end


---@class FNetConnectionGetMainCharacter : ULuaSingleDelegate
FNetConnectionGetMainCharacter = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionGetMainCharacter:Bind(Callback, Obj) end

---执行委托
function FNetConnectionGetMainCharacter:Execute() end


---@class FNetConnectionGetRelevancyGroup : ULuaSingleDelegate
FNetConnectionGetRelevancyGroup = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionGetRelevancyGroup:Bind(Callback, Obj) end

---执行委托
function FNetConnectionGetRelevancyGroup:Execute() end


---@class FNetConnectionLongTimeNoReceivedAck : ULuaSingleDelegate
FNetConnectionLongTimeNoReceivedAck = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetConnectionLongTimeNoReceivedAck:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 boolean
function FNetConnectionLongTimeNoReceivedAck:Execute(Param1, Param2) end


---@class FNetProcessFastRemoteReplication : ULuaSingleDelegate
FNetProcessFastRemoteReplication = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNetProcessFastRemoteReplication:Bind(Callback, Obj) end

---执行委托
function FNetProcessFastRemoteReplication:Execute() end


---@class UUAENetConnection: UIpConnection
---@field InitialHandshakeTimeoutNumThreshold number
---@field ActorChannelProcessBunchErrorNumThreshold_Server_Global number
---@field ActorChannelProcessBunchErrorNumThreshold_Client_Global number
---@field ActorChannelProcessBunchErrorNumThreshold_Client_PerActor number
---@field HTTPDNSServerAddr string
---@field HTTPDNSResponseTimeout number
---@field CheckReplayList ULuaArrayHelper<ACharacter>
---@field bRecreateSocketOnLost boolean
---@field LongTimeNoReceivedAckThreshold number
---@field StartNoAckCounterTimeThreshold number
---@field ClearbIgnoreTickTimeoutThreshold number
---@field PotentialLeakChannels ULuaArrayHelper<UActorChannel>
local UUAENetConnection = {}

---@param InWorld UWorld
function UUAENetConnection:OnPostLoadMapWithWorld(InWorld) end
