---@meta

---@class ECheckEscapeType
---@field NoCheck number
---@field CheckGlobal number
---@field CheckTeam number
---@field WarmGame number
ECheckEscapeType = {}


---@class EVaultType
---@field OldOnly number
---@field NewOnly number
---@field Both number
EVaultType = {}


---@class EAllowGiveUpType
---@field NotAllow number
---@field SurroundedByEnemy number
---@field Always number
EAllowGiveUpType = {}


---Replace Texture URL config. feishen, 20210223
---@class FReplaceTextureURLCfg
---@field URL string
---@field Id number
---@field bOnlyVisibleToObserver boolean
FReplaceTextureURLCfg = {}


---@class FCompetitionDisplayLevelCfg
---@field LevelPath string
---@field Id number
---@field bOnlyVisibleToObserver boolean
FCompetitionDisplayLevelCfg = {}


---编辑器模拟刷物资统计, feishen, 20191018
---@class FSpawnItemStat
---@field ItemCategory string
---@field ItemValue string
---@field Together number
---@field Count number
---@field TriggerName string
---@field SpotGroupType number
---@field SpotType number
FSpawnItemStat = {}


---刷点僵尸最大存在数量配置  czcheng 20191230
---@class FSpawnZombieActiveMaxCfg
---@field Name string
---@field Max number
FSpawnZombieActiveMaxCfg = {}


---@class FDSAIDropItem
---@field uid number
---@field time number
---@field hlv number
---@field num number
---@field flowid number
---@field ismidsuperai number
---@field waveid number
FDSAIDropItem = {}


---@class FDSSuperAIDropItem
---@field uid number
---@field ailv number
FDSSuperAIDropItem = {}


---@class FDSAIDropInfo
---@field battleid number
---@field nts number
---@field ais ULuaArrayHelper<FDSAIDropItem>
---@field superaicandidate number
---@field hassuperais number
---@field superais ULuaArrayHelper<FDSSuperAIDropItem>
---@field superailvchange ULuaArrayHelper<FDSSuperAIDropItem>
---@field initmidsuperais ULuaArrayHelper<FDSSuperAIDropItem>
FDSAIDropInfo = {}


---@class FDSAIStrategyDeliverInstruction
---@field Uid number
---@field TeamId number
---@field Priority number
---@field Type number
---@field Num number
---@field Level number
FDSAIStrategyDeliverInstruction = {}


---@class FDSAIStrategyInfo
---@field ReturnValue number
---@field Message string
---@field FlowId number
---@field WaveId number
---@field NextRequestTime number
---@field IsMLAIEnabled boolean
---@field Instructions ULuaArrayHelper<FDSAIStrategyDeliverInstruction>
FDSAIStrategyInfo = {}


---@class FAIScriptWeightInfo
---@field Ret number
---@field Msg string
---@field Weight ULuaMapHelper<number, number>
FAIScriptWeightInfo = {}


---@class FObjectPoolReservation
---@field ObjectClass UObject
---@field FeatureSetType EFeatureSetType
---@field MinNumOverride number
---@field MaxNumOverride number
---@field AllocateObjectGapTimeOverride number
FObjectPoolReservation = {}


---@class FVehicleGlobalInfoData
---@field RefreshNum number
---@field RefreshVehicleMap ULuaMapHelper<number, number>
---@field UseNum number
FVehicleGlobalInfoData = {}


---@class FVehicleAvatarUsageData
---@field VehicleAvatarUsageTimes number
---@field VehicleAvatarDriveDuration number
---@field VehicleAvatarSwitchTimes number
---@field VehicleAvatarKillActorTimes number
---@field VehicleAvatarDestoryedTimes number
---@field VehicleAvatarNoFuelTimes number
---@field VehicleAvatarAddFuelTimes number
---@field VehicleAvatarTurnOversTimes number
---@field VehicleAvatarWheelDestoryedTimes number
---@field VehicleAvatarKillActorUseWeaponsTimes number
---@field VehicleAvatarBeKillUseWeaponsTimes number
---@field VehicleAvatarBeKillUseGrenadeTimes number
---@field VehicleAvatarExplodeKillActorTimes number
FVehicleAvatarUsageData = {}


---@class FIDIPChildActorConfig
---@field Tag number
---@field ClassPath string
FIDIPChildActorConfig = {}


---@class FReportHeavyWeaponBoxSpawnFlow : ULuaSingleDelegate
FReportHeavyWeaponBoxSpawnFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FHeavyWeaponBoxSpawnFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportHeavyWeaponBoxSpawnFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FHeavyWeaponBoxSpawnFlow
function FReportHeavyWeaponBoxSpawnFlow:Execute(Param1) end


---@class FReportHeavyWeaponBoxActivationFlow : ULuaSingleDelegate
FReportHeavyWeaponBoxActivationFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FHeavyWeaponBoxActivationFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportHeavyWeaponBoxActivationFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FHeavyWeaponBoxActivationFlow
function FReportHeavyWeaponBoxActivationFlow:Execute(Param1) end


---@class FReportHeavyWeaponBoxOpenPlayerFlow : ULuaSingleDelegate
FReportHeavyWeaponBoxOpenPlayerFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FHeavyWeaponBoxOpenPlayerFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportHeavyWeaponBoxOpenPlayerFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FHeavyWeaponBoxOpenPlayerFlow
function FReportHeavyWeaponBoxOpenPlayerFlow:Execute(Param1) end


---@class FReportHeavyWeaponBoxItemFlow : ULuaSingleDelegate
FReportHeavyWeaponBoxItemFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FHeavyWeaponBoxItemFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportHeavyWeaponBoxItemFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FHeavyWeaponBoxItemFlow
function FReportHeavyWeaponBoxItemFlow:Execute(Param1) end


---@class FReportSimpleDeadBoxLog : ULuaSingleDelegate
FReportSimpleDeadBoxLog = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FSimpleDeadBoxOpenFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportSimpleDeadBoxLog:Bind(Callback, Obj) end

---执行委托
---@param Param1 FSimpleDeadBoxOpenFlow
function FReportSimpleDeadBoxLog:Execute(Param1) end


---@class FReportUseDragonBoatLog : ULuaSingleDelegate
FReportUseDragonBoatLog = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FUseDragonBoatFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportUseDragonBoatLog:Bind(Callback, Obj) end

---执行委托
---@param Param1 FUseDragonBoatFlow
function FReportUseDragonBoatLog:Execute(Param1) end


---@class FUIStyleWidgetUnloadNameLog : ULuaSingleDelegate
FUIStyleWidgetUnloadNameLog = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: ULuaArrayHelper<string>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUIStyleWidgetUnloadNameLog:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 ULuaArrayHelper<string>
function FUIStyleWidgetUnloadNameLog:Execute(Param1, Param2) end


---@class FReportGameStartFlow : ULuaSingleDelegate
FReportGameStartFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FGameStartFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportGameStartFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FGameStartFlow
function FReportGameStartFlow:Execute(Param1, Param2) end


---@class FReportJumpFlow : ULuaSingleDelegate
FReportJumpFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FJumpFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportJumpFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FJumpFlow
function FReportJumpFlow:Execute(Param1, Param2) end


---@class FReportCircleFlow : ULuaSingleDelegate
FReportCircleFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FCircleFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportCircleFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FCircleFlow
function FReportCircleFlow:Execute(Param1, Param2) end


---@class FReportGameEndFlow : ULuaSingleDelegate
FReportGameEndFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FGameEndFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportGameEndFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FGameEndFlow
function FReportGameEndFlow:Execute(Param1, Param2) end


---@class FReportAimFlow : ULuaSingleDelegate
FReportAimFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FAimFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportAimFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FAimFlow
function FReportAimFlow:Execute(Param1, Param2) end


---@class FReportAttackFlow : ULuaSingleDelegate
FReportAttackFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FAttackFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportAttackFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FAttackFlow
function FReportAttackFlow:Execute(Param1, Param2) end


---@class FReportAsianAttackFlow : ULuaSingleDelegate
FReportAsianAttackFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FAsianAttackFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportAsianAttackFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FAsianAttackFlow
function FReportAsianAttackFlow:Execute(Param1, Param2) end


---@class FReportHurtFlow : ULuaSingleDelegate
FReportHurtFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FHurtFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportHurtFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FHurtFlow
function FReportHurtFlow:Execute(Param1, Param2) end


---@class FReportPlayerBehavior : ULuaSingleDelegate
FReportPlayerBehavior = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerBehaviorFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportPlayerBehavior:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerBehaviorFlow
function FReportPlayerBehavior:Execute(Param1) end


---@class FReportPlayerMoveRoute : ULuaSingleDelegate
FReportPlayerMoveRoute = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerRouteFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportPlayerMoveRoute:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerRouteFlow
function FReportPlayerMoveRoute:Execute(Param1) end


---@class FReportPlayerThrowFlow : ULuaSingleDelegate
FReportPlayerThrowFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerThrowFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportPlayerThrowFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerThrowFlow
function FReportPlayerThrowFlow:Execute(Param1) end


---@class FReportFireArms : ULuaSingleDelegate
FReportFireArms = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FSecPlayerKillFlow, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportFireArms:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FSecPlayerKillFlow
---@param Param3 number
function FReportFireArms:Execute(Param1, Param2, Param3) end


---@class FReportGameSetting : ULuaSingleDelegate
FReportGameSetting = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FGameSetting) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportGameSetting:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FGameSetting
function FReportGameSetting:Execute(Param1, Param2) end


---@class FReportGvoiceTeamCreate : ULuaSingleDelegate
FReportGvoiceTeamCreate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FGvoiceTeamCreate) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportGvoiceTeamCreate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FGvoiceTeamCreate
function FReportGvoiceTeamCreate:Execute(Param1, Param2) end


---@class FReportGvoiceTeamQuit : ULuaSingleDelegate
FReportGvoiceTeamQuit = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FGvoiceTeamQuit) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportGvoiceTeamQuit:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FGvoiceTeamQuit
function FReportGvoiceTeamQuit:Execute(Param1, Param2) end


---@class FReportVerifyInfoFlow : ULuaSingleDelegate
FReportVerifyInfoFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FVerifyInfoFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportVerifyInfoFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FVerifyInfoFlow
function FReportVerifyInfoFlow:Execute(Param1, Param2) end


---@class FSendTowPlayerKeys : ULuaSingleDelegate
FSendTowPlayerKeys = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendTowPlayerKeys:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FSendTowPlayerKeys:Execute(Param1, Param2) end


---@class FReportMrpcsFlow : ULuaSingleDelegate
FReportMrpcsFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FSecMrpcsFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportMrpcsFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FSecMrpcsFlow
function FReportMrpcsFlow:Execute(Param1, Param2) end


---@class FReportPlaeyrCheatedInBattle : ULuaSingleDelegate
FReportPlaeyrCheatedInBattle = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportPlaeyrCheatedInBattle:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FReportPlaeyrCheatedInBattle:Execute(Param1, Param2) end


---@class FOnGameModeEnterReady : ULuaSingleDelegate
FOnGameModeEnterReady = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameModeEnterReady:Bind(Callback, Obj) end

---执行委托
function FOnGameModeEnterReady:Execute() end


---@class FOnGameModeExitReady : ULuaSingleDelegate
FOnGameModeExitReady = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameModeExitReady:Bind(Callback, Obj) end

---执行委托
function FOnGameModeExitReady:Execute() end


---@class FReportCommonInfo : ULuaSingleDelegate
FReportCommonInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: string, Param4: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportCommonInfo:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 string
---@param Param4 string
function FReportCommonInfo:Execute(Param1, Param2, Param3, Param4) end


---@class FPlayerStateChanged : ULuaMulticastDelegate
FPlayerStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Params: FPlayerStateChangedParams) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Params FPlayerStateChangedParams
function FPlayerStateChanged:Broadcast(Params) end


---@class FCharacterStateChanged : ULuaSingleDelegate
FCharacterStateChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FCharacterStateChangedParams) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterStateChanged:Bind(Callback, Obj) end

---执行委托
---@param Param1 FCharacterStateChangedParams
function FCharacterStateChanged:Execute(Param1) end


---@class FRetrieveCharacterState : ULuaSingleDelegate
FRetrieveCharacterState = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveCharacterState:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FRetrieveCharacterState:Execute(Param1) end


---@class FRetrievePlayerState : ULuaSingleDelegate
FRetrievePlayerState = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrievePlayerState:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FRetrievePlayerState:Execute(Param1) end


---@class FGameModeStateChangedMultiDelegate : ULuaMulticastDelegate
FGameModeStateChangedMultiDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param: FGameModeStateChangedParams) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeStateChangedMultiDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param FGameModeStateChangedParams
function FGameModeStateChangedMultiDelegate:Broadcast(Param) end


---@class FGameModeStateChanged : ULuaMulticastDelegate
FGameModeStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FGameModeStateChangedParams) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FGameModeStateChangedParams
function FGameModeStateChanged:Broadcast(Param1) end


---@class FValidateLoginPlayer : ULuaSingleDelegate
FValidateLoginPlayer = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: FPlayerID, Param3: FPlayerID, Param4: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FValidateLoginPlayer:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 FPlayerID
---@param Param3 FPlayerID
---@param Param4 string
function FValidateLoginPlayer:Execute(Param1, Param2, Param3, Param4) end


---@class FAuthticatePlayer : ULuaSingleDelegate
FAuthticatePlayer = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: FPlayerID, Param3: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAuthticatePlayer:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 FPlayerID
---@param Param3 string
function FAuthticatePlayer:Execute(Param1, Param2, Param3) end


---@class FPlayerActorChannelError : ULuaSingleDelegate
FPlayerActorChannelError = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerActorChannelError:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 string
function FPlayerActorChannelError:Execute(Param1, Param2) end


---@class FPlayerNetConnectionClosed : ULuaSingleDelegate
FPlayerNetConnectionClosed = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: EConnectionClosedReason, Param3: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerNetConnectionClosed:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 EConnectionClosedReason
---@param Param3 string
function FPlayerNetConnectionClosed:Execute(Param1, Param2, Param3) end


---@class FReportCriticalGameError : ULuaSingleDelegate
FReportCriticalGameError = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportCriticalGameError:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 string
function FReportCriticalGameError:Execute(Param1, Param2) end


---@class FReportPlayerMovementError : ULuaSingleDelegate
FReportPlayerMovementError = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: string, Param3: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportPlayerMovementError:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 string
---@param Param3 string
function FReportPlayerMovementError:Execute(Param1, Param2, Param3) end


---@class FPIESyncNewDSPlayer : ULuaSingleDelegate
FPIESyncNewDSPlayer = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPIESyncNewDSPlayer:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FPIESyncNewDSPlayer:Execute(Param1) end


---@class FRetrievePlayerParams : ULuaSingleDelegate
FRetrievePlayerParams = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrievePlayerParams:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FRetrievePlayerParams:Execute(Param1) end


---@class FGetPlayerPacketKey : ULuaSingleDelegate
FGetPlayerPacketKey = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetPlayerPacketKey:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FGetPlayerPacketKey:Execute(Param1) end


---@class FRetrievePlayerExtraParams : ULuaSingleDelegate
FRetrievePlayerExtraParams = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrievePlayerExtraParams:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FRetrievePlayerExtraParams:Execute(Param1) end


---@class FRetrieveGlobalPlayerParams : ULuaSingleDelegate
FRetrieveGlobalPlayerParams = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveGlobalPlayerParams:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FRetrieveGlobalPlayerParams:Execute(Param1) end


---@class FRetrieveAIPlayerParams : ULuaSingleDelegate
FRetrieveAIPlayerParams = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveAIPlayerParams:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FRetrieveAIPlayerParams:Execute(Param1) end


---@class FRetrieveTrainingStatisticsData : ULuaSingleDelegate
FRetrieveTrainingStatisticsData = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveTrainingStatisticsData:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FRetrieveTrainingStatisticsData:Execute(Param1) end


---@class FRetrievePlayerList : ULuaSingleDelegate
FRetrievePlayerList = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrievePlayerList:Bind(Callback, Obj) end

---执行委托
function FRetrievePlayerList:Execute() end


---@class FRemoveDSPlayer : ULuaSingleDelegate
FRemoveDSPlayer = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRemoveDSPlayer:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FRemoveDSPlayer:Execute(Param1) end


---@class FRetrieveDSPlayerKeyList : ULuaSingleDelegate
FRetrieveDSPlayerKeyList = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveDSPlayerKeyList:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FRetrieveDSPlayerKeyList:Execute(Param1) end


---@class FRetrieveAIPlayerList : ULuaSingleDelegate
FRetrieveAIPlayerList = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveAIPlayerList:Bind(Callback, Obj) end

---执行委托
function FRetrieveAIPlayerList:Execute() end


---@class FRetrievePlayerOBInfo : ULuaSingleDelegate
FRetrievePlayerOBInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrievePlayerOBInfo:Bind(Callback, Obj) end

---执行委托
function FRetrievePlayerOBInfo:Execute() end


---@class FRetrieveRatingScoreDiffID : ULuaSingleDelegate
FRetrieveRatingScoreDiffID = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<number>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveRatingScoreDiffID:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<number>
function FRetrieveRatingScoreDiffID:Execute(Param1) end


---@class FRetrieveGameModeParams : ULuaSingleDelegate
FRetrieveGameModeParams = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveGameModeParams:Bind(Callback, Obj) end

---执行委托
function FRetrieveGameModeParams:Execute() end


---@class FRetrieveConstructableConfigurations : ULuaSingleDelegate
FRetrieveConstructableConfigurations = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveConstructableConfigurations:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FRetrieveConstructableConfigurations:Execute(Param1) end


---@class FRetrievePlayerPicUrlByOpenId : ULuaSingleDelegate
FRetrievePlayerPicUrlByOpenId = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrievePlayerPicUrlByOpenId:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FRetrievePlayerPicUrlByOpenId:Execute(Param1) end


---@class FGetRemainTeamCount : ULuaSingleDelegate
FGetRemainTeamCount = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetRemainTeamCount:Bind(Callback, Obj) end

---执行委托
function FGetRemainTeamCount:Execute() end


---@class FSendPlayerBattleResult : ULuaSingleDelegate
FSendPlayerBattleResult = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendPlayerBattleResult:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 string
function FSendPlayerBattleResult:Execute(Param1, Param2) end


---@class FSendTeamBattleResult : ULuaSingleDelegate
FSendTeamBattleResult = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendTeamBattleResult:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 string
function FSendTeamBattleResult:Execute(Param1, Param2) end


---@class FSendTeamBattleResultBatch : ULuaSingleDelegate
FSendTeamBattleResultBatch = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<number>, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendTeamBattleResultBatch:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<number>
---@param Param2 string
function FSendTeamBattleResultBatch:Execute(Param1, Param2) end


---@class FSendPlayerBattleResult_Dynamic : ULuaMulticastDelegate
FSendPlayerBattleResult_Dynamic = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, Reason: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendPlayerBattleResult_Dynamic:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param Reason string
function FSendPlayerBattleResult_Dynamic:Broadcast(PlayerKey, Reason) end


---@class FSendTeamBattleResult_Dynamic : ULuaMulticastDelegate
FSendTeamBattleResult_Dynamic = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TeamID: number, Reason: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendTeamBattleResult_Dynamic:Add(Callback, Obj) end

---触发 Lua 广播
---@param TeamID number
---@param Reason string
function FSendTeamBattleResult_Dynamic:Broadcast(TeamID, Reason) end


---@class FSendTeamBattleResultBatch_Dynamic : ULuaMulticastDelegate
FSendTeamBattleResultBatch_Dynamic = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TeamIDs: ULuaArrayHelper<number>, Reason: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendTeamBattleResultBatch_Dynamic:Add(Callback, Obj) end

---触发 Lua 广播
---@param TeamIDs ULuaArrayHelper<number>
---@param Reason string
function FSendTeamBattleResultBatch_Dynamic:Broadcast(TeamIDs, Reason) end


---@class FSendGameInfoAfterResult : ULuaSingleDelegate
FSendGameInfoAfterResult = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendGameInfoAfterResult:Bind(Callback, Obj) end

---执行委托
function FSendGameInfoAfterResult:Execute() end


---@class FSendGameOver : ULuaSingleDelegate
FSendGameOver = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendGameOver:Bind(Callback, Obj) end

---执行委托
function FSendGameOver:Execute() end


---@class FGamePreExit : ULuaSingleDelegate
FGamePreExit = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGamePreExit:Bind(Callback, Obj) end

---执行委托
function FGamePreExit:Execute() end


---@class FGameFinishDelegate : ULuaSingleDelegate
FGameFinishDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameFinishDelegate:Bind(Callback, Obj) end

---执行委托
function FGameFinishDelegate:Execute() end


---@class FSendMatchGoalAchieved : ULuaSingleDelegate
FSendMatchGoalAchieved = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendMatchGoalAchieved:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FSendMatchGoalAchieved:Execute(Param1) end


---@class FSendForbitPickFlow : ULuaSingleDelegate
FSendForbitPickFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FForbitPickFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendForbitPickFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FForbitPickFlow
function FSendForbitPickFlow:Execute(Param1) end


---@class FSendSuitSkinFlow : ULuaSingleDelegate
FSendSuitSkinFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FSuitSkinFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendSuitSkinFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FSuitSkinFlow
function FSendSuitSkinFlow:Execute(Param1) end


---@class FSendDragonBoatVehicleUseInfo : ULuaSingleDelegate
FSendDragonBoatVehicleUseInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FDragonBoatVehicleUseInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendDragonBoatVehicleUseInfo:Bind(Callback, Obj) end

---执行委托
---@param Param1 FDragonBoatVehicleUseInfo
function FSendDragonBoatVehicleUseInfo:Execute(Param1) end


---@class FSendFTeammatHurtFlow : ULuaSingleDelegate
FSendFTeammatHurtFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FTeammatHurtFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendFTeammatHurtFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FTeammatHurtFlow
function FSendFTeammatHurtFlow:Execute(Param1) end


---@class FSendWatchGamePlayerInfoButtonClick : ULuaSingleDelegate
FSendWatchGamePlayerInfoButtonClick = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FWatchGamePlayerInfoButtonClick) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendWatchGamePlayerInfoButtonClick:Bind(Callback, Obj) end

---执行委托
---@param Param1 FWatchGamePlayerInfoButtonClick
function FSendWatchGamePlayerInfoButtonClick:Execute(Param1) end


---@class FSendGameStartJoin : ULuaSingleDelegate
FSendGameStartJoin = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendGameStartJoin:Bind(Callback, Obj) end

---执行委托
function FSendGameStartJoin:Execute() end


---@class FSendGameStopJoin : ULuaSingleDelegate
FSendGameStopJoin = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendGameStopJoin:Bind(Callback, Obj) end

---执行委托
function FSendGameStopJoin:Execute() end


---@class FSendGameStart : ULuaSingleDelegate
FSendGameStart = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendGameStart:Bind(Callback, Obj) end

---执行委托
function FSendGameStart:Execute() end


---@class FSendHeartBeat : ULuaSingleDelegate
FSendHeartBeat = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendHeartBeat:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FSendHeartBeat:Execute(Param1, Param2) end


---@class FSendRequestPaintDecal : ULuaSingleDelegate
FSendRequestPaintDecal = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendRequestPaintDecal:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 number
---@param Param3 number
function FSendRequestPaintDecal:Execute(Param1, Param2, Param3) end


---@class FSendRequestPlayerUseItem : ULuaSingleDelegate
FSendRequestPlayerUseItem = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: number, Param3: number, Param4: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendRequestPlayerUseItem:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 number
---@param Param3 number
---@param Param4 boolean
function FSendRequestPlayerUseItem:Execute(Param1, Param2, Param3, Param4) end


---@class FSendRequestPlayerUseItemToTarget : ULuaSingleDelegate
FSendRequestPlayerUseItemToTarget = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: number, Param3: FPlayerID, Param4: number, Param5: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendRequestPlayerUseItemToTarget:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 number
---@param Param3 FPlayerID
---@param Param4 number
---@param Param5 boolean
function FSendRequestPlayerUseItemToTarget:Execute(Param1, Param2, Param3, Param4, Param5) end


---@class FSendPlayerCombatDroneRewardPointChange : ULuaSingleDelegate
FSendPlayerCombatDroneRewardPointChange = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendPlayerCombatDroneRewardPointChange:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 number
---@param Param3 number
function FSendPlayerCombatDroneRewardPointChange:Execute(Param1, Param2, Param3) end


---@class FSendGlideConfig : ULuaSingleDelegate
FSendGlideConfig = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendGlideConfig:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 number
---@param Param3 number
function FSendGlideConfig:Execute(Param1, Param2, Param3) end


---@class FSendPlayerUseSpecMotion : ULuaSingleDelegate
FSendPlayerUseSpecMotion = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendPlayerUseSpecMotion:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 number
---@param Param3 number
function FSendPlayerUseSpecMotion:Execute(Param1, Param2, Param3) end


---@class FSendReportImprisonmenter : ULuaSingleDelegate
FSendReportImprisonmenter = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendReportImprisonmenter:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 number
---@param Param3 number
function FSendReportImprisonmenter:Execute(Param1, Param2, Param3) end


---@class FSendPlayerUseInteractiveProbs : ULuaSingleDelegate
FSendPlayerUseInteractiveProbs = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID, Param2: number, Param3: number, Param4: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendPlayerUseInteractiveProbs:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
---@param Param2 number
---@param Param3 number
---@param Param4 number
function FSendPlayerUseInteractiveProbs:Execute(Param1, Param2, Param3, Param4) end


---@class FSendEnterWatchChain : ULuaSingleDelegate
FSendEnterWatchChain = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendEnterWatchChain:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FSendEnterWatchChain:Execute(Param1) end


---@class FSendDeathMatchBattleResult : ULuaMulticastDelegate
FSendDeathMatchBattleResult = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bAbortedGame: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendDeathMatchBattleResult:Add(Callback, Obj) end

---触发 Lua 广播
---@param bAbortedGame boolean
function FSendDeathMatchBattleResult:Broadcast(bAbortedGame) end


---@class FSendAiModelBattleResult : ULuaSingleDelegate
FSendAiModelBattleResult = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendAiModelBattleResult:Bind(Callback, Obj) end

---执行委托
function FSendAiModelBattleResult:Execute() end


---@class FSendDeathMatchPlayerEscapeBattleResult : ULuaMulticastDelegate
FSendDeathMatchPlayerEscapeBattleResult = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendDeathMatchPlayerEscapeBattleResult:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FSendDeathMatchPlayerEscapeBattleResult:Broadcast(PlayerKey) end


---@class FSendAiModelBattleResultSinglePlayer : ULuaMulticastDelegate
FSendAiModelBattleResultSinglePlayer = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendAiModelBattleResultSinglePlayer:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FSendAiModelBattleResultSinglePlayer:Broadcast(PlayerKey) end


---@class FFetchGmInfo : ULuaSingleDelegate
FFetchGmInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFetchGmInfo:Bind(Callback, Obj) end

---执行委托
function FFetchGmInfo:Execute() end


---@class FRetrieveIsAI : ULuaSingleDelegate
FRetrieveIsAI = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveIsAI:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FRetrieveIsAI:Execute(Param1) end


---@class FSyncDSPlayerDelayExit : ULuaSingleDelegate
FSyncDSPlayerDelayExit = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSyncDSPlayerDelayExit:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FSyncDSPlayerDelayExit:Execute(Param1) end


---@class FSendTssSdkAntiData : ULuaSingleDelegate
FSendTssSdkAntiData = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: ULuaArrayHelper<number>, Param3: number, Param4: number, Param5: number, Param6: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendTssSdkAntiData:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 ULuaArrayHelper<number>
---@param Param3 number
---@param Param4 number
---@param Param5 number
---@param Param6 boolean
function FSendTssSdkAntiData:Execute(Param1, Param2, Param3, Param4, Param5, Param6) end


---TSS安全打击维度之一数据 feishen, 20201221
---@class FSendTssSdkAntiDataStat : ULuaSingleDelegate
FSendTssSdkAntiDataStat = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendTssSdkAntiDataStat:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 number
function FSendTssSdkAntiDataStat:Execute(Param1, Param2, Param3) end


---@class FDSSendDataToLobby : ULuaSingleDelegate
FDSSendDataToLobby = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<number>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDSSendDataToLobby:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<number>
function FDSSendDataToLobby:Execute(Param1) end


---DSAgent, feishen, 20201008
---@class FSendDataToDSAgent : ULuaSingleDelegate
FSendDataToDSAgent = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string, Param3: ULuaArrayHelper<number>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendDataToDSAgent:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
---@param Param3 ULuaArrayHelper<number>
function FSendDataToDSAgent:Execute(Param1, Param2, Param3) end


---@class FDSSendDataToMLAgent : ULuaSingleDelegate
FDSSendDataToMLAgent = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<number>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDSSendDataToMLAgent:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<number>
function FDSSendDataToMLAgent:Execute(Param1) end


---@class FSendReplayData : ULuaSingleDelegate
FSendReplayData = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<number>, Param2: number, Param3: number, Param4: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendReplayData:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<number>
---@param Param2 number
---@param Param3 number
---@param Param4 number
function FSendReplayData:Execute(Param1, Param2, Param3, Param4) end


---@class FReportIDCardProduceFlowDelegate : ULuaSingleDelegate
FReportIDCardProduceFlowDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FReportIDCardProduceFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportIDCardProduceFlowDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FReportIDCardProduceFlow
function FReportIDCardProduceFlowDelegate:Execute(Param1, Param2) end


---@class FReportIDCardPickUpFlowDelegate : ULuaSingleDelegate
FReportIDCardPickUpFlowDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FReportIDCardPickUpFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportIDCardPickUpFlowDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FReportIDCardPickUpFlow
function FReportIDCardPickUpFlowDelegate:Execute(Param1, Param2) end


---@class FReportIDCardDestroyFlowDelegate : ULuaSingleDelegate
FReportIDCardDestroyFlowDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FReportIDCardDestroyFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportIDCardDestroyFlowDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FReportIDCardDestroyFlow
function FReportIDCardDestroyFlowDelegate:Execute(Param1, Param2) end


---@class FReportRevivalFlowDelegate : ULuaSingleDelegate
FReportRevivalFlowDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FReportRevivalFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportRevivalFlowDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FReportRevivalFlow
function FReportRevivalFlowDelegate:Execute(Param1, Param2) end


---@class FReportRecordFlowDelegate : ULuaSingleDelegate
FReportRecordFlowDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FSecRecordStartFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportRecordFlowDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FSecRecordStartFlow
function FReportRecordFlowDelegate:Execute(Param1) end


---@class FReportDHKeyInfoDelegate : ULuaSingleDelegate
FReportDHKeyInfoDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FDHkeyNegotiateInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportDHKeyInfoDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FDHkeyNegotiateInfo
function FReportDHKeyInfoDelegate:Execute(Param1) end


---@class FReportHeroEquipFlowDelegate : ULuaSingleDelegate
FReportHeroEquipFlowDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FHeroEquipFlowInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportHeroEquipFlowDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FHeroEquipFlowInfo
function FReportHeroEquipFlowDelegate:Execute(Param1, Param2) end


---@class FReportAIDeliveryFlow : ULuaSingleDelegate
FReportAIDeliveryFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FAIDeliveryFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportAIDeliveryFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FAIDeliveryFlow
function FReportAIDeliveryFlow:Execute(Param1) end


---@class FRealtimeEventFlow : ULuaSingleDelegate
FRealtimeEventFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FGameEventFlowItem) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRealtimeEventFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FGameEventFlowItem
function FRealtimeEventFlow:Execute(Param1) end


---@class FAIStatesFlow : ULuaSingleDelegate
FAIStatesFlow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FAISamplingReportInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAIStatesFlow:Bind(Callback, Obj) end

---执行委托
---@param Param1 FAISamplingReportInfo
function FAIStatesFlow:Execute(Param1) end


---@class FReportAIStrategyInfo : ULuaSingleDelegate
FReportAIStrategyInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FAIStrategyInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportAIStrategyInfo:Bind(Callback, Obj) end

---执行委托
---@param Param1 FAIStrategyInfo
function FReportAIStrategyInfo:Execute(Param1) end


---@class FReportAIGoingFight : ULuaSingleDelegate
FReportAIGoingFight = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportAIGoingFight:Bind(Callback, Obj) end

---执行委托
function FReportAIGoingFight:Execute() end


---@class FInitMLNetOnline : ULuaSingleDelegate
FInitMLNetOnline = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInitMLNetOnline:Bind(Callback, Obj) end

---执行委托
function FInitMLNetOnline:Execute() end


---@class FRetriveHaveMLAI : ULuaSingleDelegate
FRetriveHaveMLAI = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetriveHaveMLAI:Bind(Callback, Obj) end

---执行委托
function FRetriveHaveMLAI:Execute() end


---@class FMLAIDepositRequest : ULuaSingleDelegate
FMLAIDepositRequest = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean, Param2: number, Param3: number, Param4: number, Param5: string, Param6: TMapStringString) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMLAIDepositRequest:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
---@param Param2 number
---@param Param3 number
---@param Param4 number
---@param Param5 string
---@param Param6 TMapStringString
function FMLAIDepositRequest:Execute(Param1, Param2, Param3, Param4, Param5, Param6) end


---@class FMLAIImmedEventRequest : ULuaSingleDelegate
FMLAIImmedEventRequest = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string, Param3: number, Param4: TMapStringString) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMLAIImmedEventRequest:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
---@param Param3 number
---@param Param4 TMapStringString
function FMLAIImmedEventRequest:Execute(Param1, Param2, Param3, Param4) end


---@class FMLAIWithPartnerTeamInfoChangedDelegate : ULuaSingleDelegate
FMLAIWithPartnerTeamInfoChangedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMLAIWithPartnerTeamInfoChangedDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FMLAIWithPartnerTeamInfoChangedDelegate:Execute(Param1) end


---@class FMLAIWithPartnerVoiceProcessedDelegate : ULuaSingleDelegate
FMLAIWithPartnerVoiceProcessedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: string, Param4: ULuaArrayHelper<number>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMLAIWithPartnerVoiceProcessedDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 string
---@param Param4 ULuaArrayHelper<number>
function FMLAIWithPartnerVoiceProcessedDelegate:Execute(Param1, Param2, Param3, Param4) end


---@class FMLAIUpdateConfigRequest : ULuaSingleDelegate
FMLAIUpdateConfigRequest = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMLAIUpdateConfigRequest:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 number
function FMLAIUpdateConfigRequest:Execute(Param1, Param2, Param3) end


---@class FMLAIPersonalInfoRequest : ULuaSingleDelegate
FMLAIPersonalInfoRequest = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMLAIPersonalInfoRequest:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FMLAIPersonalInfoRequest:Execute(Param1) end


---@class FMLAIPersonalInfoApply : ULuaSingleDelegate
FMLAIPersonalInfoApply = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMLAIPersonalInfoApply:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FMLAIPersonalInfoApply:Execute(Param1) end


---@class FReportIceBeastFlowDelegate : ULuaSingleDelegate
FReportIceBeastFlowDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportIceBeastFlowDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FReportIceBeastFlowDelegate:Execute(Param1, Param2) end


---@class FReportTreasureBeastFlowDelegate : ULuaSingleDelegate
FReportTreasureBeastFlowDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FTreasureBeastInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportTreasureBeastFlowDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FTreasureBeastInfo
function FReportTreasureBeastFlowDelegate:Execute(Param1) end


---@class FReportZombieExtraInfoLogDelegate : ULuaSingleDelegate
FReportZombieExtraInfoLogDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FZombieExtraInfoLog) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportZombieExtraInfoLogDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FZombieExtraInfoLog
function FReportZombieExtraInfoLogDelegate:Execute(Param1) end


---@class FReportStartRecordingReplayDelegate : ULuaSingleDelegate
FReportStartRecordingReplayDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportStartRecordingReplayDelegate:Bind(Callback, Obj) end

---执行委托
function FReportStartRecordingReplayDelegate:Execute() end


---@class FReportOBReplayInfoDelegate : ULuaSingleDelegate
FReportOBReplayInfoDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FOBReplayInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportOBReplayInfoDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FOBReplayInfo
function FReportOBReplayInfoDelegate:Execute(Param1, Param2) end


---@class FReportOBReplayUploadResultDelegate : ULuaSingleDelegate
FReportOBReplayUploadResultDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: boolean, Param4: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportOBReplayUploadResultDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 boolean
---@param Param4 string
function FReportOBReplayUploadResultDelegate:Execute(Param1, Param2, Param3, Param4) end


---@class FNofityRealtimeReplayUploadStateDelegate : ULuaSingleDelegate
FNofityRealtimeReplayUploadStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FOBReplayInfo, Param3: boolean, Param4: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNofityRealtimeReplayUploadStateDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FOBReplayInfo
---@param Param3 boolean
---@param Param4 boolean
function FNofityRealtimeReplayUploadStateDelegate:Execute(Param1, Param2, Param3, Param4) end


---@class FReportDeathPlaybackFailedDelegate : ULuaSingleDelegate
FReportDeathPlaybackFailedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportDeathPlaybackFailedDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
---@param Param3 number
function FReportDeathPlaybackFailedDelegate:Execute(Param1, Param2, Param3) end


---@class FSendEmotionalMemoryData : ULuaSingleDelegate
FSendEmotionalMemoryData = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendEmotionalMemoryData:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FSendEmotionalMemoryData:Execute(Param1) end


---@class FRequestKillThanksDelegate : ULuaSingleDelegate
FRequestKillThanksDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRequestKillThanksDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FRequestKillThanksDelegate:Execute(Param1, Param2) end


---@class FReportKillThanksOperationDelegate : ULuaSingleDelegate
FReportKillThanksOperationDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportKillThanksOperationDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 number
function FReportKillThanksOperationDelegate:Execute(Param1, Param2, Param3) end


---@class FOnGameModeInitFinished : ULuaSingleDelegate
FOnGameModeInitFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameModeInitFinished:Bind(Callback, Obj) end

---执行委托
function FOnGameModeInitFinished:Execute() end


---@class FNotifyPlayerExitDelegate : ULuaMulticastDelegate
FNotifyPlayerExitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UAEPC: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyPlayerExitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param UAEPC AUAEPlayerController
function FNotifyPlayerExitDelegate:Broadcast(UAEPC) end


---@class FOnNotifyPlayerExitDelegate : ULuaMulticastDelegate
FOnNotifyPlayerExitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UAEPC: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNotifyPlayerExitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param UAEPC AUAEPlayerController
function FOnNotifyPlayerExitDelegate:Broadcast(UAEPC) end


---@class FTrainingModeTimeOutDelegate : ULuaSingleDelegate
FTrainingModeTimeOutDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTrainingModeTimeOutDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FTrainingModeTimeOutDelegate:Execute(Param1) end


---@class FReportSetIgnoreBlueCircleDelegate : ULuaSingleDelegate
FReportSetIgnoreBlueCircleDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportSetIgnoreBlueCircleDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FReportSetIgnoreBlueCircleDelegate:Execute(Param1, Param2) end


---@class FReportRCRWrongResultDelegate : ULuaSingleDelegate
FReportRCRWrongResultDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportRCRWrongResultDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 string
function FReportRCRWrongResultDelegate:Execute(Param1, Param2) end


---@class FRetrieveUGCCommodityPlayerData : ULuaSingleDelegate
FRetrieveUGCCommodityPlayerData = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPlayerID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveUGCCommodityPlayerData:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPlayerID
function FRetrieveUGCCommodityPlayerData:Execute(Param1) end


---@class FRequestUGCCommodityCommandDelegate : ULuaSingleDelegate
FRequestUGCCommodityCommandDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FRequestUGCCommodityExecuteCommand) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRequestUGCCommodityCommandDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FRequestUGCCommodityExecuteCommand
function FRequestUGCCommodityCommandDelegate:Execute(Param1) end


---@class FFilterChatRspDelegate : ULuaMulticastDelegate
FFilterChatRspDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: boolean, Param3: string, Param4: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFilterChatRspDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 boolean
---@param Param3 string
---@param Param4 string
function FFilterChatRspDelegate:Broadcast(Param1, Param2, Param3, Param4) end


---@class FFilterFireworksWishRspDelegate : ULuaMulticastDelegate
FFilterFireworksWishRspDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UID: number, res: boolean, dirt_content: string, clean_content: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFilterFireworksWishRspDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param UID number
---@param res boolean
---@param dirt_content string
---@param clean_content string
function FFilterFireworksWishRspDelegate:Broadcast(UID, res, dirt_content, clean_content) end


---@class FFilterMaterialTXTRspDelegate : ULuaMulticastDelegate
FFilterMaterialTXTRspDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UID: number, res: boolean, dirt_content: string, clean_content: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFilterMaterialTXTRspDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param UID number
---@param res boolean
---@param dirt_content string
---@param clean_content string
function FFilterMaterialTXTRspDelegate:Broadcast(UID, res, dirt_content, clean_content) end


---@class FGetSoloPeakBattleRecordDelegate : ULuaMulticastDelegate
FGetSoloPeakBattleRecordDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UID: number, BattleMessageInfo: FBattleMessageInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetSoloPeakBattleRecordDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param UID number
---@param BattleMessageInfo FBattleMessageInfo
function FGetSoloPeakBattleRecordDelegate:Broadcast(UID, BattleMessageInfo) end


---@class FVoiceReportBackDelegate : ULuaMulticastDelegate
FVoiceReportBackDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVoiceReportBackDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 string
function FVoiceReportBackDelegate:Broadcast(Param1, Param2) end


---@class FResponseUGCCommodityCommandDelegate : ULuaMulticastDelegate
FResponseUGCCommodityCommandDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FResponseUGCCommodityCommand) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FResponseUGCCommodityCommandDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FResponseUGCCommodityCommand
function FResponseUGCCommodityCommandDelegate:Broadcast(Param1) end


---家园-Start
---@class FOnSyncHomeDepotDataReqDelegate : ULuaSingleDelegate
FOnSyncHomeDepotDataReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSyncHomeDepotDataReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FOnSyncHomeDepotDataReqDelegate:Execute(Param1, Param2) end


---@class FBatchClearHomeItemNewReqDelegate : ULuaSingleDelegate
FBatchClearHomeItemNewReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: ULuaArrayHelper<number>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBatchClearHomeItemNewReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 ULuaArrayHelper<number>
function FBatchClearHomeItemNewReqDelegate:Execute(Param1, Param2, Param3) end


---@class FSendHomelandOperation2BackendDelegate : ULuaSingleDelegate
FSendHomelandOperation2BackendDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FHomelandOperationInfo, Param2: number, Param3: number, Param4: number, Param5: string, Param6: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendHomelandOperation2BackendDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FHomelandOperationInfo
---@param Param2 number
---@param Param3 number
---@param Param4 number
---@param Param5 string
---@param Param6 string
function FSendHomelandOperation2BackendDelegate:Execute(Param1, Param2, Param3, Param4, Param5, Param6) end


---@class FSendHomelandBlueprintOperation2BackendDelegate : ULuaSingleDelegate
FSendHomelandBlueprintOperation2BackendDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FHomelandOperationInfo, Param2: number, Param3: number, Param4: string, Param5: number, Param6: string, Param7: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendHomelandBlueprintOperation2BackendDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FHomelandOperationInfo
---@param Param2 number
---@param Param3 number
---@param Param4 string
---@param Param5 number
---@param Param6 string
---@param Param7 string
function FSendHomelandBlueprintOperation2BackendDelegate:Execute(Param1, Param2, Param3, Param4, Param5, Param6, Param7) end


---@class FOnHomeSetBuildAuthReqDelegate : ULuaSingleDelegate
FOnHomeSetBuildAuthReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: number, Param4: number, Param5: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHomeSetBuildAuthReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 number
---@param Param4 number
---@param Param5 number
function FOnHomeSetBuildAuthReqDelegate:Execute(Param1, Param2, Param3, Param4, Param5) end


---@class FOnHomeSetVisitAuthReqDelegate : ULuaSingleDelegate
FOnHomeSetVisitAuthReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHomeSetVisitAuthReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 number
function FOnHomeSetVisitAuthReqDelegate:Execute(Param1, Param2, Param3) end


---@class FOnGetHomeAuthDataReqDelegate : ULuaSingleDelegate
FOnGetHomeAuthDataReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGetHomeAuthDataReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FOnGetHomeAuthDataReqDelegate:Execute(Param1, Param2) end


---@class FOnHomeKickoutPlayerDelegate : ULuaSingleDelegate
FOnHomeKickoutPlayerDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHomeKickoutPlayerDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FOnHomeKickoutPlayerDelegate:Execute(Param1) end


---@class FOnHomeExtendBuildDelegate : ULuaSingleDelegate
FOnHomeExtendBuildDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHomeExtendBuildDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FOnHomeExtendBuildDelegate:Execute(Param1, Param2) end


---@class FOnHomeSyncHomeVisitorDataReqDelegate : ULuaSingleDelegate
FOnHomeSyncHomeVisitorDataReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHomeSyncHomeVisitorDataReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
function FOnHomeSyncHomeVisitorDataReqDelegate:Execute(Param1, Param2) end


---@class FSendHomelandBlueprintData2BackendDelegate : ULuaSingleDelegate
FSendHomelandBlueprintData2BackendDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: FCompressedBlueprintDataInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendHomelandBlueprintData2BackendDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 FCompressedBlueprintDataInfo
function FSendHomelandBlueprintData2BackendDelegate:Execute(Param1, Param2, Param3) end


---@class FSendHomeCopyBlueprintData2BackendDelegate : ULuaSingleDelegate
FSendHomeCopyBlueprintData2BackendDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: number, Param4: string, Param5: FCompressedBlueprintDataInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendHomeCopyBlueprintData2BackendDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 number
---@param Param4 string
---@param Param5 FCompressedBlueprintDataInfo
function FSendHomeCopyBlueprintData2BackendDelegate:Execute(Param1, Param2, Param3, Param4, Param5) end


---@class FHomeDiagnoseReportUObjectLeakInfoDelegate : ULuaSingleDelegate
FHomeDiagnoseReportUObjectLeakInfoDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHomeDiagnoseReportUObjectLeakInfoDelegate:Bind(Callback, Obj) end

---执行委托
function FHomeDiagnoseReportUObjectLeakInfoDelegate:Execute() end


---@class FHomelandGetBlueprintDataByCodeReqDelegate : ULuaSingleDelegate
FHomelandGetBlueprintDataByCodeReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: string, Param4: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHomelandGetBlueprintDataByCodeReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 string
---@param Param4 number
function FHomelandGetBlueprintDataByCodeReqDelegate:Execute(Param1, Param2, Param3, Param4) end


---@class FHomelandRequestHomeDataReqDelegate : ULuaSingleDelegate
FHomelandRequestHomeDataReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHomelandRequestHomeDataReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 string
function FHomelandRequestHomeDataReqDelegate:Execute(Param1, Param2) end


---@class FHomelandRequestImportLifeData : ULuaSingleDelegate
FHomelandRequestImportLifeData = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: string, Param4: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHomelandRequestImportLifeData:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 string
---@param Param4 string
function FHomelandRequestImportLifeData:Execute(Param1, Param2, Param3, Param4) end


---@class FHomelandRequestEmptyConstrctData : ULuaSingleDelegate
FHomelandRequestEmptyConstrctData = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: number, Param4: string, Param5: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHomelandRequestEmptyConstrctData:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 number
---@param Param4 string
---@param Param5 string
function FHomelandRequestEmptyConstrctData:Execute(Param1, Param2, Param3, Param4, Param5) end


---@class FHomeReportCommonInfoDelegate : ULuaSingleDelegate
FHomeReportCommonInfoDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: number, Param3: number, Param4: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHomeReportCommonInfoDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 number
---@param Param3 number
---@param Param4 string
function FHomeReportCommonInfoDelegate:Execute(Param1, Param2, Param3, Param4) end


---家园-End
---@class FReportEquipmentInfoDataDelegate : ULuaSingleDelegate
FReportEquipmentInfoDataDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: string, Param3: number, Param4: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportEquipmentInfoDataDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 string
---@param Param3 number
---@param Param4 string
function FReportEquipmentInfoDataDelegate:Execute(Param1, Param2, Param3, Param4) end


---@class FReportDSLogExtendedStorage : ULuaSingleDelegate
FReportDSLogExtendedStorage = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportDSLogExtendedStorage:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FReportDSLogExtendedStorage:Execute(Param1) end


---@class FReportDSSafePolicy : ULuaSingleDelegate
FReportDSSafePolicy = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FDSSafePolicyFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportDSSafePolicy:Bind(Callback, Obj) end

---执行委托
---@param Param1 FDSSafePolicyFlow
function FReportDSSafePolicy:Execute(Param1) end


---@class FReportDSBattlePerfMetric : ULuaSingleDelegate
FReportDSBattlePerfMetric = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FDSBattlePerfMetricFlow) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportDSBattlePerfMetric:Bind(Callback, Obj) end

---执行委托
---@param Param1 FDSBattlePerfMetricFlow
function FReportDSBattlePerfMetric:Execute(Param1) end


---@class FFetchPlayerDiagnosticInfoDelegate : ULuaSingleDelegate
FFetchPlayerDiagnosticInfoDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: APlayerController, Param2: string, Param3: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFetchPlayerDiagnosticInfoDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 APlayerController
---@param Param2 string
---@param Param3 string
function FFetchPlayerDiagnosticInfoDelegate:Execute(Param1, Param2, Param3) end


---@class FOnPreSpawnPlayActorsBeginDelegate : ULuaMulticastDelegate
FOnPreSpawnPlayActorsBeginDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreSpawnPlayActorsBeginDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 number
function FOnPreSpawnPlayActorsBeginDelegate:Broadcast(Param1, Param2) end


---@class FOnPreSpawnPlayActorsEndDelegate : ULuaMulticastDelegate
FOnPreSpawnPlayActorsEndDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreSpawnPlayActorsEndDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 number
function FOnPreSpawnPlayActorsEndDelegate:Broadcast(Param1, Param2) end


---@class FCommonSyncDepotReqDelegate : ULuaSingleDelegate
FCommonSyncDepotReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCommonSyncDepotReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 string
function FCommonSyncDepotReqDelegate:Execute(Param1, Param2) end


---@class FCommonBatchAddItemsReqDelegate : ULuaSingleDelegate
FCommonBatchAddItemsReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: ULuaArrayHelper<FBackpackItemParams>, Param3: number, Param4: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCommonBatchAddItemsReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 ULuaArrayHelper<FBackpackItemParams>
---@param Param3 number
---@param Param4 number
function FCommonBatchAddItemsReqDelegate:Execute(Param1, Param2, Param3, Param4) end


---@class FCommonBatchDelItemsReqDelegate : ULuaSingleDelegate
FCommonBatchDelItemsReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: ULuaArrayHelper<FBackpackItemParams>, Param3: number, Param4: number, Param5: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCommonBatchDelItemsReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 ULuaArrayHelper<FBackpackItemParams>
---@param Param3 number
---@param Param4 number
---@param Param5 boolean
function FCommonBatchDelItemsReqDelegate:Execute(Param1, Param2, Param3, Param4, Param5) end


---@class FCommonBatchRemoveItemNewFlagsReqDelegate : ULuaSingleDelegate
FCommonBatchRemoveItemNewFlagsReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: ULuaArrayHelper<FBackpackItemParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCommonBatchRemoveItemNewFlagsReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 ULuaArrayHelper<FBackpackItemParams>
function FCommonBatchRemoveItemNewFlagsReqDelegate:Execute(Param1, Param2) end


---@class FUpdateItemAdditionPropertiesReqDelegate : ULuaSingleDelegate
FUpdateItemAdditionPropertiesReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUpdateItemAdditionPropertiesReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
function FUpdateItemAdditionPropertiesReqDelegate:Execute(Param1, Param2) end


---@class FBigWorldBatchUpdateUGCVirtualItemsReqDelegate : ULuaSingleDelegate
FBigWorldBatchUpdateUGCVirtualItemsReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: ULuaArrayHelper<FBackpackItemParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBigWorldBatchUpdateUGCVirtualItemsReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 ULuaArrayHelper<FBackpackItemParams>
function FBigWorldBatchUpdateUGCVirtualItemsReqDelegate:Execute(Param1, Param2) end


---Escape Start
---@class FEscapeReportItemFlowReqDelegate : ULuaSingleDelegate
FEscapeReportItemFlowReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: ULuaArrayHelper<FBackpackItemParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEscapeReportItemFlowReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 ULuaArrayHelper<FBackpackItemParams>
function FEscapeReportItemFlowReqDelegate:Execute(Param1, Param2, Param3) end


---LostTomb Start
---@class FLostTombReportItemFlowReqDelegate : ULuaSingleDelegate
FLostTombReportItemFlowReqDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: number, Param3: ULuaArrayHelper<FBackpackItemParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLostTombReportItemFlowReqDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 number
---@param Param3 ULuaArrayHelper<FBackpackItemParams>
function FLostTombReportItemFlowReqDelegate:Execute(Param1, Param2, Param3) end


---LostTomb end
---@class FGameModeStageChangeDelegate : ULuaMulticastDelegate
FGameModeStageChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, StageType: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeStageChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param StageType string
function FGameModeStageChangeDelegate:Broadcast(StageType) end


---@class FOnDsHudShutDown : ULuaSingleDelegate
FOnDsHudShutDown = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDsHudShutDown:Bind(Callback, Obj) end

---执行委托
function FOnDsHudShutDown:Execute() end


---@class FOnFirstPlayerJumpParachute : ULuaSingleDelegate
FOnFirstPlayerJumpParachute = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFirstPlayerJumpParachute:Bind(Callback, Obj) end

---执行委托
function FOnFirstPlayerJumpParachute:Execute() end


---@class FOnFirstPlayerExitParachute : ULuaSingleDelegate
FOnFirstPlayerExitParachute = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFirstPlayerExitParachute:Bind(Callback, Obj) end

---执行委托
function FOnFirstPlayerExitParachute:Execute() end


---@class FReportPlayerFireFingerPosDelegate : ULuaSingleDelegate
FReportPlayerFireFingerPosDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportPlayerFireFingerPosDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 string
function FReportPlayerFireFingerPosDelegate:Execute(Param1, Param2) end


---@class FOnCreatePlayerControllerDelegate : ULuaSingleDelegate
FOnCreatePlayerControllerDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: APlayerController) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCreatePlayerControllerDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 APlayerController
function FOnCreatePlayerControllerDelegate:Execute(Param1) end


---@class FOnAfterPlayerLoginInitEndDelegate : ULuaSingleDelegate
FOnAfterPlayerLoginInitEndDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: FSuitSkinData) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAfterPlayerLoginInitEndDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 FSuitSkinData
function FOnAfterPlayerLoginInitEndDelegate:Execute(Param1, Param2) end


---@class FPlayerReconnectionSuccessful : ULuaSingleDelegate
FPlayerReconnectionSuccessful = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerReconnectionSuccessful:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FPlayerReconnectionSuccessful:Execute(Param1) end


---@class FReportCollectedEventDataDelegate : ULuaSingleDelegate
FReportCollectedEventDataDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AUAEGameMode, Param2: string, Param3: number, Param4: FCollectedEventData) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportCollectedEventDataDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 AUAEGameMode
---@param Param2 string
---@param Param3 number
---@param Param4 FCollectedEventData
function FReportCollectedEventDataDelegate:Execute(Param1, Param2, Param3, Param4) end


---@class AUAEGameMode: ABasicGameMode
---@field UtilsPtr UObject
---@field NetCallbacks ULuaMapHelper<string, UObject>
---@field GridCheckSize number
---@field DeepCheckSize number
---@field MaxPlayerLimit number
---@field bEnableClimbing boolean
---@field bEnableDoubleVault boolean
---@field IsUseFpsVault boolean
---@field VaultType EVaultType
---@field AllowGiveUpType EAllowGiveUpType
---@field DefaultTimeoutInRoomMode number
---@field bRemoveDSPlayerAfterGone boolean
---@field bServerOpenPassWallCheck boolean
---@field WeatherID number
---@field WeatherName string
---@field PCWeatherID number
---@field PCWeatherName string
---@field RoomMode number
---@field RoomName string
---@field GameModeId number
---@field MainModeId number
---@field CustomGameModeId number
---@field LobbySyncTime number
---@field DSReceiveSyncLocalTime number
---@field IsMatchRoom boolean
---@field IsWaitingObserverHost boolean
---@field EagleWatcherCount number
---@field IsCompetitionOnline boolean
---@field IsGMatchRoom boolean
---@field IsPeakCompetition boolean
---@field SeasonIdx number
---@field AirdropId number
---@field MeteorShowerRatio number
---@field ItemTableName string
---@field ItemClassPath string
---@field ItemTypeParam ULuaMapHelper<string, number>
---@field ItemSubTypeParam ULuaMapHelper<string, number>
---@field VehicleTypeParam ULuaMapHelper<string, number>
---@field VehicleSubTypeParam ULuaMapHelper<string, number>
---@field UseSelfAiming boolean @生化团竞合入, feishen, 20200828
---@field PickupBoxConfigClassPath string
---@field DeadTombBoxLifeSpan number
---@field bUseAutoGroupParachuteTeam boolean
---@field bAllowSwitchRideTogetherRelationshipInPlane boolean
---@field PickupBoxConfigDataTableName string
---@field VehicleTableName string
---@field VehicleClassPath string
---@field GameType number
---@field SubGameType number
---@field BattleCustomConfig ULuaMapHelper<string, number>
---@field MaxAllowReplicatedCharacterCount number
---@field AINoRepTimeInReady number
---@field ObserverPlayerStateClass AUAEOBState
---@field NetServerMaxTickRateInMatchRoom number
---@field bPlayerExitClearPlayerData boolean
---@field bPlayerExitClearPlayerController boolean
---@field bKillCharacterOnPlayerExit boolean @kill the character when player exits
---@field bUseSpawnItemZombieMax boolean @勾选后则用蓝图配的值，如果不勾选则读ini里面的值，但ini如果没有配则读下面的值
---@field SpawnZombieActiveMaxList ULuaArrayHelper<FSpawnZombieActiveMaxCfg> @刷点僵尸总量限制 配0无效
---@field SpawnZombieActiveMaxCfgList ULuaArrayHelper<FSpawnZombieActiveMaxCfg> @刷点僵尸总量限制 配0无效
---@field ReplaceTextureOrMeshIDIPWhiteIDList ULuaArrayHelper<number>
---@field bUseRandomClientStatReport boolean
---@field RandomClientStatReportRate number
---@field bIntervalSendDSLiteStatInfo boolean
---@field SendDSLiteStatInfoInterval number
---@field ItemGroupComponents ULuaArrayHelper<UGroupSpotSceneComponent>
---@field BuildingAdvertismentIds ULuaArrayHelper<number>
---@field MapId number
---@field MapName string
---@field NavlinkPath string
---@field NavMeshPath string
---@field RouteSegmentMode ERouteSegmentMode
---@field RouteSegmentList ULuaMapHelper<number, FRouteSegment>
---@field CompetitionModeTeamOrder ULuaMapHelper<number, number>
---@field IsGameModeFpp number
---@field bIsUGCGameMode boolean
---@field bUseUserDefinedMap boolean
---@field bEnableCustomPackItem boolean
---@field DropdownSchemeArray ULuaArrayHelper<FDropdownSchemeData>
---@field bKillThanksEnabled boolean
---@field bEnableSoundSpatialization boolean
---@field FilmMode number
---@field PeakCompetitionMatchType number
---@field MLAIProxyHost string
---@field MLAIProxyPort number
---@field TeamNum number
---@field TeamSize number
---@field bIsEnableMilitaryBox boolean
---@field AllPlayerMilitarySupPoint ULuaArrayHelper<number>
---@field OnNotifyPlayerExitDelegate FOnNotifyPlayerExitDelegate
---@field OnPlayerStateChanged FPlayerStateChanged @Notify UDS that player state changed
---@field OnGameModeStateChangedMultiDelegate FGameModeStateChangedMultiDelegate @Notify UDS that game state changed
---@field PreSendTeamBattleResult FSendTeamBattleResult_Dynamic @Pre send team battle result date to server when the whole team died, multicast dynamic delegate
---@field SendTeamBattleResult_Dynamic FSendTeamBattleResult_Dynamic @Send team battle result date to server when the whole team died, multicast dynamic delegate
---@field PreSendTeamBattleResultBatch FSendTeamBattleResultBatch_Dynamic @Pre send a batch of team battle result data to server when escape game mode finished, multicast dynamic delegate
---@field GameFinishDelegate FGameFinishDelegate @Broadcast Game Finish
---@field OnGameModeExitReady FOnGameModeExitReady @Notify UDS that game exit ready state
---@field SendDeathMatchBattleResult FSendDeathMatchBattleResult @Send DeathMatch team battle result date to server when the whole team died
---@field DeletateSendAiModelBattleResult FSendAiModelBattleResult @Send Model AI Data if there is some
---@field DeletateSendAiModelBattleResultSinglePlayer FSendAiModelBattleResultSinglePlayer
---@field DelegateFetchGmInfo FFetchGmInfo @Fetch Gm info
---@field SendDeathMatchPlayerEscapeBattleResult FSendDeathMatchPlayerEscapeBattleResult @Send DeathMatch player battle result date to server when the player escape
---@field GetSoloPeakBattleRecordDelegate FGetSoloPeakBattleRecordDelegate
---@field FilterFireworksWishRspDelegate FFilterFireworksWishRspDelegate
---@field FilterMaterialTXTRspDelegate FFilterMaterialTXTRspDelegate
---@field OnGameModeInitFinished FOnGameModeInitFinished
---@field bCollectedEventDataReportingEnabled boolean
---@field EnabledCollectedEventDataEventIds ULuaMapHelper<number, boolean>
---@field PlayersUnionCollectedEventType number
---@field bIsPreCreatingPlayerController boolean
---@field bIsPreCreatingPlayerActors boolean
---@field OBInfoTimeStep number
---@field OBFiringTimeStep number
---@field PlayerStaticInfoList ULuaArrayHelper<FPlayerStaticInfoInOB>
---@field ObserverControllerList ULuaArrayHelper<AUAEPlayerController>
---@field EagleWatchControllerList ULuaArrayHelper<AUAEPlayerController>
---@field AdvConfigList ULuaArrayHelper<FAdvertisementActorConfig>
---@field AdvTobeInit ULuaMapHelper<number, FAdvertisementActorConfig>
---@field AdvActorList ULuaMapHelper<number, AUAEAdvertisementActor>
---@field DropItemStrategyIDMap ULuaMapHelper<number, number>
---@field bEnablePlaneBanner boolean
---@field bPlaneBannerOnlyVisibleToObserver boolean
---@field HttpPlaneBannerLeftImgPath string
---@field HttpPlaneBannerRightImgPath string
---@field ReplaceTextureURLList ULuaArrayHelper<FReplaceTextureURLCfg> @替换贴图统一配置, feishen, 20210223
---@field ReplaceMeshAssetPathList ULuaArrayHelper<FReplaceTextureURLCfg>
---@field NewAddList ULuaArrayHelper<FReplaceTextureURLCfg>
---@field FakeAINames ULuaArrayHelper<string>
---@field CompetitionDisplayLevelList ULuaArrayHelper<FCompetitionDisplayLevelCfg>
---@field HostLimitTime number
---@field TotalHostTime number
---@field HostLimitCount number
---@field bHostOverload boolean
---@field CakeInfo FCakeInfo
---@field ReplaySwitch number
---@field GameRatingId number
---@field ChooseRatingType number
---@field NeedReplayPlayers ULuaArrayHelper<number>
---@field NeedLiveReplayPlayers ULuaArrayHelper<number>
---@field NeedLiveReplayParserPlayers ULuaArrayHelper<number>
---@field NeedLiveCampPlayers ULuaArrayHelper<number>
---@field TotalPlayerNum number
---@field CachedUIDList ULuaArrayHelper<number>
---@field TotalRealPlayerNum number
---@field TotalGeneratedPickup number @Total Pickup
---@field BisUseTeammateDamage boolean
---@field InitialDeadBoxItemList ULuaArrayHelper<FDeadBoxItem>
---@field TrainingStatisticsDataMap ULuaMapHelper<number, FTrainingStatisticsData>
---@field UseGMSpawnItemSpotDefaultTag boolean
---@field GMSpawnItemSpotDefaultTag string
---@field CampType number @camp game mode. feishen, 20220106
---@field LobbyCampCaptainType number
---@field LobbyCampShowCaptain number
---@field LobbyCampCaptainRevivalTimes number
---@field WeMatchTournamentId number
---@field WeMatchStageStatus number
---@field isLessTeam boolean
---@field MaxSubJoinTime number
---@field EscapeSpecialBossID number
---@field EscapeSpecialWeatherID number
---@field LobbyEscapeGameType number
---@field bEnableWFA boolean
---@field RoomClothingStyle number
---@field AIHostType number
---@field ObjectPoolReservations ULuaArrayHelper<FObjectPoolReservation>
---@field DelayKillDSTimeWhenClassFieldAccessDeniedTime number
---@field TrueSightGameModeName string
---@field bReadyStateWithoutCountDown boolean
---@field bClearDSPlayerListImmediately boolean
---@field bForceClearPendingExitPlayerWhenReenter boolean
---@field ClearPendingExitDSPlayerTimeout number
---@field CheckForBunkerKill boolean @是否执行掩体杀相关检查和上报的逻辑 控制掩体杀相关测试逻辑的作用范围
---@field bAbortedGame boolean @是否中断对局
---@field IDIPChildActorConfigList ULuaArrayHelper<FIDIPChildActorConfig>
---@field OnGameModeStageEnter FGameModeStageChangeDelegate @LostTomb Backpack end
---@field OnGameModeStageExit FGameModeStageChangeDelegate
---@field bForceOnePlayerOneTeam boolean
---@field CachedPreCreatePlayerKeys ULuaArrayHelper<number>
---@field bIsCloseMoveStuck boolean
---@field IDIPHandles ULuaArrayHelper<UIDIPHandle>
---@field OnDsHudShutDown FOnDsHudShutDown
local AUAEGameMode = {}

---@return FDateTime
function AUAEGameMode:GetCurrentLobbyTime() end

function AUAEGameMode:EnableMilitaryBox() end

function AUAEGameMode:CollectAllPlayerMilitarySupPoint() end

---@param NewPlayer AController
function AUAEGameMode:PreRestartPlayer(NewPlayer) end

---@param Killer AController
---@param VictimPlayer AController
---@param VictimPawn APawn
---@param DamageEvent FDamageEvent
function AUAEGameMode:Killed(Killer, VictimPlayer, VictimPawn, DamageEvent) end

---@param Handle UBattleItemHandleBase
---@param Reason EBattleItemDropReason
function AUAEGameMode:DoSomethingBeforeDrop(Handle, Reason) end

---@param Handle UBattleItemHandleBase
---@param Reason EBattleItemUseReason
---@param ToBackpack boolean
function AUAEGameMode:DoSomethingAfterPickup(Handle, Reason, ToBackpack) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
---@return number
function AUAEGameMode:ModifyDamage(Damage, DamageEvent, EventInstigator, VictimController, DamageCauser) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
---@return number
function AUAEGameMode:ModifyReductionDamage(Damage, DamageEvent, EventInstigator, VictimController, DamageCauser) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
---@return number
function AUAEGameMode:ModifyVehicleDamage(Damage, DamageEvent, EventInstigator, VictimController, DamageCauser) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
---@param VictimActor AActor
---@param ExtraResult FExtraDamageCalculationResult
---@return number
function AUAEGameMode:ModifyFinalDamage(Damage, DamageEvent, EventInstigator, VictimController, DamageCauser, VictimActor, ExtraResult) end

---@param RecoverValue number
---@param CauserInstigator AController
---@param TargetController AController
---@param RecoveryCauser AActor
---@param TargetActor AActor
---@param ExtraRecoverTags ULuaArrayHelper<FGameplayTag>
---@param ExtraResult FExtraDamageCalculationResult
---@return number
function AUAEGameMode:ModifyFinalRecoverHealth(RecoverValue, CauserInstigator, TargetController, RecoveryCauser, TargetActor, ExtraRecoverTags, ExtraResult) end

---@param ItemHandle UItemHandleBase
---@return boolean
function AUAEGameMode:CustomFilterNeedSaveBattleItem(ItemHandle) end

---@param Controller AController
---@param NewName string
---@param bNameChange boolean
function AUAEGameMode:ChangeName(Controller, NewName, bNameChange) end

---@param GroupSpotComponent UGroupSpotSceneComponent
function AUAEGameMode:RegisterItemGroupSpots(GroupSpotComponent) end

---@param Tag string
---@param GroupSpotComponent UGroupSpotSceneComponent
function AUAEGameMode:RegisterItemGroupSpotsByTag(Tag, GroupSpotComponent) end

---@param UID number
---@param Msg string
function AUAEGameMode:demo_net_callback(UID, Msg) end

---@param PlayerKey number
---@param PlayerType string
function AUAEGameMode:NotifyPrePlayerExit(PlayerKey, PlayerType) end

---destroy the corresponding player controller
---@param PlayerKey number
---@param PlayerType string
---@param bDestroyPlayerController boolean
---@param bDestroyCharacter boolean
---@param bSendFailure boolean
---@param FailureMessage string
function AUAEGameMode:NotifyPlayerExit(PlayerKey, PlayerType, bDestroyPlayerController, bDestroyCharacter, bSendFailure, FailureMessage) end

---@param PlayerKey number
---@param PlayerType string
function AUAEGameMode:NotifyPlayerReenter(PlayerKey, PlayerType) end

---@param ExitPlayer AUAEPlayerController
---@param Message string
function AUAEGameMode:OnNotifyPlayerExit(ExitPlayer, Message) end

---@param PlayerKey number
---@param TeamID number
---@param PromptType number
---@param Msg string
function AUAEGameMode:NotifyPlayerPrompt(PlayerKey, TeamID, PromptType, Msg) end

---does NOT relate to **NotifyPlayerExit** above
---@param PlayerKey number
---@param PlayerType string
function AUAEGameMode:NotifyPlayerAbleToExitSafely(PlayerKey, PlayerType) end

---SOFT kick the player and do NOT clear states in DS
---@param PlayerKey number
---@param PlayerType string
---@param bSendFailure boolean
---@param FailureMessage string
function AUAEGameMode:SoftKickPlayer(PlayerKey, PlayerType, bSendFailure, FailureMessage) end

---@param Connection UNetConnection
---@param bSendFailure boolean
---@param FailureMessage string
function AUAEGameMode:SoftCloseConnection(Connection, bSendFailure, FailureMessage) end

function AUAEGameMode:NotifyGameModeInit() end

function AUAEGameMode:NotifyTeamParamsSynced() end

function AUAEGameMode:NotifyCollectedEventDatasInfoSynced() end

---@param InstanceID number
---@param UID number
function AUAEGameMode:NotifyPlayerEnterInstance(InstanceID, UID) end

---@param InstanceID number
---@param UID number
function AUAEGameMode:NotifyPlayerExitInstance(InstanceID, UID) end

---@param TeamID number
---@return FGameModeTeamBattleResultData
function AUAEGameMode:RetrieveTeamBattleResultData(TeamID) end

function AUAEGameMode:RetrieveRemainingTeams() end

---@return FGameModeMatchGoalAchievedData
function AUAEGameMode:RetrieveGameModeMatchGoalAchievedData() end

---@return number
function AUAEGameMode:RecoardAlivePlayerNum() end

---@return number
function AUAEGameMode:GetSurvivingCharacterCount() end

---@return number
function AUAEGameMode:GetSurvivingTeamCount() end

---@param OutPlayerNum number
---@param OutRealAiNum number
function AUAEGameMode:GetPlayerAndRealAiNum(OutPlayerNum, OutRealAiNum) end

---@param PC APlayerController
function AUAEGameMode:KillCharacterOnPlayerExit(PC) end

---@param PC APlayerController
function AUAEGameMode:DestroyCharacterForPlayerController(PC) end

---@param Exiting APlayerController
function AUAEGameMode:OnPlayerRealExit(Exiting) end

---@param PlayerKey number
---@param allowWatch boolean
function AUAEGameMode:SetPlayerAllowWatch(PlayerKey, allowWatch) end

function AUAEGameMode:GetDynamicBattleRankInfoList() end

---@return boolean
function AUAEGameMode:AllowReconnectionWhenDead() end

function AUAEGameMode:SimulateDSGameInfos() end

---@param Exiting APlayerController
function AUAEGameMode:EnsureEscapeReason(Exiting) end

---@param NewPlayer AController
---@param StartSpot AActor
function AUAEGameMode:RestartPlayerAtPlayerStart(NewPlayer, StartSpot) end

---@param NewPlayer AController
---@param StartSpot AActor
---@param PawnClass APawn
function AUAEGameMode:RestartPlayerAtPlayerStartWithClass(NewPlayer, StartSpot, PawnClass) end

---@param Msg string
function AUAEGameMode:OnMsg(Msg) end

---@param TeamID number
---@param PlayerType string
function AUAEGameMode:GetPlayerControllerListWithTeamID(TeamID, PlayerType) end

---@param TeamID number
---@param PlayerType string
function AUAEGameMode:GetPlayerStateListWithTeamID(TeamID, PlayerType) end

function AUAEGameMode:GetDSPlayerList() end

---@param EventId number
---@return boolean
function AUAEGameMode:IsCollectedEventEnabled(EventId) end

---@param UAEPlayerController AUAEPlayerController
---@param EventId number
---@return boolean
function AUAEGameMode:IsPlayerCollectedEventDataReportingEnabled(UAEPlayerController, EventId) end

---@param UID string
---@param EventId number
---@param Data FCollectedEventData
---@return boolean
function AUAEGameMode:ReportCollectedEventData(UID, EventId, Data) end

---@param UAEPlayerController AUAEPlayerController
---@param EventId number
---@param CollectReportedEventDataCallback FCollectReportedEventDataCallback
---@return boolean
function AUAEGameMode:ReportCollectedEventDataWithPlayerValidation(UAEPlayerController, EventId, CollectReportedEventDataCallback) end

---@param EventId number
---@param CollectReportedEventDataCallback FCollectReportedEventDataCallback
---@return boolean
function AUAEGameMode:ReportCollectedEventDataWithPlayersValidation(EventId, CollectReportedEventDataCallback) end

---@param EventId number
---@param CollectReportedEventDataCallback FCollectReportedEventDataCallback
---@return boolean
function AUAEGameMode:ReportCollectedEventDataGlobal(EventId, CollectReportedEventDataCallback) end

---@return number
function AUAEGameMode:GetCircleConfigNum() end

---@param CircleIndex number
---@return number
function AUAEGameMode:GetCircleStartTime(CircleIndex) end

---@param CircleIndex number
---@return number
function AUAEGameMode:GetCircleEndTime(CircleIndex) end

---Version with boolean return value indicating success or not
---@param Actor AActor
---@param StartLocation FVector
---@param StartRotation FRotator
---@param OnlyZ boolean
---@param PawnRadius number
---@param PawnHeight number
---@param OutSpawnSpot FVector
---@return boolean
function AUAEGameMode:GetSpawnSpot(Actor, StartLocation, StartRotation, OnlyZ, PawnRadius, PawnHeight, OutSpawnSpot) end

---@param InPlayerKey number
---@param InPlayerName string
---@param playerUID string
---@param TeamID number
---@param IdxInTeam number
---@param JumpSegmentID number
---@param IsLogin boolean
function AUAEGameMode:RefreshPlayerStaticInfo(InPlayerKey, InPlayerName, playerUID, TeamID, IdxInTeam, JumpSegmentID, IsLogin) end

function AUAEGameMode:SyncPlayerStaticInfo() end

---@param InPlayerKey number
---@param InPlayerOpenID string
function AUAEGameMode:SetPlayerOpenId(InPlayerKey, InPlayerOpenID) end

---@param OutCorpsData ULuaArrayHelper<FDSCorpsInfo>
function AUAEGameMode:SyncNewCorpsData(OutCorpsData) end

---@param UID number
---@param LiveID string
---@param LiveType number
function AUAEGameMode:SyncLiveInfo(UID, LiveID, LiveType) end

---@param InPlayerKey number
function AUAEGameMode:OnPlayerStartFire(InPlayerKey) end

---@param InPlayerKey number
function AUAEGameMode:OnPlayerStopFire(InPlayerKey) end

function AUAEGameMode:GetObserverControllerList() end

---@param InController AUAEPlayerController
function AUAEGameMode:OnObserverLogin(InController) end

---@param InController AUAEPlayerController
function AUAEGameMode:OnObserverLogout(InController) end

---@param InController AUAEPlayerController
---@param InTeamID number
---@param IsAITeam boolean
function AUAEGameMode:RefreshWatchTeammates(InController, InTeamID, IsAITeam) end

---@param InController AUAEPlayerController
function AUAEGameMode:DebugEnterFriendObserver(InController) end

---@param InController AUAEPlayerController
function AUAEGameMode:OnNormalPlayerLogin(InController) end

function AUAEGameMode:InitAdvertisement() end

---@param AdvID number
---@param URL string
function AUAEGameMode:ChangeAdvertisementURL(AdvID, URL) end

function AUAEGameMode:TestPlaneBannerInEditor() end

---@param Id number
---@param OutPath string
---@param bOutOnlyVisibleToObserver boolean
---@return boolean
function AUAEGameMode:GetNewAddPath(Id, OutPath, bOutOnlyVisibleToObserver) end

---@param PlayerKey number
---@return string
function AUAEGameMode:GetPlayerAddress(PlayerKey) end

---@param Location FVector
---@return number
function AUAEGameMode:RemoveLocationFromExcludeSpot(Location) end

---生化团竞合入, feishen, 20200828
---@return number
function AUAEGameMode:GetUniqueLogicID() end

---@param UID number
---@param TrainingStatisticsData FTrainingStatisticsData
function AUAEGameMode:SetTrainingStatisticsData(UID, TrainingStatisticsData) end

---@param UID number
---@return FTrainingStatisticsData
function AUAEGameMode:GetTrainingStatisticsDataByUID(UID) end

---@param InTargetItem FItemDefineID
---@param InTargetBackpack UBackpackComponent
---@param InTargetPickupCount number
---@param OutLimitedItemCount number
---@return boolean
function AUAEGameMode:CheckPickupItemLimitedCount(InTargetItem, InTargetBackpack, InTargetPickupCount, OutLimitedItemCount) end

---@param InTargetItem UItemHandleBase
---@param InTargetBackpack UBackpackComponent
---@param OutLimitedItemCount number
---@return boolean
function AUAEGameMode:CheckRevivalSaveItemLimit(InTargetItem, InTargetBackpack, OutLimitedItemCount) end

---@param InMLAIEpisodeID string
function AUAEGameMode:SetMLAIEpisodeID(InMLAIEpisodeID) end

---The GameMode's PostInitializedByDSUtils() event is called after sync_game_param protocol is received Generally, DS will GameMode BeginPlay - Travel to battle map - PostLoadMap - InitNetDriver - InitGameModeDelegates - InitGameModeProperties - PostInitializedByDSUtils
function AUAEGameMode:PostInitializedByDSUtils() end

---@param IDIPStateInfos ULuaMapHelper<number, FIDIPStateInfo>
function AUAEGameMode:ReceivedIDIPStates(IDIPStateInfos) end

---@return boolean
function AUAEGameMode:CheckOverrideRestartPlayer() end

---@param Name string
---@param Value number
function AUAEGameMode:SetConsoleVariableForGameMode(Name, Value) end

---@param InputClass UIDIPHandle
function AUAEGameMode:FindAllIDIPHandleByClass(InputClass) end

---@param IDIPHandlesPathAndParams ULuaMapHelper<string, string>
function AUAEGameMode:SpawnIDIPHandlesByInfo(IDIPHandlesPathAndParams) end

---@param ExitPC AUAEPlayerController
---@return boolean
function AUAEGameMode:HandlePlayerExit(ExitPC) end

---@param PC AUAEPlayerController
---@return number
function AUAEGameMode:GetDeviceType(PC) end

function AUAEGameMode:DSForceEnterFinishState() end
