---@meta

---@class ECVarType
---@field Group number
---@field BigWorld number
---@field Permanent number
ECVarType = {}


---Notification that the client is about to travel to a new URL
---@class FOnPreClientTravel : ULuaMulticastDelegate
FOnPreClientTravel = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string, Param2: ETravelType, Param3: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreClientTravel:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
---@param Param2 ETravelType
---@param Param3 boolean
function FOnPreClientTravel:Broadcast(Param1, Param2, Param3) end


---Delegate to call when demo playback handle client player finished.
---@class FOnDemoNetHandleSpectatorEndedDelegate : ULuaSingleDelegate
FOnDemoNetHandleSpectatorEndedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDemoNetHandleSpectatorEndedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnDemoNetHandleSpectatorEndedDelegate:Execute() end


---Delegate to call when demo playback in valid play processing.
---@class FOnDemoPlaybackValidProcessDelegate : ULuaSingleDelegate
FOnDemoPlaybackValidProcessDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDemoPlaybackValidProcessDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FOnDemoPlaybackValidProcessDelegate:Execute(Param1) end


---Delegate to call when demo playback finished.
---@class FOnDemoPlaybackEndedDelegate : ULuaSingleDelegate
FOnDemoPlaybackEndedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDemoPlaybackEndedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnDemoPlaybackEndedDelegate:Execute() end


---Delegate to call when demo net driver shut down.
---@class FOnDemoNetShutdownDelegate : ULuaSingleDelegate
FOnDemoNetShutdownDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDemoNetShutdownDelegate:Bind(Callback, Obj) end

---执行委托
function FOnDemoNetShutdownDelegate:Execute() end


---Delegate to call when demo net driver completed loading a map.
---@class FOnDemoNetMapLoaded : ULuaSingleDelegate
FOnDemoNetMapLoaded = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDemoNetMapLoaded:Bind(Callback, Obj) end

---执行委托
function FOnDemoNetMapLoaded:Execute() end


---Delegate to call when demo playback failure
---@class FOnDemoPlayFailure : ULuaSingleDelegate
FOnDemoPlayFailure = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: EDemoPlayFailure, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDemoPlayFailure:Bind(Callback, Obj) end

---执行委托
---@param Param1 EDemoPlayFailure
---@param Param2 string
function FOnDemoPlayFailure:Execute(Param1, Param2) end


---Delegate to call when game instance start
---@class FOnGameInstanceStart : ULuaMulticastDelegate
FOnGameInstanceStart = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UGameInstance) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameInstanceStart:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UGameInstance
function FOnGameInstanceStart:Broadcast(Param1) end


---@class FOnDemoReplayStreamingReadyDelegate : ULuaSingleDelegate
FOnDemoReplayStreamingReadyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDemoReplayStreamingReadyDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FOnDemoReplayStreamingReadyDelegate:Execute(Param1) end


---Delegate to call when game instance start
---@class FOnGameInstanceStart : ULuaMulticastDelegate
FOnGameInstanceStart = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UGameInstance) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameInstanceStart:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UGameInstance
function FOnGameInstanceStart:Broadcast(Param1) end


---Delegate to call when LiveReplay Kafka Error.
---@class FOnDemoLiveReplayKafkaErrorDelegate : ULuaSingleDelegate
FOnDemoLiveReplayKafkaErrorDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDemoLiveReplayKafkaErrorDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FOnDemoLiveReplayKafkaErrorDelegate:Execute(Param1) end


---Delegate to call when GlobalObserve is pending ready.
---@class FOnGlobalObserveReadyDelegate : ULuaSingleDelegate
FOnGlobalObserveReadyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGlobalObserveReadyDelegate:Bind(Callback, Obj) end

---执行委托
function FOnGlobalObserveReadyDelegate:Execute() end


---GameInstance: high-level manager object for an instance of the running game. Spawned at game creation and not destroyed until game instance is shut down. Running as a standalone game, there will be one of these. Running in PIE (play-in-editor) will generate one of these per PIE instance.
---@class UGameInstance: UObject, FExec
---@field EncryptedLocalPlayers ULuaArrayHelper<number>
---@field LocalPlayers ULuaArrayHelper<ULocalPlayer>
---@field bUseEncryptLocalPlayerPtr boolean
---@field CachedConsoleVariableBunch_BigWorld ULuaArrayHelper<number>
---@field CachedConsoleVariableBunch_Permanent ULuaArrayHelper<number>
---@field OnPakResStateChanged FOnPakResStateChanged
---@field SpecialPakResStates ULuaMapHelper<ESpecialPakID, EPakResState>
local UGameInstance = {}

---Opportunity for blueprints to handle the game instance being initialized.
function UGameInstance:ReceiveInit() end

---Opportunity for blueprints to handle the game instance being shutdown.
function UGameInstance:ReceiveShutdown() end

---Opportunity for blueprints to handle network errors.
---@param FailureType ENetworkFailure
---@param bIsServer boolean
function UGameInstance:HandleNetworkError(FailureType, bIsServer) end

---Opportunity for blueprints to handle travel errors.
---@param FailureType ETravelFailure
function UGameInstance:HandleTravelError(FailureType) end

---Debug console command to create a player.
---@param ControllerId number
function UGameInstance:DebugCreatePlayer(ControllerId) end

---Debug console command to remove the player with a given controller ID.
---@param ControllerId number
function UGameInstance:DebugRemovePlayer(ControllerId) end

---@param InPakID ESpecialPakID
---@param InPakState EPakResState
function UGameInstance:SetPakResState(InPakID, InPakState) end

---@param InPakID ESpecialPakID
---@return EPakResState
function UGameInstance:GetPakResState(InPakID) end

function UGameInstance:InitPakResState() end
