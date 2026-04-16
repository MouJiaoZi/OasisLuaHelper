---@meta

---@class FOnPlayerStateNameChange : ULuaMulticastDelegate
FOnPlayerStateNameChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, playername: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerStateNameChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param playername string
function FOnPlayerStateNameChange:Broadcast(playername) end


---@class FOnCharacterHPChangeDelegate : ULuaMulticastDelegate
FOnCharacterHPChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, currentHP: number, ratioHP: number, OwnerCharacter: ACharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterHPChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param currentHP number
---@param ratioHP number
---@param OwnerCharacter ACharacter
function FOnCharacterHPChangeDelegate:Broadcast(currentHP, ratioHP, OwnerCharacter) end


---@class FOnCharacterBreathChangeDelegate : ULuaMulticastDelegate
FOnCharacterBreathChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, currentBR: number, ratioBR: number, OwnerCharacter: ACharacter, HealthStatus: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterBreathChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param currentBR number
---@param ratioBR number
---@param OwnerCharacter ACharacter
---@param HealthStatus number
function FOnCharacterBreathChangeDelegate:Broadcast(currentBR, ratioBR, OwnerCharacter, HealthStatus) end


---@class FOnCharacterCanSuicideChangeDelegate : ULuaMulticastDelegate
FOnCharacterCanSuicideChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerPawn: ACharacter, IsTurnInto: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCanSuicideChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerPawn ACharacter
---@param IsTurnInto boolean
function FOnCharacterCanSuicideChangeDelegate:Broadcast(OwnerPawn, IsTurnInto) end


---@class FOnCharacterCanDoubleVaultChangeDelegate : ULuaMulticastDelegate
FOnCharacterCanDoubleVaultChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerPawn: ACharacter, IsTurnInto: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCanDoubleVaultChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerPawn ACharacter
---@param IsTurnInto boolean
function FOnCharacterCanDoubleVaultChangeDelegate:Broadcast(OwnerPawn, IsTurnInto) end


---@class FOnCharacterCanRescueChangeDelegate : ULuaMulticastDelegate
FOnCharacterCanRescueChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerPawn: ACharacter, RescuedPawn: ACharacter, IsTurnInto: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCanRescueChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerPawn ACharacter
---@param RescuedPawn ACharacter
---@param IsTurnInto boolean
function FOnCharacterCanRescueChangeDelegate:Broadcast(OwnerPawn, RescuedPawn, IsTurnInto) end


---@class FOnCharacterCanCarryChangeDelegate : ULuaMulticastDelegate
FOnCharacterCanCarryChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerPawn: ACharacter, CarriedPawn: ACharacter, IsTurnInto: boolean, SwitcherIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCanCarryChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerPawn ACharacter
---@param CarriedPawn ACharacter
---@param IsTurnInto boolean
---@param SwitcherIndex number
function FOnCharacterCanCarryChangeDelegate:Broadcast(OwnerPawn, CarriedPawn, IsTurnInto, SwitcherIndex) end


---@class FOnCharacterCanCarryDeadBoxChangeDelegate : ULuaMulticastDelegate
FOnCharacterCanCarryDeadBoxChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerPawn: ACharacter, CarriedDeadBox: APlayerTombBox, IsTurnInto: boolean, SwitcherIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCanCarryDeadBoxChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerPawn ACharacter
---@param CarriedDeadBox APlayerTombBox
---@param IsTurnInto boolean
---@param SwitcherIndex number
function FOnCharacterCanCarryDeadBoxChangeDelegate:Broadcast(OwnerPawn, CarriedDeadBox, IsTurnInto, SwitcherIndex) end


---@class FOnCharacterEnterRescueingStatusChangeDelegate : ULuaMulticastDelegate
FOnCharacterEnterRescueingStatusChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HelpWho: ACharacter, Owner: ACharacter, IsTurnInto: boolean, RemainingRescueTime: number, IsFirstPlayerHelper: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterEnterRescueingStatusChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HelpWho ACharacter
---@param Owner ACharacter
---@param IsTurnInto boolean
---@param RemainingRescueTime number
---@param IsFirstPlayerHelper boolean
function FOnCharacterEnterRescueingStatusChangeDelegate:Broadcast(HelpWho, Owner, IsTurnInto, RemainingRescueTime, IsFirstPlayerHelper) end


---@class FOnCharacterKilledTipsDelegate : ULuaMulticastDelegate
FOnCharacterKilledTipsDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BlockData: FKilledTipsBlock) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterKilledTipsDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BlockData FKilledTipsBlock
function FOnCharacterKilledTipsDelegate:Broadcast(BlockData) end


---@class FOnVehicleHPChangeDelegate : ULuaMulticastDelegate
FOnVehicleHPChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, currentHP: number, ratioHP: number, OwnerController: AController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehicleHPChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param currentHP number
---@param ratioHP number
---@param OwnerController AController
function FOnVehicleHPChangeDelegate:Broadcast(currentHP, ratioHP, OwnerController) end


---@class FOnCharacterStateChangeDelegate : ULuaMulticastDelegate
FOnCharacterStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: ExtraPlayerLiveState, OwnerCharacter: ACharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param State ExtraPlayerLiveState
---@param OwnerCharacter ACharacter
function FOnCharacterStateChangeDelegate:Broadcast(State, OwnerCharacter) end


---@class FOnPlayerStateChangeDelegate : ULuaMulticastDelegate
FOnPlayerStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: ExtraPlayerLiveState, InPlayerState: APlayerState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param State ExtraPlayerLiveState
---@param InPlayerState APlayerState
function FOnPlayerStateChangeDelegate:Broadcast(State, InPlayerState) end


---@class FOnCharacterStateChangeByIndexDelegate : ULuaMulticastDelegate
FOnCharacterStateChangeByIndexDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: ExtraPlayerLiveState, TeammateIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStateChangeByIndexDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param State ExtraPlayerLiveState
---@param TeammateIndex number
function FOnCharacterStateChangeByIndexDelegate:Broadcast(State, TeammateIndex) end


---@class FOnEnterBornIsland : ULuaSingleDelegate
FOnEnterBornIsland = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEnterBornIsland:Bind(Callback, Obj) end

---执行委托
function FOnEnterBornIsland:Execute() end


---@class FOnCorpsOutGame : ULuaMulticastDelegate
FOnCorpsOutGame = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KillerCorpsID: number, CorpsID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCorpsOutGame:Add(Callback, Obj) end

---触发 Lua 广播
---@param KillerCorpsID number
---@param CorpsID number
function FOnCorpsOutGame:Broadcast(KillerCorpsID, CorpsID) end


---@class FOnCorpsJoinGame : ULuaMulticastDelegate
FOnCorpsJoinGame = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CorpsID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCorpsJoinGame:Add(Callback, Obj) end

---触发 Lua 广播
---@param CorpsID number
function FOnCorpsJoinGame:Broadcast(CorpsID) end


---@class FOnUpdateUIPrefab : ULuaSingleDelegate
FOnUpdateUIPrefab = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUpdateUIPrefab:Bind(Callback, Obj) end

---执行委托
function FOnUpdateUIPrefab:Execute() end


---@class FGMQuickPassTimeEvent : ULuaSingleDelegate
FGMQuickPassTimeEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGMQuickPassTimeEvent:Bind(Callback, Obj) end

---执行委托
function FGMQuickPassTimeEvent:Execute() end


---@class FOnGameStateBeginPlay : ULuaMulticastDelegate
FOnGameStateBeginPlay = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GameState: AGameStateBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameStateBeginPlay:Add(Callback, Obj) end

---触发 Lua 广播
---@param GameState AGameStateBase
function FOnGameStateBeginPlay:Broadcast(GameState) end


---@class FOnClientDynamicWeatherChanged : ULuaMulticastDelegate
FOnClientDynamicWeatherChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeatherStatusType: EWeatherStatusType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientDynamicWeatherChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeatherStatusType EWeatherStatusType
function FOnClientDynamicWeatherChanged:Broadcast(WeatherStatusType) end


---@class FReportHeroSkillRecordDelegate : ULuaMulticastDelegate
FReportHeroSkillRecordDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, HeroID: number, SkillID: number, RecordName: string, RecordValue: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportHeroSkillRecordDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param HeroID number
---@param SkillID number
---@param RecordName string
---@param RecordValue number
function FReportHeroSkillRecordDelegate:Broadcast(PlayerKey, HeroID, SkillID, RecordName, RecordValue) end


---@class FSendHeroEquipFlowDelegate : ULuaMulticastDelegate
FSendHeroEquipFlowDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, HeroEquipFlowInfo: FHeroEquipFlowInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSendHeroEquipFlowDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param HeroEquipFlowInfo FHeroEquipFlowInfo
function FSendHeroEquipFlowDelegate:Broadcast(PlayerKey, HeroEquipFlowInfo) end


---@class FOnChangeWeaponInspectDelegate : ULuaMulticastDelegate
FOnChangeWeaponInspectDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraWeapon, bEnableInspect: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnChangeWeaponInspectDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraWeapon
---@param bEnableInspect boolean
function FOnChangeWeaponInspectDelegate:Broadcast(Weapon, bEnableInspect) end


---@class FOnPlayerControllerBeginPlay : ULuaMulticastDelegate
FOnPlayerControllerBeginPlay = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerControllerBeginPlay:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController ASTExtraPlayerController
function FOnPlayerControllerBeginPlay:Broadcast(PlayerController) end


---@class FOnAirlineTerminalBeginPlayDelegate : ULuaMulticastDelegate
FOnAirlineTerminalBeginPlayDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Owner: ASTExtraPlayerState, Terminal: UActorComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAirlineTerminalBeginPlayDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Owner ASTExtraPlayerState
---@param Terminal UActorComponent
function FOnAirlineTerminalBeginPlayDelegate:Broadcast(Owner, Terminal) end


---@class FOnMonsterFreezeDelegate : ULuaMulticastDelegate
FOnMonsterFreezeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InMonster: AActor, bIsFreeze: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMonsterFreezeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InMonster AActor
---@param bIsFreeze boolean
function FOnMonsterFreezeDelegate:Broadcast(InMonster, bIsFreeze) end


---@class USTExtraDelegateMgr: UBlueprintFunctionLibrary
---@field OnPlayerStateNameChange FOnPlayerStateNameChange
---@field OnHPChange FOnCharacterHPChangeDelegate
---@field OnCanSuicideChange FOnCharacterCanSuicideChangeDelegate
---@field OnCanDoubleVaultChange FOnCharacterCanDoubleVaultChangeDelegate
---@field OnCanRescueOtherChange FOnCharacterCanRescueChangeDelegate
---@field OnCanCarryOtherChange FOnCharacterCanCarryChangeDelegate
---@field OnCanCarryDeadBoxChange FOnCharacterCanCarryDeadBoxChangeDelegate
---@field OnRescueingStatusChangeChange FOnCharacterEnterRescueingStatusChangeDelegate
---@field OnBreathChange FOnCharacterBreathChangeDelegate
---@field OnKilledTips FOnCharacterKilledTipsDelegate
---@field OnVehicleHPChange FOnVehicleHPChangeDelegate
---@field OnCharacterStateChangeDelegate FOnCharacterStateChangeDelegate
---@field OnPlayerStateChangeDelegate FOnPlayerStateChangeDelegate
---@field OnCharacterStateChangeByIndexDelegate FOnCharacterStateChangeByIndexDelegate
---@field OnEnterBornIsland FOnEnterBornIsland
---@field OnCorpsOutGame FOnCorpsOutGame
---@field OnCorpsJoinGame FOnCorpsJoinGame
---@field ReportHeroSkillRecordDelegate FReportHeroSkillRecordDelegate
---@field SendHeroEquipFlowDelegate FSendHeroEquipFlowDelegate
---@field OnUpdateUIPrefab FOnUpdateUIPrefab
---@field GMQuickPassTimeEvent FGMQuickPassTimeEvent
---@field OnGameStateBeginPlay FOnGameStateBeginPlay
---@field OnClientDynamicWeatherChanged FOnClientDynamicWeatherChanged
---@field OnChangeWeaponInspectDelegate FOnChangeWeaponInspectDelegate
---@field OnPlayerControllerBeginPlay FOnPlayerControllerBeginPlay
---@field OnPlayerControllerBeginPlayClientOnly FOnPlayerControllerBeginPlay
---@field OnAirlineTerminalBeginPlayDelegate FOnAirlineTerminalBeginPlayDelegate
---@field OnMonsterFreezeDelegate FOnMonsterFreezeDelegate
---@field OnMonsterFreezeClientDelegate FOnMonsterFreezeDelegate
local USTExtraDelegateMgr = {}

function USTExtraDelegateMgr:RemoveSTExtraDelegateMgrInstance_ForReupdate() end

---@param InMonster AActor
---@param bIsFreeze boolean
function USTExtraDelegateMgr:OnMonsterFreezeDelegateBroadcast(InMonster, bIsFreeze) end
