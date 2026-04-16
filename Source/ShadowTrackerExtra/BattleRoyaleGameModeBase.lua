---@meta

---@class FNavigationConfigItem
---@field AgentType number
---@field NavigationFilterClass UNavigationQueryFilter
FNavigationConfigItem = {}


---@class FOnBattleRoyaleGoToFightingStateDelegate : ULuaSingleDelegate
FOnBattleRoyaleGoToFightingStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBattleRoyaleGoToFightingStateDelegate:Bind(Callback, Obj) end

---执行委托
function FOnBattleRoyaleGoToFightingStateDelegate:Execute() end


---@class FOnGameEventChangeDelegate : ULuaSingleDelegate
FOnGameEventChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameEventChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnGameEventChangeDelegate:Execute() end


---@class FOnKillEventDetailedData : ULuaMulticastDelegate
FOnKillEventDetailedData = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Killer: ASTExtraPlayerState, DamageData: FDamageCauserRecordData, Assists: ULuaArrayHelper<ASTExtraPlayerState>, Victim: AUAECharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnKillEventDetailedData:Add(Callback, Obj) end

---触发 Lua 广播
---@param Killer ASTExtraPlayerState
---@param DamageData FDamageCauserRecordData
---@param Assists ULuaArrayHelper<ASTExtraPlayerState>
---@param Victim AUAECharacter
function FOnKillEventDetailedData:Broadcast(Killer, DamageData, Assists, Victim) end


---@class FOnSpawnTombBox : ULuaMulticastDelegate
FOnSpawnTombBox = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TombBox: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSpawnTombBox:Add(Callback, Obj) end

---触发 Lua 广播
---@param TombBox AActor
function FOnSpawnTombBox:Broadcast(TombBox) end


---@class ABattleRoyaleGameModeBase: ASTExtraGameMode
---@field GameTimerEvents ULuaArrayHelper<FTimerEvents>
---@field GameModeType EGameModeType
---@field AIControllerClass AAIController
---@field NewAIControllerClass AAIController
---@field SuperTeamAIControllerClass AAIController
---@field AIFriendlyCampConfig ULuaArrayHelper<FAIFriendlyCampItem>
---@field LevelDirectorClass AUAELevelDirector
---@field MaxNoConsiderActorNum number
---@field MaxDestoryActorNumPerFrame number
---@field PlayerNumPerTeam number
---@field EscapeHelicopterClassTag string
---@field GameModeDisplayName string
---@field bCreationMode boolean
---@field bSimulateClientEnableOBBulletTrackEffect boolean
---@field bAutonomousClientEnableOBBulletTrackEffect boolean
---@field OverrideWeaponBulletTrackEffectConfigHandleTemplate UBackpackWeaponBulletTrackHandle
---@field bInitWeaponDelayDataRep boolean
---@field CircleSpeedMultiplicator number
---@field bForbidAutoAimAt boolean
---@field bForbidAutoOpendoor boolean
---@field bForbitAudioVisual boolean
---@field bForbitAutoPick boolean
---@field bForbidAirAttack boolean
---@field bForbitHurtEffect boolean
---@field bForbitInvalidTeammateHurt boolean
---@field bGunSamePriority boolean
---@field bForbitFallingDamage boolean
---@field bUseFootPrint boolean
---@field bForbitCharacterAttrModify boolean
---@field bLimitedCloth boolean
---@field BattleVoice boolean
---@field bEnableCarringFunction boolean
---@field bEnableCarringDeadBoxFunction boolean
---@field bRemoveVehicleBecauseDestory boolean
---@field bSupportOBTransform boolean
---@field bEnableFatalDamageRPCOp boolean
---@field bEnableAIShootMultiPellets boolean
---@field GameModeConfigPath string
---@field bIsAutoReloadWeaponGameMode boolean
---@field bIsPickUpFillBulletGameMode boolean
---@field iCheatIndexBeforeInit number
---@field bCanEditPlaneRouteData boolean
---@field CurPlaneRouteData FGameModeParam
---@field bEnableMultiPlane boolean
---@field MultiPlaneRouteData ULuaArrayHelper<FGameModeMultiAirlineParam>
---@field VehicleCraftSoftClass AVehicleCraftCharacter
---@field BornLocation FVector
---@field BornRadius number
---@field LastCircleCountToDestroyActorOnServer number
---@field LastCircleCountToDestroyActorOnServerConfig number
---@field MaxDynamicLoadingWorldPlayer number
---@field MaxDynamicLoadingWorldPlayerConfig number
---@field bOpenWarModeSwitch boolean
---@field MaxAIAllowJumpRadius number
---@field HorizontalFlyDistanceAfterOpenParachute number
---@field EditorGuidMode boolean
---@field bHasMobs boolean @是否有怪物
---@field bDetailVehicleTlog boolean @是否做详细载具tlog统计
---@field bVehicleDataPerCircleTlog boolean @是否做载具每圈数据tlog统计， 默认关闭，策划说先关注主题海岛和经典海岛， 火力模式等因为上报数据太大，造成包内容过大，所以都不能开
---@field bVehicleExplosionMustDieInVehicle boolean
---@field VehicleExplosionBaseDamageRate number
---@field bImmediatelySpawnAI boolean
---@field bRespawnAIPosWithTeam boolean
---@field NearDeathRestoredOriginHealth number
---@field NearDeathDecreateBreathRate number
---@field RescueOtherRestoreDuration number
---@field RescueSelfCircleLimit number
---@field GameModeAIDataAssetSoftPtr UGamemodeAIDataAsset
---@field SignalHPRecoverCDMax number
---@field SignalHPRecoverSpeed number
---@field ResetSignalHP_FatalDamage number
---@field ResetSignalHP_Rescued number
---@field SignalHPApplyExtraDamageConfigMap ULuaMapHelper<number, number>
---@field IsShowDeadBox boolean
---@field bUseParachuteAnimCache boolean
---@field bDropDeadBoxWrappersToGround boolean
---@field DropDeadBoxWrappersToGroundBlackList ULuaArrayHelper<number>
---@field DropDeadBoxWrappersToGroundBlackList_ItemType ULuaArrayHelper<number>
---@field DropDeadBoxWrappersToGroundWhiteList_ItemType ULuaArrayHelper<number>
---@field DropDeadBoxWrappersBlackList ULuaArrayHelper<number>
---@field DropDeadBoxWrappersBlackList_ItemType ULuaArrayHelper<number>
---@field DropDeadBoxWrappersWhiteList_ItemType ULuaArrayHelper<number>
---@field DropDeadBoxWrappersToGroundGridStep number
---@field bEnableWeaponAttachmentBindDropToWeaponWrapper boolean
---@field bForceAutoUseWeaponAttachmentIgnoreGenericGameSetting boolean
---@field bEnableCacheWrapperClass boolean
---@field bEnableAliveNumChangeByRevive boolean
---@field DeadDropItemLimitInfoCollection FDeadDropItemLimitInfoCollection
---@field RevivalSaveItemLimitInfoCollection FRevivalSaveItemLimitInfoCollection
---@field DropListWithTag ULuaArrayHelper<string>
---@field ReserveListWithTag ULuaArrayHelper<string>
---@field MaxNotidyBanPlayerLoginTimes number
---@field MaxWatcherRadioTimes number
---@field OutBoundDamage number
---@field bCustomizeWinBattleResult boolean
---@field AllGameModeStates ULuaArrayHelper<UGameModeState>
---@field MyMapName string
---@field bInitGlobalConfig boolean
---@field IsCanBuild boolean
---@field IsCanBecomeZombie boolean
---@field IsShowDeadBoxGreenLight boolean
---@field IsShowDeadBoxGreenSmoke boolean
---@field IsWeaponFPPOffsetInTDMode boolean
---@field FirstCheckedNoPlayer boolean @第一次检测到无人标记, feishen, 20210622
---@field CacheWrapperClassMap ULuaMapHelper<number, UClass>
---@field MatchGoal number
---@field ChickenDinnerNum number
---@field CurPolicyDecisionRelevantUpdateInterval number
---@field IsSkipNearDeath boolean
---@field bShouldGenerateItemWhenStart boolean
---@field RespawnItemConfigList ULuaArrayHelper<FRespawnItemConfigInst>
---@field bSetAllWeaponBulletToMaxOnBorn boolean
---@field GameModeParms FGameModeParms
---@field GMGeneralConfigData FGMGeneralConfigData
---@field OnKillEventDetailedData FOnKillEventDetailedData
---@field OnSpawnTombBox FOnSpawnTombBox
---@field ClientSettingBaseOnGameMode FClientSettingBaseOnGameMode
---@field SeasonPlanes ULuaArrayHelper<FPlaneTypes>
---@field bTakeDamageWhenOutBound boolean
---@field KillerPlayerKey number
---@field VictimPlayerKey number
---@field LastBattleResultPlayer number @上一个结算的玩家
---@field LastPlayerGamePlayingTime number
---@field bIsGameEnded boolean
---@field bIsEnableTeamAssembleDisplay boolean
---@field ActivateCharmSystem boolean
---@field WeaponSystemConfigData UGameModeWeaponConfigBase
---@field GoToFightingStateDelegate FOnBattleRoyaleGoToFightingStateDelegate
---@field OnGameEventChangeDelegate FOnGameEventChangeDelegate
---@field PlayerSealClassPath string
---@field bForceDisableSpecialEffectEmoteFollowPlay boolean
---@field BisSavedLevelToFileInServer boolean
---@field CollectActiveLevel ULuaArrayHelper<string>
local ABattleRoyaleGameModeBase = {}

function ABattleRoyaleGameModeBase:FireGameTimerEvents() end

---@param SubSystemType ESubSystemType
---@return boolean
function ABattleRoyaleGameModeBase:IsFeatureSupportedCDO(SubSystemType) end

function ABattleRoyaleGameModeBase:InitGlobalConfig() end

function ABattleRoyaleGameModeBase:ConfigOverWriteValue() end

function ABattleRoyaleGameModeBase:InitialGameModeState() end

---@param TargetGameModeState string
function ABattleRoyaleGameModeBase:ChangeStateGM(TargetGameModeState) end

---生化团竞合入, feishen, 20200828
function ABattleRoyaleGameModeBase:GotoActiveState() end

function ABattleRoyaleGameModeBase:GotoReadyState() end

function ABattleRoyaleGameModeBase:GotoFightingState() end

function ABattleRoyaleGameModeBase:GotoFinishedState() end

function ABattleRoyaleGameModeBase:OnGameEnterFight() end

---@param State string
---@param Time number
function ABattleRoyaleGameModeBase:SetGameModeStateTime(State, Time) end

---@param bSuperTeamAI boolean
---@param AIType number
function ABattleRoyaleGameModeBase:GetAIControllerClass(bSuperTeamAI, AIType) end

---@param boxId number
---@param pos FVector
function ABattleRoyaleGameModeBase:OnAirDropBoxLanded(boxId, pos) end

---@param boxId number
function ABattleRoyaleGameModeBase:OnAirDropBoxEmpty(boxId) end

---@return boolean
function ABattleRoyaleGameModeBase:IsGuidNewMode() end

function ABattleRoyaleGameModeBase:CheckAnyBodyOutBound() end

---@param InTotalPlayers ULuaArrayHelper<APlayerController>
---@param InTotalAIs ULuaArrayHelper<AAIController>
function ABattleRoyaleGameModeBase:SetOneFlight(InTotalPlayers, InTotalAIs) end

function ABattleRoyaleGameModeBase:OnStartCurFlight() end

---@return boolean
function ABattleRoyaleGameModeBase:CheckNoHumanExist() end

---@param LeftTime number
function ABattleRoyaleGameModeBase:SetStateLeftTime(LeftTime) end

---@return FGameModeParam
function ABattleRoyaleGameModeBase:GetCurPlaneRouteData() end

---@param DeltaTime number
function ABattleRoyaleGameModeBase:TickGameModeState(DeltaTime) end

---@param DeltaTime number
function ABattleRoyaleGameModeBase:CheckAliveCharacters(DeltaTime) end

---@param DeltaTime number
function ABattleRoyaleGameModeBase:CheckOutBound(DeltaTime) end

---@param PlayerKey number
---@return string
function ABattleRoyaleGameModeBase:GetPlayerBattleResultReason(PlayerKey) end

---@param Killer AController
---@param VictimPlayer AController
---@param VictimPawn APawn
---@param DamageType UDamageType
function ABattleRoyaleGameModeBase:HandlePlayerKilled(Killer, VictimPlayer, VictimPawn, DamageType) end

---@param Killer AController
---@param VictimPlayer AController
---@param VictimPawn APawn
---@param KillerKey number
function ABattleRoyaleGameModeBase:HandlePlayerKilledWithRevive(Killer, VictimPlayer, VictimPawn, KillerKey) end

---@return boolean
function ABattleRoyaleGameModeBase:CheckGameEnd() end

function ABattleRoyaleGameModeBase:HandleGameEnd() end

---@param StateTime number
function ABattleRoyaleGameModeBase:SetFightingStateTime(StateTime) end

---@param PlayerKey number
---@param bAI boolean
function ABattleRoyaleGameModeBase:RespawnPlayer(PlayerKey, bAI) end

function ABattleRoyaleGameModeBase:CalculateGameTerminatorInfo() end

---@return string
function ABattleRoyaleGameModeBase:GetSeasonPlane() end

---@return boolean
function ABattleRoyaleGameModeBase:IsEnableTeamAssembleDisplay() end

---统一复用小队集结数据
---@return boolean
function ABattleRoyaleGameModeBase:IsAutoUseTeamAssembleDisplayData() end

---@param Value boolean
function ABattleRoyaleGameModeBase:ToggleInfiniteBullets(Value) end

---@param NewValue number
function ABattleRoyaleGameModeBase:SetPlayerNumPerTeam(NewValue) end

function ABattleRoyaleGameModeBase:InitWorldActiveRange() end

---允许GameMode约束某些物品的掉落
---@param OutItemDataList ULuaArrayHelper<FPickUpItemData>
function ABattleRoyaleGameModeBase:CheckDropItemLimit(OutItemDataList) end

---@param InTargetItem UItemHandleBase
---@param InTargetBackpack UBackpackComponent
---@param OutLimitedItemCount number
---@return boolean
function ABattleRoyaleGameModeBase:CheckRevivalSaveItemLimit(InTargetItem, InTargetBackpack, OutLimitedItemCount) end

---@return boolean
function ABattleRoyaleGameModeBase:AllowReconnectionWhenDead() end

---@param PlayerKey number
function ABattleRoyaleGameModeBase:NotifyNewAIPlayerEnter(PlayerKey) end

function ABattleRoyaleGameModeBase:CustomizeWinBattleResultFunc() end

function ABattleRoyaleGameModeBase:InitlializeDefaultGeneratePlayerItemConfig() end

---@param CurPlaneData FPlaneData
function ABattleRoyaleGameModeBase:GenerateItemsForAllPlayers(CurPlaneData) end

---@param PlayerController ASTExtraPlayerController
---@param GenerateItemConfig URespawnItemConfig
function ABattleRoyaleGameModeBase:GeneratePlayerItems(PlayerController, GenerateItemConfig) end

---@param AIController AFakePlayerAIController
---@param GenerateItemConfig URespawnItemConfig
function ABattleRoyaleGameModeBase:GenerateAIItems(AIController, GenerateItemConfig) end

---@param BackpackComponent UBackpackComponent
---@param GenerateItemConfig URespawnItemConfig
function ABattleRoyaleGameModeBase:GenerateItems(BackpackComponent, GenerateItemConfig) end

---@param BackpackComponent UBackpackComponent
---@param GenerateItemConfig URespawnItemConfig
function ABattleRoyaleGameModeBase:GenerateItemsExec(BackpackComponent, GenerateItemConfig) end

---@return number
function ABattleRoyaleGameModeBase:GetReadyStateTime() end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
---@return number
function ABattleRoyaleGameModeBase:ModifyDamage_BP(Damage, DamageEvent, EventInstigator, VictimController, DamageCauser) end

---@param Damage number
---@param DamageType number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
function ABattleRoyaleGameModeBase:LuaReceiveDamage(Damage, DamageType, DamageEvent, EventInstigator, VictimController, DamageCauser) end

---@param Time number
function ABattleRoyaleGameModeBase:SetReadyStateTime(Time) end

function ABattleRoyaleGameModeBase:InitReadyStateEnterStateTime() end

---@param VictimCharacter AUAECharacter
---@param DamageEvent FDamageEvent
---@param bIsWinner boolean
function ABattleRoyaleGameModeBase:CalcDynamicRank(VictimCharacter, DamageEvent, bIsWinner) end

---@param NewGamePhase string
---@param bEnter boolean
function ABattleRoyaleGameModeBase:EnterOrLeaveCustomGamePhase(NewGamePhase, bEnter) end

function ABattleRoyaleGameModeBase:CollectTriggerLevelNameByTriggerObject() end

function ABattleRoyaleGameModeBase:CollectNormaLevelName() end

function ABattleRoyaleGameModeBase:CollectDynamicLevelName() end

---@param bforceRefresh boolean
function ABattleRoyaleGameModeBase:CollectAllDSLevelsToFile(bforceRefresh) end

---@param BisForceRefresh boolean
function ABattleRoyaleGameModeBase:CollectLevelDataInDS(BisForceRefresh) end

function ABattleRoyaleGameModeBase:CollectWeatherLevelData() end

---@param ID number
---@param WrapperClass UClass
function ABattleRoyaleGameModeBase:CacheWrapperClassByID(ID, WrapperClass) end

function ABattleRoyaleGameModeBase:CreateCheatCommandComponentForRoom() end
