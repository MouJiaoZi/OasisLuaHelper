---@meta

---@class EPlayerRestartReason
---@field PlayerStart number
---@field Transform number
EPlayerRestartReason = {}


---Whether a special pick item is collected completely
---@class FSpecialPickItemState
---@field item_id number
---@field bIsCollectionCompleted boolean
FSpecialPickItemState = {}


---@class FPlayerRestartConfig
---@field Reason EPlayerRestartReason
---@field RestartTransform FTransform
FPlayerRestartConfig = {}


---@class FDamageKillData
---@field KillNum number
---@field DamageAmount number
FDamageKillData = {}


---@class FWolfKillNumChangeDelegate : ULuaMulticastDelegate
FWolfKillNumChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KillNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWolfKillNumChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KillNum number
function FWolfKillNumChangeDelegate:Broadcast(KillNum) end


---@class FPlayerStateTeamIDChange : ULuaSingleDelegate
FPlayerStateTeamIDChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerStateTeamIDChange:Bind(Callback, Obj) end

---执行委托
function FPlayerStateTeamIDChange:Execute() end


---@class FPlayerStateDataUpgrade : ULuaSingleDelegate
FPlayerStateDataUpgrade = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerStateDataUpgrade:Bind(Callback, Obj) end

---执行委托
function FPlayerStateDataUpgrade:Execute() end


---@class FTopSegmentTimesChange : ULuaSingleDelegate
FTopSegmentTimesChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTopSegmentTimesChange:Bind(Callback, Obj) end

---执行委托
function FTopSegmentTimesChange:Execute() end


---@class FOnPrivacyDataReady : ULuaSingleDelegate
FOnPrivacyDataReady = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPrivacyDataReady:Bind(Callback, Obj) end

---执行委托
function FOnPrivacyDataReady:Execute() end


---@class FOnBreakDoor : ULuaMulticastDelegate
FOnBreakDoor = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BreakDoorNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBreakDoor:Add(Callback, Obj) end

---触发 Lua 广播
---@param BreakDoorNum number
function FOnBreakDoor:Broadcast(BreakDoorNum) end


---@class FOnBreakGlass : ULuaMulticastDelegate
FOnBreakGlass = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BreakGlassNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBreakGlass:Add(Callback, Obj) end

---触发 Lua 广播
---@param BreakGlassNum number
function FOnBreakGlass:Broadcast(BreakGlassNum) end


---@class FOnAddWeaponShootNum : ULuaMulticastDelegate
FOnAddWeaponShootNum = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerState: AUAEPlayerState, AddNum: number, SumNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAddWeaponShootNum:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerState AUAEPlayerState
---@param AddNum number
---@param SumNum number
function FOnAddWeaponShootNum:Broadcast(PlayerState, AddNum, SumNum) end


---@class FOnRealTimeOrderChanged : ULuaMulticastDelegate
FOnRealTimeOrderChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, RealTimeOrder: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRealTimeOrderChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param RealTimeOrder number
function FOnRealTimeOrderChanged:Broadcast(RealTimeOrder) end


---@class FOnNewFPPModeChangeDelegate : ULuaSingleDelegate
FOnNewFPPModeChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNewFPPModeChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnNewFPPModeChangeDelegate:Execute() end


---@class AUAEPlayerState: APlayerState
---@field binitializedData boolean @生化团竞合入, feishen, 20200828
---@field PlayerRestartConfig FPlayerRestartConfig
---@field ProneTime number
---@field BeInWaterTime number
---@field SwimmingDistance number
---@field marchDistance number
---@field MarchTime number
---@field travelDistance number
---@field driveDistance number
---@field destroyVehicleNum number
---@field rescueTimes number
---@field bIgnoreCampRescue boolean
---@field RescueStartCnt number @统计开始救援的次数
---@field NightMarchDistance number
---@field KillWolfNum number
---@field GVMemberID number
---@field bIsPureSpectator boolean
---@field PlayerType string
---@field FinalTeamleaderUID number
---@field PlayerKey number @PlayerKey which is identical to corresponding player controller's PlayerKey, only available on DS
---@field RealPlayerName string
---@field UID number
---@field PlayerUID string
---@field PlayerOpenID string
---@field bAIPlayer boolean
---@field IconURL string
---@field Gender number
---@field PlayerLevel number
---@field SegmentLevel number
---@field TopSegmentTimes number
---@field CurModeRating number
---@field RemainRatingNum number
---@field OnTopSegmentTimesChange FTopSegmentTimesChange
---@field PetDataInfo FPetDataInfo
---@field RemarkName string
---@field ChangedNameByDS boolean
---@field LiveID string
---@field LiveType number
---@field imprint_info number
---@field AvatarBoxId number
---@field TeamID number
---@field IdxInTeam number
---@field bHasSendTeamBattleResult boolean
---@field bIsPureWatcherReplay boolean
---@field RoomTeammatesID number
---@field bForbidReportTeammate boolean
---@field ReportUncivilizedCount number
---@field bWarningForUncivilizedBehavior boolean
---@field RemainTeammateHurtCount number
---@field RemainTeammateKillCount number
---@field RemainTeammateCarInterruptSaveCount number
---@field OnTeamIDChange FPlayerStateTeamIDChange
---@field OnLiveStatusChange FPlayerStateTeamIDChange
---@field UDPSenderAddress string
---@field PlayerBornPointID number
---@field Kills number
---@field Assists number
---@field PlatformGender number
---@field bIsFireworksActOpen boolean
---@field MatchLabel number
---@field IsBanPublicMic boolean
---@field JumpSegmentID number
---@field IsWorkManGetChestLimit boolean
---@field WorkManChestLimitStr string
---@field PrivacyDetail FPrivacyProtectDetail
---@field OnPrivacyDataReady FOnPrivacyDataReady
---@field Killer number
---@field KillerName string
---@field HitdownPlayersInfoData ULuaArrayHelper<FHitDownPlayerTypeInfoData>
---@field HitDownOther number
---@field is_regress number
---@field not_counter_ai number
---@field KillerWeaponId number
---@field KillerDistance number
---@field KillerMLPlayerType number
---@field KnockDownMLPlayerType number
---@field KilledByMLAI boolean
---@field ShootWeaponShotNum number
---@field OnAddWeaponShootNum FOnAddWeaponShootNum
---@field ShootWeaponShotAndHitPlayerNum number
---@field HeadShotNum number
---@field HealTimes number
---@field DamageAmount number
---@field DamageAmountExceptAI number
---@field ShootWeaponDamageAmount number
---@field HealAmount number
---@field WeaponKillsMap ULuaMapHelper<number, FWeaponKillData>
---@field WeaponSkinHistoryKillCounter ULuaMapHelper<number, number>
---@field RepWeaponSkinHistoryKillCounter ULuaArrayHelper<FGameModePlayer_WearItem>
---@field KillFlow ULuaArrayHelper<string>
---@field suitSkinFlow FSuitSkinFlow
---@field TLog_PickUpItemFlowData ULuaArrayHelper<FTLog_PickUpItemFlow>
---@field UseItemFlow ULuaArrayHelper<FUseItemFlow>
---@field TLog_PropEquipUnequipFlowData ULuaArrayHelper<FTLog_PropEquipUnequipFlow>
---@field OutsideBlueCircleTime number
---@field TotalBlueCircleTime number @总吃毒时间
---@field VehicleDriveDisDataArray ULuaArrayHelper<FVehicleDriveDisData>
---@field FirstOpenedTombBoxNum number
---@field FirstOpenedAirDropBoxNum number
---@field FirstOpenedMonsterTombBoxNum number
---@field PickupMonsterTombBoxNum number
---@field FirstOpenedSuperWeaponBoxNum number
---@field HitEnemyHeadAmount number
---@field BuildFlow ULuaArrayHelper<number>
---@field DestroyShelterFlow ULuaArrayHelper<number>
---@field ZombieKilledUsingTraps number
---@field HitShelterDamage number
---@field ShelterTakeDamage number
---@field PlayerSetLevel number
---@field PlayerSetExp number
---@field FlareGunReport FFlareGunReport
---@field LandLocation FVector
---@field bHasPopupTopFiveTips boolean
---@field TopFiveTipsUseResponse number
---@field SignalHealAmount number
---@field SignalHealCount number
---@field DeadLocation FVector
---@field DeadDamangeType string
---@field DeadTimeStr string
---@field DeadTime FDateTime
---@field DeadTimeUnixTimestampMS number
---@field LeftAlivePlayersWhenDead number
---@field DeadTimes number
---@field KillerUIDs ULuaArrayHelper<number>
---@field KillersInfo ULuaArrayHelper<FKillerPlayerTypeInfoData>
---@field BeDownTimes number @倒地次数
---@field KnockDownTimes number @击倒次数
---@field GeneralKnockDownTimes number @击倒次数(包含普通击倒，直接击杀，击杀其他队伍击倒的玩家，不包含击倒自己和自杀)
---@field TerminateTeamKillNum number @灭队击杀
---@field CurBeKnockDownPlayer number @当前击倒我的玩家的PlayerKey
---@field BeSavedTimes number @被扶起次数 *
---@field BeSavedStartTimes number
---@field EquipmentData FEquipmentData
---@field TotalScore number
---@field bIsGameTerminator boolean @是否游戏终结者 *
---@field GamePlayingTime number @symigao: 本局游戏时长 *
---@field ObserverTime number @symigao: 本局观战时长 *
---@field TouchDownAreaID number
---@field TouchDownLocTypeID number
---@field TouchDownObjectName string
---@field CompletedTaskList ULuaArrayHelper<FGameModePlayerTaskDataSim>
---@field SpecialCollectionList ULuaArrayHelper<FReportCollection>
---@field WeaponDamageRecordList ULuaArrayHelper<FWeaponDamageRecord>
---@field SecretAreaIDList ULuaArrayHelper<number>
---@field CollectItemRecord ULuaArrayHelper<FSpecialPickItemState>
---@field DrivingHelicopterTime number @symigao: 驾驶直升机时间 *
---@field InHelicopterTime number @symigao: 乘坐直升机时间 *
---@field RevivalNum number
---@field BeRevivedNum number
---@field SelfRevivedNum number
---@field KillNumInVehicle number
---@field KillPlayerNum number
---@field KillPlayerNum_Logical number
---@field KillAINum number
---@field KillAINum_Logical number
---@field KOMLAINum number
---@field KillMLAINum number
---@field TotalSprintDistance number
---@field TotalBeenDamageAmount number
---@field TotalBeenDamageAmountByAI number
---@field DestroyVehicleWheelNum number
---@field BreakDoorNum number
---@field OnBreakDoor FOnBreakDoor
---@field AreaTriggerRecordList ULuaArrayHelper<FAreaTriggerRecord>
---@field UseSpecificBulletFlow ULuaArrayHelper<FUseItemFlow>
---@field ActivityEventRecordList ULuaArrayHelper<FActivityEventReportData>
---@field WeaponLobbyInitialData FWeaponLobbyInitialData
---@field WeaponCreateStuckAutoRecoverNum number
---@field DestroyVehicleFlow ULuaArrayHelper<string>
---@field UseHelicoperNum number
---@field UseHelicoperDistance number
---@field UseDragonBoatNum number
---@field CharmRankIndex number
---@field UseHelicoperRecord ULuaSetHelper<number>
---@field TotalDamageShieldTake number
---@field GlidingDistance number
---@field BreakGlassNum number
---@field OnBreakGlass FOnBreakGlass
---@field SlidingTackleNum number
---@field ClimbObstacleNum number
---@field FireworksRedpackData ULuaMapHelper<string, FRedpackData>
---@field WeaponDamageKillDataMap ULuaMapHelper<number, FDamageKillData>
---@field GrenadeDamageKillDataMap ULuaMapHelper<number, FDamageKillData>
---@field EmoteAnimIDataArray ULuaArrayHelper<FEmoteAnimIData>
---@field showNickname boolean
---@field MemberIdInVoiceRoom number
---@field RobotVoiceMemberId number
---@field bUseVoiceChange boolean
---@field PlayerVoiceEnable boolean
---@field FollowState number @0不跟随，也不被跟随；1是被跟随；2是跟随
---@field InviteTimes number
---@field NoFollowState boolean @非跟随状态。双人飞行器时FollowState为0也有可能是跟随中，所以新做一个变量给任务系统 lyminliao
---@field bCanBeWatchedByFriend boolean
---@field bCanBeWatchedByOB boolean
---@field OpnedMosnterBoxNum number
---@field IsInspector boolean @是否巡查员 *
---@field IsOnline boolean
---@field LogoutTimeStamp string
---@field OnWolfKillNumChange FWolfKillNumChangeDelegate
---@field GiftSentData ULuaArrayHelper<FGiftSentData>
---@field GiftReceivedData ULuaArrayHelper<FGiftReceivedData>
---@field InactiveZombieCount number
---@field DeactiveZombieCount number
---@field bCollectedEventDataReportingEnabled boolean
---@field CollectedEventType number
---@field bLiveVideoReplay boolean
---@field bLiveSecurityReplay boolean
---@field bNeedLiveReplayParser boolean
---@field bNeedCampLiveReplay boolean
---@field bCollectedEVLiveEventDataReportingEnabled boolean
---@field ClientFPS number
---@field ServerFPS number
---@field InLostPacketRate number
---@field OutLostPacketRate number
---@field GameBaseInfo FGameBaseInfo
---@field AreaID number
---@field PlatID number
---@field PlayerLandedTimeStamp number
---@field Promotion number
---@field IsRescueAllTeam boolean
---@field PendingBecomeRescuer boolean
---@field KillKingNum number
---@field MutualAid ULuaMapHelper<number, number>
---@field WhoRescuedMe ULuaMapHelper<number, number>
---@field IRescuedWhom ULuaMapHelper<number, number>
---@field WhoRevivedMe ULuaMapHelper<number, number>
---@field IRevivedWhom ULuaMapHelper<number, number>
---@field EmotionalMemoryData FEmotionalMemoryData
---@field RespawnTimes number
---@field RevengeEvent FRevengeEvent
---@field MinimalLevelOfKillThanks number
---@field KillThanksCount number
---@field bPartiallyKillThanksToOthersEnabled boolean
---@field bPartiallyKillThanksFromOthersEnabled boolean
---@field ResponseCanShowKillThanksUIDelegate FResponseCanShowKillThanksUIDelegate
---@field ResponseKillThanksDelegate FResponseKillThanksDelegate
---@field OnRepWeaponSkinHistoryKillCounterDelegate FPlayerStateDataUpgrade
---@field CurWeaponRecord FWeaponRecord
---@field bRepRealTimeOrder boolean
---@field RealTimeOrder number
---@field OnRealTimeOrderChanged FOnRealTimeOrderChanged
---@field BattleRecord FPlayerStageBattleRecord
---@field ClubTeamInfo FPlayerClubTeamInfo
---@field LeaveScenePos FVector
---@field UGCPlayerInfo FUGCPlayerInfo
---@field CampToolNum number
---@field bUseInValidCircleFixedRevivalLoc boolean
---@field EnableNewFPPMode boolean
---@field OnPlayerStateNewFPPModeChange FOnNewFPPModeChangeDelegate
---@field PlayerBattleResultGenItems ULuaMapHelper<number, FBackpackLobbyItem>
---@field TeamBattleResultGenItems ULuaMapHelper<number, FBackpackLobbyItem>
---@field RatingScore number
local AUAEPlayerState = {}

---@return boolean
function AUAEPlayerState:IsPureSpectator() end

---@param Params FGameModePlayerParams
function AUAEPlayerState:ReceiveInitWithParams(Params) end

---@param Params FGameModePlayerExtraParams
function AUAEPlayerState:ReceiveInitWithExtraParams(Params) end

---@return string
function AUAEPlayerState:GetPlayerKey() end

function AUAEPlayerState:OnRep_UID() end

function AUAEPlayerState:OnRep_OpenID() end

function AUAEPlayerState:OnRep_TopSegmentTimes() end

function AUAEPlayerState:OnRep_RemarkName() end

function AUAEPlayerState:OnRep_ChangedNameByDS() end

---@param InPC AUAEPlayerController
function AUAEPlayerState:OnPlayerControllerReady(InPC) end

function AUAEPlayerState:OnRep_LiveStatus() end

function AUAEPlayerState:OnRep_imprint_info() end

function AUAEPlayerState:OnRep_TeamID() end

function AUAEPlayerState:OnRep_HasSendTeamBattleResult() end

---@param PlayerState AUAEPlayerState
---@return boolean
function AUAEPlayerState:IsTeamMate(PlayerState) end

function AUAEPlayerState:OnRep_PrivacyDetail() end

function AUAEPlayerState:OnRep_IsBanPublicMic() end

function AUAEPlayerState:OnRep_MatchLabel() end

---@param AreaType number
---@return number
function AUAEPlayerState:GetTriggerTimesByAreaType(AreaType) end

---@param AreaID number
---@return number
function AUAEPlayerState:GetTriggerTimesByAreaID(AreaID) end

---@return number
function AUAEPlayerState:GetCharmRankIndex() end

---@param EventID number
---@return number
function AUAEPlayerState:GetActivityEventTimes(EventID) end

---@param WeaponID number
---@param KillNum number
function AUAEPlayerState:AddWeaponKillNum(WeaponID, KillNum) end

---@param WeaponID number
---@param InDamageAmount number
function AUAEPlayerState:AddWeaponDamageAmount(WeaponID, InDamageAmount) end

---@param GrenadeID number
---@param KillNum number
function AUAEPlayerState:AddGrenadeKillNum(GrenadeID, KillNum) end

---@param GrenadeID number
---@param InDamageAmount number
function AUAEPlayerState:AddGrenadeDamageAmount(GrenadeID, InDamageAmount) end

---@param UseHelicoperId number
function AUAEPlayerState:RecordUseHelicoper(UseHelicoperId) end

---@param UseDragonBoatId number
function AUAEPlayerState:RecordUseDragonBoat(UseDragonBoatId) end

---@param RankIndex number
function AUAEPlayerState:RecordCharmRankInfo(RankIndex) end

---@param ItemID number
---@param Count number
function AUAEPlayerState:OnReportSpecificBulletUsed(ItemID, Count) end

---@param ItemID number
---@return boolean
function AUAEPlayerState:IsSpecialPickItemCollectionCompleted(ItemID) end

---@param ItemID number
---@return boolean
function AUAEPlayerState:IsSpecialPickItem(ItemID) end

---@param TaskID number
---@param Process number
---@param IsCumulative boolean
function AUAEPlayerState:ReportTaskData(TaskID, Process, IsCumulative) end

---@param TaskID number
function AUAEPlayerState:OnReportTaskData(TaskID) end

---@param TaskID number
---@param ExtInfo string
function AUAEPlayerState:ReportTaskExtInfo(TaskID, ExtInfo) end

---@param TaskID number
---@return string
function AUAEPlayerState:GetTaskExtInfo(TaskID) end

---@param SecretAreaID number
function AUAEPlayerState:ReportSecretAreaID(SecretAreaID) end

---@param TriggerAreaType number
---@param TriggerAreaID number
function AUAEPlayerState:ReportTriggerAreaData(TriggerAreaType, TriggerAreaID) end

---@param ItemID number
---@param Count number
function AUAEPlayerState:ReportSpecialCollection(ItemID, Count) end

---@param TouchDownLocType number
---@param TouchDownLocName string
function AUAEPlayerState:ReportLandLocType(TouchDownLocType, TouchDownLocName) end

---@param TouchDownArea number
function AUAEPlayerState:ReportLandArea(TouchDownArea) end

function AUAEPlayerState:OnRep_CollectItemRecord() end

---@param InItemID number
---@param InNewState boolean
function AUAEPlayerState:ChangeCollectItemRecord(InItemID, InNewState) end

---@param InEventType FTLog_ActivityEventType
---@param InCount number
function AUAEPlayerState:ReportActivityEventData(InEventType, InCount) end

---@param EventID number
---@param InCount number
---@param ExtraParam number
---@param Loc FVector
---@param Str string
function AUAEPlayerState:ReportActivityEventDataExt(EventID, InCount, ExtraParam, Loc, Str) end

function AUAEPlayerState:OnRep_ShowNicknameChange() end

function AUAEPlayerState:OnRep_MemberIdInVoiceRoom() end

function AUAEPlayerState:OnRep_RobotVoiceMemberId() end

function AUAEPlayerState:OnRep_UseVoiceChange() end

---@return FGameModeTeammateBattleResultData
function AUAEPlayerState:GetTeammateBattleResultData() end

---@return FGameModePlayerBattleResultData
function AUAEPlayerState:GetPlayerBattleResultData() end

function AUAEPlayerState:GetPlayerBattleResultWeaponKillsData() end

function AUAEPlayerState:GetBackpackLobbyItem() end

---@return FGameModePlayerBattleResultData_SuperCold
function AUAEPlayerState:GetPlayerBattleResultData_SuperCold() end

---@return FGameModePlayerFlowResultData
function AUAEPlayerState:GetPlayerFlowResultData() end

---@return FGameModePlayerBattleResultData_Hero
function AUAEPlayerState:GetPlayerBattleResultData_Hero() end

---@return FGameModePlayerBattleResultData_BountyHunter
function AUAEPlayerState:GetPlayerBattleResultData_BountyHunter() end

---@param Reason string
---@return FGameModePlayerBattleResultData_GunMaster
function AUAEPlayerState:GetPlayerBattleResultData_GunMaster(Reason) end

---@return FHunterRevivalDataFlow
function AUAEPlayerState:GetHunterRevivalDataFlow() end

---@return FTeammateHeroData
function AUAEPlayerState:GetTeammateBattleResultData_Hero() end

---@return FTrainingStatisticsData
function AUAEPlayerState:GetTrainingStatisticsData() end

function AUAEPlayerState:OnRep_WeaponSkinHistoryKillCounter() end

---@param memberID number
function AUAEPlayerState:SetGVMemberID(memberID) end

---@param memberID number
function AUAEPlayerState:SetGVMemberIDServerCall(memberID) end

---@param flag boolean
function AUAEPlayerState:ClientSetShowNicknameValue(flag) end

---@param flag boolean
function AUAEPlayerState:ServerSetShowNicknameValue(flag) end

function AUAEPlayerState:OnRep_UDPSenderAddress() end

function AUAEPlayerState:OnRep_PlayerKillsChange() end

function AUAEPlayerState:OnRep_WolfKillNumChange() end

function AUAEPlayerState:OnRep_Assists() end

function AUAEPlayerState:OnRep_Owner() end

function AUAEPlayerState:OnRep_CanBeWatchedByOB() end

---@param ReceiverPlayerState AUAEPlayerState
---@param GiftID number
---@param Count number
function AUAEPlayerState:AddGiftSentData(ReceiverPlayerState, GiftID, Count) end

---@param SenderPlayerState AUAEPlayerState
---@param GiftID number
---@param Count number
function AUAEPlayerState:AddGiftReceivedData(SenderPlayerState, GiftID, Count) end

---@param Stamp string
function AUAEPlayerState:SetLogOutStamp(Stamp) end

---@param EventId number
---@return boolean
function AUAEPlayerState:IsCollectedEventMatchingType(EventId) end

function AUAEPlayerState:ClientRPC_ClientRespawnCompleteForReplay() end

---@param FPS number
function AUAEPlayerState:ReportClientNetStateInfo(FPS) end

function AUAEPlayerState:GetAliveTeammates() end

function AUAEPlayerState:OnRep_AreaID() end

function AUAEPlayerState:RefreshWeaponDamageRecordList() end

---@param RecorIndex number
function AUAEPlayerState:ParseKillFlowIntoArray(RecorIndex) end

---@param Context FRequestResponseCanShowKillThanksUIContext
function AUAEPlayerState:Server_RequestCanShowKillThanksUI(Context) end

---@param Context FRequestResponseCanShowKillThanksUIContext
function AUAEPlayerState:Client_ResponseCanShowKillThanksUI(Context) end

---@param Context FRequestResponseKillThanksContext
---@return boolean
function AUAEPlayerState:CanKillThanksTo(Context) end

---@param Context FRequestResponseKillThanksContext
function AUAEPlayerState:Server_KillThanksTo(Context) end

---@param Context FRequestResponseKillThanksContext
function AUAEPlayerState:Client_ResponseKillThanks(Context) end

---@param Shield AActor
---@param Damage number
function AUAEPlayerState:OnShieldTakeDamage(Shield, Damage) end

function AUAEPlayerState:OnRep_PlayerCurWeaponRecord() end

---@param InOrder number
function AUAEPlayerState:SetRealTimeOrder(InOrder) end

function AUAEPlayerState:OnRep_RealTimeOrder() end

function AUAEPlayerState:OnRep_LeaveScenePos() end

function AUAEPlayerState:OnRep_UGCPlayerInfo() end

---@param count number
function AUAEPlayerState:ClientSetCampToolNumValue(count) end

---@param count number
function AUAEPlayerState:ServerSetCampToolNumValue(count) end

---@return FVector
function AUAEPlayerState:GetInValidCircleFixedRevivalLoc() end

---@return boolean
function AUAEPlayerState:CheckToRecordDeadTime() end

function AUAEPlayerState:OnRep_EnableNewFPPMode() end

---@param TypeSpecificID number
---@param Count number
function AUAEPlayerState:AddPlayerBattleResultGenItem(TypeSpecificID, Count) end

---@param TypeSpecificID number
---@param Count number
function AUAEPlayerState:DeletePlayerBattleResultGenItem(TypeSpecificID, Count) end

---@param TypeSpecificID number
---@return number
function AUAEPlayerState:GetPlayerBattleResultGenItemCount(TypeSpecificID) end

function AUAEPlayerState:GetPlayerBattleResultGenItems() end

---@param TypeSpecificID number
---@param Count number
function AUAEPlayerState:AddTeamBattleResultGenItem(TypeSpecificID, Count) end

---@param TypeSpecificID number
---@param Count number
function AUAEPlayerState:DeleteTeamBattleResultGenItem(TypeSpecificID, Count) end

---@param TypeSpecificID number
---@return number
function AUAEPlayerState:GetTeamBattleResultGenItemCount(TypeSpecificID) end

---@return FBattleResultGenItemData
function AUAEPlayerState:GetTeamBattleResultGenItems() end

---@param InDamage number
function AUAEPlayerState:AddDamageAmount(InDamage) end

---@return number
function AUAEPlayerState:GetDamageAmount() end
