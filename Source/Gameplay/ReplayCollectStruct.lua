---@meta

---@class EReplayCollectType
---@field Default number
---@field ReportSkillInfo number
---@field ReportHealthChangeInfo number
---@field ReportSuperPeopleChips number
---@field ReportUploadScreenMoveRecord number
---@field ReportViewPortBaseInfo number
---@field ReportInOutHouseFlow number
---@field ReportAttackFlow number
---@field ExcellentOpFlow number
---@field RevivallFlow number
---@field ReportMaxKiller number
---@field ReportCircleInfo number
---@field ReportPlayerInfo number
---@field ReportAirLineInfo number
---@field ReportAirLineAttachInfo number
---@field ReportThrowInfo number
---@field ReportEquipInfo number
---@field ReportBeatInfo number
---@field ReportAirDropInfo number
---@field ReportAirDropOpen number
---@field ReportParachuteInfo number
---@field ReportVehicle number
---@field ReportVehicleSkinChange number
---@field ReportPickItem number
---@field ReportGunAttachmentFlow number
---@field ReportUseItem number
---@field ReportHealFlow number
---@field ReportKillFlow number
---@field ReportAssistFlow number
---@field ReportWXCommonEvent number
---@field ReportWeaponShootFlow number
---@field ReportDanceFlow number
---@field ReportBRGameEndWinner number
---@field ReportSuperPeopleUpgrade number
---@field ReportSuperPeopleSkillCast number
---@field ReportSuperPeopleSkillCD number
---@field ReportSuperPeopleSkillDamage number
---@field ReportSuperPeopleStationInfo number
---@field ReportScanCompassState number
---@field ReportVechicleType number
---@field ReportVechicleSkinID number
---@field ReportCarryFlow number
---@field ReportWXSurpriseGiftInfo number
---@field ReportGunReloadInfo number
---@field ReportBulletHitInfo number
---@field ReportCGCommonReplayMsg number
---@field ReportAirFlow number
---@field ReportShootHitPlayerFlow number
---@field ReportShootHitVehicleFlow number
---@field FReplayParser_DoubleVaultFlow number
---@field ReportOccupyPointInfo number
---@field ReportServerUpdateCamera number
---@field ReportCameraChangeReasonData number
---@field ReportSetInfoAndBtnInfo number
---@field ReportEscapePlayerBattleResult number
---@field ReportBasePlayerInfo number
---@field ReportEscapePlayerIncome number
---@field ReportAIEventFlow number
---@field ReportItemInfo number
---@field ReportSimulateCircleInfo number
---@field ReportDeadBox number
---@field ReportLTPlayerIncome number
---@field ReportLTPlayerSeasonIncome number
---@field ReportLTAIBattleResult number
---@field ReportPCKeyInput number
---@field Max number
EReplayCollectType = {}


---@class FReplayCollectDSSwitcher
---@field ID number
---@field Enable number
FReplayCollectDSSwitcher = {}


---@class FReplayParser_GameBaseInfo
---@field MapId number
---@field GameModeId number
---@field SubModeId number
---@field TeamCount number
---@field StartTime number
FReplayParser_GameBaseInfo = {}


---@class FReplayParser_CircleInfo
---@field Index number
---@field BlueCircle FVector
---@field WhiteCircle FVector
---@field AppearTime number
---@field DelayTime number
---@field LastTime number
FReplayParser_CircleInfo = {}


---@class FReplayParser_SimulateCircleInfo
---@field Index number
---@field BlueCircle FVector
---@field WhiteCircle FVector
---@field AppearTime number
---@field DelayTime number
---@field LastTime number
FReplayParser_SimulateCircleInfo = {}


---@class FReplayParser_InoutHouse
---@field EventTime number
---@field UID number
---@field IsInHouse number
FReplayParser_InoutHouse = {}


---@class FReplayParser_PlayerInfo
---@field UID number
---@field RoundTime number
---@field DeadTimeStr string
---@field KillingCount number
---@field HealTimes number
---@field DamageAmount number
---@field BattleResultReason string
---@field RemainingTeamCount number
---@field RemainingPlayerCount number
---@field TotalPlayerCount number
---@field TotalTeamCount number
---@field is_escape number
---@field IsSafeExit boolean
---@field TotalFireNum number
---@field TotalShootHitNum number
---@field SelectSuperHeroId number
---@field ChipIDs string
---@field AILevel number
---@field AIDifficulty number
---@field AITeamSequence number
FReplayParser_PlayerInfo = {}


---@class FReplayParser_AttackInfo
---@field EventTime number
---@field AttackerUID string
---@field VictimUID string
---@field WeaponID number
---@field Hurt number
---@field Breath number
---@field HitPos number
---@field DamageTag number
---@field AmmoID number
---@field AttackerMonsterID number
---@field VictimMonsterID number
---@field AttackerPos FVector
---@field VictimPos FVector
FReplayParser_AttackInfo = {}


---@class FReplayParser_EquipInfo
---@field EventTime number
---@field UID number
---@field SlotID number
---@field ResID number
FReplayParser_EquipInfo = {}


---@class FReplayParser_AirLineInfo
---@field FlightGUID string
---@field Time number
---@field StartPosition FVector
---@field EndPosition FVector
---@field Type number
---@field Velocity FVector
FReplayParser_AirLineInfo = {}


---@class FReplayParser_AirLineAttachInfo
---@field EventTime number
---@field FlightGUID string
---@field PlayerUIDs string
FReplayParser_AirLineAttachInfo = {}


---@class FReplayParser_ThrowInfo
---@field EventTime number
---@field InstanceID number
---@field OwnerUID number
---@field TypeID number
---@field LifeStart number
---@field BornTime number
---@field ExplodeTime number
---@field LifeEnd number
---@field BornLocation FVector
---@field ExplodeLocation FVector
---@field EndLocation FVector
---@field ThrowDamageStr string
FReplayParser_ThrowInfo = {}


---@class FReplayParser_SkillInfo
---@field EventTime number
---@field UID number
---@field SkillID number
---@field SkillName string
---@field SkillType number
FReplayParser_SkillInfo = {}


---@class FReplayParser_BeatInfo
---@field EventTime number
---@field UID number
---@field TID number
---@field WeaponID number
---@field Src FVector
---@field Dst FVector
---@field Distance number
---@field DamageType number
---@field AttackerMonsterID number
---@field VictimMonsterID number
FReplayParser_BeatInfo = {}


---@class FReplayParser_ParachuteInfo
---@field EventTime number
---@field ParachuteStatus number
---@field Location FVector
---@field UID number
FReplayParser_ParachuteInfo = {}


---@class FReplayParser_Vehicle
---@field EventTime number
---@field UID string
---@field VehicleAttachStatus number
---@field Location FVector
---@field VehicleID number
---@field VehicleName string
---@field VehicleObjID number
---@field Occupiers ULuaArrayHelper<number>
---@field bIsDriver boolean
FReplayParser_Vehicle = {}


---@class FReplayParser_VehicleChangeSkin
---@field EventTime number
---@field UID number
---@field VehicleID number
---@field VehicleObjID number
---@field OldSkinID number
---@field NewSkinID number
---@field VehicleName string
FReplayParser_VehicleChangeSkin = {}


---@class FReplayParser_PickFlow
---@field EventTime number
---@field UID number
---@field PickUpItemID number
---@field PickUpItemCount number
---@field bIsPickUp number
---@field SourceType string
---@field LeftNum number
---@field Modifiers ULuaArrayHelper<number>
---@field ItemProperties number
---@field ItemInstanceID number
FReplayParser_PickFlow = {}


---@class FReplayParser_SuperPeopleChip
---@field EventTime number
---@field UID number
---@field Chip1ID number
---@field Chip2ID number
---@field Chip3ID number
FReplayParser_SuperPeopleChip = {}


---@class FReplayParser_ExcellentOpFlow
---@field EventTime number
---@field PlayerUID string
---@field VictimUID string
---@field WeaponId number
---@field IsHeadShot boolean
FReplayParser_ExcellentOpFlow = {}


---@class FReplayParser_ItemUseFlow
---@field EventTime number
---@field UID number
---@field ResID number
---@field ResNum number
---@field Status string
---@field LeftNum number
FReplayParser_ItemUseFlow = {}


---@class FReplayParser_HealFlow
---@field EventTime number
---@field UID number
---@field TID number
---@field SrcLocation FVector
---@field DstLocation FVector
---@field Step number
FReplayParser_HealFlow = {}


---@class FReplayParser_KillFlow
---@field EventTime number
---@field UID string
---@field TID string
---@field CauserID string
---@field ResID number
---@field DamageType number
---@field bAced boolean
---@field AttackerMonsterID number
---@field VictimMonsterID number
---@field KillerPos FVector
---@field VictimPos FVector
FReplayParser_KillFlow = {}


---@class FReplayParser_AssistInfo
---@field EventTime number
---@field UID string
---@field TID string
---@field VID number
FReplayParser_AssistInfo = {}


---@class FReplayParser_HealthChange
---@field EventTime number
---@field UID string
---@field HealthDelta number
---@field HeathAfterChange number
---@field DamageType number
---@field RecoveryType number
---@field ResID number
---@field CauserUID number
FReplayParser_HealthChange = {}


---@class FReplayParser_AirDrop
---@field AirDropBoxID number
---@field SpawnTime number
---@field GroundTime number
---@field Location FVector
---@field bSuper boolean
---@field DropType number
---@field PickUpItemIDs ULuaArrayHelper<number>
---@field PickUpItemCount ULuaArrayHelper<number>
FReplayParser_AirDrop = {}


---@class FReplayParser_WeaponShootFlow
---@field EventTime number
---@field UID number
---@field ResID number
---@field FireNum number
---@field HitNum number
FReplayParser_WeaponShootFlow = {}


---@class FReplayParser_WXCommonEvent
---@field EventTime number
---@field EventID number
---@field SubID number
---@field ReporterUID number
---@field PlayerUIDs ULuaArrayHelper<number>
---@field EventState number
FReplayParser_WXCommonEvent = {}


---@class FReplayParser_DanceFlow
---@field EventTime number
---@field UID number
---@field EmoteID number
FReplayParser_DanceFlow = {}


---@class FReplayParser_CarryFlow
---@field EventTime number
---@field UID number
---@field CarriedUID number
---@field CarryPos FVector
---@field CarriedPos FVector
---@field CarryState number
FReplayParser_CarryFlow = {}


---@class FReplayParser_StationInfo
---@field EventTime number
---@field Pos FVector
---@field Revivals number
---@field Effect number
FReplayParser_StationInfo = {}


---@class FReplayParser_WXSurpriseGiftInfo
---@field EventTime number
---@field UID number
---@field EventID number
---@field EventState number
---@field SourceItems ULuaArrayHelper<number>
---@field PossibleItems ULuaArrayHelper<number>
---@field ResultItems ULuaArrayHelper<number>
FReplayParser_WXSurpriseGiftInfo = {}


---@class FReplayParser_GunReloadInfo
---@field EventTime number
---@field UID number
---@field State number
---@field CurBulletNumInClip number
---@field CurMaxBulletNumInOneClip number
---@field CurBulletNumInBarrel number
FReplayParser_GunReloadInfo = {}


---@class FReplayParser_ShootHitPlayerFlow
---@field EventTime number
---@field UID number
---@field TID number
---@field DamageRate number
---@field ShotFrequency number
---@field ArmorHPStart number
---@field ArmorHPEnd number
---@field bArmorKill boolean
---@field BulletDamageBuff number
---@field BulletDamageDebuff number
---@field MagazineMax number
---@field MagazineLeft number
---@field SeqID number
---@field FOV number
FReplayParser_ShootHitPlayerFlow = {}


---@class FReplayParser_ShootHitVehicleFlow
---@field EventTime number
---@field UID number
---@field VehicleID number
---@field DamageRate number
---@field ShotFrequency number
---@field bTireOut number
---@field BulletDamageBuff number
---@field BulletDamageDebuff number
---@field bCarKill boolean
---@field MagazineMax number
---@field MagazineLeft number
---@field SeqID number
---@field HitPos FVector
---@field VehicleHPStart number
---@field VehicleHPEnd number
---@field FOV number
---@field WeaponID number
FReplayParser_ShootHitVehicleFlow = {}


---@class FReplayParser_GunAttachmentFlow
---@field EventTime number
---@field UID number
---@field WeaponID number
---@field SeqID number
---@field AttachmentIDs ULuaArrayHelper<number>
FReplayParser_GunAttachmentFlow = {}


---@class FReplayParser_DoubleVaultFlow
---@field EventTime number
---@field ClimerUID number
---@field HelperUID number
---@field ClimerPos FVector
---@field HelperPos FVector
---@field State number
FReplayParser_DoubleVaultFlow = {}


---@class FUIBtnDetail
---@field Type number
---@field AbsolutePos FVector2D
---@field AbsoluteSize FVector2D
FUIBtnDetail = {}


---@class FBasicSettingDetail
---@field SetName string
---@field SetValue FVector2D
FBasicSettingDetail = {}


---@class FBasePlayerInfoForReplay
---@field UID number
---@field PlayerName string
---@field PlayerOpenID string
---@field AreaID number
---@field PlatID number
FBasePlayerInfoForReplay = {}


---@class FEscapePlayerBattleResult
---@field InCome number
---@field bWin boolean
---@field LeftEscapeTime number
---@field KillingCount number
---@field WinType number
FEscapePlayerBattleResult = {}


---@class FReplayParser_AIEventFlow
---@field EventTime number
---@field UID number
---@field PlayerUID number
---@field EventType number
---@field AIType number
FReplayParser_AIEventFlow = {}


---@class FReplayParser_ItemInfo
---@field IsSimulate number
---@field ItemID number
---@field ItemName string
---@field ActorName string
---@field ActorLocation FVector
FReplayParser_ItemInfo = {}
