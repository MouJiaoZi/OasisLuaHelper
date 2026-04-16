---@meta

---@class ECharacterGender
---@field Male number
---@field Female number
---@field LGBT number
ECharacterGender = {}


---@class ELogTypeID
---@field ObserverStuckLog number
---@field ObserverFallingLog number
---@field DSPullLog number
---@field ClientPositionErrorLog number
ELogTypeID = {}


---@class ELimitedItemCase
---@field GenerateBox number
---@field ServerDrop number
---@field ServerReplace number
ELimitedItemCase = {}


---@class FVehicleAvatarSkinItem
FVehicleAvatarSkinItem = {}


---@class FReportTeammateInfo
FReportTeammateInfo = {}


---@class FReportKillerInfo
---@field PlayerName string
---@field PlayerUID string
---@field bImprisonmentState boolean
---@field bInThresholdReport boolean
---@field bIsBeReport boolean
FReportKillerInfo = {}


---@class FClientReportMsg
---@field FrameNum number
---@field MsgStr string
---@field ExtraMsgStr string
FClientReportMsg = {}


---@class FClientAckTimeStamp
FClientAckTimeStamp = {}


---@class FPlayerControllerLostDelegate : ULuaSingleDelegate
FPlayerControllerLostDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerLostDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerLostDelegate:Execute() end


---@class FPlayerControllerRecoveredDelegate : ULuaSingleDelegate
FPlayerControllerRecoveredDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerRecoveredDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerRecoveredDelegate:Execute() end


---@class FPlayerControllerAboutToReconnectDelegate : ULuaSingleDelegate
FPlayerControllerAboutToReconnectDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerAboutToReconnectDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerAboutToReconnectDelegate:Execute() end


---@class FPlayerControllerReconnectedDelegate : ULuaSingleDelegate
FPlayerControllerReconnectedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerReconnectedDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerReconnectedDelegate:Execute() end


---@class FPlayerControllerRespawnedDelegate : ULuaMulticastDelegate
FPlayerControllerRespawnedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerRespawnedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerController AUAEPlayerController
function FPlayerControllerRespawnedDelegate:Broadcast(PlayerController) end


---@class FPlayerControllerLostWithTimeDelegate : ULuaMulticastDelegate
FPlayerControllerLostWithTimeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Time: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerLostWithTimeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Time number
function FPlayerControllerLostWithTimeDelegate:Broadcast(Time) end


---@class FPlayerControllerAboutToExitDelegate : ULuaSingleDelegate
FPlayerControllerAboutToExitDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerAboutToExitDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerAboutToExitDelegate:Execute() end


---@class FPlayerControllerClientHasReactivatedDelegate : ULuaSingleDelegate
FPlayerControllerClientHasReactivatedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerClientHasReactivatedDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerClientHasReactivatedDelegate:Execute() end


---@class FPlayerControllerReceivedExitMsgDelegate : ULuaSingleDelegate
FPlayerControllerReceivedExitMsgDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerReceivedExitMsgDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerReceivedExitMsgDelegate:Execute() end


---@class FPlayerControllerOnSerializeNewActorDelegate : ULuaSingleDelegate
FPlayerControllerOnSerializeNewActorDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerOnSerializeNewActorDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerOnSerializeNewActorDelegate:Execute() end


---@class FBattleFinishReportNotifyDelegate : ULuaMulticastDelegate
FBattleFinishReportNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBattleFinishReportNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FBattleFinishReportNotifyDelegate:Broadcast(Param1) end


---@class FUAEPlayerControllerDelegate : ULuaSingleDelegate
FUAEPlayerControllerDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUAEPlayerControllerDelegate:Bind(Callback, Obj) end

---执行委托
function FUAEPlayerControllerDelegate:Execute() end


---@class FUAEControllerGetTracedTasksDelegate : ULuaMulticastDelegate
FUAEControllerGetTracedTasksDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TaskIDs: ULuaArrayHelper<number>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUAEControllerGetTracedTasksDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TaskIDs ULuaArrayHelper<number>
function FUAEControllerGetTracedTasksDelegate:Broadcast(TaskIDs) end


---@class FOnRepIsSpectatingDelegate : ULuaMulticastDelegate
FOnRepIsSpectatingDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsSpectating: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepIsSpectatingDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsSpectating boolean
function FOnRepIsSpectatingDelegate:Broadcast(bIsSpectating) end


---@class FOnRepWatchTypeDelegate : ULuaMulticastDelegate
FOnRepWatchTypeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WatchType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepWatchTypeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param WatchType number
function FOnRepWatchTypeDelegate:Broadcast(WatchType) end


---@class FOnCachedCampIDDelegate : ULuaMulticastDelegate
FOnCachedCampIDDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CachedCampID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCachedCampIDDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CachedCampID number
function FOnCachedCampIDDelegate:Broadcast(CachedCampID) end


---@class FOnPlayerGotoSpectatingDelegate : ULuaMulticastDelegate
FOnPlayerGotoSpectatingDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerGotoSpectatingDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnPlayerGotoSpectatingDelegate:Broadcast(PlayerKey) end


---@class FOnPlayerQuitSpectatingDelegate : ULuaMulticastDelegate
FOnPlayerQuitSpectatingDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerQuitSpectatingDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnPlayerQuitSpectatingDelegate:Broadcast(PlayerKey) end


---@class FPlayerHandleClassFieldAccessDeniedDelegate : ULuaMulticastDelegate
FPlayerHandleClassFieldAccessDeniedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InClassName: string, InFieldName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerHandleClassFieldAccessDeniedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InClassName string
---@param InFieldName string
function FPlayerHandleClassFieldAccessDeniedDelegate:Broadcast(InClassName, InFieldName) end


---@class FOnReceiveBanSucceed : ULuaMulticastDelegate
FOnReceiveBanSucceed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BadPlayerKey: number, BanPlayerUID: number, SecMarkType: number, ReportedByMe: boolean, TimeStamp: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceiveBanSucceed:Add(Callback, Obj) end

---触发 Lua 广播
---@param BadPlayerKey number
---@param BanPlayerUID number
---@param SecMarkType number
---@param ReportedByMe boolean
---@param TimeStamp number
function FOnReceiveBanSucceed:Broadcast(BadPlayerKey, BanPlayerUID, SecMarkType, ReportedByMe, TimeStamp) end


---Called when a path is selected in the path picker
---@class FOnDSSendMessageDelegate : ULuaMulticastDelegate
FOnDSSendMessageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Message: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDSSendMessageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Message string
function FOnDSSendMessageDelegate:Broadcast(Message) end


---@class FOnSyncHomeDepotDataRspDelegate : ULuaSingleDelegate
FOnSyncHomeDepotDataRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FGameModeHomeItemParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSyncHomeDepotDataRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FGameModeHomeItemParams>
function FOnSyncHomeDepotDataRspDelegate:Execute(Param1) end


---@class FOnHomeDepotItemChangeNtfDelegate : ULuaSingleDelegate
FOnHomeDepotItemChangeNtfDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FGameModeHomeItemParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHomeDepotItemChangeNtfDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FGameModeHomeItemParams>
function FOnHomeDepotItemChangeNtfDelegate:Execute(Param1) end


---@class FOnClearHomeItemNewRspDelegate : ULuaSingleDelegate
FOnClearHomeItemNewRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<number>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClearHomeItemNewRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<number>
function FOnClearHomeItemNewRspDelegate:Execute(Param1) end


---@class FPlayerSwitchDSStateChangedDelegate : ULuaMulticastDelegate
FPlayerSwitchDSStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewPlayerSwitchDSState: EPlayerSwitchDSState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerSwitchDSStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewPlayerSwitchDSState EPlayerSwitchDSState
function FPlayerSwitchDSStateChangedDelegate:Broadcast(NewPlayerSwitchDSState) end


---@class FOnCommonSyncDepotRspDelegate : ULuaSingleDelegate
FOnCommonSyncDepotRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FBackpackItemParams>, Param2: ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCommonSyncDepotRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FBackpackItemParams>
---@param Param2 ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
function FOnCommonSyncDepotRspDelegate:Execute(Param1, Param2) end


---@class FOnCommonBatchAddItemsRspDelegate : ULuaSingleDelegate
FOnCommonBatchAddItemsRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FBackpackItemParams>, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCommonBatchAddItemsRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FBackpackItemParams>
---@param Param2 number
---@param Param3 number
function FOnCommonBatchAddItemsRspDelegate:Execute(Param1, Param2, Param3) end


---@class FOnCommonBatchDelItemsRspDelegate : ULuaSingleDelegate
FOnCommonBatchDelItemsRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FBackpackItemParams>, Param2: number, Param3: number, Param4: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCommonBatchDelItemsRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FBackpackItemParams>
---@param Param2 number
---@param Param3 number
---@param Param4 boolean
function FOnCommonBatchDelItemsRspDelegate:Execute(Param1, Param2, Param3, Param4) end


---@class FOnCommonBatchRemoveItemNewFlagsRspDelegate : ULuaSingleDelegate
FOnCommonBatchRemoveItemNewFlagsRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FBackpackItemParams>, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCommonBatchRemoveItemNewFlagsRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FBackpackItemParams>
---@param Param2 number
function FOnCommonBatchRemoveItemNewFlagsRspDelegate:Execute(Param1, Param2) end


---@class FOnCommonDepotChangeNtfDelegate : ULuaSingleDelegate
FOnCommonDepotChangeNtfDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FBackpackItemParams>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCommonDepotChangeNtfDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FBackpackItemParams>
function FOnCommonDepotChangeNtfDelegate:Execute(Param1) end


---@class FOnUpdateItemAdditionPropertiesRspDelegate : ULuaSingleDelegate
FOnUpdateItemAdditionPropertiesRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUpdateItemAdditionPropertiesRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FOnUpdateItemAdditionPropertiesRspDelegate:Execute(Param1) end


---@class FOnGetItemAdditionPropertiesRspDelegate : ULuaSingleDelegate
FOnGetItemAdditionPropertiesRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGetItemAdditionPropertiesRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
---@param Param2 number
function FOnGetItemAdditionPropertiesRspDelegate:Execute(Param1, Param2) end


---@class FOnBigWorldBatchUpdateUGCVirtualItemRspDelegate : ULuaSingleDelegate
FOnBigWorldBatchUpdateUGCVirtualItemRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<FBackpackItemParams>, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBigWorldBatchUpdateUGCVirtualItemRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<FBackpackItemParams>
---@param Param2 number
function FOnBigWorldBatchUpdateUGCVirtualItemRspDelegate:Execute(Param1, Param2) end


---@class FBigWorldTaskSyncRspDelegate : ULuaSingleDelegate
FBigWorldTaskSyncRspDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FDSBigWorldTaskBaseInfo) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBigWorldTaskSyncRspDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FDSBigWorldTaskBaseInfo
function FBigWorldTaskSyncRspDelegate:Execute(Param1) end


---@class FOnDeathPlaybackFileSaved : ULuaMulticastDelegate
FOnDeathPlaybackFileSaved = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InFilePath: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathPlaybackFileSaved:Add(Callback, Obj) end

---触发 Lua 广播
---@param InFilePath string
function FOnDeathPlaybackFileSaved:Broadcast(InFilePath) end


---@class FOnWatchGameUIInitCompleted : ULuaMulticastDelegate
FOnWatchGameUIInitCompleted = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WatchGameUIObject: UObject) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWatchGameUIInitCompleted:Add(Callback, Obj) end

---触发 Lua 广播
---@param WatchGameUIObject UObject
function FOnWatchGameUIInitCompleted:Broadcast(WatchGameUIObject) end


---@class AUAEPlayerController: APlayerController, IFastRemoteReplicationCarrierInterface, IUAEOBHelperInterface
---@field DelayNotifyBattleBeginPlay number
---@field TimerHandle_DelayedNotifyBattleBeginPlay FTimerHandle
---@field PlayerType string
---@field PlayerName string
---@field PlayerKey number
---@field PlayerUID string
---@field PlayerOpenID string
---@field TeamID number @TeamID which is identical to corresponding player state's TeamID
---@field OriginTeamID number
---@field CachedCampID number @camp game mode. feishen, 20220107
---@field bIsCampModeCaptain boolean
---@field CachedCampPlayerIndex number @camp game mode. recored index in List. feishen, 20220108
---@field OnCachedCampIDDelegate FOnCachedCampIDDelegate
---@field CharacterLocation FVector
---@field RoomMode number
---@field WeatherInfo FWeatherInfo
---@field PlayerStartID number
---@field bUsedSimulation boolean
---@field bDestoryResetUsedSimulation boolean
---@field NetStats FPlayerNetStats
---@field bIsForReplay boolean
---@field bIsForFakePCTest boolean
---@field bReplaySightUseWeaponYaw boolean
---@field IdxInTeam number
---@field ClientSendDSPrintLogCDConfig number
---@field OnDSSendMessageDelegate FOnDSSendMessageDelegate @DS send message delegate.
---@field bIsGM boolean
---@field bIsEnableUGCGM boolean
---@field bUGCGMEnabled boolean
---@field bIsTeammateEscaped boolean
---@field DefaultCharacterGender ECharacterGender
---@field InitialItemList ULuaArrayHelper<FGameModePlayerItem> @item list brought from outside and character should process it on possessed
---@field ItemListInServerDepot ULuaArrayHelper<FBackpackItemParams>
---@field ItemPropertiesInServerDepot ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
---@field playerFaceHandleID number
---@field SuitSkinData FSuitSkinData
---@field ConfessionMessage ULuaArrayHelper<number>
---@field WeaponModDatas ULuaArrayHelper<FWeaponModData> @枪匠系统：枪械改装属性
---@field InitialWeaponAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field InitialWearInfo FGameModePlayer_WearInfo
---@field WeaponAvatarItemList ULuaMapHelper<number, number>
---@field RepWeaponAvatarItemArray ULuaArrayHelper<FVehicleAvatarItemPairData>
---@field WeaponAttachmentItemList ULuaMapHelper<number, FGameModePlayerItemList>
---@field VehicleAvatarItemList ULuaMapHelper<number, FVehicleAvatarSkinItem>
---@field HasVehicleOnBornLand boolean
---@field bHasVehicleDazzlingAppearanceAbility boolean
---@field bHasAlreadyCallVehicleOnBornLand boolean
---@field bHasAlreadyCallAircraftOnBornLand boolean
---@field RepVehicleAvatarItemList ULuaArrayHelper<FVehicleAvatarItemPairData> @FastArray开关机制 Start CVarEnableFastArraySerializer开启时，DS使用FastArray进行Rep，关闭时使用默认机制Rep 对ObservedItemList的修改要考虑FastArray，双轨制;
---@field InitialExpressionItemList ULuaArrayHelper<FGameModePlayerExpressionItem> @FastArray开关机制 End
---@field PlayerOBInfoList ULuaArrayHelper<FPlayerOBInfo>
---@field LobbyShowWeaponID number
---@field InitialDecalItemList ULuaArrayHelper<FGameModePlayerDecalItem>
---@field InitialTaskDataList ULuaArrayHelper<FGameModePlayerTaskData>
---@field InitialSpecialPickItemList ULuaArrayHelper<FSpecialPickItem>
---@field AnchorPlatResID number
---@field AnchorPlatColorID number
---@field PassCardBuyType number
---@field PassCardBuyLevel number
---@field NeedShowEnjoyCard boolean
---@field LikeLevel number
---@field CommonFlagData ULuaArrayHelper<FCommonFlagData>
---@field InitDropId number
---@field InitDropIdList ULuaArrayHelper<number>
---@field LockItemCirculate boolean
---@field LockItemCirculateTips number
---@field SeasonWeekIndex number
---@field JoinSourceType number
---@field LobbyTeammates ULuaArrayHelper<number>
---@field RatingScoreDiffID number
---@field OnPlayerGotoSpectatingDelegate FOnPlayerGotoSpectatingDelegate
---@field OnPlayerQuitSpectatingDelegate FOnPlayerQuitSpectatingDelegate
---@field OnHasBegunPlay FUAEPlayerControllerDelegate
---@field AllImprisonTeammateName ULuaArrayHelper<string>
---@field DS_ReportTeammateNameByTeamHurt ULuaArrayHelper<string>
---@field HurtYouTeammateInfo ULuaMapHelper<string, FReportTeammateInfo>
---@field KillerYouCanReportBecauseOfMeleeDeath ULuaArrayHelper<FReportKillerInfo>
---@field MilitarySupPoint number
---@field DefaultControlPawn APawn
---@field LastGameResultTime number
---@field bIsObserver boolean
---@field bIsObserverInBattle boolean
---@field bIsObserverHost boolean
---@field OBGM number
---@field bHasPausePrivilege boolean
---@field OnShowOutlineDelegate FOnRepIsSpectatingDelegate
---@field bIsGMWatcher boolean
---@field bEagleWatch boolean
---@field EagleWatchType number
---@field OnRepIsEagleWatchDelegate FOnRepIsSpectatingDelegate
---@field WatchPlayerUID string
---@field AutoChangeViewTargetWhileTargetIsDead boolean
---@field OnRepWatchPlayerUIDDelegate FOnRepIsSpectatingDelegate
---@field OnEagleWatchEndDelegate FUAEPlayerControllerDelegate
---@field OnTotalPlayerListUpdateDelegate FUAEPlayerControllerDelegate
---@field OnReceiveSucceedDelegate FOnReceiveBanSucceed
---@field bIsSpectating boolean
---@field SpecialWatchType number
---@field OnRepSpecialWatchTypeDelegate FOnRepWatchTypeDelegate
---@field bNeedCloseLoading boolean
---@field CloseLoadingSecond number
---@field bIsAliveSpectator boolean
---@field OnRepIsSpectatingDelegate FOnRepIsSpectatingDelegate
---@field WatchPlayerKey number
---@field OnRepWatchPlayerKey FOnRepIsSpectatingDelegate
---@field OnRepIsGlobalObserverDelegate FPlayerControllerRespawnedDelegate
---@field OnRepIsGlobalObserverHostDelegate FPlayerControllerRespawnedDelegate
---@field OnRepIsGM FPlayerControllerRespawnedDelegate
---@field ObserverEnemyDistSquare number
---@field bIsWatchEnd boolean
---@field bCanBeLikedByOther boolean
---@field bCanBeLikedByFriend boolean
---@field bCanBeLikedByTeammate boolean
---@field bCanBePositiveLikeByTeammate boolean
---@field bIsSpectatingSameCamp boolean
---@field bIsSpectatingEnemy boolean
---@field OnInitInGameUICompleted FUAEPlayerControllerDelegate
---@field OnWatchGameUIInitCompleted FOnWatchGameUIInitCompleted
---@field InGameUIRoot UUAEUserWidget
---@field bExited boolean @whether the player has exited and will never be back
---@field bReconnected boolean @whether is a reconnected player controller, once true, never false
---@field bReconnecting boolean @生化团竞合入, feishen, 20200828
---@field ViewTargetCriticalLevelsLoadThreshold number
---@field PlayerControllerLostDelegate FPlayerControllerLostDelegate @called only on server
---@field PlayerControllerLostWithTimeDelegate FPlayerControllerLostWithTimeDelegate
---@field PlayerControllerRecoveredDelegate FPlayerControllerRecoveredDelegate @called only on server
---@field ClientPlayerControllerRecoveredDelegate FPlayerControllerRecoveredDelegate @called only on client
---@field PlayerControllerAboutToReconnectDelegate FPlayerControllerAboutToReconnectDelegate @called on server only
---@field PlayerControllerReconnectedDelegate FPlayerControllerReconnectedDelegate @called on both client and server
---@field PlayerControllerRespawnedDelegate FPlayerControllerRespawnedDelegate @called on both client and server
---@field PlayerControllerAboutToExitDelegate FPlayerControllerAboutToExitDelegate @called only on server
---@field PlayerControllerReceivedExitMsgDelegate FPlayerControllerReceivedExitMsgDelegate @called only on server
---@field PlayerControllerOnSerializeNewActorDelegate FPlayerControllerOnSerializeNewActorDelegate @called only on server
---@field PlayerControllerClientHasReactivatedDelegate FPlayerControllerClientHasReactivatedDelegate @called only on server
---@field AvatarEditorTestList ULuaArrayHelper<number>
---@field bDSNeedTickHouse boolean
---@field KillTipMinLevel number
---@field CacheAllPlayerFixInfo FAllPlayerFixInfo
---@field MedalClubID string
---@field MedalClubLevel number
---@field NegotiateDHKeyTimer number
---@field NegotiateDHKeyTimeout number
---@field DumpPlayerReplicationDetails_MaxCount number
---@field DumpPlayerReplicationDetails_RatioOfMax number
---@field DumpPlayerReplicationDetails_Threshold number
---@field DumpPlayerReplicationDetails_TriggerFrames number
---@field DumpPlayerParachuting_Interval number
---@field DumpPlayerParachuting_TriggerFrames number
---@field bCanAutoForceOpenParachute boolean
---@field LastRetCodeZeroAndLenZeroThreshold number @TssAntiData Stat, 统计retcode=0且dataLen=0后继续retcode=3出现的次数，以此统计玩家是否干掉了sdk查询逻辑, feishen, 20201222
---@field ContinueRetCodeZeroAndLenZeroThreshold number @TssAntiData Stat, 统计retcode=0且dataLen=0连续出现的次数，定位这种异常, feishen, 20210812
---@field ReportedLongTimeNoReceived boolean
---@field LongTimeNoReceivedCount number
---@field PathNameMappingConfig number
---@field PlayerSwitchDSStateChangedDelegate FPlayerSwitchDSStateChangedDelegate
---@field TryingSwitchOutTimeoutSeconds number
---@field SwitchingOutTimeoutSeconds number
---@field SwitchedOutTimeoutSeconds number
---@field bIsSwitchingDS boolean
---@field bIsSwitchDSPlayer boolean
---@field PlayerSwitchDSStatePrivate EPlayerSwitchDSState
---@field FastRemoteReplicationCarrier FFastRemoteReplicationCarrier
---@field bHasBindFRRClientPendingNGuid boolean
---@field GoodmoveAckTimeStamp number
---@field GoodmoveAckTimeStampCompressed FClientAckTimeStamp
---@field ClientMsgReporterClassPath UClientMsgReporter
---@field DeathPlaybackFileSavedDelegate FOnDeathPlaybackFileSaved
---@field BattleAvatarStageActionUIMsgDelegate FCommonUIMsgDelegate
---@field ServerCheckClientPossessionCount number
---@field IntP number
---@field FltP number
---@field StrP string
---@field NameP string
---@field StructP1 FTestFastRep
---@field StructP2 FTestFastRep_Custom
---@field StructP3 FTestFastRep_Composite
---@field bOpenBackpackExtendFeature boolean
---@field bOpenBackpackExtendFeatureLT boolean
---@field bOpenDiamondArenaFeature boolean
---@field BackpackExtendClass UBackpackExtendFeature
---@field TwinsMap ULuaMapHelper<number, number>
---@field GenItemsTakeOutLimitMap ULuaMapHelper<number, number>
local AUAEPlayerController = {}

function AUAEPlayerController:DoReponceVehicleAvatarItemList() end

---@return string
function AUAEPlayerController:GetToString() end

---@param Title string
---@param Subtitle string
---@param MiddleSimplyStr string
---@param EndStr string
function AUAEPlayerController:PrintExtendInfoHasMiddleSimply(Title, Subtitle, MiddleSimplyStr, EndStr) end

function AUAEPlayerController:DelayedNotifyBattleBeginPlay() end

---@param AuthKey string
function AUAEPlayerController:ServerAuthenticatePlayer(AuthKey) end

---@param ItemID number
---@param InstanceID number
---@param LimitedCase ELimitedItemCase
---@return boolean
function AUAEPlayerController:LimitedItemByAntiCheat(ItemID, InstanceID, LimitedCase) end

---@param bShowTips boolean
---@param itemHandle UBattleItemHandleBase
---@return boolean
function AUAEPlayerController:LimitedItemByAccountSafety(bShowTips, itemHandle) end

---@return boolean
function AUAEPlayerController:EnableLimitCheck() end

---@param DefineID FItemDefineID
---@param Reason EBattleItemPickupReason
---@return boolean
function AUAEPlayerController:CanPickupItemByAntiCheat(DefineID, Reason) end

function AUAEPlayerController:DumpObjectRelations() end

function AUAEPlayerController:OnRep_PlayerUID() end

---@return number
function AUAEPlayerController:GetInt64UID() end

---@return number
function AUAEPlayerController:GetInt64PlayerKey() end

function AUAEPlayerController:OnRep_CachedCampID() end

function AUAEPlayerController:OnRep_IsCampModeCaptain() end

---@return number
function AUAEPlayerController:GetIndexInTeam() end

---@param DynaConfigInfo FDynaConfigInfo
function AUAEPlayerController:ServerReportDynaConfigMiss(DynaConfigInfo) end

---生化团竞合入, feishen, 20200828
---@param GameMode AUAEGameMode
function AUAEPlayerController:PostLoginInit(GameMode) end

---@param Params FGameModePlayerParams
function AUAEPlayerController:InitWithPlayerParams(Params) end

function AUAEPlayerController:InitWeaponAvatarItems() end

function AUAEPlayerController:InitWeaponAttachmentAvatarItems() end

function AUAEPlayerController:InitVehicleAvatarItems() end

---RPC Function called on client, which is used to show the log message from server.
---@param InDSLog string
function AUAEPlayerController:ClientGetDSLog(InDSLog) end

---@param InLogTypeID number
---@param InVector FVector
---@param InVector2 FVector
---@param InInt number
---@param InExtendStr string
function AUAEPlayerController:ClientSendDSPrintLog(InLogTypeID, InVector, InVector2, InInt, InExtendStr) end

---@param InLogTypeID number
---@param ClientTime number
---@param InVector FVector
---@param InVector2 FVector
---@param InInt number
---@param InExtendStr string
function AUAEPlayerController:ServerRevClientPrintLog(InLogTypeID, ClientTime, InVector, InVector2, InInt, InExtendStr) end

---@param uid string
function AUAEPlayerController:ServerGetOneOBInfo(uid) end

---@param Info FPlayerOBInfo
function AUAEPlayerController:ClientPushOneOBInfo(Info) end

function AUAEPlayerController:TestPushOneOBInfo() end

function AUAEPlayerController:ClientInitPlayerOBInfoButton() end

function AUAEPlayerController:CheckPlayerOBInfoButtonInit() end

function AUAEPlayerController:InitPlayerWearInfo() end

---@return number
function AUAEPlayerController:GetCurrentOBPlayerInfoIndex() end

---@return number
function AUAEPlayerController:GetCurrentOBPlayerKey() end

function AUAEPlayerController:OnRep_CharacterLocation() end

function AUAEPlayerController:OnRep_UsedSimulation() end

---@param Value boolean
function AUAEPlayerController:SetUsedSimulationCVar(Value) end

function AUAEPlayerController:ResetUsedSimulationCVar() end

function AUAEPlayerController:OnRep_ISGM() end

function AUAEPlayerController:OnRep_IsUGCGM() end

function AUAEPlayerController:OnRep_IsUGCGMEnabled() end

function AUAEPlayerController:OnRep_WeaponAvatarItemList() end

function AUAEPlayerController:OnRep_VehicleAvatarItemList() end

---@param InTargetVehicleID number
function AUAEPlayerController:GetVehicleAvatarSkinList(InTargetVehicleID) end

function AUAEPlayerController:GetAllVehicleAvatarSkinList() end

---@param AllVehicleTypeList ULuaArrayHelper<number>
function AUAEPlayerController:GetAllVehicleAvatarSkinListByType(AllVehicleTypeList) end

function AUAEPlayerController:GetAllVehicleAvatarKey() end

---@param AllVehicleTypeList ULuaArrayHelper<number>
function AUAEPlayerController:GetValidVehicleAvatarKey(AllVehicleTypeList) end

---@param UIDString string
---@param NewBattleInfo FPlayerOBBattleInfo
function AUAEPlayerController:UpdatePlayerOBBattleInfo(UIDString, NewBattleInfo) end

---@param PlayerOBInfo FPlayerOBInfo
---@return string
function AUAEPlayerController:GetOBPlayerUIDString(PlayerOBInfo) end

---FastArraySerializer double backup mechanism Start
function AUAEPlayerController:OnRep_PlayerOBInfoList() end

---@return number
function AUAEPlayerController:GetPlayerOBInfoItemNum() end

---@param Target AActor
---@param AdditionalParam number
---@param pickCount number
---@return boolean
function AUAEPlayerController:CustomCanPickUpItem(Target, AdditionalParam, pickCount) end

---@param TeammateName string
---@return number
function AUAEPlayerController:GetReportFlagByTeammateName(TeammateName) end

function AUAEPlayerController:OnRep_KillerYouCanReportBecauseOfMeleeDeath() end

---生化团竞合入, feishen, 20200828
---@param respawn boolean
---@param bIsNetRecover boolean
function AUAEPlayerController:InitInGameUI(respawn, bIsNetRecover) end

---@param TableName string
---@param FunctionName string
function AUAEPlayerController:CallLuaTableFunction(TableName, FunctionName) end

---@param FunctionName string
function AUAEPlayerController:CallLuaGlobalFunction(FunctionName) end

function AUAEPlayerController:ReleaseInGameUI() end

---@param panels ULuaArrayHelper<UUAEUserWidget>
function AUAEPlayerController:SetPanels(panels) end

---@param strMsg string
---@param actor AActor
---@param module string
function AUAEPlayerController:CastUIMsgWithActorParam(strMsg, actor, module) end

---@param strMsg string
---@param module string
function AUAEPlayerController:CastUIMsg(strMsg, module) end

---@param strMsg string
---@param module string
function AUAEPlayerController:ClearUIFunctionCacheByUIMsg(strMsg, module) end

---@param strMsg string
---@param module string
---@param TargetName string
function AUAEPlayerController:CastUIMsgWithTarget(strMsg, module, TargetName) end

---@param Type number
function AUAEPlayerController:TestLiveTips(Type) end

---@param id number
function AUAEPlayerController:TestAddLiveMapItem(id) end

---@param id number
function AUAEPlayerController:TestRemoveLiveMapItem(id) end

function AUAEPlayerController:TestShowLiveTime() end

---@param type number
---@param id number
function AUAEPlayerController:TestAddMapItem(type, id) end

---@param type number
---@param id number
function AUAEPlayerController:TestRemoveMapItem(type, id) end

---@param strMsg string
---@param module string
function AUAEPlayerController:ClientRPC_CastUIMsg(strMsg, module) end

---@param strMsg string
---@param module string
---@param type number
function AUAEPlayerController:ClientRPC_CastUIMsgParams(strMsg, module, type) end

---@param strMsg string
---@param module string
---@param param1 string
---@param param2 string
function AUAEPlayerController:ClientRPC_CastUIMsgTwoParams(strMsg, module, param1, param2) end

function AUAEPlayerController:RecordControlPawn() end

function AUAEPlayerController:ResetToControlPawn() end

function AUAEPlayerController:ClearRecordControlPawn() end

---@param PlayerId number
---@return number
function AUAEPlayerController:GotoSpectating(PlayerId) end

function AUAEPlayerController:AutoSelectObservedTargetByServer() end

---@param InPos FVector
function AUAEPlayerController:ClientEnterSpectatorFreeView(InPos) end

---@param InPawn APawn
---@return boolean
function AUAEPlayerController:CheckAcknowledgedPawn(InPawn) end

---@param flag boolean
function AUAEPlayerController:SetShowIslandNicknameValue(flag) end

---@return boolean
function AUAEPlayerController:PlayerWillBeRevival() end

---@param InOther IUAEOBHelperInterface
---@return boolean
function AUAEPlayerController:CanObserveOtherPlayer(InOther) end

---@param VoiceID number
function AUAEPlayerController:ServerSetVoiceId(VoiceID) end

---@param VoiceID number
function AUAEPlayerController:ServerSetRobotVoiceId(VoiceID) end

---@param isOpen boolean
function AUAEPlayerController:ServerSetVoiceChangerSwitch(isOpen) end

---@param VoiceID number
function AUAEPlayerController:OnSetVoiceId(VoiceID) end

function AUAEPlayerController:OnRep_LastGameResultTime() end

function AUAEPlayerController:OnRep_IsObserver() end

---@param cmd string
function AUAEPlayerController:ServerGlobalObserverExeCmd(cmd) end

---@return boolean
function AUAEPlayerController:IsGlobalObserver() end

---@return boolean
function AUAEPlayerController:IsGlobalObserverOrReplaying() end

---@return boolean
function AUAEPlayerController:IsCanEnterFreeView() end

function AUAEPlayerController:OnLogoutCustom() end

function AUAEPlayerController:OnRep_IsObserverHost() end

---@return boolean
function AUAEPlayerController:CanPause() end

---@return boolean
function AUAEPlayerController:IsObserverHost() end

---@return boolean
function AUAEPlayerController:IsOBGM() end

function AUAEPlayerController:OnRep_IsGMWatcher() end

---@return boolean
function AUAEPlayerController:IsGMWatcher() end

function AUAEPlayerController:OnRep_EagleWatch() end

---@return boolean
function AUAEPlayerController:IsEagleWatch() end

---@return boolean
function AUAEPlayerController:IsSupportTPPFreeView() end

function AUAEPlayerController:OnRep_WatchPlayerUID() end

---@param ReportUID string
---@param InType number
function AUAEPlayerController:ServerReportUID(ReportUID, InType) end

---@param ReportUID string
function AUAEPlayerController:ServerReportViolationUID(ReportUID) end

---@param BadPlayerKey number
---@param BanPlayerUID number
---@param SecMarkType number
---@param ReportedByMe boolean
---@param TimeStamp number
function AUAEPlayerController:ClientReceiveBanSucceed(BadPlayerKey, BanPlayerUID, SecMarkType, ReportedByMe, TimeStamp) end

function AUAEPlayerController:OnRep_IsSpectating() end

---@return boolean
function AUAEPlayerController:IsInSpectating() end

function AUAEPlayerController:OnRep_SpecialWatchType() end

---@return number
function AUAEPlayerController:GetSpecialWatchType() end

function AUAEPlayerController:OnRep_NeedCloseLoading() end

---@return boolean
function AUAEPlayerController:IsFriendObserver() end

---@return number
function AUAEPlayerController:GetSpectatingPlayerUID() end

---生化团竞合入, feishen, 20200828
function AUAEPlayerController:ClearWatchPlayerKey() end

function AUAEPlayerController:OnRep_WatchPlayerKey() end

function AUAEPlayerController:OnRep_OBGM() end

---@param InPlayerName string
function AUAEPlayerController:Client_AddFriendObservers(InPlayerName) end

---@param InPlayerName string
function AUAEPlayerController:Client_DelFriendObservers(InPlayerName) end

function AUAEPlayerController:HandleFriendObserverEnter() end

function AUAEPlayerController:HandleReconnectingFriendObservers() end

---@param NewCampFriendObserverList ULuaArrayHelper<number>
function AUAEPlayerController:Client_AddCampFriendObserverList(NewCampFriendObserverList) end

---@param NewCampFriendObserverList ULuaArrayHelper<number>
function AUAEPlayerController:HandleCampFriendObserverList(NewCampFriendObserverList) end

---@return boolean
function AUAEPlayerController:IsSpectator() end

---@return boolean
function AUAEPlayerController:IsPureSpectator() end

---@return boolean
function AUAEPlayerController:IsFriendOrEnemySpectator() end

---@return boolean
function AUAEPlayerController:IsDemoRecSpectator() end

---@return boolean
function AUAEPlayerController:IsDemoPlaySpectator() end

---@return boolean
function AUAEPlayerController:IsSpectatorOrReplaying() end

---@return boolean
function AUAEPlayerController:IsReplaySightUseWeaponYaw() end

---@param wraponID number
---@param pendantID number
---@return boolean
function AUAEPlayerController:GetWeaponPandentReflect(wraponID, pendantID) end

---@param WeaponId number
---@param ModeID number
function AUAEPlayerController:GetWeaponModuleList(WeaponId, ModeID) end

---@param WeaponId number
---@param OutList ULuaArrayHelper<number>
---@param ModeID number
---@return boolean
function AUAEPlayerController:GetWeaponModuleListWithOutParam(WeaponId, OutList, ModeID) end

function AUAEPlayerController:OnRep_IsSpectatingSameCamp() end

---@return boolean
function AUAEPlayerController:IsInSpectatingSameCamp() end

function AUAEPlayerController:OnRep_IsSpectatingEnemy() end

---@return boolean
function AUAEPlayerController:IsInSpectatingEnemy() end

---@return boolean
function AUAEPlayerController:IsInTeamerSpeacting() end

function AUAEPlayerController:OnPreInitInGameUI() end

function AUAEPlayerController:OnPreInitOBUI() end

function AUAEPlayerController:OnPreInitWatchUI() end

function AUAEPlayerController:KickSelf() end

function AUAEPlayerController:ServerKickSelf() end

---@param destroyController number
---@param destroyCharacter number
function AUAEPlayerController:TestLogout(destroyController, destroyCharacter) end

---@param bDestroyController boolean
---@param bDestroyCharacter boolean
function AUAEPlayerController:ServerTestLogout(bDestroyController, bDestroyCharacter) end

function AUAEPlayerController:ExitGame() end

function AUAEPlayerController:ServerExitGame() end

function AUAEPlayerController:DisableInGameUI() end

function AUAEPlayerController:EnableInGameUI() end

---@param Distance number
function AUAEPlayerController:OnCharacterPositionUpdatedByServer(Distance) end

function AUAEPlayerController:NotifyClientNetworkLost() end

function AUAEPlayerController:ClientBroadcastReconnectionSuccessful() end

function AUAEPlayerController:ClientReconnectingInPaused() end

function AUAEPlayerController:ClientShowTeammateEscapeNotice() end

function AUAEPlayerController:BroadcastRespawnComplete() end

function AUAEPlayerController:ClientRPC_BroadcastRespawnComplete() end

---@param Token number
function AUAEPlayerController:ServerAcknowledgeReconnection_1(Token) end

---@param Token number
function AUAEPlayerController:ClientAcknowledgeReconnection_3(Token) end

---@param InData ULuaArrayHelper<number>
function AUAEPlayerController:SendRawDataToServer(InData) end

---@param InData ULuaArrayHelper<number>
function AUAEPlayerController:SendRawDataToClient(InData) end

---@param key string
---@param count number
function AUAEPlayerController:ExcuteIntCounterRecord(key, count) end

---@param key string
---@param count number
function AUAEPlayerController:ExcuteIntRecord(key, count) end

---@param bStepDump boolean
---@param DumpStep number
---@param InClass UClass
function AUAEPlayerController:DumpAllObjects(bStepDump, DumpStep, InClass) end

function AUAEPlayerController:DumpAllGCObjects() end

function AUAEPlayerController:DumpAllUI() end

function AUAEPlayerController:DumpAllActors() end

function AUAEPlayerController:DumpNetActors() end

function AUAEPlayerController:DumpDemoNetActors() end

function AUAEPlayerController:ExhaustCPU() end

function AUAEPlayerController:ForceNetReady() end

function AUAEPlayerController:DumpRegions() end

function AUAEPlayerController:DumpCharacters() end

function AUAEPlayerController:DumpUAENetActors() end

function AUAEPlayerController:LoadAllLandscape() end

function AUAEPlayerController:UnloadAllLandscape() end

function AUAEPlayerController:DumpViewTargetCriticalLevels() end

function AUAEPlayerController:DumpViewTargetStreamLevels() end

function AUAEPlayerController:DoCrash() end

function AUAEPlayerController:PrintStatistics() end

function AUAEPlayerController:PlayerStartIDReceived() end

---@param DSCommand string
function AUAEPlayerController:ExecDSCommand(DSCommand) end

---@param bEnterFight boolean
function AUAEPlayerController:ServerLoadAllLevels(bEnterFight) end

function AUAEPlayerController:NotifyFakeLandscapeCreated() end

function AUAEPlayerController:OnLocalSettingChanged() end

---@return boolean
function AUAEPlayerController:CanPickupItemInDeath() end

---@return boolean
function AUAEPlayerController:CanDropItemInDeath() end

---@param ItemID number
---@return boolean
function AUAEPlayerController:CanConsumeItem(ItemID) end

---@param EventId number
---@return boolean
function AUAEPlayerController:IsPlayerCollectedEventDataReportingEnabled(EventId) end

---@param EventId number
---@param Data FCollectedEventData
---@return boolean
function AUAEPlayerController:ReportCollectedEventData(EventId, Data) end

---@param EventId number
---@param CollectReportedEventDataCallback FCollectReportedEventDataCallback
---@return boolean
function AUAEPlayerController:ReportCollectedEventDataWithPlayerValidation(EventId, CollectReportedEventDataCallback) end

---@param EventId number
---@param KeysValues FCollectedEventKeysValues
function AUAEPlayerController:ServerReportCollectedEventData(EventId, KeysValues) end

---@param EventId number
---@param KeysValues FCollectedEventKeysValues
function AUAEPlayerController:ServerReportCollectedEventDataWithPlayerValidation(EventId, KeysValues) end

---@param EventId number
---@param OnlyIntValues FCollectedEventOnlyIntValues
function AUAEPlayerController:ServerReportCollectedEventDataWithPlayerValidation_OnlyIntValues(EventId, OnlyIntValues) end

---@param bCollectedEventDataReportingEnabled boolean
---@param CollectedEventType number
function AUAEPlayerController:DebugCollectedEvent(bCollectedEventDataReportingEnabled, CollectedEventType) end

function AUAEPlayerController:TestLuaNetwork() end

---@param InPlayerKey number
---@param InClassName string
---@param InFieldName string
function AUAEPlayerController:ServerHandleClassFieldAccessDenied(InPlayerKey, InClassName, InFieldName) end

---@param InClassName string
---@param InFieldName string
function AUAEPlayerController:ClientHandleClassFieldAccessDenied(InClassName, InFieldName) end

---@param Gen string
---@param Prime string
---@param ServerPublicKey string
---@param KeyIndex number
---@param Seq number
function AUAEPlayerController:RPC_ClientNegotiateDHKey(Gen, Prime, ServerPublicKey, KeyIndex, Seq) end

---@param ClientPublicKey string
---@param CRC string
---@param KeyIndex number
---@param Seq number
function AUAEPlayerController:RPC_ServerNegotiateDHKey(ClientPublicKey, CRC, KeyIndex, Seq) end

function AUAEPlayerController:DumpPlayerReplicationDetails() end

---@param Content string
function AUAEPlayerController:DumpPlayerLiteStatsEvent(Content) end

function AUAEPlayerController:OnRep_PathNameMappingConfig() end

---@param VersionID number
function AUAEPlayerController:ServerCheckPathNameMapVersion(VersionID) end

---@return number
function AUAEPlayerController:GetPlayerNetworkPing() end

---@param NewPlayerSwitchDSState EPlayerSwitchDSState
function AUAEPlayerController:SetPlayerSwitchDSState(NewPlayerSwitchDSState) end

---开始请求被动切线 Called: DS
function AUAEPlayerController:OnTryingSwitchOutDS() end

function AUAEPlayerController:BPOnTryingSwitchOutDS() end

---开始切出当前DS 此时DS数据备份尚未开始 Called: DS
function AUAEPlayerController:OnSwitchingOutDS() end

function AUAEPlayerController:BPOnSwitchingOutDS() end

---成功切出当前DS 此时DS数据备份已完成 Called: DS
function AUAEPlayerController:OnSwitchedOutDS() end

function AUAEPlayerController:BPOnSwitchedOutDS() end

---切线退出当前DS DS玩家将于5秒后登出并销毁PC Called: DS
function AUAEPlayerController:OnSwitchDSExit() end

function AUAEPlayerController:BPOnSwitchDSExit() end

---开始切入新DS 此时DS数据恢复尚未开始 此时客户端GUID重映射尚未开始 Called: DS&Client
function AUAEPlayerController:OnSwitchingInDS() end

function AUAEPlayerController:BPOnSwitchingInDS() end

---成功切入新DS 此时DS数据恢复已完成 此时客户端GUID重映射已完成 Called: DS&Client
function AUAEPlayerController:OnSwitchedInDS() end

function AUAEPlayerController:BPOnSwitchedInDS() end

---切线登入新DS Called: DS 此时ServerConnection/ClientConnection已创建 Notice: 切线过程中客户端杀进程的话，重连不会走这个
function AUAEPlayerController:OnSwitchDSLogin() end

function AUAEPlayerController:BPOnSwitchDSLogin() end

---切线失败 Called: DS
function AUAEPlayerController:OnSwitchDSFailed() end

function AUAEPlayerController:BPOnSwitchDSFailed() end

---@param BridgeList_Changed ULuaArrayHelper<FFastRemoteReplicationBridge>
function AUAEPlayerController:ClientSendFastRemoteReplication(BridgeList_Changed) end

---@param Content FFastRepRemoteContent
function AUAEPlayerController:ClientSendFastRepRemoteContent(Content) end

function AUAEPlayerController:OnRep_FastRemoteReplicationCarrier() end

---@param BridgeIndex number
---@param InData ULuaArrayHelper<number>
function AUAEPlayerController:SetFRRUserData(BridgeIndex, InData) end

---@param BridgeIndex number
function AUAEPlayerController:ClearFRRUserData(BridgeIndex) end

function AUAEPlayerController:ClearAllFRRUserData() end

---@param TimeStamp number
function AUAEPlayerController:ClientAckGoodMove(TimeStamp) end

function AUAEPlayerController:ClientAckGoodMoveCompressed() end

function AUAEPlayerController:Client_DumpActorParams() end

function AUAEPlayerController:RPC_Server_DumpActorParams() end

function AUAEPlayerController:Client_GetPawnReplicatedComponentsNumber() end

---@param ClientComponentName ULuaArrayHelper<string>
function AUAEPlayerController:RPC_Server_GetPawnReplicatedComponentsNumber(ClientComponentName) end

---@param TargetPlayerName string
function AUAEPlayerController:TrackPlayerDiagnosticInfo(TargetPlayerName) end

---@param MsgCount number
---@param InMsgData ULuaArrayHelper<number>
---@param Index number
function AUAEPlayerController:ServerHandleClientMsgReport(MsgCount, InMsgData, Index) end

---@param ControlMsg string
function AUAEPlayerController:ClientReportMsg(ControlMsg) end

function AUAEPlayerController:ClientDumpDeathPlayBack() end

---@param RemoteIP string
---@param RemotePort number
function AUAEPlayerController:ClientRPC_NetAddr(RemoteIP, RemotePort) end

---@return boolean
function AUAEPlayerController:CheckCanSafeQuit() end

---@param OldP number
function AUAEPlayerController:OnRep_IntP(OldP) end

---@param OldP number
function AUAEPlayerController:OnRep_FltP(OldP) end

---@param OldP UObject
function AUAEPlayerController:OnRep_ObjP(OldP) end

---@param OldP string
function AUAEPlayerController:OnRep_StrP(OldP) end

---@param OldP string
function AUAEPlayerController:OnRep_NameP(OldP) end

---@param OldP FTestFastRep
function AUAEPlayerController:OnRep_StructP1(OldP) end

---@param OldP FTestFastRep_Custom
function AUAEPlayerController:OnRep_StructP2(OldP) end

---@param OldP FTestFastRep_Composite
function AUAEPlayerController:OnRep_StructP3(OldP) end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function AUAEPlayerController:ForBidUseItemByPlayerController(ItemHandle) end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function AUAEPlayerController:ForBidDisUseItemByPlayerController(ItemHandle) end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function AUAEPlayerController:ForBidDropItemByPlayerController(ItemHandle) end
