---@meta

---Holds the packet simulation settings in one place
---@class FPacketSimulationSettings
---@field PktLoss number @When set, will cause calls to FlushNet to drop packets. Value is treated as % of packets dropped (i.e. 0 = None, 100 = All). No general pattern / ordering is guaranteed. Clamped between 0 and 100. Works with all other settings.
---@field PktOrder number @When set, will cause calls to FlushNet to change ordering of packets at random. Value is treated as a bool (i.e. 0 = False, anything else = True). This works by randomly selecting packets to be delayed until a subsequent call to FlushNet. Takes precedence over PktDup and PktLag.
---@field PktDup number @When set, will cause calls to FlushNet to duplicate packets. Value is treated as % of packets duplicated (i.e. 0 = None, 100 = All). No general pattern / ordering is guaranteed. Clamped between 0 and 100. Cannot be used with PktOrder or PktLag.
---@field PktLag number @When set, will cause calls to FlushNet to delay packets. Value is treated as millisecond lag. Cannot be used with PktOrder.
---@field PktLagVariance number @When set, will cause PktLag to use variable lag instead of constant. Value is treated as millisecond lag range (e.g. -GivenVariance <= 0 <= GivenVariance). Clamped between 0 and 100. Can only be used when PktLag is enabled.
---@field PktIncomingLoss number @The ratio of incoming packets that will be dropped to simulate packet loss
FPacketSimulationSettings = {}


---Delegate for hooking ProcessRemoteFunction (used by NetcodeUnitTest)
---@class FOnSendRPC : ULuaSingleDelegate
FOnSendRPC = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AActor, Param2: UFunction, Param3: nil, Param4: FOutParmRec, Param5: FFrame, Param6: UObject, Param7: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSendRPC:Bind(Callback, Obj) end

---执行委托
---@param Param1 AActor
---@param Param2 UFunction
---@param Param3 nil
---@param Param4 FOutParmRec
---@param Param5 FFrame
---@param Param6 UObject
---@param Param7 boolean
function FOnSendRPC:Execute(Param1, Param2, Param3, Param4, Param5, Param6, Param7) end


---@class UNetDriver: UObject, FExec
---@field NetConnectionClassName string @Used to specify the class to use for connections
---@field MaxDownloadSize number
---@field bClampListenServerTickRate number
---@field NetServerMaxTickRate number
---@field MaxInternetClientRate number
---@field MaxClientRate number
---@field ServerTravelPause number @Amount of time a server will wait before traveling to next map, gives clients time to receive final RPCs on existing level @see NextSwitchCountdown
---@field SpawnPrioritySeconds number
---@field RelevantTimeout number
---@field KeepAliveTime number
---@field InitialConnectTimeout number @Amount of time to wait for a new net connection to be established before destroying the connection
---@field IgnoreNetReadyReplicateActorCount number @Number of prioritized actors which should ignore IsNetReady when gets replicated
---@field ConnectionTimeout number @Amount of time to wait before considering an established connection timed out. Typically shorter than the time to wait on a new connection because this connection should already have been setup and any interruption should be trapped quicker.
---@field TimeoutMultiplierForUnoptimizedBuilds number @A multiplier that is applied to the above values when we are running with unoptimized builds (debug) or data (uncooked). This allows us to retain normal timeout behavior while debugging without resorting to the nuclear 'notimeouts' option or bumping the values above. If ==0 multiplier = 1
---@field bNoTimeouts boolean @If true, ignore timeouts completely.  Should be used only in development
---@field SimpleRepClassConfig ULuaArrayHelper<string>
---@field ClientConnections ULuaArrayHelper<UNetConnection> @Array of connections to clients (this net driver is a host)
---@field NetDriverName string @Used to specify the net driver to filter actors with (NAME_None || NAME_GameNetDriver is the default net driver)
---@field Time number @Accumulated time for the net driver, updated by Tick
---@field bOpenClientClampDriverDeltaTime boolean
---@field ClientClampDriverDeltaTimeMin number
---@field ClientClampDriverDeltaTimeMax number
---@field NeedResendSubObjectCreateOrRemoveInfoClassConfiges ULuaArrayHelper<string>
local UNetDriver = {}
