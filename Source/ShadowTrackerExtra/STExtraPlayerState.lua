---@meta

---@class FRevivalInfo
---@field RevivalPlayerkey number
---@field RevivalName string
---@field DeadTime FDateTime
FRevivalInfo = {}


---@class FVehicleIconsInfo
---@field IconID number
---@field IconPriority number
FVehicleIconsInfo = {}


---@class FCharacterLocAndRot
---@field Loc FVector
---@field Rot FRotator
FCharacterLocAndRot = {}


---@class FCharacterAutoFollowStruct
---@field IsFollowing boolean
FCharacterAutoFollowStruct = {}


---@class FPlayerLevel
---@field CurrentExp number
---@field LevelUpExp number
---@field LastLevelUpExp number
---@field CurrentLevel number
---@field NextLevel number
---@field TotalDamage number
FPlayerLevel = {}


---@class FPlayerRescueingInfo
---@field IsRescueing boolean
---@field IsSelfRescueing boolean
---@field TotalSeconds number
---@field ServerStartTime number
---@field ReduceSeconds number
FPlayerRescueingInfo = {}


---@class FBigWorldTeammateData
---@field UID number
---@field PlayerKey number
---@field PawnLoc FVector2D
---@field PawnYaw number
---@field MapMark FVector
---@field MapMultiMark ULuaArrayHelper<FVector>
---@field LiveState ExtraPlayerLiveState
---@field TeamIndex number
FBigWorldTeammateData = {}


---@class FBigWorldTeammatePawn
FBigWorldTeammatePawn = {}


---@class FPlayerTakeDamageShortRecordData
---@field CurHealth number
---@field Damage number
---@field TimeSecond number
---@field bShootingDamage boolean
FPlayerTakeDamageShortRecordData = {}


---@class FMultiPlayerAircraftInfo
---@field MultiPlayerAircraftItemID number
---@field bHaveMultiPlayerAircraft boolean
---@field MultiPlayerAircraftLevel number
FMultiPlayerAircraftInfo = {}


---@class FOnSignalHPChanged : ULuaMulticastDelegate
FOnSignalHPChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewSignalHP: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSignalHPChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewSignalHP number
function FOnSignalHPChanged:Broadcast(NewSignalHP) end


---@class FOnCurrentSuitSkinChange : ULuaMulticastDelegate
FOnCurrentSuitSkinChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCurrentSuitSkinChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnCurrentSuitSkinChange:Broadcast(PlayerKey) end


---@class FOnPlaneSetted : ULuaMulticastDelegate
FOnPlaneSetted = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Plane: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlaneSetted:Add(Callback, Obj) end

---触发 Lua 广播
---@param Plane AActor
function FOnPlaneSetted:Broadcast(Plane) end


---@class ASTExtraPlayerState: AUAEPlayerState
---@field CommonRank number
---@field InitTeamLeaderName string
---@field LiveState ExtraPlayerLiveState
---@field AILiveState EAILiveState
---@field IsEvacuated boolean @通过特殊方式非死亡状态下逃离时游戏还没有进入Finish状态（直升机、出租车、地堡）
---@field OnSelfPlayerStateLiveStateChangeDelegate FOnSelfPlayerStateLiveStateChangeDelegate
---@field OnMapMarkChange FOnMapMarkChange
---@field OnMapMultiMarkChange FOnMapMultiMarkChange
---@field NoticeUIShowDamageEffect FOnNoticeUIShowDamageEffect
---@field OnCharacterChange FOnCharacterChangeDelegate
---@field AutoFollowInfo FCharacterAutoFollowStruct
---@field PlayerHealth number
---@field PlayerHealthMax number
---@field PlayerTemperature number
---@field PlayerTemperatureMax number
---@field SelfLocAndRot FCharacterLocAndRot
---@field UAVLocAndRot FCharacterLocAndRot
---@field eUAVUseType EUAVUseType
---@field bIsRemoteControlling boolean
---@field RemoteControlPawnType ESTRemoteControlPawnType
---@field RemoteControlState ESTRemoteControlState
---@field RemoteControlPawnLocAndRot FCharacterLocAndRot
---@field bVoiceChangerOpen boolean
---@field eCurVehicleType ESTExtraVehicleType
---@field VehicleUID number
---@field VehicleConfigID number
---@field eUAVCharacterMsgType EUAVCharacterMsgType
---@field PlayerDeadLocation FVector
---@field PlayerBoxLocation FVector
---@field MapMark FVector
---@field MapMark3DLocation FVector
---@field AIMapMarkWorldLoc FVector
---@field MapMultiMark ULuaArrayHelper<FVector>
---@field MapMarkWorldLocation FVector4
---@field CanJumpPercent number
---@field ForceJumpPercent number
---@field TeamMatePlayerStateList ULuaArrayHelper<ASTExtraPlayerState>
---@field BigWorldTeammateData ULuaArrayHelper<FBigWorldTeammateData>
---@field BigWorldTeammatePawn ULuaArrayHelper<FBigWorldTeammatePawn>
---@field OnRepBigWorldData FOnRepBigWorldData
---@field OnTeammatePlayerStateRefHasChanged FOnTeammatePlayerStateChanged
---@field bInWinePlane boolean
---@field DelayFreshTeammateHandle FTimerHandle
---@field PlayerLayerID number
---@field VisualFieldInfo FVisualFieldInfo
---@field KillGoblinScore number
---@field HurtGoblinScore number
---@field DeleverTargetScore number
---@field NotMeetGoblinScore number
---@field ScopeFov number
---@field SyncMarkDispatchData ULuaArrayHelper<FMarkSyncData>
---@field PrevSyncMarkDispatchData ULuaArrayHelper<FMarkSyncData>
---@field SyncMarkDispatchData_Self ULuaArrayHelper<FMarkSyncData>
---@field PrevSyncMarkDispatchData_Self ULuaArrayHelper<FMarkSyncData>
---@field SyncMarkDispatchData_SelfSpectator ULuaArrayHelper<FMarkSyncData>
---@field PrevSyncMarkDispatchData_SelfSpectator ULuaArrayHelper<FMarkSyncData>
---@field LocalMarkDispatchData ULuaArrayHelper<FMarkSyncData>
---@field TeammateNoticeUIRepInt number
---@field TripleKillFullTime number
---@field TripleKillIntervalTime number
---@field QuadraKillIntervalTime number
---@field PentaKillIntervalTime number
---@field TotalKillRequireCount number
---@field SnipeHeadKillRequireDistance number
---@field CombatDroneRepData FCombatDroneRepData
---@field CombatDroneItemID number
---@field bUseIDIPValueOverride boolean
---@field CombatDroneRewardConfig FCombatDroneRewardConfig
---@field ExcellentOpType2IDIPItemAttrID ULuaMapHelper<EExcellentOperationResultType, number>
---@field AdditionalReportGameModeIDs ULuaArrayHelper<number>
---@field bFatalDamageByFriendUnit boolean
---@field ClientDeviceType number
---@field MaxCombatDronePoint number
---@field MaxCombatDronePointDaily number
---@field ReleaseCombatDronePoint number
---@field EachTypeReportLimit number
---@field TypeReportWhiteList ULuaArrayHelper<number>
---@field CheckTypeMapAmountLimit ULuaMapHelper<number, number>
---@field CacheMarkInstanceIDMap ULuaMapHelper<number, number>
---@field HasReportedTypeIDList ULuaArrayHelper<number>
---@field TeamMatePlayerStateIndex number
---@field Breath number
---@field DriveCarNotify FDriveCarNotify
---@field EnegyBuffStage1 number
---@field EnegyBuffStage2 number
---@field EnegyBuffStage3 number
---@field EnegyBuffStage4 number
---@field EnegyBuffReduceSpeedPerSec number
---@field CurEnegyBuff number
---@field EnegyBuffStage1RecoverHealthTime number
---@field EnegyBuffStage1RecoverHealthVal number
---@field EnegyBuffStage2RecoverHealthTime number
---@field EnegyBuffStage2RecoverHealthVal number
---@field EnegyBuffStage3RecoverHealthTime number
---@field EnegyBuffStage3RecoverHealthVal number
---@field EnegyBuffStage4RecoverHealthTime number
---@field EnegyBuffStage4RecoverHealthVal number
---@field OnLocalCharacterHPChangeDel FOnLocalCharacterHPChangeDelegate
---@field OnPlayerKillsChangeDelegate FOnPlayerKillsChangeDelegate
---@field IsShowingRescueingUI boolean
---@field isReconnected boolean
---@field isLostConnection boolean
---@field TeamMatesExitState ULuaArrayHelper<number>
---@field bHasEnterFighting boolean
---@field bTeammateIsExit boolean
---@field bGodSon boolean @是否天选之子
---@field bHasEscaped boolean
---@field bHasSendBattleResult boolean
---@field HasSendPlayerBattleResultDelegate FCanRevivalSelfDelegate
---@field HasSendTeamBattleResultDelegate FCanRevivalSelfDelegate
---@field InvisibleInMapAfterEscapedCD number
---@field bIsvisibleInMap boolean
---@field LastInstigatorEnemyKey number
---@field ExceptionDeath boolean
---@field PvePlayerLevel FPlayerLevel
---@field MonsterTreasureBoxDatas ULuaArrayHelper<FMonsterTreasureBoxData>
---@field MonsterTreasureBoxGetNum number
---@field MonsterTreasureBoxDefendNum number
---@field BuildMat_GetList ULuaArrayHelper<FBuildMaterialData>
---@field BuildMat_UseList ULuaArrayHelper<FBuildMaterialData>
---@field MaxDecalCount number
---@field DecalActorList ULuaArrayHelper<AIdeaDecalActor>
---@field SignalHP number
---@field OnSignalHPChange FOnSignalHPChanged
---@field OnSignalHPChangeForOB FOnSignalHPChangedForOB
---@field OnAssistChangedDelegate FOnPrivacyDataReady
---@field CurrUsingItemID FItemDefineID
---@field CanUseItemIDList ULuaArrayHelper<number>
---@field SpecialItemTableName string
---@field PlayerAchievementList ULuaArrayHelper<number>
---@field OnCompleteAchievementTask FOnCompleteAchievementTask
---@field OnPlayerKillSomeoneDelegate FOnPlayerKillSomeoneDelegate
---@field OnPlayerAchievementListChangeDelegate FOnPlayerAchievementListChangeDelegate
---@field bWasInCirclePainVolume boolean
---@field SignalHPRemainingTime number
---@field bHasGetRedEnvelopeByWeapon boolean
---@field RemainingRevivalTime number
---@field IsIDCardCaptured boolean
---@field IsInWaittingRevivalState boolean
---@field IsForbidUsePawnLoc boolean
---@field IsInRevivingState boolean
---@field IsGiveUp boolean
---@field bHasRevivalSign boolean
---@field SelfRevivalCountdown number
---@field bInRevivalArea boolean
---@field bOpenRecvQuickSign boolean
---@field RevivalCardCreateTime number
---@field OnRevivalStateChangeDelegate FOnRevivalStateChangeDelegate
---@field OnRevivalRemainingTimeChangeDelegate FOnRevivalRemainingTimeChangeDelegate
---@field bCanRevivalSelf boolean
---@field CanRevivalSelfDelegate FCanRevivalSelfDelegate
---@field KilledByPlayerTeamId number
---@field bHasIllegal boolean
---@field OnchangebHasIllegalDelegate FOnchangebHasIllegalDelegate
---@field OnPlayerSendBattleResult FOnPlayerSendBattleResult
---@field LastVehicleType ESTExtraVehicleType
---@field LastVehicleLocation FVector
---@field AssitPlayersCurKill ULuaArrayHelper<ASTExtraPlayerState>
---@field HuntTeamIDList ULuaArrayHelper<number>
---@field HasShowRecords ULuaArrayHelper<number>
---@field TeamCDSet ULuaSetHelper<number>
---@field HuntedTipMsgID number
---@field TipCooldown number
---@field BuffNameListCanBeSync ULuaArrayHelper<string>
---@field SyncToClientBuffNameList ULuaArrayHelper<string>
---@field RescueingInfo FPlayerRescueingInfo
---@field AutoRescue boolean
---@field ServerRescueStartTime number
---@field SyncedAttributePairs ULuaArrayHelper<FGameAttributePair>
---@field AttributeValues ULuaArrayHelper<FGameAttributeData>
---@field bAllDeadRemoveIcon boolean
---@field TeammateIconInstanceMap ULuaMapHelper<number, number>
---@field PopKartRaceList ULuaArrayHelper<FPopKartRaceInfo>
---@field bInitPopKartMapData boolean
---@field IsExit boolean
---@field GunMasterMediaPlayCounterReplay number
---@field RenderQualityCVarsToSync FRenderQualityCVarsToSync
---@field CurResultType EExcellentOperationResultType
---@field SegmentsList ULuaArrayHelper<FSegmentChoosableSituation>
---@field LeaderChoosingSegmentID number
---@field bIsTeamLeader boolean
---@field bShowTeammatePositionUI boolean
---@field OBTransformFocusPlayerKey number
---@field InspectorTipsID number
---@field EscapeUnderCoverExposeMsgID number
---@field EscapeUnderCoverRecoverMsgID number
---@field EscapeUnderCoverExposeInitTime number
---@field EscapeUnderCoverAttackedExposeTime number
---@field OnEscapeUnderCoverExposeStatusChanged FOnEscapeUnderCoverExposeStatusChangedDelegate
---@field bIsGiveupWhenMatchGoalAchieved boolean
---@field TakeSpecialItemID ULuaArrayHelper<number>
---@field TakeSpecialItemIDForKilled ULuaArrayHelper<number>
---@field DamageShortRecordDatas ULuaArrayHelper<FPlayerTakeDamageShortRecordData>
---@field ReplaceSuitSkinNum number
---@field MultiPlayerAircraftInfo FMultiPlayerAircraftInfo
---@field OnCurrentSuitSkinChange FOnCurrentSuitSkinChange
---@field OnPlaneSetted FOnPlaneSetted
---@field RegionIDList ULuaArrayHelper<string>
---@field OnRegionIDListChangedDelegate FOnRegionIDListChangedDelegate
---@field OnCurrentPlayerKillNumChangedDelegate FOnCurrentPlayerKillNumChanged
---@field AllPersistentAttribute ULuaArrayHelper<FPlayerPersistentAttribute>
---@field bIsMicOpen boolean
---@field bIsSpeakerOpen boolean
---@field bCalculateMonsterDamageAmount boolean
local ASTExtraPlayerState = {}

---@param data FGameModePlayerBattleResultData
function ASTExtraPlayerState:OnPostGetPlayerBattleResultData(data) end

---@return FGameModeTeammateBattleResultData
function ASTExtraPlayerState:GetTeammateBattleResultData() end

---@param TeamIDs ULuaArrayHelper<number>
---@param Reason string
function ASTExtraPlayerState:OnPlayerReceiveTeamResult(TeamIDs, Reason) end

---@param MonterLevel number
---@param AddNum number
---@param MonsterID number
---@param bHeadShot boolean
---@param DamageType number
---@param WeaponID number
function ASTExtraPlayerState:BPCalculateKillMonterNum(MonterLevel, AddNum, MonsterID, bHeadShot, DamageType, WeaponID) end

function ASTExtraPlayerState:OnRep_RankNotify() end

function ASTExtraPlayerState:OnRep_EUAVUseType() end

---@param NewValue boolean
function ASTExtraPlayerState:SetRemoteControlling(NewValue) end

---@param NewType ESTRemoteControlPawnType
function ASTExtraPlayerState:SetRemoteControlPawnType(NewType) end

---@param NewState ESTRemoteControlState
function ASTExtraPlayerState:SetRemoteControlState(NewState) end

---@param NewLoc FVector
---@param NewRot FRotator
function ASTExtraPlayerState:SetRemoteControlPawnLocAndRot(NewLoc, NewRot) end

function ASTExtraPlayerState:OnRep_CurVehicleType() end

function ASTExtraPlayerState:OnRep_MapAirlineLocation() end

---@param Loc FVector
---@param bAdd boolean
---@param MaxNum number
---@param bClearAll boolean
function ASTExtraPlayerState:SetPlayerMapMultiMark(Loc, bAdd, MaxNum, bClearAll) end

---@return string
function ASTExtraPlayerState:GetPlayerStateDetailInfo() end

function ASTExtraPlayerState:UpdateMarkEvent() end

---@param bForce boolean
---@return boolean
function ASTExtraPlayerState:UpdateBigWorldTeammateData(bForce) end

function ASTExtraPlayerState:RemoveBigWorldTeammateData() end

---@return number
function ASTExtraPlayerState:GetBigWorldPlayerTeamIndex() end

function ASTExtraPlayerState:OnRep_BigWorldTeammateData() end

function ASTExtraPlayerState:CheckTeamIndexChange() end

---@return string
function ASTExtraPlayerState:GetOwnerName() end

---@param Index number
---@return boolean
function ASTExtraPlayerState:IsDataValid(Index) end

function ASTExtraPlayerState:OnRep_BigWorldTeammatePawn() end

---@param _MapMark FVector
function ASTExtraPlayerState:SetMapMark(_MapMark) end

function ASTExtraPlayerState:GetMapMarkList() end

---@param InLiveState ExtraPlayerLiveState
function ASTExtraPlayerState:SetLiveState(InLiveState) end

function ASTExtraPlayerState:OnRep_TeamMatePlayerStateList() end

function ASTExtraPlayerState:DelayFreshTeammateIcon() end

function ASTExtraPlayerState:RemoveAllTeammateIcon() end

function ASTExtraPlayerState:OnRep_VisualFieldInfo() end

function ASTExtraPlayerState:RPC_TeammateNoticeUIDamageEffect() end

function ASTExtraPlayerState:TeammateNoticeUIRepUpdate() end

function ASTExtraPlayerState:OnRep_TeammateNoticeUIRepInt() end

function ASTExtraPlayerState:OnRep_CombatDroneRepData() end

---@param RewardParam FCombatDroneRewardParam
function ASTExtraPlayerState:IncreaseCombatDroneRewardPoint(RewardParam) end

function ASTExtraPlayerState:DecreaseCombatDroneRewardPoint() end

---@return boolean
function ASTExtraPlayerState:GetBisAllTeammateDied() end

---@param _TYPE EMarkGetAllType
function ASTExtraPlayerState:GetAllMarkSyncData(_TYPE) end

function ASTExtraPlayerState:OnRep_MarkSyncData() end

function ASTExtraPlayerState:OnRep_MarkSelfSyncData() end

function ASTExtraPlayerState:OnRep_MarkSelfSpectatorSyncData() end

---@param InstanceID number
---@param TypeID number
---@param Status EMarkStatus
---@param bIsOwnerOnly boolean
---@param bIsOwnerSpectator boolean
function ASTExtraPlayerState:CheckTypeLimit(InstanceID, TypeID, Status, bIsOwnerOnly, bIsOwnerSpectator) end

function ASTExtraPlayerState:ForceNotifyAlertUpdate() end

function ASTExtraPlayerState:OnRep_TeamMatePlayerStateIndex() end

---@param Index number
---@param IconID number
---@param AlertID number
---@param Location FVector
---@param Status EMarkStatus
function ASTExtraPlayerState:GetAlertDataByIndex(Index, IconID, AlertID, Location, Status) end

---@param OutList ULuaArrayHelper<ASTExtraPlayerState>
---@param ExcludeMyself boolean
function ASTExtraPlayerState:GetTeamMatePlayerStateList(OutList, ExcludeMyself) end

function ASTExtraPlayerState:GetTeamMateUIDList() end

---@param LeaderName string
function ASTExtraPlayerState:FollowInitialTeamParachuteLeaderAndShowTips(LeaderName) end

---只能在autonomous或者服务器调用
---@return number
function ASTExtraPlayerState:GetPlayerTeamIndex() end

function ASTExtraPlayerState:OnRep_RemainRatingNum() end

---@param InPlayerKey number
---@return number
function ASTExtraPlayerState:GetTeammateIndexByPlayerKey(InPlayerKey) end

---只能在autonomous或者服务器调用
---@param player_Name string
---@return number
function ASTExtraPlayerState:GetPlayerTeamIndexByName(player_Name) end

---@param TeamMate ASTExtraPlayerState
---@return number
function ASTExtraPlayerState:GetTeamMateIndex(TeamMate) end

---@return number
function ASTExtraPlayerState:GetTeammateIndexAnyRole() end

---@return number
function ASTExtraPlayerState:GetTeammateCount() end

---@param KilledName string
---@param ExcludeSelf boolean
---@return boolean
function ASTExtraPlayerState:GetTeammateBeKilledByPlayerName(KilledName, ExcludeSelf) end

---@return boolean
function ASTExtraPlayerState:IsSinglePlayer() end

---@param InUID number
---@return boolean
function ASTExtraPlayerState:IsTeammateWithUID(InUID) end

---@param InPlayerName string
---@return boolean
function ASTExtraPlayerState:IsTeammateWithName(InPlayerName) end

function ASTExtraPlayerState:OnRep_BreathChanged() end

function ASTExtraPlayerState:OnRep_HPChanged() end

---@param memberID number
---@return number
function ASTExtraPlayerState:GetUserIDByMemberID(memberID) end

---@param memberID number
---@return boolean
function ASTExtraPlayerState:IsRobotMember(memberID) end

---@return boolean
function ASTExtraPlayerState:IsAlive() end

---@return boolean
function ASTExtraPlayerState:CustomAliveStateCheck() end

---@return boolean
function ASTExtraPlayerState:IsCanBeWatch() end

---@return boolean
function ASTExtraPlayerState:CanSelfRevive() end

---@return number
function ASTExtraPlayerState:GetBountyGold() end

---@param bShow boolean
function ASTExtraPlayerState:ShowGodzillaMapMark(bShow) end

---@param _health number
---@param _healthStatus ECharacterHealthStatus
---@param param2 ASTExtraBaseCharacter
function ASTExtraPlayerState:RespondToPawnBreathChange(_health, _healthStatus, param2) end

---@param OwnerPawn ASTExtraBaseCharacter
---@param bShow boolean
function ASTExtraPlayerState:RespondToPawnCanSuicideStatusChange(OwnerPawn, bShow) end

---@param OwnerPawn ASTExtraBaseCharacter
---@param bShow boolean
function ASTExtraPlayerState:RespondToPawnCanDoubleVaultChange(OwnerPawn, bShow) end

---@param OwnerPawn ASTExtraBaseCharacter
---@param RescuedPawn ASTExtraBaseCharacter
function ASTExtraPlayerState:RespondToPawnCanRescueOtherStatusChange(OwnerPawn, RescuedPawn) end

---@param OwnerPawn ASTExtraBaseCharacter
---@param CarriedPawn ASTExtraBaseCharacter
---@param SwitcherIndex number
function ASTExtraPlayerState:RespondToPawnCanCarryOtherStatusChange(OwnerPawn, CarriedPawn, SwitcherIndex) end

---@param OwnerPawn ASTExtraBaseCharacter
---@param CarriedDeadBox APlayerTombBox
---@param SwitcherIndex number
function ASTExtraPlayerState:RespondToPawnCanCarryDeadBoxStatusChange(OwnerPawn, CarriedDeadBox, SwitcherIndex) end

---@param RescuedPawn ACharacter
---@param Rescuer ACharacter
---@param IsTurningInto boolean
---@param IsFirstPlayerHelper boolean
---@param InReduceTime number
---@param AutoRescue boolean
---@param ServerTime number
function ASTExtraPlayerState:RespondToPawnRescueingStatusChange(RescuedPawn, Rescuer, IsTurningInto, IsFirstPlayerHelper, InReduceTime, AutoRescue, ServerTime) end

function ASTExtraPlayerState:OnRep_MapMarkNotify() end

function ASTExtraPlayerState:OnRep_AIMapMarkWorldLoc() end

function ASTExtraPlayerState:OnRep_VoiceChangerOpen() end

function ASTExtraPlayerState:OnRep_PlayerLiveState() end

function ASTExtraPlayerState:OnRep_MapMarkWorldLocation() end

function ASTExtraPlayerState:ModifyMapMarkParticleActor() end

function ASTExtraPlayerState:OnRep_PlayerIsFollowing() end

function ASTExtraPlayerState:RefreshFollowMark() end

function ASTExtraPlayerState:OnRep_PlayerName() end

function ASTExtraPlayerState:OnRep_PlayerKillsChange() end

function ASTExtraPlayerState:OnRep_Assists() end

---@param damageType number
---@param deadloc FVector
---@param IsZombieKiller boolean
function ASTExtraPlayerState:Killed(damageType, deadloc, IsZombieKiller) end

function ASTExtraPlayerState:OnRep_BPS() end

---@return EPlayerEnegyStage
function ASTExtraPlayerState:CalculateEnegyStage() end

---@param AddVal number
function ASTExtraPlayerState:AddEnegySafety(AddVal) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function ASTExtraPlayerState:TakeDamageFromCharacterInLua(Damage, DamageEvent, EventInstigator, DamageCauser) end

function ASTExtraPlayerState:OnRep_Plane() end

---@return number
function ASTExtraPlayerState:GetPlayerHealth() end

---@return number
function ASTExtraPlayerState:GetPlayerMaxHealth() end

---@return number
function ASTExtraPlayerState:GetPlayerTemperature() end

---@return number
function ASTExtraPlayerState:GetPlayerMaxTemperature() end

---@return boolean
function ASTExtraPlayerState:GetPlayerEvacuated() end

function ASTExtraPlayerState:OnRep_IsEvacuated() end

---@param AttributeName string
---@return number
function ASTExtraPlayerState:GetAttributeValue(AttributeName) end

---@return number
function ASTExtraPlayerState:GetBreathPercentage() end

---@return FVector
function ASTExtraPlayerState:GetPlayerCurLoc() end

---@return FRotator
function ASTExtraPlayerState:GetPlayerCurRot() end

function ASTExtraPlayerState:OnRep_PlayerReconnectEvent() end

function ASTExtraPlayerState:OnRep_PlayerLostConnectionEvent() end

function ASTExtraPlayerState:OnRep_PlayerExitGameEvent() end

function ASTExtraPlayerState:OnRep_HasEscaped() end

function ASTExtraPlayerState:OnRep_PlayerHasEnterFighting() end

function ASTExtraPlayerState:OnRep_TeammateIsExit() end

---@param bInHasEnterFighting boolean
function ASTExtraPlayerState:SetHasEnterFighting(bInHasEnterFighting) end

---@return boolean
function ASTExtraPlayerState:GetHasEnterFighting() end

---@return boolean
function ASTExtraPlayerState:ShouldShowTrumpMark() end

function ASTExtraPlayerState:OnRep_HasSendBattleResult() end

function ASTExtraPlayerState:OnRep_IsVisibleInMap() end

---@return number
function ASTExtraPlayerState:PlayersCountOnMyPlane() end

---@param InPlayerKey number
---@param Reason string
function ASTExtraPlayerState:OnPlayerSendUIStyleTLog(InPlayerKey, Reason) end

function ASTExtraPlayerState:FadeTeammatesMapMark() end

function ASTExtraPlayerState:GetAliveTeammates() end

function ASTExtraPlayerState:OnRep_PvePlayerLevel() end

function ASTExtraPlayerState:ServerUpdatePlayerLevel() end

function ASTExtraPlayerState:UpdateTeamPlayerLevel() end

---@param ID number
---@param Param1 string
---@param Param2 string
function ASTExtraPlayerState:ClientDisplayGameTipWithMsgID(ID, Param1, Param2) end

function ASTExtraPlayerState:OnRep_SignalHP() end

---@param DefineID FItemDefineID
---@param bEquiped boolean
function ASTExtraPlayerState:EquipCurrUseItem(DefineID, bEquiped) end

function ASTExtraPlayerState:OnRep_CurrUsingItemID() end

---@param Achievement number
---@param IsNotifyOwnerClient boolean
function ASTExtraPlayerState:CompleteAchievementTask(Achievement, IsNotifyOwnerClient) end

---@param Achievement number
function ASTExtraPlayerState:ClientRPC_CompleteAchievementTask(Achievement) end

function ASTExtraPlayerState:OnRep_PlayerAchievementList() end

function ASTExtraPlayerState:CalculateSignalHPRemainingTime() end

function ASTExtraPlayerState:RefreshRevivalState() end

function ASTExtraPlayerState:OnRep_RemainingRevivalTime() end

function ASTExtraPlayerState:OnRep_IsIDCardCaptured() end

function ASTExtraPlayerState:OnRep_ChangeRevivalState() end

function ASTExtraPlayerState:OnRep_ChangeInRevivingState() end

function ASTExtraPlayerState:OnRep_PlayerGiveUp() end

function ASTExtraPlayerState:OnRep_HasRevivalSign() end

---@param InGiveUp boolean
function ASTExtraPlayerState:SetPlayerGiveUp(InGiveUp) end

---@return boolean
function ASTExtraPlayerState:CanRevivalTeammate() end

---@return boolean
function ASTExtraPlayerState:CanBeRevival() end

---@return number
function ASTExtraPlayerState:GetTeammateRevivalCount() end

---@return boolean
function ASTExtraPlayerState:CheckPlayerCalculateRealTimeOrder() end

function ASTExtraPlayerState:OnRep_bCanRevivalSelf() end

---@param bIllegal boolean
function ASTExtraPlayerState:SetHasIllegal(bIllegal) end

function ASTExtraPlayerState:OnRep_bHasIllegal() end

function ASTExtraPlayerState:OnRep_LastVehicleLocation() end

function ASTExtraPlayerState:CreateHunterTeamDataMgrConditionly() end

---@param TaskID number
---@return boolean
function ASTExtraPlayerState:IsTaskExist(TaskID) end

---@return boolean
function ASTExtraPlayerState:IsHaveExistingTask() end

---@param OutList ULuaArrayHelper<ASTExtraPlayerState>
function ASTExtraPlayerState:GetAssitPlayersOfCurKill(OutList) end

function ASTExtraPlayerState:OnRep_BuffNameList() end

---@param BuffName string
function ASTExtraPlayerState:OnAddBuff(BuffName) end

---@param BuffName string
function ASTExtraPlayerState:OnRemoveBuff(BuffName) end

---@param HuntTeamID number
---@param bRemove boolean
function ASTExtraPlayerState:OnChangeHuntTeam(HuntTeamID, bRemove) end

function ASTExtraPlayerState:OnRep_HasBeenHunted() end

function ASTExtraPlayerState:HuntTipCoolDownCallback() end

---@param HuntTeamID number
function ASTExtraPlayerState:OnNotifyHuntedTarget(HuntTeamID) end

function ASTExtraPlayerState:OnRep_TopSegmentTimes() end

function ASTExtraPlayerState:OnRep_RescueingInfo() end

---@param bStart boolean
---@param bSelf boolean
---@param fTotalTime number
---@param fReduce number
function ASTExtraPlayerState:SetRescueingInfo(bStart, bSelf, fTotalTime, fReduce) end

---@param fTotalTime number
---@param fReduce number
function ASTExtraPlayerState:UpdateRescueingInfo(fTotalTime, fReduce) end

function ASTExtraPlayerState:OnRep_AttributeValues() end

---@param pOwnerActor AActor
---@param AttrName string
---@param fCurValue number
function ASTExtraPlayerState:HandleAttributeChanged(pOwnerActor, AttrName, fCurValue) end

function ASTExtraPlayerState:OnRep_PopKartPathMap() end

function ASTExtraPlayerState:InitPopKartMapData() end

---@param Group number
---@param NodeIndex number
---@return boolean
function ASTExtraPlayerState:ContainPopKartNode(Group, NodeIndex) end

---@param Group number
---@param NodeIndex number
function ASTExtraPlayerState:AddPopKartRaceNode(Group, NodeIndex) end

---@param info FPopKartRaceInfo
function ASTExtraPlayerState:AddPopKartBeginNode(info) end

---@param Group number
---@return boolean
function ASTExtraPlayerState:InPopKartRace(Group) end

---@param Group number
---@return boolean
function ASTExtraPlayerState:PopKartFinish(Group) end

---@return boolean
function ASTExtraPlayerState:IsExited() end

function ASTExtraPlayerState:OnRep_PlayerCurWeaponRecord() end

function ASTExtraPlayerState:On_RepRenderQualityCVarsToSync() end

function ASTExtraPlayerState:OnRep_RobotVoiceMemberId() end

function ASTExtraPlayerState:OnRep_UseVoiceChange() end

function ASTExtraPlayerState:OnRep_imprint_info() end

function ASTExtraPlayerState:OnRep_SegmentsList() end

---@param ChoosedSegmentID number
function ASTExtraPlayerState:ServerChooseSegmentID(ChoosedSegmentID) end

---@param ChoosedSegmentID number
function ASTExtraPlayerState:ServerLeaderChoosingSegmentID(ChoosedSegmentID) end

function ASTExtraPlayerState:NotifyTheOtherTeams() end

function ASTExtraPlayerState:NotifyTeammates() end

function ASTExtraPlayerState:OnRep_LeaderChoosingSegmentID() end

function ASTExtraPlayerState:OnRep_bShowTeammatePositionUI() end

---@param bShow boolean
function ASTExtraPlayerState:SetShowTeammatePositionUI(bShow) end

function ASTExtraPlayerState:CalculateSegmentRatio() end

---@param hittype EHitFeedbackType
---@param location FVector
---@param healthRate number
---@param damageRate number
function ASTExtraPlayerState:RPC_ClientHitFeedbackInfo(hittype, location, healthRate, damageRate) end

function ASTExtraPlayerState:CheckIsInspector() end

---@return boolean
function ASTExtraPlayerState:IsEscapeUnderCoverExposed() end

function ASTExtraPlayerState:ExposeEscapeUnderCover() end

---@param AddTime number
function ASTExtraPlayerState:AddEscapeUnderCoverExposeTime(AddTime) end

---@param Index number
function ASTExtraPlayerState:LevelLoadAndUnload(Index) end

---@return number
function ASTExtraPlayerState:GetLevelLoadAndUnloadIndex() end

---@return boolean
function ASTExtraPlayerState:CheckPlayerCanReviveSelf() end

---@return boolean
function ASTExtraPlayerState:CheckPlayerCanAutoReviveSelf() end

function ASTExtraPlayerState:TrigBattleResultIfConditionMatch() end

function ASTExtraPlayerState:TrigAllBattleResultIfConditionMatch() end

---@param MsgItem FQuickSignMsg
function ASTExtraPlayerState:Replay_QuickSignComp_ClientReceiveMsg(MsgItem) end

---@param MsgID string
function ASTExtraPlayerState:Replay_QuickSignComp_ClientDelMsg(MsgID) end

---@param MsgItem FQuickSignMsg
function ASTExtraPlayerState:Replay_CampTool_QuickSignComp_ClientReceiveMsg(MsgItem) end

---当前仅开放给Server端调用，客户端会返回空的列表
---@param IncludeHiddenAvatar boolean
function ASTExtraPlayerState:GetPlayerCurWearIDList(IncludeHiddenAvatar) end

---当前仅开放给Server端调用，客户端会返回空的列表
---@param IncludeHiddenAvatar boolean
function ASTExtraPlayerState:GetPlayerCurWearDefineIDList(IncludeHiddenAvatar) end

function ASTExtraPlayerState:OnRep_ReplaceSuitSkinNum() end

---@return FMultiPlayerAircraftInfo
function ASTExtraPlayerState:GetMultiPlayerAircraftInfo() end

function ASTExtraPlayerState:OnRep_MultiPlayerAircraftInfo() end

function ASTExtraPlayerState:OnRep_RegionIDList() end

---@return boolean
function ASTExtraPlayerState:IsPlayerWaitingForRespawn() end

---@param AttributeName string
---@param NewValue number
function ASTExtraPlayerState:SetPersistentAttributeValue(AttributeName, NewValue) end

---@param AttributeName string
---@return number
function ASTExtraPlayerState:GetPersistentAttributeValue(AttributeName) end

---@param bInMicOpen boolean
function ASTExtraPlayerState:SetbIsMicOpen(bInMicOpen) end

---@param bInMicOpen boolean
function ASTExtraPlayerState:SetIsSpeakerOpen(bInMicOpen) end
