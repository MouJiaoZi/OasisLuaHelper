---@meta

---@class FOnGMSubSystemRegisteredDelegate : ULuaMulticastDelegate
FOnGMSubSystemRegisteredDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InSubSystemType: ESubSystemType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGMSubSystemRegisteredDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InSubSystemType ESubSystemType
function FOnGMSubSystemRegisteredDelegate:Broadcast(InSubSystemType) end


---@class FNotifyGameEnterFightDelegate : ULuaSingleDelegate
FNotifyGameEnterFightDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyGameEnterFightDelegate:Bind(Callback, Obj) end

---执行委托
function FNotifyGameEnterFightDelegate:Execute() end


---@class FNotifyGameEnterFinishDelegate : ULuaSingleDelegate
FNotifyGameEnterFinishDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyGameEnterFinishDelegate:Bind(Callback, Obj) end

---执行委托
function FNotifyGameEnterFinishDelegate:Execute() end


---@class FNotifyGameFightingStatePassedTimeDelegate : ULuaMulticastDelegate
FNotifyGameFightingStatePassedTimeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPassedTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyGameFightingStatePassedTimeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPassedTime number
function FNotifyGameFightingStatePassedTimeDelegate:Broadcast(InPassedTime) end


---@class FOnPlayerPostLoginDelegate : ULuaMulticastDelegate
FOnPlayerPostLoginDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayer: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerPostLoginDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayer APlayerController
function FOnPlayerPostLoginDelegate:Broadcast(InPlayer) end


---@class FOnPlayerLogoutDelegate : ULuaMulticastDelegate
FOnPlayerLogoutDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayer: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerLogoutDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayer APlayerController
function FOnPlayerLogoutDelegate:Broadcast(InPlayer) end


---@class FOnPlayerRealExitDelegate : ULuaMulticastDelegate
FOnPlayerRealExitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayer: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerRealExitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayer APlayerController
function FOnPlayerRealExitDelegate:Broadcast(InPlayer) end


---@class FOnPlayerNetCleanUp : ULuaMulticastDelegate
FOnPlayerNetCleanUp = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayer: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerNetCleanUp:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayer APlayerController
function FOnPlayerNetCleanUp:Broadcast(InPlayer) end


---@class FOnGameModeStopJoinDelegate : ULuaSingleDelegate
FOnGameModeStopJoinDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameModeStopJoinDelegate:Bind(Callback, Obj) end

---执行委托
function FOnGameModeStopJoinDelegate:Execute() end


---@class FOnPlayerEscapeDelegate : ULuaMulticastDelegate
FOnPlayerEscapeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerState: ASTExtraPlayerState, bIsPlayerAlive: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerEscapeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerState ASTExtraPlayerState
---@param bIsPlayerAlive boolean
function FOnPlayerEscapeDelegate:Broadcast(PlayerState, bIsPlayerAlive) end


---@class FOnPlayerKilledDelegate : ULuaMulticastDelegate
FOnPlayerKilledDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayerKey: number, KillerKey: number, bIsAI: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerKilledDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function FOnPlayerKilledDelegate:Broadcast(InPlayerKey, KillerKey, bIsAI) end


---@class FOnPlayerKilledBeforeSettlementDelegate : ULuaMulticastDelegate
FOnPlayerKilledBeforeSettlementDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayerKey: number, KillerKey: number, bIsAI: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerKilledBeforeSettlementDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function FOnPlayerKilledBeforeSettlementDelegate:Broadcast(InPlayerKey, KillerKey, bIsAI) end


---@class FOnPlayerKilledDelegate_String : ULuaMulticastDelegate
FOnPlayerKilledDelegate_String = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayerKey: string, KillerKey: string, bIsAI: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerKilledDelegate_String:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayerKey string
---@param KillerKey string
---@param bIsAI boolean
function FOnPlayerKilledDelegate_String:Broadcast(InPlayerKey, KillerKey, bIsAI) end


---@class FOnPlayerRespawnedDelegate : ULuaMulticastDelegate
FOnPlayerRespawnedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, bIsAI: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerRespawnedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param bIsAI boolean
function FOnPlayerRespawnedDelegate:Broadcast(PlayerKey, bIsAI) end


---@class FOnPlayerPreTakeDamageDelegate : ULuaMulticastDelegate
FOnPlayerPreTakeDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, VictimKey: number, InstigatorKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerPreTakeDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param VictimKey number
---@param InstigatorKey number
function FOnPlayerPreTakeDamageDelegate:Broadcast(VictimKey, InstigatorKey) end


---@class FOnPlayerEndTakeDamageDelegate : ULuaMulticastDelegate
FOnPlayerEndTakeDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, VictimKey: number, InstigatorKey: number, DamageCauser: AActor, DamageType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerEndTakeDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param VictimKey number
---@param InstigatorKey number
---@param DamageCauser AActor
---@param DamageType number
function FOnPlayerEndTakeDamageDelegate:Broadcast(VictimKey, InstigatorKey, DamageCauser, DamageType) end


---@class FOnPlayerTakeDamageDelegate : ULuaMulticastDelegate
FOnPlayerTakeDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, VictimKey: number, InstigatorKey: number, FinalDamage: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerTakeDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param VictimKey number
---@param InstigatorKey number
---@param FinalDamage number
function FOnPlayerTakeDamageDelegate:Broadcast(VictimKey, InstigatorKey, FinalDamage) end


---@class FOnPlayerTakeDamageDelegate_Type : ULuaMulticastDelegate
FOnPlayerTakeDamageDelegate_Type = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, VictimKey: number, InstigatorKey: number, FinalDamage: number, DamageType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerTakeDamageDelegate_Type:Add(Callback, Obj) end

---触发 Lua 广播
---@param VictimKey number
---@param InstigatorKey number
---@param FinalDamage number
---@param DamageType number
function FOnPlayerTakeDamageDelegate_Type:Broadcast(VictimKey, InstigatorKey, FinalDamage, DamageType) end


---@class FOnPlayerTakeDamageDelegate_String : ULuaMulticastDelegate
FOnPlayerTakeDamageDelegate_String = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, VictimKey: string, InstigatorKey: string, FinalDamage: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerTakeDamageDelegate_String:Add(Callback, Obj) end

---触发 Lua 广播
---@param VictimKey string
---@param InstigatorKey string
---@param FinalDamage number
function FOnPlayerTakeDamageDelegate_String:Broadcast(VictimKey, InstigatorKey, FinalDamage) end


---@class FOnPlayerRescueOthersDelegate : ULuaMulticastDelegate
FOnPlayerRescueOthersDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SavorKey: number, InjuredKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerRescueOthersDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SavorKey number
---@param InjuredKey number
function FOnPlayerRescueOthersDelegate:Broadcast(SavorKey, InjuredKey) end


---@class FOnPlayerHealOthersDelegate : ULuaMulticastDelegate
FOnPlayerHealOthersDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HealerKey: number, InjuredKey: number, HealAmount: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerHealOthersDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HealerKey number
---@param InjuredKey number
---@param HealAmount number
function FOnPlayerHealOthersDelegate:Broadcast(HealerKey, InjuredKey, HealAmount) end


---@class FOnPlayerPreEscapeDelegate : ULuaMulticastDelegate
FOnPlayerPreEscapeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerPreEscapeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnPlayerPreEscapeDelegate:Broadcast(PlayerKey) end


---@class FOnReceivedAICAddDelegate : ULuaMulticastDelegate
FOnReceivedAICAddDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayerKey: number, InAIC: AFakePlayerAIController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceivedAICAddDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayerKey number
---@param InAIC AFakePlayerAIController
function FOnReceivedAICAddDelegate:Broadcast(InPlayerKey, InAIC) end


---@class FOnAirDropLandGroundDelegate : ULuaMulticastDelegate
FOnAirDropLandGroundDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AirDropBoxActor: AActor, IsInWater: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAirDropLandGroundDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param AirDropBoxActor AActor
---@param IsInWater boolean
function FOnAirDropLandGroundDelegate:Broadcast(AirDropBoxActor, IsInWater) end


---@class FOnCircleStateChangedDelegate : ULuaMulticastDelegate
FOnCircleStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CircleIndex: number, MaxCircleIndex: number, CircleStatus: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCircleStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CircleIndex number
---@param MaxCircleIndex number
---@param CircleStatus number
function FOnCircleStateChangedDelegate:Broadcast(CircleIndex, MaxCircleIndex, CircleStatus) end


---@class FOnTeamDataChangedDelegate : ULuaMulticastDelegate
FOnTeamDataChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TeamID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTeamDataChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TeamID number
function FOnTeamDataChangedDelegate:Broadcast(TeamID) end


---@class FOnPlayerSendBattleResultDelegate : ULuaMulticastDelegate
FOnPlayerSendBattleResultDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, Reason: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSendBattleResultDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param Reason string
function FOnPlayerSendBattleResultDelegate:Broadcast(PlayerKey, Reason) end


---@class FOnPlayerLogoutHomeDelegate : ULuaMulticastDelegate
FOnPlayerLogoutHomeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerLogoutHomeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnPlayerLogoutHomeDelegate:Broadcast(PlayerKey) end


---@class FOnPlayerCauseDamageDelegate : ULuaMulticastDelegate
FOnPlayerCauseDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, FinalDamage: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerCauseDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param FinalDamage number
function FOnPlayerCauseDamageDelegate:Broadcast(PlayerKey, FinalDamage) end


---@class FOnPlayerLandedDelegate : ULuaMulticastDelegate
FOnPlayerLandedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerLandedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnPlayerLandedDelegate:Broadcast(PlayerKey) end


---@class FOnGameModeIDChanged : ULuaMulticastDelegate
FOnGameModeIDChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GameModeID: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameModeIDChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param GameModeID string
function FOnGameModeIDChanged:Broadcast(GameModeID) end


---@class FOnClientModeIDChanged : ULuaMulticastDelegate
FOnClientModeIDChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ClientModeID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientModeIDChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param ClientModeID number
function FOnClientModeIDChanged:Broadcast(ClientModeID) end


---@class FOnPlayerCauseFatalDamage : ULuaMulticastDelegate
FOnPlayerCauseFatalDamage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FatalDamageData: FPlayerFatalDamageData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerCauseFatalDamage:Add(Callback, Obj) end

---触发 Lua 广播
---@param FatalDamageData FPlayerFatalDamageData
function FOnPlayerCauseFatalDamage:Broadcast(FatalDamageData) end


---@class FOnKillFakeAI : ULuaSingleDelegate
FOnKillFakeAI = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnKillFakeAI:Bind(Callback, Obj) end

---执行委托
function FOnKillFakeAI:Execute() end


---@class FOnUGCMKeyProcessFinishedDelegate : ULuaSingleDelegate
FOnUGCMKeyProcessFinishedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMKeyProcessFinishedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnUGCMKeyProcessFinishedDelegate:Execute() end


---@class FOnFirstOpenedTombBoxNumAdd : ULuaMulticastDelegate
FOnFirstOpenedTombBoxNumAdd = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, FirstOpenedTombBoxNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFirstOpenedTombBoxNumAdd:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param FirstOpenedTombBoxNum number
function FOnFirstOpenedTombBoxNumAdd:Broadcast(PlayerKey, FirstOpenedTombBoxNum) end


---@class FEventCenterEventMaxKillerStateChanged : ULuaMulticastDelegate
FEventCenterEventMaxKillerStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MaxKillerState: EFatalDamageMaxKillStatus) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventMaxKillerStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param MaxKillerState EFatalDamageMaxKillStatus
function FEventCenterEventMaxKillerStateChanged:Broadcast(MaxKillerState) end


---@class FNotifyGameStateParamsChanged : ULuaMulticastDelegate
FNotifyGameStateParamsChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GameStateParmas: FGameStateParams) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyGameStateParamsChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param GameStateParmas FGameStateParams
function FNotifyGameStateParamsChanged:Broadcast(GameStateParmas) end


---@class FNotifyIDIPStateChanged : ULuaMulticastDelegate
FNotifyIDIPStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EnableIDSet: ULuaSetHelper<number>, DisableSet: ULuaSetHelper<number>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyIDIPStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param EnableIDSet ULuaSetHelper<number>
---@param DisableSet ULuaSetHelper<number>
function FNotifyIDIPStateChanged:Broadcast(EnableIDSet, DisableSet) end


---@class FOnPlayerExitBigWorld : ULuaMulticastDelegate
FOnPlayerExitBigWorld = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayer: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerExitBigWorld:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayer APlayerController
function FOnPlayerExitBigWorld:Broadcast(InPlayer) end


---@class FOnPlayerExitDeathMatch : ULuaMulticastDelegate
FOnPlayerExitDeathMatch = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, Reason: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerExitDeathMatch:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param Reason string
function FOnPlayerExitDeathMatch:Broadcast(PlayerKey, Reason) end


---@class FOnPreGeneralTlogSend : ULuaMulticastDelegate
FOnPreGeneralTlogSend = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreGeneralTlogSend:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnPreGeneralTlogSend:Broadcast(PlayerKey) end


---@class FOnCharacterInitWithParam : ULuaMulticastDelegate
FOnCharacterInitWithParam = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InCharacter: AUAECharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterInitWithParam:Add(Callback, Obj) end

---触发 Lua 广播
---@param InCharacter AUAECharacter
function FOnCharacterInitWithParam:Broadcast(InCharacter) end


---@class FOnDSLackResource : ULuaMulticastDelegate
FOnDSLackResource = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ResourceName: string, DependencyChain: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDSLackResource:Add(Callback, Obj) end

---触发 Lua 广播
---@param ResourceName string
---@param DependencyChain string
function FOnDSLackResource:Broadcast(ResourceName, DependencyChain) end


---@class FOnDSCaton : ULuaMulticastDelegate
FOnDSCaton = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurTimeStamp: number, CatonDelta: number, TickIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDSCaton:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurTimeStamp number
---@param CatonDelta number
---@param TickIndex number
function FOnDSCaton:Broadcast(CurTimeStamp, CatonDelta, TickIndex) end


---@class FOnWeatherSequenceOutOfPlayBack : ULuaMulticastDelegate
FOnWeatherSequenceOutOfPlayBack = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LackStr: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeatherSequenceOutOfPlayBack:Add(Callback, Obj) end

---触发 Lua 广播
---@param LackStr string
function FOnWeatherSequenceOutOfPlayBack:Broadcast(LackStr) end


---@class FOnCharacterBeginPlayDelegate : ULuaMulticastDelegate
FOnCharacterBeginPlayDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InCharacter: AUAECharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterBeginPlayDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InCharacter AUAECharacter
function FOnCharacterBeginPlayDelegate:Broadcast(InCharacter) end


---@class FOnPlaneClassDetermined : ULuaMulticastDelegate
FOnPlaneClassDetermined = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlaneClass: UClass) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlaneClassDetermined:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlaneClass UClass
function FOnPlaneClassDetermined:Broadcast(PlaneClass) end


---@class FOnDropItemInsDelegate : ULuaMulticastDelegate
FOnDropItemInsDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InItem: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDropItemInsDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InItem AActor
function FOnDropItemInsDelegate:Broadcast(InItem) end


---@class USTExtraGMDelegatesMgr: UBlueprintFunctionLibrary
---@field OnGMSubSystemRegisteredDelegate FOnGMSubSystemRegisteredDelegate
---@field NotifyGameEnterReadyDelegate FNotifyGameEnterFightDelegate
---@field NotifyGameEnterFightDelegate FNotifyGameEnterFightDelegate
---@field NotifyGameEnterFinishDelegate FNotifyGameEnterFinishDelegate
---@field NotifyGameFightingStatePassedTimeDelegate FNotifyGameFightingStatePassedTimeDelegate
---@field OnPlayerPostLoginDelegate FOnPlayerPostLoginDelegate
---@field OnPlayerLogoutDelegate FOnPlayerLogoutDelegate
---@field OnPlayerRealExitDelegate FOnPlayerRealExitDelegate
---@field OnPlayerNetCleanUp FOnPlayerNetCleanUp
---@field OnGameModeStopJoinPlayerDelegate FOnGameModeStopJoinDelegate
---@field OnPlayerEscapeDelegate FOnPlayerEscapeDelegate
---@field OnPlayerKilledDelegate FOnPlayerKilledDelegate
---@field OnPlayerKilledBeforeSettlementDelegate FOnPlayerKilledBeforeSettlementDelegate
---@field OnPlayerPreTakeDamageDelegate FOnPlayerPreTakeDamageDelegate
---@field OnPlayerEndTakeDamageDelegate FOnPlayerEndTakeDamageDelegate
---@field OnPlayerTakeDamageDelegate FOnPlayerTakeDamageDelegate
---@field OnPlayerTakeDamageDelegate_Type FOnPlayerTakeDamageDelegate_Type
---@field OnPlayerRescueOthersDelegate FOnPlayerRescueOthersDelegate
---@field OnPlayerHealOthersDelegate FOnPlayerHealOthersDelegate
---@field OnPlayerPreEscapeDelegate FOnPlayerPreEscapeDelegate
---@field OnReceivedAICAddDelegate FOnReceivedAICAddDelegate
---@field OnPlayerRespawnedDelegate FOnPlayerRespawnedDelegate
---@field OnDSLackResource FOnDSLackResource
---@field OnDSCaton FOnDSCaton
---@field OnWeatherSequenceOutOfPlayBack FOnWeatherSequenceOutOfPlayBack
---@field OnAirDropLandGroundDelegate FOnAirDropLandGroundDelegate
---@field OnCircleStateChangedDelegate FOnCircleStateChangedDelegate
---@field OnTeamDataChangedDelegate FOnTeamDataChangedDelegate
---@field OnPrePlayerSendBattleResultDelegate FOnPlayerSendBattleResultDelegate
---@field OnPlayerSendBattleResultDelegate FOnPlayerSendBattleResultDelegate
---@field OnPlayerLogoutHomeDelegate FOnPlayerLogoutHomeDelegate
---@field OnPlayerCauseDamageDelegate FOnPlayerCauseDamageDelegate
---@field OnPlayerLandedDelegate FOnPlayerLandedDelegate
---@field OnGameModeIDChangedDelegage FOnGameModeIDChanged
---@field OnClientModeIDChangedDelegage FOnClientModeIDChanged
---@field OnPlayerCauseFatalDamage FOnPlayerCauseFatalDamage
---@field OnKillFakeAI FOnKillFakeAI
---@field OnUGCMKeyProcessFinishedDelegate FOnUGCMKeyProcessFinishedDelegate
---@field OnMaxKillerStateChanged FEventCenterEventMaxKillerStateChanged
---@field OnFirstOpenedTombBoxNumAdd FOnFirstOpenedTombBoxNumAdd
---@field NotifyGameStateParamsChanged FNotifyGameStateParamsChanged
---@field NotifyIDIPStateChanged FNotifyIDIPStateChanged
---@field OnPlayerExitBigWorld FOnPlayerExitBigWorld
---@field OnPlayerExitDeathMatch FOnPlayerExitDeathMatch
---@field NotifyInitialPlaneRouteFinished FNotifyGameEnterFightDelegate
---@field OnPreGeneralTlogSend FOnPreGeneralTlogSend
---@field OnCharacterInitWithParam FOnCharacterInitWithParam
---@field OnCharacterBeginPlayDelegate FOnCharacterBeginPlayDelegate
---@field OnCOSRequestSuccess FOnCOSHttpRequestCompleteBPDelegate
---@field OnPlaneClassDetermined FOnPlaneClassDetermined
---@field OnDropItemSpawned FOnDropItemInsDelegate
---@field OnDropItemPreDestroy FOnDropItemInsDelegate
---@field OnPlayerKilledDelegate_String FOnPlayerKilledDelegate_String
---@field OnPlayerTakeDamageDelegate_String FOnPlayerTakeDamageDelegate_String
local USTExtraGMDelegatesMgr = {}

function USTExtraGMDelegatesMgr:ReleaseInstance() end

---@param InPlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function USTExtraGMDelegatesMgr:OnPlayerKilled(InPlayerKey, KillerKey, bIsAI) end

---@param VictimKey number
---@param InstigatorKey number
---@param FinalDamage number
function USTExtraGMDelegatesMgr:OnPlayerTakeDamage(VictimKey, InstigatorKey, FinalDamage) end
