---@meta

---@class ESRePairVehicle
---@field ESupplyRegionRepair number
---@field EMaintenance number
---@field EVehicleRecoverSkill number
ESRePairVehicle = {}


---@class FRTPCParamInfo
---@field RTPCKey string
---@field Value number
---@field InterpolationTimeMs number
FRTPCParamInfo = {}


---@class FFixLevelRecord
FFixLevelRecord = {}


---@class FLargeAircraftInGame
---@field LargeAircraftID number
---@field OwnerName string
---@field PlayerUID string
---@field PlaneName string
---@field TeamID number
FLargeAircraftInGame = {}


---@class FLargeAircraftPlatform
---@field UID string
---@field bJumpPlane boolean
---@field AvatarSyncData ULuaArrayHelper<FMeshSynData>
---@field Gender number
FLargeAircraftPlatform = {}


---@class FGameModeNameDecorator
---@field DecorateCondition string
---@field Prefix string
---@field Suffix string
---@field Separator string
FGameModeNameDecorator = {}


---@class FEmotePlayer
---@field PlayerKey number
---@field FollowPlayer number
---@field EmoteId number
---@field bCanCostSpecMotion boolean
---@field Pos FVector
---@field Time number
FEmotePlayer = {}


---@class FWaitingUpdateTeamList
---@field WaitingUpdate ULuaArrayHelper<ASTExtraPlayerState>
FWaitingUpdateTeamList = {}


---@class FGameTerminatorInfo
---@field LastKillerPlayerKey number
---@field LastDeadPlayerKey number
---@field GameTerminatorPlayerKey number
---@field DamageType number
FGameTerminatorInfo = {}


---@class FResetProperties
---@field WarnStartTime number
---@field ResetStartTime number
---@field ResetEndTime number
FResetProperties = {}


---@class FNotifyGMEnterFightDelegate : ULuaSingleDelegate
FNotifyGMEnterFightDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyGMEnterFightDelegate:Bind(Callback, Obj) end

---执行委托
function FNotifyGMEnterFightDelegate:Execute() end


---@class FNotifyGMEnterFinishDelegate : ULuaSingleDelegate
FNotifyGMEnterFinishDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyGMEnterFinishDelegate:Bind(Callback, Obj) end

---执行委托
function FNotifyGMEnterFinishDelegate:Execute() end


---@class FOnRepGameModeTypeDelegate : ULuaMulticastDelegate
FOnRepGameModeTypeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GameModeType: EGameModeType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepGameModeTypeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param GameModeType EGameModeType
function FOnRepGameModeTypeDelegate:Broadcast(GameModeType) end


---@class FOnOverrideClickBackToLobby : ULuaSingleDelegate
FOnOverrideClickBackToLobby = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOverrideClickBackToLobby:Bind(Callback, Obj) end

---执行委托
function FOnOverrideClickBackToLobby:Execute() end


---@class FOnPlayerNumByTagListChanged : ULuaSingleDelegate
FOnPlayerNumByTagListChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerNumByTagListChanged:Bind(Callback, Obj) end

---执行委托
function FOnPlayerNumByTagListChanged:Execute() end


---@class FOnRepServerTimeSeconds : ULuaMulticastDelegate
FOnRepServerTimeSeconds = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewServerTimeSeconds: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepServerTimeSeconds:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewServerTimeSeconds number
function FOnRepServerTimeSeconds:Broadcast(NewServerTimeSeconds) end


---@class FOnTimeSecondsFixed : ULuaMulticastDelegate
FOnTimeSecondsFixed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bFixed: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimeSecondsFixed:Add(Callback, Obj) end

---触发 Lua 广播
---@param bFixed boolean
function FOnTimeSecondsFixed:Broadcast(bFixed) end


---@class FBlueCircleRunDelegate : ULuaSingleDelegate
FBlueCircleRunDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBlueCircleRunDelegate:Bind(Callback, Obj) end

---执行委托
function FBlueCircleRunDelegate:Execute() end


---@class FOnRepCircleInfo : ULuaSingleDelegate
FOnRepCircleInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepCircleInfo:Bind(Callback, Obj) end

---执行委托
function FOnRepCircleInfo:Execute() end


---@class FOnReplacedPlaneDelegate : ULuaMulticastDelegate
FOnReplacedPlaneDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Path: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplacedPlaneDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Path string
function FOnReplacedPlaneDelegate:Broadcast(Path) end


---@class FOnWaitRevivalPlayersNumChanged : ULuaMulticastDelegate
FOnWaitRevivalPlayersNumChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WaitRevivalPlayersNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWaitRevivalPlayersNumChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param WaitRevivalPlayersNum number
function FOnWaitRevivalPlayersNumChanged:Broadcast(WaitRevivalPlayersNum) end


---@class FUGCPickupUsefulDelegate : ULuaSingleDelegate
FUGCPickupUsefulDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, defineID: FItemDefineID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCPickupUsefulDelegate:Bind(Callback, Obj) end

---执行委托
---@param defineID FItemDefineID
function FUGCPickupUsefulDelegate:Execute(defineID) end


---@class FUGCAutoPickupItemDelegate : ULuaSingleDelegate
FUGCAutoPickupItemDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, defineID: FItemDefineID) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCAutoPickupItemDelegate:Bind(Callback, Obj) end

---执行委托
---@param defineID FItemDefineID
function FUGCAutoPickupItemDelegate:Execute(defineID) end


---@class FOnTimeDilationDelegate : ULuaMulticastDelegate
FOnTimeDilationDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TimeDilation: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimeDilationDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TimeDilation number
function FOnTimeDilationDelegate:Broadcast(TimeDilation) end


---@class FVehicleDieDelegate : ULuaMulticastDelegate
FVehicleDieDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, vehicle: AActor, Damage: number, Instigator: AController, DamageEvent: FDamageEvent, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDieDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param vehicle AActor
---@param Damage number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function FVehicleDieDelegate:Broadcast(vehicle, Damage, Instigator, DamageEvent, DamageCauser) end


---@class FVehicleDamageDelegate : ULuaMulticastDelegate
FVehicleDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, vehicle: AActor, Damage: number, Instigator: AController, DamageEvent: FDamageEvent, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param vehicle AActor
---@param Damage number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function FVehicleDamageDelegate:Broadcast(vehicle, Damage, Instigator, DamageEvent, DamageCauser) end


---@class FRepairVehicle : ULuaMulticastDelegate
FRepairVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InVehicle: ASTExtraVehicleBase, _player_control: ASTExtraPlayerController, HP: number, repairType: ESRePairVehicle) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRepairVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param InVehicle ASTExtraVehicleBase
---@param _player_control ASTExtraPlayerController
---@param HP number
---@param repairType ESRePairVehicle
function FRepairVehicle:Broadcast(InVehicle, _player_control, HP, repairType) end


---@class FOnCharacterSafeZoneTipsDelegate : ULuaMulticastDelegate
FOnCharacterSafeZoneTipsDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SafeZoneTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterSafeZoneTipsDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SafeZoneTime number
function FOnCharacterSafeZoneTipsDelegate:Broadcast(SafeZoneTime) end


---@class FOnCharacterBlueCirclePreWarningDelegate : ULuaMulticastDelegate
FOnCharacterBlueCirclePreWarningDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BlueCirclePreWarningTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterBlueCirclePreWarningDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BlueCirclePreWarningTime number
function FOnCharacterBlueCirclePreWarningDelegate:Broadcast(BlueCirclePreWarningTime) end


---@class FOnCharacterBlueCircleRunDelegate : ULuaMulticastDelegate
FOnCharacterBlueCircleRunDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BlueCircleRunTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterBlueCircleRunDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BlueCircleRunTime number
function FOnCharacterBlueCircleRunDelegate:Broadcast(BlueCircleRunTime) end


---@class FOnPlayerNumChangeDelegate : ULuaSingleDelegate
FOnPlayerNumChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerNumChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerNumChangeDelegate:Execute() end


---@class FOnAliveRealPlayerNumChange : ULuaSingleDelegate
FOnAliveRealPlayerNumChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAliveRealPlayerNumChange:Bind(Callback, Obj) end

---执行委托
function FOnAliveRealPlayerNumChange:Execute() end


---@class FOnBeKilledNumChangeDelegate : ULuaSingleDelegate
FOnBeKilledNumChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBeKilledNumChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnBeKilledNumChangeDelegate:Execute() end


---@class FGameEnd : ULuaSingleDelegate
FGameEnd = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameEnd:Bind(Callback, Obj) end

---执行委托
function FGameEnd:Execute() end


---@class FAirAttackNotify : ULuaMulticastDelegate
FAirAttackNotify = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, int32: airattacktype, EAirAttackMode: waveindex) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAirAttackNotify:Add(Callback, Obj) end

---触发 Lua 广播
---@param int32 airattacktype
---@param EAirAttackMode waveindex
function FAirAttackNotify:Broadcast(int32, EAirAttackMode) end


---@class FReConnectGameStateInfoNotify : ULuaMulticastDelegate
FReConnectGameStateInfoNotify = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ReConnectInfo: FReConnectGameStateInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReConnectGameStateInfoNotify:Add(Callback, Obj) end

---触发 Lua 广播
---@param ReConnectInfo FReConnectGameStateInfo
function FReConnectGameStateInfoNotify:Broadcast(ReConnectInfo) end


---@class FOnCharacterCircleSizeAndPosition : ULuaMulticastDelegate
FOnCharacterCircleSizeAndPosition = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BlueCircleSync: FVector, WhiteCircleSync: FVector, Index: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCircleSizeAndPosition:Add(Callback, Obj) end

---触发 Lua 广播
---@param BlueCircleSync FVector
---@param WhiteCircleSync FVector
---@param Index number
function FOnCharacterCircleSizeAndPosition:Broadcast(BlueCircleSync, WhiteCircleSync, Index) end


---@class FOnCharacterCircleWaveOver : ULuaMulticastDelegate
FOnCharacterCircleWaveOver = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Index: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCircleWaveOver:Add(Callback, Obj) end

---触发 Lua 广播
---@param Index number
function FOnCharacterCircleWaveOver:Broadcast(Index) end


---@class FOnSyncCircleInfo : ULuaMulticastDelegate
FOnSyncCircleInfo = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Index: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSyncCircleInfo:Add(Callback, Obj) end

---触发 Lua 广播
---@param Index number
function FOnSyncCircleInfo:Broadcast(Index) end


---@class FOnStateTimeChanged : ULuaMulticastDelegate
FOnStateTimeChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, StateTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStateTimeChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param StateTime number
function FOnStateTimeChanged:Broadcast(StateTime) end


---@class FGameModeIDReceive : ULuaSingleDelegate
FGameModeIDReceive = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeIDReceive:Bind(Callback, Obj) end

---执行委托
function FGameModeIDReceive:Execute() end


---@class FLevelDirectorTriggerConfigs : ULuaSingleDelegate
FLevelDirectorTriggerConfigs = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLevelDirectorTriggerConfigs:Bind(Callback, Obj) end

---执行委托
function FLevelDirectorTriggerConfigs:Execute() end


---@class FDynamicLevelsIDChange : ULuaSingleDelegate
FDynamicLevelsIDChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDynamicLevelsIDChange:Bind(Callback, Obj) end

---执行委托
function FDynamicLevelsIDChange:Execute() end


---@class FErrorBoundsLevelsChange : ULuaSingleDelegate
FErrorBoundsLevelsChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FErrorBoundsLevelsChange:Bind(Callback, Obj) end

---执行委托
function FErrorBoundsLevelsChange:Execute() end


---@class FIDIPItemAttrValueConfigs : ULuaSingleDelegate
FIDIPItemAttrValueConfigs = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FIDIPItemAttrValueConfigs:Bind(Callback, Obj) end

---执行委托
function FIDIPItemAttrValueConfigs:Execute() end


---@class FCircleInvertIndexChange : ULuaMulticastDelegate
FCircleInvertIndexChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InvertIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCircleInvertIndexChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param InvertIndex number
function FCircleInvertIndexChange:Broadcast(InvertIndex) end


---@class FOnDynamicWeatherChangeDelegate : ULuaMulticastDelegate
FOnDynamicWeatherChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeatherMgr: ADynamicWeatherMgr, Event: FWeatherChangeEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDynamicWeatherChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeatherMgr ADynamicWeatherMgr
---@param Event FWeatherChangeEvent
function FOnDynamicWeatherChangeDelegate:Broadcast(WeatherMgr, Event) end


---@class FForceStopDynamicWeatherDelegate : ULuaSingleDelegate
FForceStopDynamicWeatherDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FForceStopDynamicWeatherDelegate:Bind(Callback, Obj) end

---执行委托
function FForceStopDynamicWeatherDelegate:Execute() end


---@class FVehiclePostInitComponent : ULuaMulticastDelegate
FVehiclePostInitComponent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehiclePostInitComponent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle AActor
function FVehiclePostInitComponent:Broadcast(Vehicle) end


---@class FVehicleDestroyed : ULuaMulticastDelegate
FVehicleDestroyed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDestroyed:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle AActor
function FVehicleDestroyed:Broadcast(Vehicle) end


---@class FSTExtraCharacterPostInitComponent : ULuaMulticastDelegate
FSTExtraCharacterPostInitComponent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSTExtraCharacterPostInitComponent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraCharacter
function FSTExtraCharacterPostInitComponent:Broadcast(Character) end


---@class FSTExtraCharacterDestroyed : ULuaMulticastDelegate
FSTExtraCharacterDestroyed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSTExtraCharacterDestroyed:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraCharacter
function FSTExtraCharacterDestroyed:Broadcast(Character) end


---@class FUAEGameStateEndPlay : ULuaMulticastDelegate
FUAEGameStateEndPlay = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, World: UWorld) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUAEGameStateEndPlay:Add(Callback, Obj) end

---触发 Lua 广播
---@param World UWorld
function FUAEGameStateEndPlay:Broadcast(World) end


---@class FUAEGameStateRecieveGameClass : ULuaMulticastDelegate
FUAEGameStateRecieveGameClass = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GameModeClass: UClass) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUAEGameStateRecieveGameClass:Add(Callback, Obj) end

---触发 Lua 广播
---@param GameModeClass UClass
function FUAEGameStateRecieveGameClass:Broadcast(GameModeClass) end


---@class FCallBlackAirAttackNotify : ULuaMulticastDelegate
FCallBlackAirAttackNotify = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, int32: AirAttackType, EAirAttackMode: WaveIndex, FVector: AirAttackMode) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCallBlackAirAttackNotify:Add(Callback, Obj) end

---触发 Lua 广播
---@param int32 AirAttackType
---@param EAirAttackMode WaveIndex
---@param FVector AirAttackMode
function FCallBlackAirAttackNotify:Broadcast(int32, EAirAttackMode, FVector) end


---@class FBlackAirAttackUIMapScaleNotify : ULuaMulticastDelegate
FBlackAirAttackUIMapScaleNotify = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MapScale: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBlackAirAttackUIMapScaleNotify:Add(Callback, Obj) end

---触发 Lua 广播
---@param MapScale number
function FBlackAirAttackUIMapScaleNotify:Broadcast(MapScale) end


---@class FGameStateBaseStateChange : ULuaMulticastDelegate
FGameStateBaseStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Newstate: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameStateBaseStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param Newstate string
function FGameStateBaseStateChange:Broadcast(Newstate) end


---@class FGameStateSetPlane : ULuaMulticastDelegate
FGameStateSetPlane = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Plane: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameStateSetPlane:Add(Callback, Obj) end

---触发 Lua 广播
---@param Plane AActor
function FGameStateSetPlane:Broadcast(Plane) end


---@class FGameStateGoPlane : ULuaSingleDelegate
FGameStateGoPlane = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameStateGoPlane:Bind(Callback, Obj) end

---执行委托
function FGameStateGoPlane:Execute() end


---@class FNotifyResetParamsChange : ULuaSingleDelegate
FNotifyResetParamsChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyResetParamsChange:Bind(Callback, Obj) end

---执行委托
function FNotifyResetParamsChange:Execute() end


---@class FEMPZoneRepDataChange : ULuaSingleDelegate
FEMPZoneRepDataChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEMPZoneRepDataChange:Bind(Callback, Obj) end

---执行委托
function FEMPZoneRepDataChange:Execute() end


---@class FSTExtraCharacterAIDie : ULuaMulticastDelegate
FSTExtraCharacterAIDie = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSTExtraCharacterAIDie:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraCharacter
function FSTExtraCharacterAIDie:Broadcast(Character) end


---@class FShovelingAbilityChange : ULuaMulticastDelegate
FShovelingAbilityChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bNewShovelingAbility: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FShovelingAbilityChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param bNewShovelingAbility boolean
function FShovelingAbilityChange:Broadcast(bNewShovelingAbility) end


---UGC游戏状态基类
---@class ASTExtraGameStateBase: AUAEGameState, IUAELevelEventCenterInterface, IImmediateUIInterface
---@field AirplaneStartLoc FVector
---@field AirplaneStopLoc FVector
---@field AirDropPathData FAirDropPathData3D
---@field AirplaneCanJumpLoc FVector
---@field AirplaneForceJumpLoc FVector
---@field AirplaneCanJumpLocForCamp FVector
---@field AirplaneForceJumpLocForCamp FVector
---@field PlayerEnterPlane FPlayerPlaneDelegate
---@field PlayerLeavePlane FPlayerPlaneDelegate
---@field OnPlayerControllerInitializedDelegate FPlayerPlaneDelegate
---@field UGCIgnoreFallingCameraShakeAnyWay boolean
---@field EMPZoneData ULuaArrayHelper<FGameEMPZoneData>
---@field EMPZoneRepDataChangeDelegate FEMPZoneRepDataChange
---@field CharacterAIDieDelegate FSTExtraCharacterAIDie
---@field ShovelingAbilityChange FShovelingAbilityChange
---@field NewbieGuideItems ULuaArrayHelper<UNewbieGuideItemObject>
---@field AdvancedTipsConfigMap ULuaMapHelper<number, FAdvancedTipConfig>
---@field MarkPathSettingArray ULuaArrayHelper<FMarkPathSetting>
---@field CurrentBuildCount number
---@field ChangeCountDownTextID string
---@field UsingHeadItems UOBModePositionWidget
---@field GameStartTime number @游戏开始时间
---@field UniformResolutionSizeX number
---@field TestSkipMaxKiller boolean
---@field BaseShowMaxKillerNum number
---@field GameStateConfigParam FGameStateConfigParam
---@field bPreloadBulletHitEffect boolean
---@field IsTest boolean
---@field bEnableCheckShootFlag boolean
---@field bAIBulletIgnoreWater boolean
---@field bUseRealHPDamageOnDamageBroadcast boolean
---@field bShowDamageNumberByApplyVehicleDamage boolean
---@field MaxShootDamageEventBroadcastNum number
---@field bEnableDamageNumberPack boolean
---@field bEnableDamageNumberPackForPlayer boolean
---@field bEnableDamageNumberPackForGenericCharacter boolean
---@field bEnableDamageNumberPackForPlayerRecover boolean
---@field bEnableDamageNumberPackForGenericCharacterRecover boolean
---@field DamageNumberPackMaxRecordNum number
---@field bEnableGlobalBulletTrackEffect boolean
---@field CurCircleInfo FCircleInfo
---@field LastCircleIndex number
---@field CircleInvertIndex number
---@field OnCircleInvertIndexChange FCircleInvertIndexChange
---@field bUseOptimizedGISTicks boolean
---@field bActiveScreenSize boolean
---@field ScreenSizeFactor number
---@field ExtraRadius number
---@field MaxKillerPlayerKey number
---@field bExistedMaxKiller boolean
---@field AirAttackOrder FAirAttackOrder
---@field AirAttackArea FVector
---@field CallBlackAirAttackInfoMap ULuaMapHelper<number, FCallBlackAirAttackOrder>
---@field OnSafeZoneTips FOnCharacterSafeZoneTipsDelegate
---@field OnBlueCirclePreWarning FOnCharacterBlueCirclePreWarningDelegate
---@field OnBlueCircleRun FOnCharacterBlueCircleRunDelegate
---@field OnBlueCircleSizeAndPosition FOnCharacterCircleSizeAndPosition
---@field OnCharacterCircleWaveOver FOnCharacterCircleWaveOver
---@field VehiclePostInitComponentDelegate FVehiclePostInitComponent
---@field VehicleDestroyedDelegate FVehicleDestroyed
---@field STExtraCharacterPostInitComponentDelegate FSTExtraCharacterPostInitComponent
---@field STExtraCharacterDestroyed FSTExtraCharacterDestroyed
---@field OnGameStateEndPlay FUAEGameStateEndPlay
---@field OnRepGameClass FUAEGameStateRecieveGameClass
---@field VehicleDieDelegate FVehicleDieDelegate
---@field VehicleDamageDelegate FVehicleDamageDelegate
---@field OnBFRepairVehicle FRepairVehicle
---@field OnOverrideClickBackToLobby FOnOverrideClickBackToLobby
---@field OnGameStateBaseStateChange FGameStateBaseStateChange
---@field OnSyncCircleInfo FOnSyncCircleInfo
---@field TotalPlayerNum number @最大玩家数
---@field PlayerNum number
---@field IsUseGameStartCountDown boolean
---@field OnPlayerNumChange FOnPlayerNumChangeDelegate
---@field OnAliveRealPlayerNumChange FOnAliveRealPlayerNumChange
---@field OnBeKilledNumChange FOnBeKilledNumChangeDelegate
---@field OnGameEnd FGameEnd
---@field bIsTrainingMode boolean
---@field bNeedInitKillInfoPanel boolean
---@field GameType number
---@field SubGameType number
---@field bHasSignalBarReplay boolean
---@field CakeInfo FCakeInfo
---@field GameSwitchList ULuaArrayHelper<FGameSwitchControll>
---@field bForbidAutoAimAt boolean
---@field bForbidAutoOpendoor boolean
---@field bForbitAudioVisual boolean
---@field bForbitAutoPick boolean
---@field bForbidAirAttack boolean
---@field bForbitHurtEffect boolean
---@field bGunSamePriority boolean
---@field bShouldDeferredExitGame boolean
---@field bUseFootPrint boolean
---@field bLimitedCloth boolean
---@field BattleVoice boolean
---@field forbitPickItemTypeList ULuaArrayHelper<number>
---@field bEnableCarringFunction boolean
---@field bEnableCarringDeadBoxFunction boolean
---@field EconomyMultiNum number
---@field limitedClothItemTypeList ULuaArrayHelper<number>
---@field appleGrenadeID number
---@field appleGrenadeCount number
---@field TrainingCountdownTimer number
---@field bIsWeaponAutoReloadMode boolean
---@field bIsPickUpFillBulletMode boolean
---@field bIsHasInfiniteBulletsMode boolean
---@field bEnableAKDeviceLowVolumeMode boolean
---@field AKDeviceLowVolumeModeRTPCName string
---@field AKDeviceLowVolumeModeRTPCValue number
---@field bWeaponIgnoreTeammatesCollision boolean
---@field bEnableVehicleDriveOnMovablePlatform boolean
---@field bEnableAutoAimTrainingMode boolean
---@field bEnablePickUpTrainingMode boolean
---@field TrainingModePickUpColdCD number
---@field bEnableWrapperNewReplicationHiddenControl boolean
---@field TrainingModeDropLifeTime number
---@field DropItemLifeSpanBlackList_TypeSpecificID ULuaArrayHelper<number> @丢弃物品生命时长黑名单，支持某些玩法自定义某些道具常驻
---@field DropItemLifeSpanBlackList_ItemType ULuaArrayHelper<number>
---@field bDisableShowTombBoxPickData boolean
---@field TombBoxTlogID number
---@field bDisablePawnBulletImpactFxByNoDamage boolean
---@field bEnablePreLoadUVehicleControlPanel boolean
---@field bEnableShowAllWeaponOnEnterFightingState boolean
---@field bDestroyHelmetOnDurabilityEmpty boolean
---@field bEnableShootWeaponDynamicAmmoGamePlay boolean
---@field ShootWeaponDynamicAmmoTableName string
---@field bEnableMultiFunctionalShootModeType boolean
---@field bDisableAllShootStrategy boolean
---@field bEnableShootWeaponEntityReplicate boolean
---@field bEnableWeaponDynamicToggleInfiniteBullets boolean
---@field bMobaShootBreakthroughTargetOnce boolean
---@field bEnablePCLoopShootSoundMathcShootInterval boolean
---@field bEnableInfiniteBulletsWeaponChangeAmmoType boolean
---@field bNotAllowedWeaponDisableReplaceByOtherWeapon boolean
---@field ShootWeaponLimitMinShootIntervalModifier number
---@field ShootWeaponLimitMinReloadTimeModifier number
---@field bEnableDisuseAvatarItemCheckEquip boolean
---@field bEnableAvatarItemRepeatUseCheck boolean
---@field bCheckAdditionalDataValidOnDropWeapon boolean
---@field bForceFinishSwitchingWeaponOnUseNewWeapon boolean
---@field bCheckClipIDValidOnServerSetClipNum boolean
---@field bDisableWeaponAttachmentAttrModifyClientCacheOp boolean
---@field bEnableWeaponAttachmentAttrModifyReloadID boolean
---@field bEnableFastDraw boolean
---@field CustomBulletBreakthroughConfigMap ULuaMapHelper<string, FCustomBulletBreakthroughConfig>
---@field WeaponSlotManagerTemplateHardRef UWeaponSlotManager
---@field WeaponSlotManagerTemplate UWeaponSlotManager
---@field PropReplaceManageTemplate UPropReplaceManager
---@field GlobalTestSystemManagerTemplate UGlobalTestSystemManager
---@field SimpleSequenceList ULuaArrayHelper<USimpleSequence>
---@field PendingAddSimpleSequenceList ULuaArrayHelper<USimpleSequence>
---@field OnAirAttack FAirAttackNotify
---@field OnBlackAirAttack FCallBlackAirAttackNotify
---@field OnBlackAirAttackUIMapScaleChanged FBlackAirAttackUIMapScaleNotify
---@field IsFPPGameMode boolean
---@field IsCanPlaceBuilding boolean
---@field IsCanBecomeZombie boolean
---@field BossLocationToID ULuaMapHelper<FVector, number>
---@field ZombieAirDropIconID ULuaMapHelper<number, number>
---@field bEnableMapTeammateMark boolean
---@field VaultType EVaultType
---@field AllowGiveUpType EAllowGiveUpType
---@field ZombieAirDropWarningActors ULuaMapHelper<number, AActor>
---@field bEnableSignalSystem boolean
---@field EnableSignalSystemConfigKey string
---@field IsShowDeadBox boolean
---@field IsShowDeadBoxGreenLight boolean
---@field IsShowDeadBoxGreenSmoke boolean
---@field IsWeaponFPPOffsetInTDMode boolean
---@field IsCacheParachuteAnim boolean
---@field bEnableAirRouteShield boolean
---@field RZoneData FPlaneRZoneData
---@field bVagueInfoOfPlayerName boolean
---@field bAIRelevantInAllGameModeState boolean
---@field bAIExplosionDamageApplyAmmorBulletReduce boolean
---@field AIDebugPanelInfo FAIDebugPanelInfo
---@field VisualFieldFeatureParam FVisualFieldFeatureParam
---@field NetAvatarPosterInfoList ULuaArrayHelper<FAvatarPosterInfo>
---@field bReadyStateCountingDown boolean
---@field ReadyStateTime number
---@field ReadyStateMaxTime number
---@field LeftEscapeTime number
---@field TotalEscapeTime number
---@field ReConnectGameStateInfoNotify FReConnectGameStateInfoNotify
---@field ReplicatedWorldRealTimeSeconds number @Server TimeSeconds. Useful for syncing up animation and gameplay.
---@field ServerWorldRealTimeSecondsDelta number @The difference from the local world's TimeSeconds and the server world's TimeSeconds.
---@field OnRepServerTimeSeconds FOnRepServerTimeSeconds
---@field OnTimeSecondsFixed FOnTimeSecondsFixed
---@field GameModeDisplayName string
---@field GameModeNameDecorator ULuaArrayHelper<FGameModeNameDecorator>
---@field EnterReadyRealTime number
---@field EnterFightingRealTime number
---@field GameModeState string
---@field CurAirAttackType EAirAttackInfo
---@field CurAirAttackWave number
---@field CurAirAttackMode EAirAttackMode
---@field AlivePlayerNum number
---@field AliveRealPlayerNum number
---@field UncorrectedAlivePlayerNum number
---@field PromotionTaskID2AliveNum ULuaMapHelper<number, number>
---@field PromotionTaskIDPlayerKeys ULuaArrayHelper<number>
---@field BeginCheckPromotionTaskTime number
---@field AliveTeamNum number
---@field PlayerNumOnPlane number
---@field OnDynamicWeatherChangeDelegate FOnDynamicWeatherChangeDelegate
---@field ForceStopDynamicWeatherDelegate FForceStopDynamicWeatherDelegate
---@field bDeathMatchAllowParachute boolean
---@field GameModeType EGameModeType
---@field OnRepGameModeTypeDelegate FOnRepGameModeTypeDelegate
---@field SeasonIdx number
---@field GameModeFeatureSet FGameModeFeatureSetData
---@field bIsOpenShovelingAbility boolean
---@field bIsAllowCloseShovelingAbility boolean
---@field bIgnoreCharactersBlockingOverlaps boolean
---@field MinPenetrationDepth number
---@field bDoOpenRadarAbility boolean
---@field bShowVehicleSetting_Helicopter boolean
---@field bShowVehicleSetting_UAV boolean
---@field bCompareAliveRealPlayerNum boolean
---@field bCompareAlivePlayerNum boolean
---@field PlayerNumPerTeam number
---@field OpenTagCullingMaps ULuaArrayHelper<string>
---@field ExcellentOperationClientModeIDArray ULuaArrayHelper<number>
---@field IsOpenExcellentOperation boolean
---@field IsCloseRevengeLike boolean
---@field IsOpenNeonAdditionIcon boolean
---@field IsOpenKillWeaponMapping boolean
---@field IsDark boolean
---@field BeInvitedPlayers ULuaMapHelper<string, number> @每个人倒计时时间
---@field InviteCountDownTime number
---@field CircleDataMining ULuaArrayHelper<FCircleDataMining>
---@field GameDataMining FGameDataMining
---@field GameModeID string
---@field MapID number
---@field OnGameModeIDReceive FGameModeIDReceive
---@field OnGameSubModeGroupReceive FGameModeIDReceive
---@field SubModeGroup number
---@field ModeintegralType boolean
---@field NotModeintegralType boolean
---@field ClientModeID number
---@field EscapeHelicopterClassTag string
---@field FinalWinTeams ULuaArrayHelper<number>
---@field GameTerminatorPlayerKey number
---@field LastDamageType number
---@field LastKillerPlayerKey number
---@field LastDeadPlayerKey number
---@field GameTerminatorInfo FGameTerminatorInfo
---@field LargeAircraftPlatformParameter FLargeAircraftPlatform
---@field IsFireworksActOpen boolean
---@field GameStateSetPlane FGameStateSetPlane
---@field CurCastActorMsgOwner ACharacter
---@field StartFlyTime number
---@field EnableNewStateMachine number @添加配置，以防出现问题回滚
---@field PlayerInBlueCircleClipTime number
---@field EscapedPlayerNum number
---@field ModeRelatedBusinessProxyObjectPath string
---@field CanForbitPickupTeammateBox boolean
---@field CanImprisonmentTeammate boolean
---@field ImprisonmentTeammateKillType ULuaArrayHelper<number>
---@field ImprisonmentTeammateGameType ULuaArrayHelper<number>
---@field DisableUseNewDuplicateCompGameType ULuaArrayHelper<number>
---@field CustomShootSoundRTPCParamList ULuaArrayHelper<FRTPCParamInfo>
---@field CustomFootstepSoundRTPCParamList ULuaArrayHelper<FRTPCParamInfo>
---@field bUseParachuteAnimCache boolean
---@field HitEffectValue number
---@field HitEffectDelayTime number
---@field HitEffectColor FVector
---@field HitEffectTransparency number
---@field HitFontValue number
---@field HitFontSize_Head number
---@field HitFontOutlineSize_Head number
---@field HitFontColor_Head FVector
---@field HitFontOutlineColor_Head FVector
---@field HitFontSize_Body number
---@field HitFontOutlineSize_Body number
---@field HitFontColor_Body FVector
---@field HitFontOutlineColor_Body FVector
---@field HitFleshValue number
---@field bIsShowHitValue boolean
---@field bIsUseStandbyAnim boolean
---@field WrapperLightBeamEnabled number
---@field LightBeamTableName string
---@field LightBeamCfgName string
---@field ModeUICfgName string
---@field TableSwitcherName string
---@field EnableDebugLightBeam number
---@field SyncMarkDispatchData ULuaArrayHelper<FMarkSyncData> @所有人都需要的标记数据
---@field CompressSyncMarkDispatchData ULuaArrayHelper<FCompressMarkSyncData>
---@field PrevSyncMarkDispatchData ULuaArrayHelper<FMarkSyncData>
---@field LocalMarkDispatchData ULuaArrayHelper<FMarkSyncData>
---@field PrevLocalMarkDispatchData ULuaArrayHelper<FMarkSyncData>
---@field EachTypeReportLimit number
---@field TypeReportWhiteList ULuaArrayHelper<number>
---@field CheckTypeMapAmountLimit ULuaMapHelper<number, number>
---@field CacheMarkInstanceIDMap ULuaMapHelper<number, number>
---@field HasReportedTypeIDList ULuaArrayHelper<number>
---@field WaitRevivalPlayerList ULuaArrayHelper<ASTExtraPlayerState>
---@field WaitRevivalPlayerOrder ULuaMapHelper<number, number>
---@field WaitRevivalPlayerNum number
---@field CountDownTimeThreshold number
---@field RefreshCharmPlayerTimeThreshold number
---@field StopRefreshCharmPlayerTimeThreshold number
---@field RefreshCharmPlayerTimeTolerance number
---@field ShowCharmPlayerCount number
---@field TopCharmPlayerNumber number
---@field TotalCharmPlayerNumber number
---@field bStartRefreshCharmPlayer boolean
---@field bEnableRefreshCharmPlayer boolean
---@field LuckyCharmPlayerNumber number
---@field LuckyCharmPlayerProbability number
---@field bEnableHotStageShowWingMan boolean
---@field MaxWingManPlayerNumber number
---@field HasInspector boolean
---@field WingManPlayerDetailList ULuaArrayHelper<FPlayerDetailInfo>
---@field LuckyCharmPlayerDetailList ULuaArrayHelper<FPlayerDetailInfo>
---@field TopCharmPlayerDetailList ULuaArrayHelper<FPlayerDetailInfo>
---@field AllowViewCharmInfoMap ULuaMapHelper<number, boolean>
---@field AlreadyInRankPlayers ULuaMapHelper<number, number>
---@field LastReadyStateTime number
---@field BornLandVehicleList ULuaArrayHelper<FGameModePlayerParams>
---@field DamageMagnifierPlan number @0不启用动态伤害,显示ui；1启用动态伤害，不显示ui；2启用动态伤害，显示ui
---@field UseTssSdkAntiData boolean @TSS安全数据开关
---@field UseFireTssAntiData boolean
---@field UseHeartbeatOBTssAntiData boolean
---@field UseHeartbeatTssAntiData boolean
---@field OnGameModeStateTimeChanged FOnStateTimeChanged
---@field bUseNewGrenadeMode boolean
---@field bShowWingman boolean
---@field FrameCaptureClass AFrameCaptureActor
---@field bSecurityScreenShotEnabled boolean
---@field bImpoliteVoiceReportEnabled boolean
---@field SyncObjectPosReplayNetGUIDList ULuaArrayHelper<FObjectPosReplayNetGUIDMap>
---@field SyncObjectPosUIData ULuaArrayHelper<FObjectPosUIData>
---@field WeaponModuleManagerTemplate UWeaponSlotManager
---@field bFixLevelExtraTrigger boolean
---@field ServerFixLevelCheckDiff number
---@field NeedCreatePlayerIconToMap boolean
---@field bPlayOnBoardSound boolean
---@field YearBeastCount number
---@field bEnableSpawnYearBeast boolean
---@field YearBeastCirclePoint ULuaArrayHelper<FVector>
---@field YearBeastCircleRadius number
---@field HasYearBeastTeamID ULuaArrayHelper<number>
---@field bNeedUpdateParachuteFollowUI boolean
---@field bNeedCheckDupKill boolean
---@field TlogDupKillMax number
---@field bUseLastDeadTimeCalcSurviveTime boolean
---@field fDSFixedDateTime number
---@field bIgnoreCheckTeamPlayerStateReplay boolean
---@field bUseSpecificAvatarHandle boolean
---@field GSAvatarDefineID ULuaMapHelper<EAvatarSlotType, number>
---@field GSAvatarHandles ULuaArrayHelper<UBattleItemHandleBase>
---@field AvatarNotReloadFilters ULuaArrayHelper<EAvatarSlotType>
---@field LocalEmotePlayerList ULuaMapHelper<number, FEmotePlayer>
---@field DamageTypeTablePath string
---@field bEnableRevivalToExPlane boolean
---@field ShootBlockManagerTemplate UShootBlockManager
---@field QuickStatisticsTableName string
---@field RouteSegmentList ULuaArrayHelper<FRouteSegment>
---@field TimeBeforeRouteSelect number
---@field RouteSelectStartCountDown number
---@field CountDownTipID number
---@field ReadyStateTimeWithoutCountdown number
---@field OnReadyStateTimeWithoutCountdownChanged FOnStateTimeChanged
---@field ClubTeamList ULuaArrayHelper<FPlayerClubTeamInfo>
---@field SegmentChooseTime number
---@field TeamSegmentsInfo ULuaArrayHelper<FTeamSegmentInfo>
---@field CurrentTeamIdx number
---@field DiscussDuration number
---@field MLAIEpisodeInfo string
---@field SelectionPhaseTime ULuaArrayHelper<number>
---@field SegmentSelectSituation ULuaMapHelper<number, number>
---@field CreationConfig_ShowEnemy boolean
---@field UGCSkillPaths ULuaArrayHelper<AUTSkill>
---@field UGCSkillUIDBase number
---@field PlayerDeadShootKillerCacheInfoMap ULuaMapHelper<number, FPlayerDeadShootKillerCacheInfo>
---@field bEnablePlayerCompOptimizationByVisionOp boolean
---@field CharacterShootTargetObjectTypes ULuaArrayHelper<ECollisionChannel>
---@field AvatarDynamicCacheStrategy_PlayerClass UAvatarDynamicCacheStrategy
---@field IDIP_LevelDirectorTriggerConfigs_Save ULuaArrayHelper<FIDIP_LevelDirectorTriggerConfig>
---@field LevelDirectorTriggerConfigs FLevelDirectorTriggerConfigs
---@field IDIP_DynamicLevelsID ULuaArrayHelper<number>
---@field DynamicLevelsIDChange FDynamicLevelsIDChange
---@field ErrorBoundsLevelName ULuaArrayHelper<string>
---@field ErrorBoundsLevelsChange FErrorBoundsLevelsChange
---@field IDIP_ItemAttributeValue_Save ULuaArrayHelper<FIDIP_KeyIDItemAttrValue>
---@field IDIPItemAttrValueConfigs FIDIPItemAttrValueConfigs
---@field DontLoadLodLevelName ULuaArrayHelper<string>
---@field RemoteDecorator FRemoteDecorator
---@field RemainPauseTime number
---@field WeMatchTournamentId number
---@field WeMatchStageStatus number
---@field IsLessTeam boolean
---@field bForceDisableSpecialEffectEmoteFollowPlay boolean
---@field bUpdateRealTimeOrder boolean
---@field PlayerNumByTag ULuaArrayHelper<FPlayerNumTagPair>
---@field OnPlayerNumByTagListChanged FOnPlayerNumByTagListChanged
---@field BlueCircleRunDelegate FBlueCircleRunDelegate
---@field OnRepCircleInfo FOnRepCircleInfo
---@field OnWaitRevivalPlayersNumChanged FOnWaitRevivalPlayersNumChanged
---@field BisUseClientLoadRadiusFacInBegin boolean
---@field ClientLoadRadiusFacInBegin number
---@field CountdownTipBuff UPersistEffectBase
---@field CacheVolumeListIgnoreBlockVerify ULuaArrayHelper<AActor>
---@field ExceptionReportFilterByTime ULuaMapHelper<string, number>
---@field NotDestroyWeaponInventoryOnPlane boolean
---@field GameMagnitudeMaxCacheCount number
---@field bEnableGlobalDamageCalculator boolean
---@field GlobalDamageCalculatorClass USTExtraGameMagnitudeCalculation
---@field GlobalDamageModifyMethodMask number
---@field SkillDamageEventHandlerConfig FSkillDamageEventHandlerConfig
---@field bEnableGlobalRecoverCalculator boolean
---@field GlobalRecoverCalculatorClass USTExtraGameMagnitudeCalculation_Recovery
---@field GlobalGameAttributeDerivedInfoClass UGameAttributeDerivedInfo
---@field RevivingPlayerList ULuaArrayHelper<number>
---@field NotifyResetParamsChange FNotifyResetParamsChange
---@field ResetProperties FResetProperties
---@field ReplacedPlane string
---@field OnReplacedPlaneDelegate FOnReplacedPlaneDelegate
---@field bPickupActorListVisibleForOB boolean
---@field GalaxyFaceInfoMap ULuaMapHelper<string, string>
---@field PlayerUIDToGalaxyFaceInfoIndexMap ULuaMapHelper<number, string>
---@field ShowCheatCommandUIGameModeID number
---@field UGCPickupUsefulDelegate FUGCPickupUsefulDelegate @推荐拾取处理委托
---@field UGCAutoPickupItemDelegate FUGCAutoPickupItemDelegate @自动拾取处理委托
---@field bCanUseWeaponOnPlayerDying boolean
---@field bEnableFakeBulletTrackFX boolean
---@field ItemModifiersGeneratorMethodClass UItemModifiersGeneratorMethod_Base
---@field bCanRescueOtherOfSameGeneralCamp boolean
---@field CacheGCVarOpenGalaxyFaceUtils number
---@field AvatarTwinsMap ULuaMapHelper<number, number>
---@field LargeAircraftInfo FLargeAircraftInGame
---@field bFPPResDownload number
---@field TimeDilation number
---@field TimeDilationDelegate FOnTimeDilationDelegate
---@field bEnableCheckAvatarPakWhenAvatarDataChange boolean
---@field EnableCheckAvatarPakWhenAvatarDataChangeThreshold number
---@field bEnableWeaponAttrCheck boolean
---@field AICheatPlayerList ULuaArrayHelper<number>
local ASTExtraGameStateBase = {}

function ASTExtraGameStateBase:OnRep_EMPZoneDate() end

function ASTExtraGameStateBase:OnRep_CircleInfo() end

function ASTExtraGameStateBase:OnRep_GameStateConfigParam() end

---@param StartTime number
---@param Timespan number
function ASTExtraGameStateBase:SetCircleStatusTime(StartTime, Timespan) end

---@return number
function ASTExtraGameStateBase:GetCircleStatusStartTime() end

---@return number
function ASTExtraGameStateBase:GetCircleStatusTimespan() end

---@return number
function ASTExtraGameStateBase:GetCircleStatusPastTime() end

---@return number
function ASTExtraGameStateBase:GetCircleStatusLeftTime() end

---@return FVector
function ASTExtraGameStateBase:GetBlueCircle() end

---@return number
function ASTExtraGameStateBase:GetLastCircleIndex() end

---@return FVector
function ASTExtraGameStateBase:GetWhiteCircle() end

---@return number
function ASTExtraGameStateBase:GetCurCircleIndex() end

---@return boolean
function ASTExtraGameStateBase:IsCurCircleValid() end

function ASTExtraGameStateBase:OnRep_CircleIndexChange() end

---@param Index number
function ASTExtraGameStateBase:SetCircleInvertIndex(Index) end

function ASTExtraGameStateBase:SetupOptimizedGISTick() end

---@param InComponemt UGISActorComponentBase
function ASTExtraGameStateBase:OnGISComponentCreated(InComponemt) end

---@return ECircleStatus
function ASTExtraGameStateBase:GetCurCircleStatus() end

function ASTExtraGameStateBase:OnRep_MaxKillerChange() end

---@return boolean
function ASTExtraGameStateBase:CalledOverrideClickBackToLobby() end

function ASTExtraGameStateBase:OnRep_IsTrainingMode() end

---@return boolean
function ASTExtraGameStateBase:IsNormalTrainingMode() end

function ASTExtraGameStateBase:OnRep_HasSignalBarReplay() end

function ASTExtraGameStateBase:OnRep_LobbyGameType() end

function ASTExtraGameStateBase:OnRep_RZoneData() end

function ASTExtraGameStateBase:OnRep_VisualFieldFeatureParam() end

function ASTExtraGameStateBase:OnRep_IsCacheParachuteAnim() end

function ASTExtraGameStateBase:OnRep_bEnableAirRouteShield() end

---@param circleInfo ECircleStatus
---@param time number
---@param CircleInvertedIndex number
function ASTExtraGameStateBase:BroadcastCircleInfo(circleInfo, time, CircleInvertedIndex) end

---@param time number
function ASTExtraGameStateBase:BroadcastCircleWarning(time) end

---@param BlueCircleSync FVector
---@param WhiteCircleSync FVector
---@param Index number
function ASTExtraGameStateBase:BroadcastCircleSizeAndPosition(BlueCircleSync, WhiteCircleSync, Index) end

---@param Index number
---@param WaveNum number
function ASTExtraGameStateBase:BroadcastCircleWaveOver(Index, WaveNum) end

---@param airAttackAreaSrc FVector
---@param waveIndex number
---@param AirAttackMode EAirAttackMode
function ASTExtraGameStateBase:BroadcastAirAttackWarning(airAttackAreaSrc, waveIndex, AirAttackMode) end

---@param airAttackOrderSrc FAirAttackOrder
---@param waveIndex number
---@param AirAttackMode EAirAttackMode
function ASTExtraGameStateBase:BroadcastAirAttackOrder(airAttackOrderSrc, waveIndex, AirAttackMode) end

---@param AirAttackOrderCR FAirAttackOrderCR
---@param waveIndex number
---@param AirAttackMode EAirAttackMode
function ASTExtraGameStateBase:BroadcastAirAttackOrder_ConsistentRandom(AirAttackOrderCR, waveIndex, AirAttackMode) end

---@param waveIndex number
---@param AirAttackMode EAirAttackMode
function ASTExtraGameStateBase:BroadcastAirAttackOver(waveIndex, AirAttackMode) end

---@param AirAttackAreaSrc FVector
---@param WaveIndex number
---@param AirAttackMode EAirAttackMode
function ASTExtraGameStateBase:BroadcastCallBlackAirAttackWarning(AirAttackAreaSrc, WaveIndex, AirAttackMode) end

---@param AirAttackOrderSrc FCallBlackAirAttackOrder
---@param WaveIndex number
---@param AirAttackMode EAirAttackMode
function ASTExtraGameStateBase:BroadcastCallBlackAirAttackOrder(AirAttackOrderSrc, WaveIndex, AirAttackMode) end

---@param WaveIndex number
---@param AirAttackMode EAirAttackMode
function ASTExtraGameStateBase:BroadcastCallBlackAirAttackOver(WaveIndex, AirAttackMode) end

---@param airAttackOrderSrc FCompactAirAttackOrder
---@param waveIndex number
function ASTExtraGameStateBase:BroadcastAirAttackOrderCompact(airAttackOrderSrc, waveIndex) end

---@param StartLoc FVector
---@param StopLoc FVector
function ASTExtraGameStateBase:BroadcastRoute(StartLoc, StopLoc) end

---@param StartLoc FVector
---@param StopLoc FVector
function ASTExtraGameStateBase:BroadcastCampAirLineRoute(StartLoc, StopLoc) end

function ASTExtraGameStateBase:BroadcastGameEnterFighting() end

function ASTExtraGameStateBase:BroadcastGameEnterFinished() end

---@param Causer AUAECharacter
---@param Victim AUAECharacter
---@param Data FClientFatalDamageRecordData
function ASTExtraGameStateBase:BroadcastFatalDamageInfo(Causer, Victim, Data) end

---@param Causer AUAECharacter
---@param Victim AUAECharacter
---@param SimpleData FClientFatalDamageRecordDataSimple
function ASTExtraGameStateBase:BroadcastFatalDamageInfoSimple(Causer, Victim, SimpleData) end

---@param LastTime number
function ASTExtraGameStateBase:BroadcastSignalGunInfo(LastTime) end

---@param InNetAvatarPosterInfoList ULuaArrayHelper<FAvatarPosterInfo>
function ASTExtraGameStateBase:Client_SyncNetPosterInfo(InNetAvatarPosterInfoList) end

---@param Pos FVector
---@return boolean
function ASTExtraGameStateBase:IsInBlueCircle(Pos) end

---@param Pos FVector
---@return boolean
function ASTExtraGameStateBase:IsInWhiteCircle(Pos) end

function ASTExtraGameStateBase:InitItemExtension() end

---@param Point FVector
---@param WorldCenter2D FVector2D
---@param WorldExt number
---@return boolean
function ASTExtraGameStateBase:CheckWFAPointValidity(Point, WorldCenter2D, WorldExt) end

---@param Point FVector
---@param WorldCenter2D FVector2D
---@param WorldExt number
---@return boolean
function ASTExtraGameStateBase:CheckWFAPointExtraValidity(Point, WorldCenter2D, WorldExt) end

---@param Point FVector
---@param WorldCenter2D FVector2D
---@param WorldExt number
---@return boolean
function ASTExtraGameStateBase:CheckWFAPointPoisonValidity(Point, WorldCenter2D, WorldExt) end

function ASTExtraGameStateBase:OnRep_EnableSignalSystem() end

---@param bEnable boolean
function ASTExtraGameStateBase:ModifyEnableSignalSystemOnServer(bEnable) end

function ASTExtraGameStateBase:OnRep_PlayerNumChange() end

function ASTExtraGameStateBase:OnRep_AlivePlayerNum() end

function ASTExtraGameStateBase:OnRep_AliveRealPlayerNum() end

function ASTExtraGameStateBase:OnRep_AliveTeamNum() end

function ASTExtraGameStateBase:OnRep_PlayerNumOnPlane() end

function ASTExtraGameStateBase:OnRep_ReadyStateCountingDown() end

function ASTExtraGameStateBase:OnRep_ReadyStateTime() end

function ASTExtraGameStateBase:OnRep_ReadyStateMaxTime() end

---@return string
function ASTExtraGameStateBase:GetGameModeState() end

---@param NewState string
function ASTExtraGameStateBase:SetGameModeState(NewState) end

function ASTExtraGameStateBase:OnRep_GameModeState() end

---@return FReConnectGameStateInfo
function ASTExtraGameStateBase:GetReConnectGameStateInfo() end

---@param ReConnectInfo FReConnectGameStateInfo
function ASTExtraGameStateBase:SetReConnectGameStateInfo(ReConnectInfo) end

---@param AirAttackType EAirAttackInfo
function ASTExtraGameStateBase:SetCurAirAttackType(AirAttackType) end

---@param AirAttackWave number
function ASTExtraGameStateBase:SetCurAirAttackWave(AirAttackWave) end

---@param AirAttackMode EAirAttackMode
function ASTExtraGameStateBase:SetCurAirAttackMode(AirAttackMode) end

---@return EAirAttackMode
function ASTExtraGameStateBase:GetCurAirAttackMode() end

---@return string
function ASTExtraGameStateBase:GetAllTagsDistance() end

---@param StartLoc FVector
---@param StopLoc FVector
---@param CanJumpLoc FVector
---@param ForceJumpLoc FVector
function ASTExtraGameStateBase:SyncAirplaneRoute(StartLoc, StopLoc, CanJumpLoc, ForceJumpLoc) end

---@param InAirDropPathData FAirDropPathData3D
function ASTExtraGameStateBase:SyncAirplaneAndAirDrops(InAirDropPathData) end

---@param StartLoc FVector
---@param StopLoc FVector
---@param CanJumpLoc FVector
---@param ForceJumpLoc FVector
function ASTExtraGameStateBase:SyncAirplaneRouteForCamp(StartLoc, StopLoc, CanJumpLoc, ForceJumpLoc) end

---@return number
function ASTExtraGameStateBase:GetServerReplicatedRealTime() end

---@return number
function ASTExtraGameStateBase:GetWorldStartTimeSeconds() end

---@return number
function ASTExtraGameStateBase:GetWorldRealTimeSeconds() end

---Allows clients to calculate ServerWorldTimeSecondsDelta
---@param OldValue number
function ASTExtraGameStateBase:OnRep_ReplicatedWorldRealTimeSeconds(OldValue) end

---@param OldValue number
function ASTExtraGameStateBase:OnRep_ReplicatedWorldTimeSeconds(OldValue) end

---@param WeaponID number
---@param InAmmoList ULuaArrayHelper<number>
function ASTExtraGameStateBase:FilterAvailableDynamicAmmoIDListByWeaponID(WeaponID, InAmmoList) end

---@param WeaponID number
---@param InDefaultAmmoID number
---@param InAmmoList ULuaArrayHelper<number>
---@return number
function ASTExtraGameStateBase:GetDefaultAmmoIDByWeaponID(WeaponID, InDefaultAmmoID, InAmmoList) end

---@return string
function ASTExtraGameStateBase:GetGameModeDisplayName() end

function ASTExtraGameStateBase:SimulateAirAttackOver() end

---@param IsUse boolean
function ASTExtraGameStateBase:SetTagCulling(IsUse) end

---@return number
function ASTExtraGameStateBase:GetHZB() end

---@param Enable number
function ASTExtraGameStateBase:SetHZB(Enable) end

function ASTExtraGameStateBase:OnRep_IsFPPMode() end

function ASTExtraGameStateBase:OnRep_IsCanPlaceBuilding() end

function ASTExtraGameStateBase:OnRep_IsCanBecomeZombie() end

function ASTExtraGameStateBase:OnRep_IsShowDeadBox() end

function ASTExtraGameStateBase:OnRep_IsWeaponFPPOffsetInTDMode() end

function ASTExtraGameStateBase:OnRep_IsShowDeadBoxGreenLight() end

function ASTExtraGameStateBase:OnRep_IsShowDeadBoxGreenSmoke() end

function ASTExtraGameStateBase:OnRep_AirplaneStartLoc() end

function ASTExtraGameStateBase:OnRep_AirplaneStopLoc() end

function ASTExtraGameStateBase:OnRep_AirDropPathData() end

function ASTExtraGameStateBase:OnRep_AirplaneCanJumpLoc() end

function ASTExtraGameStateBase:OnRep_AirplaneForceJumpLoc() end

function ASTExtraGameStateBase:OnRep_AirplaneCanJumpLocForCamp() end

function ASTExtraGameStateBase:OnRep_AirplaneForceJumpLocForCamp() end

---@return boolean
function ASTExtraGameStateBase:IsGameModeSupportPlayerRevival() end

---@return boolean
function ASTExtraGameStateBase:IsCustomGameModeSupportPlayerRevival() end

---@param Event FWeatherChangeEvent
function ASTExtraGameStateBase:ChangeWeatherStatus(Event) end

---@param PlayerState ASTExtraPlayerState
---@return boolean
function ASTExtraGameStateBase:IsPlayerAlive(PlayerState) end

function ASTExtraGameStateBase:OnGameModeDisplayNameChange() end

---@param PC ASTExtraPlayerController
function ASTExtraGameStateBase:CheckCanShowPromotion(PC) end

---@param Mgr ADynamicWeatherMgr
---@param Event FWeatherChangeEvent
function ASTExtraGameStateBase:NotifyDynamicWeatherChange(Mgr, Event) end

function ASTExtraGameStateBase:OnRep_IsFireworksActOpen() end

---@return boolean
function ASTExtraGameStateBase:GetIsFireworksActOpen() end

---@param val boolean
function ASTExtraGameStateBase:SetIsFireworksActOpen(val) end

function ASTExtraGameStateBase:OnRep_GameModeType() end

function ASTExtraGameStateBase:OnRep_SeasonIdx() end

---@param SubSystemType ESubSystemType
---@return boolean
function ASTExtraGameStateBase:IsFeatureSupported(SubSystemType) end

---@return boolean
function ASTExtraGameStateBase:IsUnsafeExit() end

function ASTExtraGameStateBase:OnRep_GameModeFeatureSet() end

function ASTExtraGameStateBase:OnRep_IsOpenShovelingAbility() end

---@param InAlivePlayerNum number
---@param bCorrect boolean
function ASTExtraGameStateBase:SetAlivePlayerNum(InAlivePlayerNum, bCorrect) end

---@param InAliveRealPlayerNum number
function ASTExtraGameStateBase:SetAliveRealPlayerNum(InAliveRealPlayerNum) end

---@param InPlayerState ASTExtraPlayerState
function ASTExtraGameStateBase:AddWaitRevivalPlayer(InPlayerState) end

---@param InPlayerState ASTExtraPlayerState
function ASTExtraGameStateBase:RemoveWaitRevivalPlayer(InPlayerState) end

---@param InPlayerState ASTExtraPlayerState
---@return boolean
function ASTExtraGameStateBase:InWaitRevivalPlayers(InPlayerState) end

---@param InPlayerState AUAEPlayerState
---@return number
function ASTExtraGameStateBase:GetWaitRevivalPlayerCount(InPlayerState) end

---@param InPlayerState AUAEPlayerState
---@param SpecialNum number
---@return number
function ASTExtraGameStateBase:GetResumePlayerNum(InPlayerState, SpecialNum) end

---@return number
function ASTExtraGameStateBase:GetCurAlivePlayerNum() end

---@return number
function ASTExtraGameStateBase:GetAlivePlayerNum() end

---@return number
function ASTExtraGameStateBase:GetUncorrectedAlivePlayerNum() end

---@return number
function ASTExtraGameStateBase:GetAliveRealPlayerNum() end

function ASTExtraGameStateBase:OnRep_IsDark() end

function ASTExtraGameStateBase:OnRep_GameModeID() end

function ASTExtraGameStateBase:InitTableSwitcherByMode() end

---@param TableSwitchBPPath string
function ASTExtraGameStateBase:InitTableSwitcher(TableSwitchBPPath) end

---@return boolean
function ASTExtraGameStateBase:IsHome() end

function ASTExtraGameStateBase:OnRep_ClientModeID() end

function ASTExtraGameStateBase:OnRep_SubModeGroup() end

---@return boolean
function ASTExtraGameStateBase:IsTDMInfectionMode() end

function ASTExtraGameStateBase:OnRep_EscapeHelicopterClassTag() end

function ASTExtraGameStateBase:OnRep_FinalWinTeams() end

function ASTExtraGameStateBase:OnRep_GameTerminatorPlayerKey() end

function ASTExtraGameStateBase:OnRep_GameTerminatorInfo() end

---@return number
function ASTExtraGameStateBase:GetFightingTimeSeconds() end

---@param InUID string
---@return boolean
function ASTExtraGameStateBase:TrySetLargeAircraftPlatformParameter(InUID) end

---@param InStateMachineComponent UStateMachineComponent
---@param InLastStateType EStateType
---@param InCurrentLastStateType EStateType
function ASTExtraGameStateBase:OnBattleStateChanged(InStateMachineComponent, InLastStateType, InCurrentLastStateType) end

---@param InCharacterAvatarComponent UCharacterAvatarComponent
function ASTExtraGameStateBase:TryUseLargeAircraftPlatformParameter(InCharacterAvatarComponent) end

function ASTExtraGameStateBase:OnRep_StartedPlane() end

function ASTExtraGameStateBase:OnRep_EscapedPlayerNum() end

function ASTExtraGameStateBase:InitModeUI() end

---@param _TYPE EMarkGetAllType
function ASTExtraGameStateBase:GetAllMarkSyncData(_TYPE) end

---@param InstanceID number
---@param TypeID number
function ASTExtraGameStateBase:CheckTypeLimit(InstanceID, TypeID) end

function ASTExtraGameStateBase:OnRep_MarkSyncData() end

function ASTExtraGameStateBase:OnRep_CompressMarkSyncData() end

---@param Param1 string
---@param Param2 string
function ASTExtraGameStateBase:ClientDisplayDebugTip(Param1, Param2) end

---@param loation FVector
---@return number
function ASTExtraGameStateBase:AddBossLocationToID(loation) end

---@param loation FVector
---@return number
function ASTExtraGameStateBase:SwitchBossLocationToID(loation) end

function ASTExtraGameStateBase:OnRep_WaitRevivalPlayerNum() end

function ASTExtraGameStateBase:OnRep_TopCharmPlayerAvatarInfoList() end

function ASTExtraGameStateBase:OnRep_LuckyCharmPlayerDetailList() end

function ASTExtraGameStateBase:OnRep_WingManCharmPlayerDetailList() end

function ASTExtraGameStateBase:OnRep_ShowCharmPlayerCount() end

function ASTExtraGameStateBase:CheckUpdateCharmOrLuckyPlayers() end

---@param PlayerKey number
---@param AllowView boolean
function ASTExtraGameStateBase:SetAllowViewCharmInfoByPlayerKey(PlayerKey, AllowView) end

---@param CountDownTime number
---@param RefreshCharmPlayerTime number
---@param StopRefreshCharmPlayerTime number
function ASTExtraGameStateBase:SetCharmSystemParameters(CountDownTime, RefreshCharmPlayerTime, StopRefreshCharmPlayerTime) end

function ASTExtraGameStateBase:OnClearCharmSystemInfo() end

function ASTExtraGameStateBase:OnSceneRenderActorManagerChanged() end

---@param PlayerKey number
---@return boolean
function ASTExtraGameStateBase:IsPlayerInCharmRank(PlayerKey) end

---@param PlayerKey number
---@return boolean
function ASTExtraGameStateBase:IsPlayerInCharmRankOnlyTopCharmPlayer(PlayerKey) end

---@return boolean
function ASTExtraGameStateBase:IsCharmSystemEnabled() end

---@param PlayerKey number
---@param RankIndex number
function ASTExtraGameStateBase:AddAlreadyInRankPlayerInternal(PlayerKey, RankIndex) end

---@param DetailInfoList ULuaArrayHelper<FPlayerDetailInfo>
---@param PlayerParam FGameModePlayerParams
---@param ItemIndex number
---@param bVisible boolean
---@param bIsWingManPlayerSlot boolean
function ASTExtraGameStateBase:AddCharmPlayerInfoInternal(DetailInfoList, PlayerParam, ItemIndex, bVisible, bIsWingManPlayerSlot) end

---@param IsTopCharmPlayer boolean
---@param IsLuckyPlayer boolean
---@param IsWingManPlayer boolean
function ASTExtraGameStateBase:NotifyClientCharmPlayerChanged(IsTopCharmPlayer, IsLuckyPlayer, IsWingManPlayer) end

function ASTExtraGameStateBase:UpdateBornLandVehicles() end

---@param Player FGameModePlayerParams
---@param VehiclePlayers ULuaArrayHelper<number>
function ASTExtraGameStateBase:FindMaxVehiclePlayers(Player, VehiclePlayers) end

---@param VisibleVehicles ULuaArrayHelper<number>
---@param VisibleInsider ULuaArrayHelper<number>
function ASTExtraGameStateBase:FindAllVisibleVehicleInsidePlayers(VisibleVehicles, VisibleInsider) end

function ASTExtraGameStateBase:OnRep_DamageMagnifierPlan() end

function ASTExtraGameStateBase:OnRep_UseTssSdkAntiData() end

function ASTExtraGameStateBase:OnRep_UseFireTssAntiData() end

function ASTExtraGameStateBase:OnRep_UseHeartbeatOBTssAntiData() end

function ASTExtraGameStateBase:OnRep_UseHeartbeatTssAntiData() end

---@return string
function ASTExtraGameStateBase:GetMaxKillerPlayerKey() end

function ASTExtraGameStateBase:OnRep_SecurityScreenShotEnabled() end

function ASTExtraGameStateBase:OnRep_ImpoliteVoiceReportEnabled() end

function ASTExtraGameStateBase:OnRep_bShowWingman() end

function ASTExtraGameStateBase:RemoveCharacterMoveInputStateEx() end

function ASTExtraGameStateBase:OnRep_SyncObjectPosReplayNetGUIDList() end

function ASTExtraGameStateBase:OnRep_ObjectPosUIData() end

---@param InData FObjectPosUIData
function ASTExtraGameStateBase:DispatchToClientAddObjectPosUIData(InData) end

---@param InInstanceID number
function ASTExtraGameStateBase:DispatchToClientRemoveObjectPosUIData(InInstanceID) end

function ASTExtraGameStateBase:OnBeginReplayStream() end

---@param PlayerKey number
---@param bIsAI boolean
function ASTExtraGameStateBase:TriggerSpawnYearBeast(PlayerKey, bIsAI) end

function ASTExtraGameStateBase:OnRep_DSFixedDateTime() end

function ASTExtraGameStateBase:TryFillObjectPool() end

---@param itemList ULuaArrayHelper<FBattleItemData>
function ASTExtraGameStateBase:FilterEmoteItem(itemList) end

---@return boolean
function ASTExtraGameStateBase:GetRecordControllerReplay() end

---@param ReceivedPlayerUID string
---@param inExOpResultType EExcellentOperationResultType
function ASTExtraGameStateBase:RPC_ExcellentOPForReplay(ReceivedPlayerUID, inExOpResultType) end

function ASTExtraGameStateBase:OnRep_RouteSegmentList() end

function ASTExtraGameStateBase:OnRep_RouteSelectStartCountDown() end

---@param RouteID number
---@return FRouteSegment
function ASTExtraGameStateBase:GetRouteMentByRouteID(RouteID) end

function ASTExtraGameStateBase:OnRep_ClubTeamList() end

---@param ReadyTime number
function ASTExtraGameStateBase:SetReadyStateTimeWithoutCountdown(ReadyTime) end

function ASTExtraGameStateBase:OnRep_SegmentChooseTime() end

function ASTExtraGameStateBase:OnRep_TeamSegmentsInfo() end

function ASTExtraGameStateBase:OnRep_CurrentTeamIndex() end

---@param EpisodeID string
function ASTExtraGameStateBase:SetMLAIEpisodeInfo(EpisodeID) end

function ASTExtraGameStateBase:OnRep_MLAIEpisodeInfo() end

---@param StateReadyTime number
function ASTExtraGameStateBase:CompetitionModeRouteSelectPhase(StateReadyTime) end

---@param TeamID number
---@return FPlayerClubTeamInfo
function ASTExtraGameStateBase:GetClubTeamInfoByTeamID(TeamID) end

---@param TeamID number
---@param SegmentID number
function ASTExtraGameStateBase:NotifySegmentInfo(TeamID, SegmentID) end

---@param ID number
function ASTExtraGameStateBase:UpdateSegmentSituation(ID) end

function ASTExtraGameStateBase:GetSelectableRoute() end

---@return number
function ASTExtraGameStateBase:RandomChooseSegment() end

---@param StateReadyTime number
function ASTExtraGameStateBase:WaitAllPlayerLogin(StateReadyTime) end

---@return boolean
function ASTExtraGameStateBase:DoNotAutoViewTeammateOnInitWatchUI() end

---@param StateReadyTime number
---@return number
function ASTExtraGameStateBase:GetTeamSelectTime(StateReadyTime) end

---@param PlayerKey number
function ASTExtraGameStateBase:AddRevivingPlayer(PlayerKey) end

---@param PlayerKey number
function ASTExtraGameStateBase:RemoveRevivingPlayer(PlayerKey) end

---@return boolean
function ASTExtraGameStateBase:IsEnableCurrentWeaponMeshVisibleCheck() end

---@return boolean
function ASTExtraGameStateBase:CheckIsInInfectionTDM() end

---@return boolean
function ASTExtraGameStateBase:ShouldCheckAvatarMeshVisibility() end

---@param bEnable boolean
function ASTExtraGameStateBase:TogglePlayerCompOptimizationByVisionOp(bEnable) end

---@return boolean
function ASTExtraGameStateBase:GetCurrentTimeSure() end

---@return number
function ASTExtraGameStateBase:GetAlivePlayerWithoutPawnNum() end

---@param cmd string
function ASTExtraGameStateBase:RPC_Client_PrintLogFromServer(cmd) end

---@param _IDIP_LevelDirectorTriggerConfigs_Save ULuaArrayHelper<FIDIP_LevelDirectorTriggerConfig>
function ASTExtraGameStateBase:UpdateIDIP_LevelDirectorTriggerConfigs_Save(_IDIP_LevelDirectorTriggerConfigs_Save) end

function ASTExtraGameStateBase:OnRep_IDIP_LevelDirectorTriggerConfigs_Save() end

---@param _IDIP_DynamicLevelsID ULuaArrayHelper<number>
function ASTExtraGameStateBase:UpdateIDIP_DynamicLevelsID(_IDIP_DynamicLevelsID) end

function ASTExtraGameStateBase:OnRep_IDIP_DynamicLevelsID() end

function ASTExtraGameStateBase:DebugErrorBoundsLevelName() end

---@param LevelsName ULuaArrayHelper<string>
function ASTExtraGameStateBase:AnalyzeLevelisErrorBoundsByLevelName(LevelsName) end

function ASTExtraGameStateBase:OnRep_ErrorBoundsLevelName() end

---@param _IDIP_ItemAttributeValue_Save ULuaArrayHelper<FIDIP_KeyIDItemAttrValue>
function ASTExtraGameStateBase:UpdateIDIP_IDIP_ItemAttributeValue_Save(_IDIP_ItemAttributeValue_Save) end

function ASTExtraGameStateBase:OnRep_IDIP_ItemAttributeValue_Save() end

function ASTExtraGameStateBase:OnRep_WeMatchTournamentId() end

function ASTExtraGameStateBase:OnRep_WeMatchStageStatus() end

function ASTExtraGameStateBase:OnRep_IsLessTeam() end

function ASTExtraGameStateBase:CalculateRealTimeOrder() end

function ASTExtraGameStateBase:OnRep_PlayerNumByTag() end

---@param TagNumMap ULuaMapHelper<string, number>
function ASTExtraGameStateBase:RefreshPlayerNumByTagList(TagNumMap) end

function ASTExtraGameStateBase:ChangeClientLoadRadiusFacToWC() end

---@param ItemID number
---@return number
function ASTExtraGameStateBase:GetItemMaxDurability(ItemID) end

---@param ItemID number
---@param OutStr string
function ASTExtraGameStateBase:GetItemAttrModifyString(ItemID, OutStr) end

---@return number
function ASTExtraGameStateBase:GetOneShotReduceDurability() end

---@param ItemID number
---@param OutList ULuaArrayHelper<number>
function ASTExtraGameStateBase:GetItemAvailableAttachmentsList(ItemID, OutList) end

---@param Character ASTExtraPlayerCharacter
---@param InBackpackAvatarHandle UBackpackAvatarHandle
function ASTExtraGameStateBase:HandleAvatarDisplayCondition(Character, InBackpackAvatarHandle) end

---@param Character ASTExtraPlayerCharacter
---@param InBackpackAvatarHandle UBackpackAvatarHandle
function ASTExtraGameStateBase:HandleAvatarAdditionalData(Character, InBackpackAvatarHandle) end

---@param Character ASTExtraPlayerCharacter
function ASTExtraGameStateBase:CheckAvatarDisplayCondition(Character) end

---@param Character ASTExtraPlayerCharacter
---@param SlotID number
---@return boolean
function ASTExtraGameStateBase:RePutOnParentItemHandle(Character, SlotID) end

---@param Character ASTExtraPlayerCharacter
---@return boolean
function ASTExtraGameStateBase:IsPreparedOnClientAvatar(Character) end

---@param AvatarComponentType EAvatarComponentType
---@return boolean
function ASTExtraGameStateBase:ShouldClientOverrideAvatarMeshData(AvatarComponentType) end

---@return boolean
function ASTExtraGameStateBase:CheckStateIsReady() end

---@param InTargetCharacter ASTExtraBaseCharacter
---@param OutClientAvatarData ULuaArrayHelper<FMeshSynData>
---@param InRepMeshData ULuaArrayHelper<FMeshSynData>
---@return boolean
function ASTExtraGameStateBase:GetClientOverrideCharacterAvatarMeshData(InTargetCharacter, OutClientAvatarData, InRepMeshData) end

---@param InTargetCharacter ASTExtraBaseCharacter
---@param InWeapon ASTExtraWeapon
---@param OutClientAvatarData ULuaArrayHelper<FMeshSynData>
---@param InRepMeshData ULuaArrayHelper<FMeshSynData>
---@return boolean
function ASTExtraGameStateBase:GetClientOverrideWeaponAvatarMeshData(InTargetCharacter, InWeapon, OutClientAvatarData, InRepMeshData) end

---@param WeaponAvatarComponent UWeaponAvatarComponent
---@param OrigniSkin UBattleItemHandleBase
---@param AvatarSkin UBattleItemHandleBase
function ASTExtraGameStateBase:HandleWeaponOrAttachmentOriginSkin(WeaponAvatarComponent, OrigniSkin, AvatarSkin) end

---@param WeaponAvatarComponent UWeaponAvatarComponent
---@param InWeaponHandle UBattleItemHandleBase
function ASTExtraGameStateBase:HandleWeaponAdditionalData(WeaponAvatarComponent, InWeaponHandle) end

---@param InTargetCharacter ASTExtraBaseCharacter
---@return boolean
function ASTExtraGameStateBase:CanAddAdditionalEffect(InTargetCharacter) end

---@param InTargetCharacter ASTExtraBaseCharacter
---@return boolean
function ASTExtraGameStateBase:IsEquippedWithAdvancedArmor(InTargetCharacter) end

---@param Character ASTExtraPlayerCharacter
---@param Index number
---@return boolean
function ASTExtraGameStateBase:CheckBackpackItemIsEquipping(Character, Index) end

---@param ExplosionItemID number
---@return number
function ASTExtraGameStateBase:GetOverrideExplosionSoundAttenuationScale(ExplosionItemID) end

---@param Character ASTExtraPlayerCharacter
---@param InBackpackAvatarHandle UBackpackAvatarHandle
function ASTExtraGameStateBase:HandleAvatarByModeRelatedSkin(Character, InBackpackAvatarHandle) end

---@param bNewValue boolean
function ASTExtraGameStateBase:NotifyUserSettingChanged_VoiceInBGSwitcher(bNewValue) end

---@param ExceptionType string
function ASTExtraGameStateBase:OnExceptionReportFilterByTime(ExceptionType) end

function ASTExtraGameStateBase:Summary_ExceptionReportFilterByTime() end

---@param InItemDefineID FItemDefineID
---@return number
function ASTExtraGameStateBase:GetItemAttrBit(InItemDefineID) end

---@param InMethodType EDamageModifyMethodType
---@return boolean
function ASTExtraGameStateBase:IsEnableGlobalDamageModifyMethod(InMethodType) end

---@param InMethodType EDamageModifyMethodType
function ASTExtraGameStateBase:EnableGlobalDamageModifyMethod(InMethodType) end

---@param InMethodType EDamageModifyMethodType
function ASTExtraGameStateBase:DisableGlobalDamageModifyMethod(InMethodType) end

function ASTExtraGameStateBase:OnRep_ResetProperties() end

function ASTExtraGameStateBase:OnRep_ReplacedPlane() end

---@param GalaxyFaceInfoIndex string
---@param GalaxyFaceInfo string
function ASTExtraGameStateBase:AddGalaxyFaceUtilInfoMap(GalaxyFaceInfoIndex, GalaxyFaceInfo) end

---@param PlayerUID number
---@param GalaxyFaceInfoIndex string
function ASTExtraGameStateBase:AddPlayerUIDToGalaxyFaceInfoIndexMap(PlayerUID, GalaxyFaceInfoIndex) end

---@param GalaxyFaceInfoIndex string
---@return string
function ASTExtraGameStateBase:GetGalaxyFaceInfoByIndex(GalaxyFaceInfoIndex) end

---@param PlayerUID number
---@return string
function ASTExtraGameStateBase:GetGalaxyFaceInfoIndexByPlayerUID(PlayerUID) end

function ASTExtraGameStateBase:OnRep_ShowCheatCommandUIGameModeID() end

function ASTExtraGameStateBase:OnRep_LargeAircraftInfo() end

---@param PlayerUID number
---@return number
function ASTExtraGameStateBase:GetPlayerAuthorizationType(PlayerUID) end

---@param InTimeDilation number
function ASTExtraGameStateBase:SetTimeDilation(InTimeDilation) end

function ASTExtraGameStateBase:OnRep_TimeDilation() end

---@param InTimeDilation number
function ASTExtraGameStateBase:RPC_SetTimeDilation(InTimeDilation) end

function ASTExtraGameStateBase:LoadAttrGlobalQueryDataTableFinished() end

function ASTExtraGameStateBase:EnsureCacheFrameTimeArray() end

---@param DeltaSeconds number
function ASTExtraGameStateBase:CollectCacheFrameTimeData(DeltaSeconds) end

---@param UID number
---@return boolean
function ASTExtraGameStateBase:IsAICheatPlayer(UID) end

function ASTExtraGameStateBase:OnRep_AICheatPlayerList() end

---@param PlayerController ASTExtraPlayerController
---@param ItemOperationInfo FItemOperationInfo
function ASTExtraGameStateBase:OnPlayerPickUpHighValueItem(PlayerController, ItemOperationInfo) end

---@param InPickupInfo FBattleItemPickupInfo
---@return FBattleItemAdditionalData
function ASTExtraGameStateBase:GetCustomPickupAdditionalData(InPickupInfo) end

---@return boolean
function ASTExtraGameStateBase:CheckCanAutoUseWeapon() end
