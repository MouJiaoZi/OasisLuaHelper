---@meta

---@class FPerConOwningObjectInfo
FPerConOwningObjectInfo = {}


---@class FConnectionNetStat
FConnectionNetStat = {}


---@class FShadowNetViewer
FShadowNetViewer = {}


---@class FSpawnActorData
FSpawnActorData = {}


---@class FReliableRPCTrackerData
FReliableRPCTrackerData = {}


---@class FReliableRPCTracker
FReliableRPCTracker = {}


---@class FSkippedActorTracker
FSkippedActorTracker = {}


---@class FOpenChannelBitArray
FOpenChannelBitArray = {}


---Delegate for hooking the net connections 'ReceivedRawPacket'
---@class FOnReceivedRawPacket : ULuaSingleDelegate
FOnReceivedRawPacket = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: nil, Param2: number, Param3: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceivedRawPacket:Bind(Callback, Obj) end

---执行委托
---@param Param1 nil
---@param Param2 number
---@param Param3 boolean
function FOnReceivedRawPacket:Execute(Param1, Param2, Param3) end


---Delegate for hooking the net connections 'LowLevelSend' (at the socket level, after PacketHandler parsing)
---@class FOnLowLevelSend : ULuaSingleDelegate
FOnLowLevelSend = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: nil, Param2: number, Param3: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLowLevelSend:Bind(Callback, Obj) end

---执行委托
---@param Param1 nil
---@param Param2 number
---@param Param3 boolean
function FOnLowLevelSend:Execute(Param1, Param2, Param3) end


---@class UNetConnection: UPlayer
---@field Children ULuaArrayHelper<UChildConnection> @child connections for secondary viewports
---@field PackageMapClass UPackageMap @The class name for the PackageMap to be loaded
---@field OpenChannels ULuaArrayHelper<UChannel>
---@field SentTemporaries ULuaArrayHelper<AActor> @This actor is bNetTemporary, which means it should never be replicated after it's initial packet is complete
---@field MaxPacket number
---@field InternalAck number
---@field PlayerId FUniqueNetIdRepl @Net id of remote player on this connection. Only valid on client connections (server side).
---@field LastReceiveTime number
---@field NoPacketTimeOut number
---@field NoAckTimeOut number
---@field PacketsLateFramesArrayCount number
---@field PacketsArriveFramesArrayCount number
---@field bOpenClientClampDeltaTime boolean
---@field ClientClampDeltaTimeMin number
---@field ClientClampDeltaTimeMax number
---@field NetViewers ULuaArrayHelper<FNetViewer>
---@field ShadowNetViewers ULuaArrayHelper<FShadowNetViewer>
---@field NeedDealwithRPCBatchChannels ULuaArrayHelper<UActorChannel>
---@field ChannelsRequiringSubobjectGuidCleanup ULuaSetHelper<UActorChannel>
local UNetConnection = {}
