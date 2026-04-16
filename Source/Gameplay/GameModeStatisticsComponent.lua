---@meta

---@class ERegionlMapActorPlusUIMountType
---@field GlobalOverlay number @全局叠加
---@field PortionOverlay number @局部叠加
ERegionlMapActorPlusUIMountType = {}


---@class ERegionlMapActorPlusUIShowType
---@field OnEnterRegion number @当进入区域时
---@field FollowActorLifetime number @跟随Actor生命周期
ERegionlMapActorPlusUIShowType = {}


---@class EDropdownSchemeTypes
---@field DST_DeathBox number @死亡后掉落.
EDropdownSchemeTypes = {}


---@class ETLog_BackpackEquipmentSlotType
---@field EBackpackEquipmentSlotType_None number
---@field EBackpackEquipmentSlotType_WeaponSlot1 number
---@field EBackpackEquipmentSlotType_WeaponSlot2 number
---@field EBackpackEquipmentSlotType_HelmetSlot number
---@field EBackpackEquipmentSlotType_ArmorSlot number
---@field EBackpackEquipmentSlotType_BagSlot number
---@field EBackpackEquipmentSlotType_Weapon1GunPoint number
---@field EBackpackEquipmentSlotType_Weapon1Grip number
---@field EBackpackEquipmentSlotType_Weapon1Magazine number
---@field EBackpackEquipmentSlotType_Weapon1Gunstock number
---@field EBackpackEquipmentSlotType_Weapon1OpticalSight number
---@field EBackpackEquipmentSlotType_Weapon2GunPoint number
---@field EBackpackEquipmentSlotType_Weapon2Grip number
---@field EBackpackEquipmentSlotType_Weapon2Magazine number
---@field EBackpackEquipmentSlotType_Weapon2Gunstock number
---@field EBackpackEquipmentSlotType_Weapon2OpticalSight number
ETLog_BackpackEquipmentSlotType = {}


---@class EDeathMatchSubModeType
---@field DeathMatch number
---@field HardPoint number
---@field ArmsRace number
---@field InfectionTDM number
---@field HideAndSeek number
---@field Solo number
---@field TacticalSingle number
EDeathMatchSubModeType = {}


---@class ECanShowKillThanksUIOperation
---@field ShowBrief number
---@field ShowDetail number
ECanShowKillThanksUIOperation = {}


---@class ERouteSegmentMode
---@field NotCompetitionMode number
---@field CompetitionMode number
---@field CompetitionOptionalMode number
ERouteSegmentMode = {}


---@class EType
---@field None number
---@field Data number
---@field Stream number
---@field Replace number
---@field DataSplitByTime number
---@field Max number
EType = {}


---@class EPlaneTypeForTlog
---@field None number
---@field BeginPlane number @起始航线飞机
---@field RevivalCardPlane number @复活卡航线飞机
---@field RecallPlane number @召回航线飞机
---@field EmergencyCallPlane number @紧急呼救器飞机
---@field AliveCallPlane number @活人上飞机
---@field OtherPlane number @其他飞机
EPlaneTypeForTlog = {}


---@class EAirlineType
---@field Classic number @以出生岛飞机方式生成航线
---@field CircleCenter number @过毒圈中心生成航线
---@field Initial number @复用初始航线
EAirlineType = {}


---@class EBigWorldServerArea
---@field None number
---@field Release number
---@field Development number
---@field Audition number
EBigWorldServerArea = {}


---@class FIngameFriendChatMsgExtraParams
---@field flag number
FIngameFriendChatMsgExtraParams = {}


---@class FTLogBaseInfo
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
FTLogBaseInfo = {}


---@class FPrivacyProtectDetail
---@field PlatformGenderVisible number
---@field SegmentTimesVisible number
---@field FriendList ULuaArrayHelper<number>
---@field bDataReady boolean
FPrivacyProtectDetail = {}


---@class FPlayerCharmInfo
---@field CharmValue number
---@field CharmLevel number
---@field SeasonId number
---@field AllowViewCharmValue boolean
---@field AllowOtherViewCharmValue boolean
FPlayerCharmInfo = {}


---@class FPromotionMatchInfo
---@field TaskID number
---@field Status number
---@field Progress number
---@field TargetProgress number
---@field CurSegmentLevel number
---@field SegmentLevelNum number
FPromotionMatchInfo = {}


---@class FPlayerPeakInfo
---@field LastPeakMatchScore number
---@field LastPeakKillScore number
---@field LastPeakRankScore number
---@field LastPeakRank number
---@field LastPeakKillNum number
---@field PeakSegmentLevel number
---@field TeamName string
---@field bIsTeamLeader boolean
---@field JoinTeamTime number
---@field TeamLogoID string
FPlayerPeakInfo = {}


---@class FWingManFuelInfo
---@field FuelID number
---@field FuelNum number
FWingManFuelInfo = {}


---@class FWingManInfo
---@field CurrentWingManID number
---@field CurrentWingManName string
---@field bFuelNotEnoughHint boolean
---@field bFuelSwitch boolean
---@field FuelInfoList ULuaArrayHelper<FWingManFuelInfo>
---@field bDisplayWingMan boolean
---@field WingPlaneCallerID number
---@field EquippedWingmanEffects ULuaArrayHelper<number>
---@field EffectsFuelInfoList ULuaArrayHelper<FWingManFuelInfo>
FWingManInfo = {}


---@class FLimitItem
---@field item_type number
---@field subtype number
---@field num number
FLimitItem = {}


---@class FGiftReceivedData
---@field GiftID number
---@field SenderUID number
---@field NumberReceived number
FGiftReceivedData = {}


---@class FGiftSentData
---@field GiftID number
---@field ReceiverUID number
---@field NumberReceived number
FGiftSentData = {}


---@class FKillAnimalData
---@field AnimalType number
---@field KillNum number
FKillAnimalData = {}


---@class FAreaTriggerRecord
---@field AreaType number
---@field AreaID number
FAreaTriggerRecord = {}


---@class FDropdownSchemeData
---@field SchemeId number
---@field ItemId number
---@field ItemName string
---@field MaxNum number
---@field MinNum number
---@field Probability number
---@field DropType number
FDropdownSchemeData = {}


---@class FGameSwitchControll
---@field ID number
---@field SwitchValue number
FGameSwitchControll = {}


---@class FTimerEvents
---@field EventName string
---@field EventTimestamp string
FTimerEvents = {}


---@class FPickUpSpecialItemFlow
---@field ItemSpesificID number
---@field PickCount number
FPickUpSpecialItemFlow = {}


---@class FUseItemFlow
---@field ItemSpesificID number
---@field UseCount number
FUseItemFlow = {}


---@class FBackpackLobbySenderItemExtra
---@field plane_id number
---@field plane_name string
FBackpackLobbySenderItemExtra = {}


---@class FBackpackLobbySenderItem
---@field count number
---@field extra FBackpackLobbySenderItemExtra
FBackpackLobbySenderItem = {}


---@class FBackpackLobbyItem
---@field count number
---@field senders ULuaMapHelper<number, FBackpackLobbySenderItem>
FBackpackLobbyItem = {}


---@class FBattleResultGenItemData
---@field item_map ULuaMapHelper<number, FBackpackLobbyItem>
FBattleResultGenItemData = {}


---@class FRedpackData
---@field Count number
---@field RedpackID string
FRedpackData = {}


---@class FTLog_PickUpItemFlow
---@field ItemSpesificID number
---@field Count number
---@field Location FVector
---@field SourceType number
---@field AdditionalParam number
---@field Time FDateTime
---@field TimeStr string
FTLog_PickUpItemFlow = {}


---@class FTLog_ActivityEventType
---@field ActivityEventID number
---@field ActivityEventLoc FVector
FTLog_ActivityEventType = {}


---@class FTLog_PropEquipUnequipFlow
---@field ItemSpesificID number
---@field SlotType ETLog_BackpackEquipmentSlotType
---@field bEquip boolean
---@field TimeStamp number
---@field IsFromOthers boolean
FTLog_PropEquipUnequipFlow = {}


---@class FVehicleDataPerCircle
---@field PerCircleIndex number
---@field DriveTimePerCircle number
---@field DriveDistancePerCircle number
---@field DamageAmountPerCircle number
---@field RuinedAmountPerCircle number
---@field FuelTimesPerCircle number
---@field FuelCostPerCircle number
FVehicleDataPerCircle = {}


---@class FVehicleDriveDisData
---@field VehicleType number
---@field VehicleUseCount number
---@field driveDistance number
---@field DriveTimeAsDriver number
---@field DriveTime number
---@field VehicleJumpDistanceMax number
---@field VehicleJumpDistanceMaxWithTeammate number
---@field arrDataPerCircle ULuaArrayHelper<FVehicleDataPerCircle>
FVehicleDriveDisData = {}


---@class FVehicleAvatarItemPairData
---@field DefaultItemID number
---@field ChangeSkinItemID number
FVehicleAvatarItemPairData = {}


---@class FWeaponSkinEffectResearchMisc
---@field acc_kill_counter number
FWeaponSkinEffectResearchMisc = {}


---@class FWeaponSkinKillDetail
---@field kill_counter number
FWeaponSkinKillDetail = {}


---@class FClothingUpgradeDatas
---@field ParentID number
---@field SlotType number
---@field ID number
---@field HandleSlotID number
FClothingUpgradeDatas = {}


---@class FGameModePlayerItem
---@field ItemTableID number
---@field Count number
---@field ParentTableID number
FGameModePlayerItem = {}


---@class FGameModePlayerItemList
---@field PlayerItemList ULuaArrayHelper<FGameModePlayerItem>
FGameModePlayerItemList = {}


---@class FGameModePlayer_WearItem
---@field WearPart_ItemID number
---@field WearItemID number
FGameModePlayer_WearItem = {}


---@class FGameModePlayer_ItemExtraInfo
---@field ItemID number
---@field ItemPendantList ULuaArrayHelper<number>
FGameModePlayer_ItemExtraInfo = {}


---@class FGameModePlayer_ItemCustomName
---@field ItemID number
---@field CustomName string
---@field CustomNum string
FGameModePlayer_ItemCustomName = {}


---@class FGameModePlayer_WearInfo
---@field EquipedSkinList ULuaArrayHelper<FGameModePlayer_WearItem>
---@field EquipedPendantList ULuaArrayHelper<FGameModePlayer_WearItem>
---@field WeaponPendantList ULuaArrayHelper<FGameModePlayer_WearItem>
---@field WingAvatarList ULuaArrayHelper<FGameModePlayer_WearItem>
---@field WeaponSkinAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field WeaponSkinAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field WeaponAttachmentAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field VehicleSkinAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field VehicleSkinAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field VehiclePendantInfoList ULuaArrayHelper<FGameModePlayer_ItemExtraInfo>
---@field DisplayVehiclePendantInfoList ULuaArrayHelper<FGameModePlayer_ItemExtraInfo>
---@field DisplayVehicleSkinAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field CharacterAvatarAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field ItemCustomNameList ULuaArrayHelper<FGameModePlayer_ItemCustomName>
---@field TombBoxAvatarList ULuaArrayHelper<FGameModePlayerItem>
FGameModePlayer_WearInfo = {}


---@class FStyleUnit
---@field stype_type number
---@field slot number
---@field style_id number
---@field lock boolean
---@field ItemList ULuaArrayHelper<FGameModePlayerItem>
---@field wearInfo FGameModePlayer_WearInfo
FStyleUnit = {}


---@class FGlidCost
---@field cost_item_id number
---@field cost_count number
---@field own_count number
FGlidCost = {}


---@class FGlidSkinUnit
---@field glid_item_id number
---@field cost_list ULuaArrayHelper<FGlidCost>
FGlidSkinUnit = {}


---@class FSuitSkinData
---@field Open boolean
---@field SuitSkinList ULuaArrayHelper<FStyleUnit>
---@field GlidSkinList ULuaArrayHelper<FGlidSkinUnit>
---@field SuitDefaultHeadID number
FSuitSkinData = {}


---@class FGameModePlayer_BattlePrepareDisplayWearInfo
---@field DisplayWearAvatarInfoList ULuaArrayHelper<number>
---@field DisplayWearWeaponInfoList ULuaArrayHelper<number>
---@field DisplayWearBackpackInfoList ULuaArrayHelper<number>
---@field DisplayWearHelmetInfoList ULuaArrayHelper<number>
---@field DisplayVehicleInfoList ULuaArrayHelper<number>
FGameModePlayer_BattlePrepareDisplayWearInfo = {}


---@class FGameModePlayerExpressionItem
FGameModePlayerExpressionItem = {}


---@class FGameModePlayerDecalItem
FGameModePlayerDecalItem = {}


---枪械改装数据
---@class FWeaponModificationData
---@field WeaponID number @武器ID
---@field ModuleList ULuaArrayHelper<number> @改装属性列表
FWeaponModificationData = {}


---@class FWeaponModData
---@field ModeID number @模式ID
---@field WeaponModificationDataList ULuaArrayHelper<FWeaponModificationData> @武器列表
FWeaponModData = {}


---@class FGameModePlayerTaskData
---@field task_id number
---@field process number
---@field week_index number
---@field is_traced boolean
---@field is_mode_fit boolean
---@field TaskType number
---@field TargetProcess number
---@field TaskParam1 string
---@field TaskParam2 string
---@field ext_info string
FGameModePlayerTaskData = {}


---@class FGameModePlayerTaskDataSim
---@field task_id number
---@field process number
---@field ext_info string
FGameModePlayerTaskDataSim = {}


---@class FWeaponDamageRecord
---@field WeaponID number
---@field KillCount number
---@field Damage number
FWeaponDamageRecord = {}


---@class FGameModePlayerBanChat
---@field end_time number
---@field reason string
---@field ban_type number
FGameModePlayerBanChat = {}


---@class FBattleMessageInfo
---@field GameNum number
---@field WinNum number
---@field TeamRank number
---@field Kill number
---@field TopTenCount number
---@field KD number
---@field SeasonID number
---@field Rank number
---@field PeakFamousCount number
---@field WarZoneId number
---@field RankedRank number
FBattleMessageInfo = {}


---@class FParachuteInfo
---@field LeaderCount number
---@field LastGameLeaderUID number
---@field LastGameTeammatesUID ULuaArrayHelper<number>
---@field LastGameBattleID number
FParachuteInfo = {}


---@class FItemTypeParamInfo
---@field InfoName string
---@field Weight number
FItemTypeParamInfo = {}


---@class FSpecialPickItem
---@field task_id number
---@field item_id number
---@field cur_count number
---@field total_count number
FSpecialPickItem = {}


---@class FDeadBoxItem
---@field item_id number
---@field cur_count number
---@field total_count number
---@field weight number
FDeadBoxItem = {}


---@class FWeaponLobbyInitialData
---@field BulletTrackSkinList ULuaArrayHelper<number>
FWeaponLobbyInitialData = {}


---@class FReportCollection
---@field item_id number
---@field count number
FReportCollection = {}


---@class FAnchorPlatData
---@field AnchorPlatResID number
---@field AnchorPlatColorID number
FAnchorPlatData = {}


---@class FZombieKillFlowData
---@field ZombieID number
---@field Count number
---@field bHeadShot boolean
---@field KillType number
---@field WeaponID number
FZombieKillFlowData = {}


---@class FZombieExtraInfoLog
---@field PlayerCountOnActivation number
---@field PlayerCountOnDeactivation number
---@field ActivationStatus number
---@field BossKillCount number
FZombieExtraInfoLog = {}


---@class FPlayerOBBattleInfo
---@field BattleMode number
---@field ValidBattleInfo boolean
---@field GameCount number
---@field WinCount number
---@field TopTenCount number
---@field KillNum number
---@field KDNum string
---@field TopSegmentTimes number
FPlayerOBBattleInfo = {}


---@class FPlayerOBInfo
---@field IsEnableOB boolean
---@field bIsMLAI boolean
---@field UID number
---@field UIDString string
---@field PlayerKey number
---@field SegmentLevel number
---@field BattleMode number
---@field ValidBattleInfo boolean
---@field GameCount number
---@field WinCount number
---@field TopTenCount number
---@field KillNum number
---@field KDNum number
---@field Title_Type number
---@field Title_RankID number
---@field Title_RankType number
---@field Title_RankNo number
---@field TopSegmentTime number
---@field TopSegmentShowTag number
---@field SpSegmentLevelNum number
---@field CurModeRating number
---@field RatingScoreDiffID number
---@field OBPlayerWearInfo FGameModePlayer_WearInfo
---@field OBPlayerBattlePrepareDisplayWearInfo FGameModePlayer_BattlePrepareDisplayWearInfo
FPlayerOBInfo = {}


---@class FSingleWeaponConfig
---@field WeaponID number
---@field AttachmentIDList ULuaArrayHelper<number>
FSingleWeaponConfig = {}


---@class FPlayerWeaponsConfig
---@field ConfigName string
---@field WeaponDataList ULuaArrayHelper<FSingleWeaponConfig>
FPlayerWeaponsConfig = {}


---@class FPlayerTotalWeaponsConfig
---@field DefaultSelectedIndex number
---@field WeaponsConfigList ULuaArrayHelper<FPlayerWeaponsConfig>
FPlayerTotalWeaponsConfig = {}


---@class FThemePlayerWeaponConfig
---@field WeaponSettingKey number
---@field WeaponsConfig FPlayerWeaponsConfig
FThemePlayerWeaponConfig = {}


---@class FAchievementPrize
---@field AnimationList ULuaArrayHelper<number>
---@field MedalList ULuaArrayHelper<number>
---@field NotifyTitleList ULuaArrayHelper<number>
---@field BulleEffectList ULuaArrayHelper<number>
FAchievementPrize = {}


---@class FUGCCommodityData
---@field CommodityID number
---@field Count number
FUGCCommodityData = {}


---@class FUGCCommodityPlayerData
---@field UID number
---@field OrderID number
---@field Ticket number
---@field ActiveCoin number
---@field UGCCommodityDatas ULuaArrayHelper<FUGCCommodityData>
---@field UGCProductDatas ULuaArrayHelper<FUGCCommodityData>
FUGCCommodityPlayerData = {}


---@class FRequestUGCCommodityExecuteCommand
---@field CommandType number
---@field UID number
---@field OrderID number
---@field CommodityID number
---@field Count number
---@field SellingPriceAfterDiscount number
---@field bPlayerPrivilegeNeedChecked boolean
---@field Context string
FRequestUGCCommodityExecuteCommand = {}


---@class FResponseUGCCommodityCommand
---@field ResponseType number
---@field CommandType number
---@field Result number
---@field UID number
---@field OldOrderID number
---@field NewOrderID number
---@field CommodityID number
---@field Count number
---@field Ticket number
---@field ActiveCoin number
---@field ProductID number
---@field UGCProductDatas ULuaArrayHelper<FUGCCommodityData>
---@field Context string
FResponseUGCCommodityCommand = {}


---@class FUGCPlayerCustomInfo
---@field PropKey string
---@field PropValue number
FUGCPlayerCustomInfo = {}


---@class FUGCSeasonRankInfo
---@field SeasonID number
---@field RankID number
---@field LastRankRate number
---@field CurrentRankRate number
FUGCSeasonRankInfo = {}


---@class FUGCPlayerAchievementInfo
---@field AchievementID number
---@field AchievementCount number
FUGCPlayerAchievementInfo = {}


---@class FUGCPlayerInfo
---@field MatchRank number
---@field VIPLevel number
---@field SeasonRankInfo FUGCSeasonRankInfo
---@field AchievementInfoList ULuaMapHelper<number, FUGCPlayerAchievementInfo>
---@field CustomInfoList ULuaArrayHelper<FUGCPlayerCustomInfo>
FUGCPlayerInfo = {}


---@class FPlayerPetInfo
---@field PetID number
---@field Park_Visible boolean
---@field Park_Teammate_Visible boolean
---@field PetLevel number
FPlayerPetInfo = {}


---@class FPlayerClubTeamInfo
---@field TeamID number
---@field ClubTeamName string
---@field ClubTeamLogo string
FPlayerClubTeamInfo = {}


---@class FRouteSegment
---@field Index number
---@field SegmentName string
---@field StartRatio number
---@field EndRatio number
FRouteSegment = {}


---@class FTeamSegmentInfo
---@field TeamID number
---@field SegmentID number
FTeamSegmentInfo = {}


---@class FSegmentChoosableSituation
---@field SegmentID number
---@field bChoosable boolean
FSegmentChoosableSituation = {}


---@class FPlayerStageBattleRecord
---@field TotalHurt number
---@field MaxSegmentLevel number
---@field TeamLiked number
---@field TotalKD number
---@field TotalAssist number
---@field MaxHurt number
---@field MaxKill number
---@field TotalKill number
---@field MaxPeakSegmentLevel number
---@field SeasonSize number
---@field TotalWin number
---@field TotalPlayTime number
---@field TotalGameNum number
---@field FriendNum number
---@field FirstKingGetTime number
---@field TimeFromRegister number
FPlayerStageBattleRecord = {}


---@class FCommonFlagData
---@field FlagName string
---@field FlagValue string
---@field SceneFlagID number
FCommonFlagData = {}


---@class FHomeCoinItem
---@field CoinType number
---@field Amount number
FHomeCoinItem = {}


---@class FHomeNoPawnPlayerData
---@field UID number
---@field Loc number
FHomeNoPawnPlayerData = {}


---@class FRankPlayerInfo
---@field is_anonymous boolean
---@field is_hide boolean
---@field score number
---@field rank_no number
---@field province_id number
---@field uid number
FRankPlayerInfo = {}


---@class FConsumeRankPlayerInfo
---@field my_rank_info FRankPlayerInfo
---@field my_rank_friends ULuaMapHelper<number, FRankPlayerInfo>
FConsumeRankPlayerInfo = {}


---@class FLargeAircraftData
---@field BaseID number
---@field DanceID number
---@field ColorID number
---@field PlaneName string
---@field FuelNum number
FLargeAircraftData = {}


---生化团竞合入, feishen, 20200828
---@class FGameModePlayerParams
---@field UID number
---@field PlayerType string
---@field PlayerName string
---@field PlayerKey number
---@field PlayerLiteStatsID string
---@field WorldParallelismID number
---@field TeamID number
---@field RoomTeammatesID number
---@field bForbidReportTeammate boolean
---@field RemainTeammateHurtCount number
---@field RemainTeammateKillCount number
---@field RemainTeammateCarInterruptSaveCount number
---@field ReportUncivilizedCount number
---@field OpenID string
---@field RemarkName string
---@field ChangedNameByDS boolean
---@field CountryID number
---@field Country string
---@field CountryFullName string
---@field CountryIconURL string
---@field NeedScreenShot boolean
---@field PlayerBornPointID number
---@field bTeamLeader boolean
---@field bIsGM boolean
---@field bIsEnableUGCGM boolean
---@field bUGCGMEnabled boolean
---@field bIsGMWatcher boolean
---@field bEagleWatch boolean
---@field EagleWatchType number
---@field WatchType number
---@field bHighPriorityRelevancy boolean
---@field SecMarkType number
---@field IsWorkManGetChestLimit boolean
---@field WorkManChestLimitStr string
---@field bIsCheatPlayer boolean
---@field Gender number @0 for male, 1 for female
---@field PIC_URL string
---@field Level number
---@field Segment_Level number
---@field AvatarBoxId number
---@field TopSegmentTimes number
---@field CurModeRating number
---@field RemainRatingNum number
---@field bAIPlayer boolean
---@field ItemList ULuaArrayHelper<FGameModePlayerItem>
---@field fireworksInfo ULuaArrayHelper<FGameModePlayerItem>
---@field InteractivePropsItemList ULuaArrayHelper<FGameModePlayerItem>
---@field SuitSkinData FSuitSkinData
---@field WeaponModDatas ULuaArrayHelper<FWeaponModData> @枪匠系统：枪械改装属性
---@field ExpressionItemList ULuaArrayHelper<FGameModePlayerExpressionItem>
---@field DecalItemList ULuaArrayHelper<FGameModePlayerDecalItem>
---@field TaskDataList ULuaArrayHelper<FGameModePlayerTaskData>
---@field WeaponAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field VehicleAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field KeepWeaponDataList ULuaArrayHelper<string>
---@field PlayerWearInfo FGameModePlayer_WearInfo
---@field PlayerOBInfo FPlayerOBInfo
---@field banList ULuaArrayHelper<FGameModePlayerBanChat>
---@field specialPickItem ULuaArrayHelper<FSpecialPickItem>
---@field deadBoxItemList ULuaArrayHelper<FDeadBoxItem>
---@field WeaponLobbyInitialData FWeaponLobbyInitialData
---@field PlayerTotalWeaponsConfig FPlayerTotalWeaponsConfig
---@field ThemePlayerWeaponConfig FThemePlayerWeaponConfig
---@field EquippedAchievementPrize FAchievementPrize
---@field audioChat ULuaArrayHelper<number>
---@field CurrentPlayerState string
---@field CurrentCharacterState string
---@field SyncedTimestamp number
---@field DestinyValue number
---@field WarmScore number
---@field LeaderCount number
---@field LastGameLeaderUID number
---@field LastGameTeammatesUID ULuaArrayHelper<number>
---@field JumpSegmentID number
---@field LastGameBattleID number
---@field YearBeastWarmScore number
---@field RatingScore number
---@field bUseNewVaultComp boolean
---@field EscapeDifficulty number
---@field bDoPlayerUseAutoFollow boolean
---@field bAutoForceOpenParachute boolean
---@field MaxRankingScore number
---@field VSTeamRatingScore number
---@field BTFRatingScore number
---@field BucketIdx number
---@field bIsObserver boolean
---@field bObserverHost boolean
---@field OBGM number
---@field bHasPausePrivilege boolean
---@field ObserverEnemyDist number
---@field WatchPlayerKey number
---@field WatchPlayerUID number
---@field FollowUID number
---@field PlatformGender number
---@field PrivacyDetail FPrivacyProtectDetail
---@field bIsFireworksActOpen boolean
---@field MatchLabel number
---@field IsBanPublicMic boolean
---@field AnchorPlatColorID number
---@field AnchorPlatResID number
---@field MedalClubID string
---@field MedalClubLevel number
---@field PassCardBuyType number
---@field PassCardBuyLevel number
---@field IsEnjoyCardOpen boolean
---@field NeedShowEnjoyCard boolean
---@field Likedlevel number
---@field CommonFlagData ULuaArrayHelper<FCommonFlagData>
---@field LastGameResultTime number
---@field CorpsID number
---@field PlayerStartSerialNum number
---@field bUsedSimulation boolean
---@field special_ver number
---@field allow_watch boolean
---@field allow_like boolean
---@field allow_friend_like boolean
---@field allow_teammate_like boolean
---@field allow_teammate_positive_like boolean
---@field bCollectedEventDataReportingEnabled boolean
---@field CollectedEventType number
---@field bLiveVideoReplay boolean
---@field bLiveReplay boolean
---@field bConvertibleCarOpen boolean
---@field bCollectedEVLiveEventDataReportingEnabled boolean
---@field CharmInfo FPlayerCharmInfo
---@field PromotionInfo FPromotionMatchInfo
---@field PeakInfo FPlayerPeakInfo
---@field WingManInfo FWingManInfo
---@field IsInspector boolean
---@field GlideTypeId number
---@field bGlideConfigState boolean
---@field GlideCount number
---@field GlideGlobalVisible boolean
---@field showIslandNickname boolean
---@field InitDropId number
---@field InitDropIdList ULuaArrayHelper<number>
---@field SpecMotionRestCostCount number
---@field SeasonWeekIndex number
---@field JoinSourceType number
---@field is_regress number
---@field not_counter_ai number
---@field bCampPrivileges boolean
---@field bShowAirLine boolean
---@field bUseDistanceMeasurement boolean
---@field bShowTeammateKillInfo boolean
---@field bDice boolean
---@field bShowResPoint boolean
---@field bEnablePointEnhance boolean
---@field bEnableSoundPromptEnhance boolean
---@field bEnableAirPointEnhance boolean
---@field bVoiceChanger boolean
---@field iCampToolStatusFromServer number
---@field bAchieveAce boolean
---@field room_team_pos number
---@field UGCPlayerInfo FUGCPlayerInfo
---@field ConfessionMessage ULuaArrayHelper<number>
---@field playerFaceInfo string
---@field playerFaceHandleID number
---@field KillThanksCount number
---@field bPartiallyKillThanksToOthersEnabled boolean
---@field bPartiallyKillThanksFromOthersEnabled boolean
---@field bPlayGunMasterVideo boolean
---@field imprint_info number
---@field bNeedRCR boolean
---@field bIsSwitchDSPlayer boolean
---@field LobbyTeammates ULuaArrayHelper<number>
---@field PlayerPetInfo FPlayerPetInfo
---@field ClubTeamInfo FPlayerClubTeamInfo
---@field InfectPawnIDList ULuaArrayHelper<number>
---@field CampID number @camp game mode. feishen, 20220106
---@field bIsCampModeCaptain number
---@field StageBattleRecord FPlayerStageBattleRecord
---@field WeaponSkinEffectResearchMiscMap ULuaMapHelper<number, FWeaponSkinEffectResearchMisc>
---@field EnableTombBoxBattleUpgrade boolean
---@field WeaponUpgradeIdToSkinBaseIDMap ULuaMapHelper<number, number>
---@field ConsumeRankPlayerInfo FConsumeRankPlayerInfo
---@field LargeAircraftData FLargeAircraftData
---@field curr_cabin_animation number
---@field BigwarAvatarSettingType number
---@field patrol_right_cases number
---@field parachute_sign_binds ULuaMapHelper<number, number>
---@field fall_land_effect_id number
---@field ClothingUpgradeTwinsMap ULuaMapHelper<number, number>
---@field KillTipsEffectSkinIDMap ULuaMapHelper<number, number>
---@field BornlandShowCarID number
---@field CustomAvatarAbilityList ULuaArrayHelper<number>
---@field ShowOtherRingBodyEffects number
---@field LastRingBodyEffects number
---@field GalaxyFaceInfoIndex string
---@field bIsClothExtraWingVisible boolean
---@field bIsClothExtraWingVisible_OnlyTeam boolean
---@field bIsBackpackFightingHide boolean
---@field ClothingUpgradeDatas ULuaArrayHelper<FClothingUpgradeDatas>
---@field ClothingUpgradeShowCondition number
---@field ResearchAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field BigWorldItemList ULuaArrayHelper<FBackpackItemParams>
---@field ItemAdditionPropertiesList ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
---@field BigWorldTaskInfo FDSBigWorldTaskBaseInfo
---@field BigWorldToBattleRoyaleItemList ULuaArrayHelper<FGameModePlayerItem>
---@field GenItemsTakeOutLimitMap ULuaMapHelper<number, number>
---@field BigWorldTitleInfo FBigWorldTitleInfo
---@field bEnableSuperHumanCampSkillMonitor boolean
---@field LeaveScenePos FVector
---@field HideScore number
---@field MilitarySupPoint number
---@field LockItemCirculate boolean
---@field CombatDroneRewardPoint number
---@field CombatDroneRewardPointToday number
---@field CollectScoreLevel number @收藏分数等级
---@field bCanHost boolean
---@field HostCount number
---@field EnableNewFPPMode boolean
FGameModePlayerParams = {}


---@class FGameModePlayerExtraParams
---@field UID number
---@field LiveID string
---@field LiveType number
---@field LimitItemList ULuaArrayHelper<FLimitItem>
---@field AreaID number
---@field PlatID number
---@field OSType number
---@field HomeID number
---@field HomeCoinList ULuaArrayHelper<FHomeCoinItem>
---@field StoreID number
---@field PickGambleAirdropExpireTS number
---@field KoiHouseMakeWishesTimes number
---@field HomeRelation number
---@field HomeTimeLimitItemWhite boolean
FGameModePlayerExtraParams = {}


---@class FAIPowerTrainAttrStatsConfig
---@field Stats ULuaMapHelper<number, number>
FAIPowerTrainAttrStatsConfig = {}


---@class FGameModeAIPlayerParams
---@field AIType number
---@field AICategory number
---@field bSuperTeamAI boolean
---@field bMLAI boolean
---@field bPartnerAI boolean
---@field AIPowerTrainAttrStatsConfig FAIPowerTrainAttrStatsConfig
FGameModeAIPlayerParams = {}


---@class FPlayerRPCStats
---@field AvgSendDelay number
---@field AvgReSendTimes number
FPlayerRPCStats = {}


---@class FPlayerNetStats
---@field ClientAddr string
---@field LocalAddr string
---@field AvgPing number
---@field MaxPing number
---@field HighPingPercent number
---@field MaxPingHistoryNum number
---@field ReconnectTimes number
---@field InBytesPerSecond number
---@field OutBytesPerSecond number
---@field InPacketLostRate number
---@field OutPacketLostRate number
---@field OutSaturationRate number
---@field TotalPositionUpdatedDistance number
---@field InPacketSize number
---@field OutPacketSize number
---@field AllRpcStats ULuaArrayHelper<FPlayerRPCStats>
FPlayerNetStats = {}


---@class FPVESelfData
---@field ZombieKillFlow ULuaArrayHelper<string>
---@field DamageFromMonsterAmount number
---@field SurvivalSeconds number
FPVESelfData = {}


---@class FPVETeammateData
---@field MonsterKillTotalNum number
---@field MonsterHeadShootKillTotalNum number
---@field MonsterDamageAmount number
---@field MonsterKillIDToNum ULuaMapHelper<number, number>
FPVETeammateData = {}


---@class FWeaponDamageKillData
---@field WeaponID number
---@field KillNum number
---@field DamageAmount number
FWeaponDamageKillData = {}


---@class FGameModeTeammateBattleResultData
---@field Name string
---@field UID number
---@field Kill number
---@field State string
---@field travelDistance number
---@field marchDistance number
---@field driveDistance number
---@field NightMarchDistance number
---@field KillWolfNum number
---@field OpnedMosnterBoxNum number
---@field DamageAmount number
---@field ShootWeaponDamageAmount number
---@field HealAmount number
---@field AssistNum number
---@field HitDownOther number
---@field HeadShotNum number
---@field surviveTime number
---@field ObserverTime number
---@field RevivalNum number
---@field BeRevivedNum number
---@field rescueTimes number
---@field DestroyVehicles number
---@field KillFlow ULuaArrayHelper<string>
---@field deduplicate_kill number
---@field OutsideBlueCircleTime number
---@field VehicleDriveDisDataArray ULuaArrayHelper<FVehicleDriveDisData>
---@field FirstOpenedAirDropBoxNum number
---@field FirstOpenedMonsterTombBoxNum number
---@field FirstOpenedSuperWeaponBoxNum number
---@field HitEnemyHeadAmount number
---@field TotalBeenDamageAmount number
---@field bIsGameTerminator boolean
---@field GamePlayingTime number @symigao: 本局游戏时长 *
---@field TouchDownAreaID number
---@field TouchDownLocTypeID number
---@field TouchDownObjectName string
---@field AreaTriggerRecordList ULuaArrayHelper<FAreaTriggerRecord>
---@field KillerWeaponId number
---@field KillerDistance number
---@field PVETeammateData ULuaArrayHelper<FPVETeammateData>
---@field peak_kill_score_list ULuaArrayHelper<number>
---@field ChangedNameByDS boolean
---@field TeamPlayerIndex number
---@field WeaponDamageKillDataList ULuaArrayHelper<FWeaponDamageKillData>
---@field GrenadeDamageKillDataList ULuaArrayHelper<FWeaponDamageKillData>
FGameModeTeammateBattleResultData = {}


---@class FEquipmentData
---@field HelmetID number
---@field ArmorID number
---@field BackPackID number
---@field MainWeapon1ID number
---@field MainWeapon1AttachmentsID ULuaArrayHelper<number>
---@field MainWeapon2ID number
---@field MainWeapon2AttachmentsID ULuaArrayHelper<number>
---@field ViceWeaponID number
---@field ViceWeaponAttachmentsID ULuaArrayHelper<number>
---@field CloseWeaponID number
---@field ThrowWeaponsID ULuaArrayHelper<number>
---@field IsLuckyClothing number
---@field MainWeapon1InstanceId number
---@field MainWeapon2InstanceId number
FEquipmentData = {}


---@class FMonsterTreasureBoxData
---@field BoxStartTime number
---@field BoxLocation FVector
---@field BoxStartPlayer number
FMonsterTreasureBoxData = {}


---@class FBuildMaterialData
---@field MatID number
---@field MatCount number
FBuildMaterialData = {}


---@class FActivityEventReportData
---@field EventID number
---@field Count number
---@field Location FVector
---@field ActivityAddiList ULuaArrayHelper<number>
---@field ActivityAddiString string
FActivityEventReportData = {}


---@class FHitDownPlayerTypeInfoData
---@field PlayerName string
---@field PlayerUID string
---@field DamageType number
FHitDownPlayerTypeInfoData = {}


---@class FEmoteAnimIData
---@field EmoteID number
---@field EmoteAnimTimes number
FEmoteAnimIData = {}


---@class FPeakCompetitionPlayerRecord
---@field StageKillRecordList ULuaArrayHelper<number>
FPeakCompetitionPlayerRecord = {}


---@class FKillerPlayerTypeInfoData
---@field PlayerUID number
---@field PlayerName string
FKillerPlayerTypeInfoData = {}


---@class FPeakCompetitionSoloPlayerName
---@field PlayerName string
---@field PlayerKey number
---@field PeakSoloPlayerName string
FPeakCompetitionSoloPlayerName = {}


---@class FPetDataInfo
---@field ActionTime number
---@field bJumpWith number
---@field WatchTime number
---@field WatchPlayTime number
FPetDataInfo = {}


---@class FGameModePlayerBattleResultData
---@field Reason string
---@field RemainingPlayerCount number
---@field TotalPlayerCount number
---@field RemainingTeamCount number
---@field TotalTeamCount number
---@field ResumeGamePlayerCount number
---@field WaitRevivalPlayerCount number
---@field CurAlivePlayerNum number
---@field IsSolo boolean
---@field IsSafeExit boolean
---@field Killer number @filled with **PlayerKey** in gameplay code then converted to **UID** in DSHUD
---@field KillerName string
---@field HitDownPlayersInfoData ULuaArrayHelper<FHitDownPlayerTypeInfoData>
---@field ShootWeaponShotNum number
---@field ShootWeaponShotAndHitPlayerNum number
---@field HealTimes number
---@field KillFlow ULuaArrayHelper<string>
---@field KillsInCircle ULuaArrayHelper<number>
---@field DamageAmountExceptAI number
---@field TLog_PickUpItemFlowData ULuaArrayHelper<FTLog_PickUpItemFlow>
---@field PickupMonsterTombBoxNum number
---@field FireworksRedpackData ULuaMapHelper<string, FRedpackData>
---@field GiftSentData ULuaArrayHelper<FGiftSentData>
---@field GiftReceivedData ULuaArrayHelper<FGiftReceivedData>
---@field parachute_leader_uid number
---@field UseItemFlow ULuaArrayHelper<FUseItemFlow>
---@field GenItems ULuaMapHelper<number, FBackpackLobbyItem>
---@field destroyVehicleNum number
---@field is_escape number
---@field TeammateList ULuaArrayHelper<FGameModeTeammateBattleResultData> @teammate list, including self
---@field LandLocation FVector
---@field TopFiveTipsUseResponse number
---@field SignalHealAmount number
---@field SignalHealCount number
---@field DeadLocation FVector
---@field SettleLocation FVector
---@field DeadDamangeType string
---@field DeadTimeStr string
---@field LeftAlivePlayersWhenDead number
---@field AliveTeammatesNum number
---@field PetDataInfo FPetDataInfo
---@field logoutime string
---@field Pronetime number
---@field BeInWaterTime number
---@field SwimmingDistance number
---@field BeDownTimes number
---@field KnockDownTimes number @击倒次数
---@field GeneralKnockDownTimes number @击倒次数(包含普通击倒，直接击杀，击杀其他队伍击倒的玩家，不包含击倒自己和自杀)
---@field TerminateTeamKillNum number @灭队击杀次数
---@field BeSavedTimes number @被扶起次数 *
---@field PickUpAirDrops number
---@field EquipmentData FEquipmentData
---@field Rank number
---@field TotalScore number
---@field FollowState number
---@field InviteTimes number
---@field bIsGameTerminator boolean
---@field GamePlayingTime number @symigao: 本局游戏时长 *
---@field TouchDownAreaID number
---@field TouchDownLocTypeID number
---@field TouchDownObjectName string
---@field CompletedTaskList ULuaArrayHelper<FGameModePlayerTaskDataSim>
---@field SpecialCollectionList ULuaArrayHelper<FReportCollection>
---@field WeaponDamageRecordList ULuaArrayHelper<FWeaponDamageRecord>
---@field SecretAreaIDList ULuaArrayHelper<number>
---@field KillNumInVehicle number
---@field TotalSprintDistance number
---@field TotalBeenDamageAmount number
---@field DestroyVehicleWheelNum number
---@field BreakDoorNum number
---@field AreaTriggerRecordList ULuaArrayHelper<FAreaTriggerRecord>
---@field BuildFlow ULuaArrayHelper<number>
---@field DestroyShelterFlow ULuaArrayHelper<number>
---@field HitShelterDamage number
---@field ZombieKilledUsingTraps number
---@field ShelterTakeDamage number
---@field PlayerSetLevel number
---@field PlayerSetExp number
---@field MonsterTreasureBoxOpenFlow ULuaArrayHelper<FMonsterTreasureBoxData>
---@field MonsterTreasureBoxGetNum number
---@field MonsterTreasureBoxDefendNum number
---@field BuildMaterialGetList ULuaArrayHelper<FBuildMaterialData>
---@field BuildMaterialUseList ULuaArrayHelper<FBuildMaterialData>
---@field UseSpecificBulletFlow ULuaArrayHelper<FUseItemFlow>
---@field WeaponCreateStuckAutoRecoverNum number
---@field PVESelfData ULuaArrayHelper<FPVESelfData>
---@field ActivityEventRecordList ULuaArrayHelper<FActivityEventReportData>
---@field DestroyVehicleFlow ULuaArrayHelper<string>
---@field UseHelicoperNum number
---@field UseHelicoperDistance number
---@field UseDragonBoatNum number
---@field CharmRankIndex number
---@field DrivingHelicopterTime number @symigao: 驾驶直升机时间 *
---@field InHelicopterTime number @symigao: 乘坐直升机时间 *
---@field ChangedYearBeastWarmScore number
---@field GlidingDistance number
---@field BreakGlassNum number
---@field ClimbObstacleNum number
---@field EmoteAnimIDataArray ULuaArrayHelper<FEmoteAnimIData>
---@field BattleshipDestroiedNum number
---@field BattleshipShieldBrokenNum number
---@field CampToolNum number
---@field CallWingPlaneTimes number
---@field kill_detail ULuaMapHelper<number, FWeaponSkinKillDetail>
---@field TotalDamageShieldTake number
---@field KilledByMLAI boolean
---@field Promotion number @晋级赛是否成功晋升了 1 是  0 否  2 其他
---@field EnableNewFPPMode boolean
---@field MutualAid ULuaMapHelper<number, number>
---@field WhoRescuedMe ULuaMapHelper<number, number>
---@field IRescuedWhom ULuaMapHelper<number, number>
---@field WhoRevivedMe ULuaMapHelper<number, number>
---@field IRevivedWhom ULuaMapHelper<number, number>
---@field RespawnTimes number
---@field KillerUIDs ULuaArrayHelper<number>
---@field KillersInfo ULuaArrayHelper<FKillerPlayerTypeInfoData>
FGameModePlayerBattleResultData = {}


---@class FGameModePlayerBattleResultData_SuperCold
---@field MakeFiresNum number
---@field DeerBBQNum number
---@field ChichenBBQNum number
---@field UseKFNum number
---@field UseUAVNum number
---@field KFUsingTime number
---@field UAVUsingTime number
---@field SkateboardUsingCount number
---@field SkateboardUsingTime number
---@field SkateboardUsingDistance number
---@field AnimalKillFlow ULuaArrayHelper<FKillAnimalData>
FGameModePlayerBattleResultData_SuperCold = {}


---@class FGameModePlayerBattleResultData_BountyHunter
---@field DragonBreathCastTimes number @玩家单人施放龙息弹的次数
---@field PlayerAchievementList ULuaArrayHelper<number>
---@field BountyGold number
FGameModePlayerBattleResultData_BountyHunter = {}


---@class FGunMaterialData
---@field TypeSpecificID number
---@field GunMaterialNum number
FGunMaterialData = {}


---@class FGameModePlayerBattleResultData_GunMaster
---@field GunMaterialDatas ULuaArrayHelper<FGunMaterialData>
---@field EscapeType number
---@field BountyNum number
FGameModePlayerBattleResultData_GunMaster = {}


---@class FHunterRevivalData
---@field RevivalTime number
---@field RevivalType number
---@field RevivalPosStr string
FHunterRevivalData = {}


---@class FHunterRevivalDataFlow
---@field HunterRevivalDatas ULuaArrayHelper<FHunterRevivalData>
FHunterRevivalDataFlow = {}


---@class FGameModePlayerFlowResultData
---@field TLog_PropEquipUnequipFlowData ULuaArrayHelper<FTLog_PropEquipUnequipFlow>
FGameModePlayerFlowResultData = {}


---@class FGameModeCorpsDetailData
---@field Name string
---@field CorpsHeadIcon number
---@field KilledNum number
---@field SegmentLevel number
---@field RealtimeRank number
---@field DefeatPlayerNum number
---@field TotalDamage number
---@field SurvivalTime number
FGameModeCorpsDetailData = {}


---@class FRevengeEvent
---@field IRevengedWhom ULuaMapHelper<number, number>
FRevengeEvent = {}


---@class FGameModeTeamBattleResultData
---@field Reason string
---@field RemainTeamCount number
---@field RemainAlivePlayerCount number
---@field PlayersLogoutTime ULuaMapHelper<string, string>
---@field RealTimeCorpsRank ULuaArrayHelper<FGameModeCorpsDetailData>
---@field bIsGameTerminator boolean
---@field RevengeEventList ULuaMapHelper<number, FRevengeEvent>
---@field type_chat_count ULuaMapHelper<number, number>
---@field GenItems ULuaMapHelper<number, FBattleResultGenItemData>
FGameModeTeamBattleResultData = {}


---@class FGameModeMatchGoalAchievedData
---@field RemainAlivePlayerCount number @剩余存活玩家数 *
---@field GamePlayingTime number @本局游戏时长 *
FGameModeMatchGoalAchievedData = {}


---@class FWatchFlow
---@field uid number
---@field sec number
FWatchFlow = {}


---@class FGameWatchReport
---@field player_uid number
---@field total_time number
---@field watch_flow ULuaArrayHelper<FWatchFlow>
FGameWatchReport = {}


---@class FGameModeGameOverData
FGameModeGameOverData = {}


---@class FCircleDataMining
---@field WhiteCircleCenter FVector
---@field bDestinyCircle boolean
---@field LeftPlayerNum number
FCircleDataMining = {}


---@class FGameDataMining
---@field BattleId string
---@field PlaneStartPoint FVector
---@field PlaneEndPoint FVector
---@field CircleDataMining ULuaArrayHelper<FCircleDataMining>
---@field GamePlayingTime number
---@field WatchReport ULuaArrayHelper<FGameWatchReport>
---@field TotalGeneratedPickup number
---@field TagsDistance string
FGameDataMining = {}


---@class FBattleCustomConfig
---@field Config string
---@field Value number
FBattleCustomConfig = {}


---@class FRoomCustomParams
---@field CircleSpeedMultiplicator number
---@field bAutoOpendoor boolean
---@field bAutoPickup boolean
---@field bAudioVisual boolean
---@field bAutoAimAt boolean
---@field bGunRemoveBullet boolean
---@field bAirAttackAllowed boolean
---@field bRoomEnableDamagePlan1 boolean
---@field bLimitedCloth boolean
---@field bFixedSignalGun boolean
---@field AirdropCfgParam number
---@field BattleVoice boolean
---@field bRoomEnablePause boolean
---@field EconomyMultiNum number
---@field bEnableAirRouteShield boolean
---@field bVagueInfoOfPlayerName boolean
---@field MaxEvacuateTime number
---@field DeathEquipFallNum number
FRoomCustomParams = {}


---@class FDynamicBlockTransform
---@field LocX number
---@field LocY number
---@field LocZ number
---@field RotX number
---@field RotY number
---@field RotZ number
FDynamicBlockTransform = {}


---@class FIDIPDynamicBlock
---@field bUnload boolean
---@field Transforms ULuaArrayHelper<FDynamicBlockTransform>
---@field DynamicBlockClassPath string
FIDIPDynamicBlock = {}


---@class FAdvertisementActorConfig
---@field Id number
---@field ResPath string
---@field HttpImgPath string
---@field Loc FVector
---@field Rot FRotator
---@field Scale FVector
---@field HideWhenFighting boolean
---@field bAdvertisementOnlyVisibleToObserver boolean
FAdvertisementActorConfig = {}


---@class FDynamicTriggerTransform
---@field Loc FVector
---@field Rot FRotator
FDynamicTriggerTransform = {}


---@class FDynamicTriggerConfig
---@field Transforms ULuaArrayHelper<FDynamicTriggerTransform>
---@field TriggerClassPath string
FDynamicTriggerConfig = {}


---@class FIDIP_LevelDirectorTriggerParam
---@field Tag string
---@field Params string
FIDIP_LevelDirectorTriggerParam = {}


---@class FIDIP_LevelDirectorTriggerParamPair
---@field ActionIndex number
---@field ParamPairs ULuaArrayHelper<FIDIP_LevelDirectorTriggerParam>
FIDIP_LevelDirectorTriggerParamPair = {}


---@class FIDIP_LevelDirectorTriggerConfig
---@field TriggerName string
---@field bEnable boolean
---@field Params ULuaArrayHelper<FIDIP_LevelDirectorTriggerParamPair>
FIDIP_LevelDirectorTriggerConfig = {}


---@class FIDIP_LevelDirectorOrignalTriggerParam
---@field TriggerIdipName string
---@field ActionSpawnItemCfg string
FIDIP_LevelDirectorOrignalTriggerParam = {}


---@class FIDIP_ItemAttributeValue
---@field AttributeName string
---@field Type number
---@field Value string
FIDIP_ItemAttributeValue = {}


---@class FIDIP_KeyIDItemAttrValue
---@field KeyID number
---@field AttributeName string
---@field Type number
---@field Value string
FIDIP_KeyIDItemAttrValue = {}


---@class FAirDropBoxDataItem
---@field ItemSpesificID number
---@field Count number
FAirDropBoxDataItem = {}


---@class FAirDropBoxData
---@field AirDropBoxID number
---@field DataList ULuaArrayHelper<FAirDropBoxDataItem>
---@field Reason number
---@field CallerPlayerID number
---@field Location FVector
---@field DropTime number
FAirDropBoxData = {}


---@class FAirDropBoxDataFlow
---@field AirDropBoxDataList ULuaArrayHelper<FAirDropBoxData>
---@field BattleId string
FAirDropBoxDataFlow = {}


---@class FDSCorpsInfo
---@field CorpsID number
---@field CorpsName string
---@field Icon number
---@field SegmentLevel number
FDSCorpsInfo = {}


---@class FCharacterOverrideAttrData
---@field AttrName string
---@field AttrValue number
FCharacterOverrideAttrData = {}


---@class FDeathMatchPlayerBattleResultData
---@field UID number
---@field PlayerKey number
---@field PlayerName string
---@field TeamID number
---@field PlayerScore number
---@field Rank number
---@field Kills number
---@field Assists number
---@field Deaths number
---@field OccupyScore number
---@field MaxContinuouKills number
---@field SuperGodNum number
---@field DamageAmount number
---@field HeadShotNum number
---@field ShootWeaponShotNum number
---@field ShootWeaponShotAndHitPlayerNum number
---@field GunKillingTimes number
---@field MeleeKillTimes number
---@field RangedDamagedAmount number
---@field MeleeDamageAmount number
---@field MovingDistance number
---@field HealAmount number
---@field CureCount number
---@field KillFlow ULuaArrayHelper<string>
---@field EquipmentData FEquipmentData
---@field TeamMemberList ULuaArrayHelper<number>
---@field MedalList ULuaMapHelper<number, number>
---@field KeepWeaponDataList ULuaArrayHelper<string>
---@field SlidingTackleNum number
---@field DeadDamangeType number
---@field CompletedTaskList ULuaArrayHelper<FGameModePlayerTaskDataSim>
---@field ScoreSource ULuaMapHelper<number, number>
---@field AiModelType number @模型AI的类型标识
---@field ModelFireCount number @单局成功开火次数
---@field ModelHitCount number @单局成功击中次数
---@field ModelDamageReceived number @单局承受伤害总量
---@field ModelJumpCount number @单局成功跳跃次数
---@field ModelCrouchCount number @单局成功下蹲次数
---@field ModelProneCount number @单局成功趴下次数
---@field ModelShovelCount number @单局成功滑铲次数
---@field ModelPitchCount number @单局成功探头次数
---@field ModelStopCount number @单局静止不动次数
---@field ModelHeadShotCount number @单局爆头次数
---@field ModelMoveDistance number @单局移动距离
---@field ModelSprintTime number @单局疾跑时间
---@field ModelRegenLifeCount number @单局成功触发回血次数
---@field ModelAiLevel number @模型ai等级
---@field WeaponIDList ULuaArrayHelper<number>
---@field WeaponUseTimeList ULuaArrayHelper<number>
---@field WeaponReloadTimeList ULuaArrayHelper<number>
---@field StealKillAI number @单局抢AI人头次数
---@field StealKillPlayer number @单局抢玩家人头次数
---@field MobileKills number @击杀移动端设备击杀数
---@field NonMobileKills number @击杀非移动端设备击杀数
---@field MobileDeaths number @被移动端设备击杀的死亡数
---@field NonMobileDeaths number @被非移动端设备击杀的死亡数
---@field KnockDownTimes number @击倒次数
---@field GeneralKnockDownTimes number @击倒次数(包含普通击倒，直接击杀，击杀其他队伍击倒的玩家，不包含击倒自己和自杀)
FDeathMatchPlayerBattleResultData = {}


---@class FTestDeathMatchPlayerBattleResultData
---@field UID number
---@field PlayerKey number
---@field PlayerName string
---@field TeamID number
---@field PlayerScore number
---@field Rank number
---@field Kills number
---@field Assists number
---@field Deaths number
FTestDeathMatchPlayerBattleResultData = {}


---@class FTestDeathMatchTeamBattleResultData
---@field TeamID number
---@field Result string
---@field TeamRank number
---@field TeamScore number
---@field PlayerLists ULuaArrayHelper<FTestDeathMatchPlayerBattleResultData>
FTestDeathMatchTeamBattleResultData = {}


---@class FTestDeathMatchBattleResultData
---@field TeamLists ULuaArrayHelper<FTestDeathMatchTeamBattleResultData>
FTestDeathMatchBattleResultData = {}


---@class FDeathMatchTeamBattleResultData
---@field TeamID number
---@field Result string
---@field TeamRank number
---@field TeamScore number
---@field TeamPlayerResultDatas ULuaArrayHelper<FDeathMatchPlayerBattleResultData>
FDeathMatchTeamBattleResultData = {}


---@class FDeathMatchBattleResultData
---@field SubModeType EDeathMatchSubModeType
---@field TeamResultDatas ULuaArrayHelper<FDeathMatchTeamBattleResultData>
---@field PlayerNumber number
---@field RealPlayerNumber number
---@field PlayTime number
FDeathMatchBattleResultData = {}


---单个模型的击杀数据
---@class FAiModelKillInfo
---@field UID number
---@field KillTime number
---@field IsAi boolean
---@field ModelAiType number
---@field bIsFatal boolean @是否为击杀 为True时为击杀 为False时为击倒
---@field KillConsumeTime number
---@field DamageToKiller number
FAiModelKillInfo = {}


---@class FModelAiWeaponInfo
---@field ShootRange1 number @距离（近距离0-50）
---@field ShootNum1 number @射击数
---@field HitBodyNum1 number @命中body数
---@field HitHeadNum1 number @命中head数
---@field HitOtherNum1 number @命中其他
---@field ShootRange2 number @距离（中距离51-150）
---@field ShootNum2 number @射击数
---@field HitBodyNum2 number @命中body数
---@field HitHeadNum2 number @命中head数
---@field HitOtherNum2 number @命中其他
---@field ShootRange3 number @距离（中远距离151-240）
---@field ShootNum3 number @射击数
---@field HitBodyNum3 number @命中body数
---@field HitHeadNum3 number @命中head数
---@field HitOtherNum3 number @命中其他
---@field ShootRange4 number @距离（远距离241-320）
---@field ShootNum4 number @射击数
---@field HitBodyNum4 number @命中body数
---@field HitHeadNum4 number @命中head数
---@field HitOtherNum4 number @命中其他
---@field ShootRange5 number @距离（超短距离0-20）
---@field ShootNum5 number @射击数
---@field HitBodyNum5 number @命中body数
---@field HitHeadNum5 number @命中head数
---@field HitOtherNum5 number @命中其他
---@field OneShootNum1 number @单点模式射击数
---@field OneHitBodyNum1 number @单点模式命中body数
---@field OneHitHeadNum1 number @单点模式命中head数
---@field OneHitOtherNum1 number @单点模式命中其他
---@field OneShootNum2 number @单点模式射击数
---@field OneHitBodyNum2 number @单点模式命中body数
---@field OneHitHeadNum2 number @单点模式命中head数
---@field OneHitOtherNum2 number @单点模式命中其他
---@field OneShootNum3 number @单点模式射击数
---@field OneHitBodyNum3 number @单点模式命中body数
---@field OneHitHeadNum3 number @单点模式命中head数
---@field OneHitOtherNum3 number @单点模式命中其他
---@field OneShootNum4 number @单点模式射击数
---@field OneHitBodyNum4 number @单点模式命中body数
---@field OneHitHeadNum4 number @单点模式命中head数
---@field OneHitOtherNum4 number @单点模式命中其他
---@field OneShootNum5 number @单点模式射击数
---@field OneHitBodyNum5 number @单点模式命中body数
---@field OneHitHeadNum5 number @单点模式命中head数
---@field OneHitOtherNum5 number @单点模式命中其他
---@field AutoShootNum1 number @全自动模式射击数
---@field AutoHitBodyNum1 number @全自动模式命中body数
---@field AutoHitHeadNum1 number @全自动模式命中head数
---@field AutoHitOtherNum1 number @全自动模式命中其他
---@field AutoShootNum2 number @全自动模式射击数
---@field AutoHitBodyNum2 number @全自动模式命中body数
---@field AutoHitHeadNum2 number @全自动模式命中head数
---@field AutoHitOtherNum2 number @全自动模式命中其他
---@field AutoShootNum3 number @全自动模式射击数
---@field AutoHitBodyNum3 number @全自动模式命中body数
---@field AutoHitHeadNum3 number @全自动模式命中head数
---@field AutoHitOtherNum3 number @全自动模式命中其他
---@field AutoShootNum4 number @全自动模式射击数
---@field AutoHitBodyNum4 number @全自动模式命中body数
---@field AutoHitHeadNum4 number @全自动模式命中head数
---@field AutoHitOtherNum4 number @全自动模式命中其他
---@field AutoShootNum5 number @全自动模式射击数
---@field AutoHitBodyNum5 number @全自动模式命中body数
---@field AutoHitHeadNum5 number @全自动模式命中head数
---@field AutoHitOtherNum5 number @全自动模式命中其他
---@field HitHumanNum1 number
---@field HitNormalAiNum1 number
---@field HitModelAiNum1 number
---@field HitHumanNum2 number
---@field HitNormalAiNum2 number
---@field HitModelAiNum2 number
---@field HitHumanNum3 number
---@field HitNormalAiNum3 number
---@field HitModelAiNum3 number
---@field HitHumanNum4 number
---@field HitNormalAiNum4 number
---@field HitModelAiNum4 number
---@field HitHumanNum5 number
---@field HitNormalAiNum5 number
---@field HitModelAiNum5 number
---@field HitOneShootHumanNum1 number
---@field HitOneShootNormalAiNum1 number
---@field HitOneShootModelAiNum1 number
---@field HitOneShootHumanNum2 number
---@field HitOneShootNormalAiNum2 number
---@field HitOneShootModelAiNum2 number
---@field HitOneShootHumanNum3 number
---@field HitOneShootNormalAiNum3 number
---@field HitOneShootModelAiNum3 number
---@field HitOneShootHumanNum4 number
---@field HitOneShootNormalAiNum4 number
---@field HitOneShootModelAiNum4 number
---@field HitOneShootHumanNum5 number
---@field HitOneShootNormalAiNum5 number
---@field HitOneShootModelAiNum5 number
---@field HitAutoHumanNum1 number
---@field HitAutoNormalAiNum1 number
---@field HitAutoModelAiNum1 number
---@field HitAutoHumanNum2 number
---@field HitAutoNormalAiNum2 number
---@field HitAutoModelAiNum2 number
---@field HitAutoHumanNum3 number
---@field HitAutoNormalAiNum3 number
---@field HitAutoModelAiNum3 number
---@field HitAutoHumanNum4 number
---@field HitAutoNormalAiNum4 number
---@field HitAutoModelAiNum4 number
---@field HitAutoHumanNum5 number
---@field HitAutoNormalAiNum5 number
---@field HitAutoModelAiNum5 number
FModelAiWeaponInfo = {}


---@class FAiModelContact
---@field ShooterUID number @射击者
---@field VictimUID number @被射击者
---@field AiTypeFlag number @旗标 当前数据，射击者与被射击者必然有一个是AI 前八位为			GetModelLogicType 射击者是AI		_flag_ai_type_is_shooter = 0x0100; AI是超级小队AI	_flag_ai_type_is_superteam = 0x0200;
FAiModelContact = {}


---单个模型的数据
---@class FAiModelBattlePlayer
---@field PlayerKey number
---@field PlayerUID number
---@field TeamID number
---@field ModelAiType number @模型AI的类型
---@field SaAiType number @新增类型 --story=881613951 【CG022】超参数AI靶向投放——ds（流水统计） https://tapd.woa.com/r/t?id=881613951&type=story
---@field KilledType number @被击杀的方式
---@field Assists number @助攻数量
---@field TotalCircleTime number @吃毒时间
---@field RoundTime number @对局时长
---@field CircleDamageAmount number @吃毒总量
---@field bIsKilledByCircle number @单局是否吃毒死亡
---@field KilledInfo ULuaArrayHelper<FAiModelKillInfo> @被击杀信息
---@field KillerInfo ULuaArrayHelper<FAiModelKillInfo> @击杀他人信息
---@field TeamRank number @队伍排名
---@field PlayerRank number @玩家排名
---@field Kills number @淘汰数
---@field HeadShotNum number
---@field DamageAmount number
---@field ModelAssignUID number @ai被投放算法分配给谁(能用于分配的ai则记录，否则置空)
---@field ModelAssignTime number @ai分配时间(能用于分配的ai则记录，否则置空)
---@field ModelControlTime number @超参数ai托管时间（专门看战斗切机器学习AI）
---@field AiType number @AI的难度
---@field EquipValue number @装备估值
---@field EquipWeaponValue number @最终枪械总价值
---@field EquipArmorValue number @最终头甲总价值
---@field ItemList ULuaMapHelper<string, number> @物品列表
---@field WeaponShootInfo ULuaMapHelper<number, FModelAiWeaponInfo> @武器射击信息
---@field DamageTypes ULuaMapHelper<string, number> @伤害类型的统计
FAiModelBattlePlayer = {}


---海岛单局结束AI数据流水，临时表
---@class FAiModelPlayerTrainData
---@field PlayerKey number
---@field PlayerUID number
---@field BunkerBattleCnt number @单局利用掩体作战次数
---@field BunkerBattleSucCnt number @单局利用掩体作战成功次数
---@field BunkerBattleKillCnt number @单局利用掩体作战击杀数
---@field BunkerBattleDamageAmout number @单局利用掩体作战伤害量
---@field AssistBattleAmout number @单局团队作战时间
---@field AssistBattleSucCnt number @单局团队作战成功次数
---@field AssistBattleKillCnt number @单局团队作战击杀数
---@field AssistBattleDamageAmout number @单局团队作战伤害量
---@field RescueCnt number @单局救援总次数
---@field RescueSucCnt number @单局成功救援次数
---@field ShootNear number @单局短距离刚枪次数
---@field ShootNearSuc number @单局短距离刚枪成功次数
---@field ShootNearKilled number @单局短距离刚枪击杀数
---@field ShootNearDamage number @单局短距离刚枪伤害量
---@field ShootFar number @单局长距离刚枪次数
---@field ShootFarSuc number @单局长距离刚枪成功次数
---@field ShootFarKilled number @单局长距离刚枪击杀数
---@field ShootFarDamage number @单局长距离刚枪伤害量
---@field SoundSearchCnt number @单局有声音索敌次数
---@field SoundSearchSuc number @单局有声音索敌成功次数
---@field SoundSearchKilled number @单局有声音索敌击杀数
---@field SoundSearchDamage number @单局有声音索敌伤害量
---@field HealedCnt number @单局治疗值（补血）
---@field HealedAmount number @单局治疗量（补血）
---@field HealSignalCnt number @单局治疗值（补信号值）
---@field HealSignalAmount number @单局治疗量（补信号值）
---@field MovedDistance number @单场移动距离
---@field AirDropCnt number @单局空投拾取次数
FAiModelPlayerTrainData = {}


---模型AI的结算数据
---@class FAiModelBattleResult
---@field ContactDatas ULuaArrayHelper<FAiModelContact>
FAiModelBattleResult = {}


---@class FAiModelBattleResultSinglePlayer
---@field bHasTrainData boolean @玩家标识
---@field PlayerData FAiModelBattlePlayer
---@field PlayerTrainData FAiModelPlayerTrainData
FAiModelBattleResultSinglePlayer = {}


---@class FHardPointPlayerBattleResultData
---@field UID number
---@field OccupyScore number
---@field OccupyTime number
---@field OccupyNum number
---@field DamageToTheInHardPointEnemy number
---@field PickUpWeaponBoxNum number
---@field PickUpItemFlowData ULuaArrayHelper<FTLog_PickUpItemFlow>
FHardPointPlayerBattleResultData = {}


---@class FHardPointTeamBattleResultData
---@field TeamID number
---@field TeamPlayerResultDatas ULuaArrayHelper<FHardPointPlayerBattleResultData>
FHardPointTeamBattleResultData = {}


---@class FHardPointActorTeamScoreResultData
---@field TeamID number
---@field Score number
FHardPointActorTeamScoreResultData = {}


---@class FTLog_HardPointActorFlow
---@field HardPointID number
---@field ActivatedTime number
---@field OccupiedTeamSequenceRecords ULuaArrayHelper<number>
---@field TeamScoreDataList ULuaArrayHelper<FHardPointActorTeamScoreResultData>
FTLog_HardPointActorFlow = {}


---@class FHardPointBattleResultData
---@field HardPointEnterContendingStateMaxTime number
---@field TotalPoint number
---@field HardPointActorFlowList ULuaArrayHelper<FTLog_HardPointActorFlow>
---@field TeamResultDatas ULuaArrayHelper<FHardPointTeamBattleResultData>
FHardPointBattleResultData = {}


---@class FCakeInfo
---@field CakeActorPath string
---@field CakeButtonImage string
FCakeInfo = {}


---@class FDynamicBattleRankInfo
---@field BattleRank number
---@field PlayerUID number
---@field RevivalTimes number
---@field KillerUIDs ULuaArrayHelper<number>
---@field DeadTimes number
FDynamicBattleRankInfo = {}


---@class FPlayerSimpleInfo
---@field PlayerKey number
---@field PlayerName string
---@field CharmValue number
FPlayerSimpleInfo = {}


---@class FPlayerDetailInfo
---@field PlayerKey number
---@field PlayerName string
---@field CharmLevel number
---@field CharmValue number
---@field Gender number
---@field Sex number
---@field SeasonId number
---@field AllowViewCharmValue boolean
---@field AvatarItemList ULuaArrayHelper<number>
---@field IsDataChanged boolean
---@field bVisible boolean
---@field WingManID number
---@field bIsWingManPlayerSlot boolean
---@field WingManName string
---@field PlayerUID string
---@field GalaxyFaceInfoIndex string
FPlayerDetailInfo = {}


---@class FTeamAssembleAvatarDisplayInfo
---@field PlayerName string
---@field PlayerGender number
---@field SeasonPassCardBuyType number
---@field SeasonPassCardBuyLevel number
---@field NeedShowEnjoyCard boolean
---@field PlatformGender number
---@field TopSegmentTimes number
---@field CharmLevel number
---@field AllowViewCharmValue boolean
---@field WearAvatarList ULuaArrayHelper<number>
---@field WeaponAvatarList ULuaArrayHelper<number>
---@field VehicleAvatarList ULuaArrayHelper<number>
---@field TeamLogoID string
---@field PlaneID number
---@field PlaneName string
---@field VehicleName string
---@field bDisplayWingMan boolean
---@field bIsTopCharmPlayer boolean
---@field PlayerUID string
---@field IslandDispSetting string
---@field bConvertibleCarOpen boolean
---@field TeamAssembleAdditionalParams ULuaArrayHelper<FUAEBlackboardParameter>
---@field GalaxyFaceInfoIndex string
---@field bShowTeamAssemble boolean
---@field BackpackDisplayCondition number
---@field ArmorDisplayCondition number
---@field HelmetDisplayCondition number
---@field BackPackSkinID number
---@field HelmetSkinID number
---@field ArmorSkinID number
---@field Level number
---@field CollectScoreLevel number
---@field CharmValue number
---@field PetID number @小队集结显示用宠物ID
---@field AllowOtherViewCharmValue boolean
FTeamAssembleAvatarDisplayInfo = {}


---@class FTreasureBeastInfo
---@field TotalBeastNum number
---@field TotalBeKilledBeastNum number
---@field TotalBeKilledConsumablesBeastNum number
---@field TotalBeKilledWeaponBeastNum number
---@field TotalBeKilledEquipmentBeastNum number
FTreasureBeastInfo = {}


---@class FConcertActivityData
---@field star_list ULuaArrayHelper<number>
---@field is_escape number
---@field SpecialCollectionList ULuaArrayHelper<FReportCollection>
---@field ActivityEventRecordList ULuaArrayHelper<FActivityEventReportData>
FConcertActivityData = {}


---@class FEmotionalMemoryData
---@field MemoryData ULuaMapHelper<number, FMemoryDataArray>
FEmotionalMemoryData = {}


---@class FRequestResponseCanShowKillThanksUIContext
---@field bCanShow boolean
---@field CanShowKillThanksUIOperation ECanShowKillThanksUIOperation
---@field UID string
---@field IconURL string
---@field Gender number
---@field PlatformGender number
---@field SegmentLevel number
---@field PlayerLevel number
FRequestResponseCanShowKillThanksUIContext = {}


---@class FRequestResponseKillThanksContext
---@field Result number
---@field UID string
FRequestResponseKillThanksContext = {}


---@class FTrainingStatisticsItem
---@field ItemName string
---@field ItemValue number
FTrainingStatisticsItem = {}


---@class FTrainingStatisticsItem_Int32
---@field ItemName string
---@field ItemValue number
FTrainingStatisticsItem_Int32 = {}


---@class FTrainingStatisticsItem_Int64
---@field ItemName string
---@field ItemValue number
FTrainingStatisticsItem_Int64 = {}


---@class FTrainingStatisticsData
---@field ItemList ULuaArrayHelper<FTrainingStatisticsItem>
---@field Int32ItemList ULuaArrayHelper<FTrainingStatisticsItem_Int32>
---@field Int64ItemList ULuaArrayHelper<FTrainingStatisticsItem_Int64>
FTrainingStatisticsData = {}


---@class FTypeStruct
---@field Type1 EType
---@field Type2 EType
FTypeStruct = {}


---@class FTlogDataStruct
---@field Value1 ULuaArrayHelper<string>
---@field Value2 ULuaArrayHelper<string>
---@field Position FVector
FTlogDataStruct = {}


---@class FStreamDataStruct
---@field Tlog ULuaArrayHelper<FTlogDataStruct>
FStreamDataStruct = {}


---@class FDataStorageStruct
---@field Data ULuaMapHelper<number, FStreamDataStruct>
FDataStorageStruct = {}


---@class FPlayerStateBaseInfo
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field PlayerKey number
FPlayerStateBaseInfo = {}


---@class FAsianGamesPlayerSegmentFireTlog
---@field FireCount number
---@field ReloadNum number
FAsianGamesPlayerSegmentFireTlog = {}


---@class FAsianGamesPlayerSegmentTlog
---@field PlayerMoveTime number
---@field PlayerMoveDistance number
---@field LowSpeedTime number
---@field MidSpeedTime number
---@field HighSpeedTime number
---@field LowSpeedDistance number
---@field MidSpeedDistance number
---@field HighSpeedDistance number
---@field AccelerateTime number
---@field AccelerateBuffTime number
---@field VehicleMaxSpeed number
---@field VehicleCrashNum number
---@field SegmentStartTime number
---@field SegmentEndTime number
---@field LostTargetNum ULuaMapHelper<number, number>
---@field RobTargetNum ULuaMapHelper<number, number>
---@field AssistTargetNum ULuaMapHelper<number, number>
---@field WeaponTlogData ULuaMapHelper<number, FAsianGamesPlayerSegmentFireTlog>
FAsianGamesPlayerSegmentTlog = {}


---@class FSuperPeopleCareerModule
---@field CareerEquipment ULuaArrayHelper<number>
FSuperPeopleCareerModule = {}


---@class FMultiHomeConfig
---@field MaxHomeInstanceNum number
---@field MultiHomeType number
FMultiHomeConfig = {}


---@class FPlaneRZoneData
---@field bHasPlaneRZone boolean
---@field RestrictedZoneLoc FVector2D
---@field RestrictedZoneRadius number
FPlaneRZoneData = {}


---@class FStringArray
---@field StringArray ULuaArrayHelper<string>
FStringArray = {}


---@class FRepPropStatisticalData
---@field ClassName string
---@field PropertyName string
---@field ChangedCount number
---@field ComparedCount number
FRepPropStatisticalData = {}


---@class FCreateAirplaneParam
---@field PlaneClass APawn @飞机类
---@field PlaneBT UBehaviorTree @飞机行为树
---@field MapCenter FVector @上述所有圈的圆心
---@field PlaneSpeed number @飞机速度
---@field PlaneHeight number @飞机高度
---@field CanOpenParachuteHeight number @可以开伞高度
---@field ForceOpenParachuteHeight number @强制开伞高度
---@field CloseParachuteHeight number @收伞高度
---@field PlaneType EPlaneTypeForTlog @飞机类型
---@field AirlineType EAirlineType
---@field CircleModeJumpRadiusPercent number @基于缩圈时的可下飞机圈半径
---@field Radius1 number @飞机起点所在的圈
---@field Radius3 number @飞机终点所在的圈
---@field bPermitJump boolean
---@field Radius2 number @可以下飞机的圈
---@field PermitAreaMaxPoint FVector2D
---@field PermitAreaMinPoint FVector2D
---@field SpecificRad number
---@field bUseParachuteFollow boolean
---@field bParachuteFollowNeedJumpPermission boolean
---@field ParachuteFollowPercent number
---@field bEnterExistPlane boolean
---@field bForceGeneratePlane boolean
FCreateAirplaneParam = {}


---BigWorld start
---@class FBigWorldSubWorldInfo
---@field SubWorldId string
---@field MountId string
---@field JobId number
---@field MountedPaks ULuaArrayHelper<string>
FBigWorldSubWorldInfo = {}


---@class FDSBigWorldBaseInfo
---@field ItemList ULuaArrayHelper<FBackpackItemParams>
---@field UGCVirtualItemList ULuaArrayHelper<FBackpackItemParams>
---@field ItemAdditionPropertiesList ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
---@field TaskList ULuaArrayHelper<FBigWorldTaskBaseParams>
---@field NeedRefreshDaily boolean
---@field NeedRefreshWeekly boolean
---@field BigworldTitle number
FDSBigWorldBaseInfo = {}


---@class FAirlineParamInfo
---@field AirlineFlightNo number
---@field AirplaneStartLoc FVector
---@field AirplaneStopLoc FVector
---@field AirplaneCanJumpLoc FVector2D
---@field AirplaneForceJumpLoc FVector2D
---@field PlayerNumOnPlane number
FAirlineParamInfo = {}


---@class FIDIPStateInfo
---@field ActivityActorID number
---@field BeginTime number
---@field EndTime number
---@field Params string
FIDIPStateInfo = {}


---@class FPlayerNumTagPair
---@field Tag string
---@field PlayerNum number
FPlayerNumTagPair = {}


---@class FVehicleSkinDistData
---@field VehicleType number
---@field Distance number
FVehicleSkinDistData = {}


---@class FResponseCanShowKillThanksUIDelegate : ULuaMulticastDelegate
FResponseCanShowKillThanksUIDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Sender: AUAEPlayerState, Context: FRequestResponseCanShowKillThanksUIContext) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FResponseCanShowKillThanksUIDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Sender AUAEPlayerState
---@param Context FRequestResponseCanShowKillThanksUIContext
function FResponseCanShowKillThanksUIDelegate:Broadcast(Sender, Context) end


---@class FResponseKillThanksDelegate : ULuaMulticastDelegate
FResponseKillThanksDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Sender: AUAEPlayerState, Context: FRequestResponseKillThanksContext) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FResponseKillThanksDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Sender AUAEPlayerState
---@param Context FRequestResponseKillThanksContext
function FResponseKillThanksDelegate:Broadcast(Sender, Context) end


---@class UGameModeStatisticsComponent: UActorComponent
local UGameModeStatisticsComponent = {}
