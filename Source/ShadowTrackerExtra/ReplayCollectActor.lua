---@meta

---@class AReplayCollectActor: AActor
local AReplayCollectActor = {}

function AReplayCollectActor:OnGotoFightingState() end

---@param CurCollectType EReplayCollectType
---@return boolean
function AReplayCollectActor:EnableReplayParserMulticast(CurCollectType) end

---@param CircleInfo FReplayParser_CircleInfo
function AReplayCollectActor:ReplayMultiCast_ReportCircleInfo(CircleInfo) end

---@param SimulateCircleInfo FReplayParser_SimulateCircleInfo
function AReplayCollectActor:ReplayMultiCast_ReportSimulateCircleInfo(SimulateCircleInfo) end

---@param PlayerInfo FReplayParser_PlayerInfo
function AReplayCollectActor:ReplayMultiCast_ReportPlayerInfo(PlayerInfo) end

---@param AirlineInfo FReplayParser_AirLineInfo
function AReplayCollectActor:ReplayMultiCast_ReportAirLineInfo(AirlineInfo) end

---@param AirlineInfo FReplayParser_AirLineAttachInfo
function AReplayCollectActor:ReplayMultiCast_ReportAirLineAttachInfo(AirlineInfo) end

---@param EventTime number
---@param ThrowFlow FPlayerThrowFlow
function AReplayCollectActor:ReportThrowInfo(EventTime, ThrowFlow) end

---@param SkillFlow FReplayParser_SkillInfo
function AReplayCollectActor:ReplayMultiCast_ReportSkillInfo(SkillFlow) end

---@param ThrowFlow FReplayParser_ThrowInfo
function AReplayCollectActor:ReplayMultiCast_ReportThrowInfo(ThrowFlow) end

---@param EquipInfo FReplayParser_EquipInfo
function AReplayCollectActor:ReplayMultiCast_ReportEquipInfo(EquipInfo) end

---@param AttackInfo FReplayParser_AttackInfo
function AReplayCollectActor:ReplayMultiCast_ReportAttackFlow(AttackInfo) end

---@param EventTime number
---@param UID number
function AReplayCollectActor:ReplayMultiCast_ReportMaxKiller(EventTime, UID) end

---@param BeatInfo FReplayParser_BeatInfo
function AReplayCollectActor:ReplayMultiCast_ReportBeatInfo(BeatInfo) end

---@param AirDrop FReplayParser_AirDrop
---@param AirDropBox AAirDropBoxActor
function AReplayCollectActor:ReplayMultiCast_ReportAirDropInfo(AirDrop, AirDropBox) end

---@param AirDropBoxID number
---@param OpenAirDropBoxTime number
function AReplayCollectActor:ReplayMultiCast_ReportAirDropOpen(AirDropBoxID, OpenAirDropBoxTime) end

---@param ParachuteInfo FReplayParser_ParachuteInfo
function AReplayCollectActor:ReplayMultiCast_ReportParachuteInfo(ParachuteInfo) end

---@param VehicleInfo FReplayParser_Vehicle
function AReplayCollectActor:ReplayMultiCast_ReportVehicle(VehicleInfo) end

---@param VehicleChangeInfo FReplayParser_VehicleChangeSkin
function AReplayCollectActor:ReplayMultiCast_ReportVehicleSkinChange(VehicleChangeInfo) end

---@param PickItem FReplayParser_PickFlow
function AReplayCollectActor:ReplayMultiCast_ReportPickItem(PickItem) end

---@param AttachFlow FReplayParser_GunAttachmentFlow
function AReplayCollectActor:ReplayMultiCast_ReportGunAttachmentFlow(AttachFlow) end

---@param EventTime number
---@param UID number
---@param PickUpDataList ULuaArrayHelper<FPickUpItemData>
function AReplayCollectActor:ReplayMultiCast_ReportDeadBox(EventTime, UID, PickUpDataList) end

---@param UseItem FReplayParser_ItemUseFlow
function AReplayCollectActor:ReplayMultiCast_ReportUseItem(UseItem) end

---@param HealFlow FReplayParser_HealFlow
function AReplayCollectActor:ReplayMultiCast_ReportHealFlow(HealFlow) end

---@param EventTime number
---@param PlayerUID string
function AReplayCollectActor:ReplayMultiCast_RevivallFlow(EventTime, PlayerUID) end

---@param OpFlow FReplayParser_ExcellentOpFlow
---@param OpRecordData FExcellentOperationRecordData
function AReplayCollectActor:ReplayMultiCast_ExcellentOpFlow(OpFlow, OpRecordData) end

---@param KillFlow FReplayParser_KillFlow
function AReplayCollectActor:ReplayMultiCast_ReportKillFlow(KillFlow) end

---@param AssistFlow FReplayParser_AssistInfo
function AReplayCollectActor:ReplayMultiCast_ReportAssistFlow(AssistFlow) end

---@param HealthChange FReplayParser_HealthChange
function AReplayCollectActor:ReplayMultiCast_ReportHealthChangeInfo(HealthChange) end

---@param UID number
---@param chip1ID number
---@param chip2ID number
---@param chip3ID number
---@param EventTime number
function AReplayCollectActor:OnReportSuperPeopleChips(UID, chip1ID, chip2ID, chip3ID, EventTime) end

---@param ChipInfo FReplayParser_SuperPeopleChip
function AReplayCollectActor:ReplayMultiCast_ReportSuperPeopleChips(ChipInfo) end

---@param PlayerUID string
---@param EventTime number
---@param ScreenMoveData ULuaArrayHelper<FCACRule_ScreenMoveTouchInfo>
---@param EnermyData ULuaArrayHelper<FCACRule_ScreenMoveEnemyInfo>
---@param BulletInfo ULuaArrayHelper<FCACRule_FireBulletInfo>
---@param BeginTouchPointData ULuaArrayHelper<FCACRule_ScreenMoveTouchInfo>
---@param RecordSectionIndex number
---@param CurWorldTimeSecond number
---@param ClientUploadTime number
function AReplayCollectActor:ReplayMultiCast_ReportUploadScreenMoveRecord(PlayerUID, EventTime, ScreenMoveData, EnermyData, BulletInfo, BeginTouchPointData, RecordSectionIndex, CurWorldTimeSecond, ClientUploadTime) end

---@param PlayerUID string
---@param EventTime number
---@param ViewPortInfo FUCACRule_ViewPortBaseInfo
function AReplayCollectActor:ReplayMultiCast_ReportViewPortBaseInfo(PlayerUID, EventTime, ViewPortInfo) end

---@param InoutHouse FReplayParser_InoutHouse
function AReplayCollectActor:ReplayMultiCast_ReportInOutHouseFlow(InoutHouse) end

---@param CommonEvt FReplayParser_WXCommonEvent
function AReplayCollectActor:ReplayMultiCast_ReportWXCommonEvent(CommonEvt) end

---@param ShootFlow FReplayParser_WeaponShootFlow
function AReplayCollectActor:ReplayMultiCast_ReportWeaponShootFlow(ShootFlow) end

---@param DanceFlow FReplayParser_DanceFlow
function AReplayCollectActor:ReplayMultiCast_ReportDanceFlow(DanceFlow) end

---@param WinTeam number
---@param Round number
function AReplayCollectActor:ReplayMultiCast_ReportBRGameEndWinner(WinTeam, Round) end

---@param Time number
---@param UID string
---@param Level number
function AReplayCollectActor:GMP_OnSuperPeopleUpgrade(Time, UID, Level) end

---@param EventTime number
---@param PlayerUID string
---@param Level number
function AReplayCollectActor:ReplayMultiCast_ReportSuperPeopleUpgrade(EventTime, PlayerUID, Level) end

---@param Time number
---@param UID string
---@param SkillID number
---@param Pos FVector
---@param Radius number
---@param UID2 string
---@param Time2 number
---@param Pos2 FVector
---@param Extra1 number
---@param Extra2 number
function AReplayCollectActor:GMP_OnSuperPeopleSkillCast(Time, UID, SkillID, Pos, Radius, UID2, Time2, Pos2, Extra1, Extra2) end

---@param Time number
---@param UID string
---@param SkillID number
---@param Pos FVector
---@param Radius number
---@param UID2 string
---@param Time2 number
---@param Pos2 FVector
---@param Extra1 number
---@param Extra2 number
function AReplayCollectActor:ReplayMultiCast_ReportSuperPeopleSkillCast(Time, UID, SkillID, Pos, Radius, UID2, Time2, Pos2, Extra1, Extra2) end

---@param Time number
---@param UID string
---@param SkillID number
---@param LeftTime number
function AReplayCollectActor:GMP_OnSuperPeopleSkillCD(Time, UID, SkillID, LeftTime) end

---@param Time number
---@param UID string
---@param SkillID number
---@param LeftTime number
function AReplayCollectActor:ReplayMultiCast_ReportSuperPeopleSkillCD(Time, UID, SkillID, LeftTime) end

---@param Time number
---@param UID string
---@param TID string
---@param SkillID number
---@param Pos FVector
---@param Radius number
---@param Amount number
function AReplayCollectActor:GMP_OnSuperPeopleSkillDamage(Time, UID, TID, SkillID, Pos, Radius, Amount) end

---@param Time number
---@param UID string
---@param TID string
---@param SkillID number
---@param Pos FVector
---@param Radius number
---@param Amount number
function AReplayCollectActor:ReplayMultiCast_ReportSuperPeopleSkillDamage(Time, UID, TID, SkillID, Pos, Radius, Amount) end

---@param Time number
---@param Pos FVector
---@param Revivals number
---@param Effect number
function AReplayCollectActor:GMP_OnSuperPeopleStationInfo(Time, Pos, Revivals, Effect) end

---@param Time number
---@param Pos FVector
---@param Revivals number
---@param Effect number
function AReplayCollectActor:ReplayMultiCast_ReportSuperPeopleStationInfo(Time, Pos, Revivals, Effect) end

---@param UIDList ULuaArrayHelper<number>
---@param NewState boolean
function AReplayCollectActor:ReplayMultiCast_ReportScanCompassState(UIDList, NewState) end

---@param VehcileActor ASTExtraVehicleBase
---@param VehicleUID number
---@param VehicleType number
function AReplayCollectActor:ReplayMultiCast_ReportVechicleType(VehcileActor, VehicleUID, VehicleType) end

---@param VehcileActor ASTExtraVehicleBase
---@param VehicleUID number
---@param VehicleSkinID number
function AReplayCollectActor:ReplayMultiCast_ReportVechicleSkinID(VehcileActor, VehicleUID, VehicleSkinID) end

---@param CarryFlow FReplayParser_CarryFlow
function AReplayCollectActor:ReplayMultiCast_ReportCarryFlow(CarryFlow) end

---@param SurpriseGift FReplayParser_WXSurpriseGiftInfo
function AReplayCollectActor:ReplayMultiCast_ReportWXSurpriseGiftInfo(SurpriseGift) end

---@param GunReloadInfo FReplayParser_GunReloadInfo
function AReplayCollectActor:ReplayMultiCast_ReportGunReloadInfo(GunReloadInfo) end

---@param BulletHitInfo ULuaArrayHelper<FBulletHitInfoRepData>
---@param EventTime number
---@param UID string
function AReplayCollectActor:ReplayMultiCast_ReportBulletHitInfo(BulletHitInfo, EventTime, UID) end

---@param Time number
---@param EventID number
---@param SubID number
---@param UID string
---@param Pos FVector
---@param UID2 string
---@param Time2 number
---@param Pos2 FVector
---@param Extra1 number
---@param Extra2 number
---@param Extra3 string
function AReplayCollectActor:GMP_OnCGCommonReplayMsg(Time, EventID, SubID, UID, Pos, UID2, Time2, Pos2, Extra1, Extra2, Extra3) end

---@param ShootHitPlayerFlow FReplayParser_ShootHitPlayerFlow
function AReplayCollectActor:ReplayMultiCast_ReportShootHitPlayerFlow(ShootHitPlayerFlow) end

---@param ShootHitVehicleFlow FReplayParser_ShootHitVehicleFlow
function AReplayCollectActor:ReplayMultiCast_ReportShootHitVehicleFlow(ShootHitVehicleFlow) end

---@param Time number
---@param EventID number
---@param SubID number
---@param UID string
---@param Pos FVector
---@param UID2 string
---@param Time2 number
---@param Pos2 FVector
---@param Extra1 number
---@param Extra2 number
---@param Extra3 string
function AReplayCollectActor:ReplayMultiCast_ReportCGCommonReplayMsg(Time, EventID, SubID, UID, Pos, UID2, Time2, Pos2, Extra1, Extra2, Extra3) end

---@param EventTime number
---@param UID number
---@param bIsInAir boolean
function AReplayCollectActor:ReplayMultiCast_ReportAirFlow(EventTime, UID, bIsInAir) end

---@param DoubleVaultFlow FReplayParser_DoubleVaultFlow
function AReplayCollectActor:ReplayMultiCast_ReportDoubleVaultFlow(DoubleVaultFlow) end

---@param EventTime number
---@param PlayerUID number
---@param CamLoc FVector_NetQuantize
---@param CamPitchAndYaw number
function AReplayCollectActor:ReplayMultiCast_ReportServerUpdateCamera(EventTime, PlayerUID, CamLoc, CamPitchAndYaw) end

---@param PlayerUID number
---@param TargetUID number
function AReplayCollectActor:ReplayMultiCast_ReportCowBoyTargetInfo(PlayerUID, TargetUID) end

---@param EventTime number
---@param PlayerUID number
---@param NewCameraChangeReasonDatas ULuaArrayHelper<FCACRule_CameraChangeReasonData>
---@param ReportWorldTimeSecond number
function AReplayCollectActor:ReplayMultiCast_ServerRecordCameraChangeReasonData(EventTime, PlayerUID, NewCameraChangeReasonDatas, ReportWorldTimeSecond) end

---@param EventTime number
---@param PlayerUID number
---@param OccupyTime number
function AReplayCollectActor:ReplayMultiCast_ReportOccupyPointInfo(EventTime, PlayerUID, OccupyTime) end

---@param EventTime number
---@param PlayerUID number
---@param SettingAndScreenDataList ULuaArrayHelper<FBasicSettingDetail>
---@param WidgetDataList ULuaArrayHelper<FUIBtnDetail>
function AReplayCollectActor:ReplayMultiCast_ReportSetInfoAndBtnInfo(EventTime, PlayerUID, SettingAndScreenDataList, WidgetDataList) end

---@param BasePlayerInfo FBasePlayerInfoForReplay
function AReplayCollectActor:ReplayMultiCast_ReportBasePlayerInfo(BasePlayerInfo) end

---@param EventTime number
---@param PlayerUID number
---@param InCome number
function AReplayCollectActor:ReplayMultiCast_ReportEscapePlayerIncome(EventTime, PlayerUID, InCome) end

---@param EventTime number
---@param PlayerUID number
---@param PlayerBattleResult FEscapePlayerBattleResult
function AReplayCollectActor:ReplayMultiCast_ReportEscapePlayerBattleResult(EventTime, PlayerUID, PlayerBattleResult) end

---@param AIEventFlow FReplayParser_AIEventFlow
function AReplayCollectActor:ReplayMultiCast_ReportAIEventFlow(AIEventFlow) end

---@param ItemInfo FReplayParser_ItemInfo
function AReplayCollectActor:ReplayMultiCast_ReportItemInfo(ItemInfo) end

---@param EventTime number
---@param PlayerUID number
---@param InCome number
function AReplayCollectActor:ReplayMultiCast_ReportLTPlayerIncome(EventTime, PlayerUID, InCome) end

---@param EventTime number
---@param PlayerUID number
---@param InCome number
function AReplayCollectActor:ReplayMultiCast_ReportLTPlayerSeasonIncome(EventTime, PlayerUID, InCome) end

---@param PlayerUID number
---@param EventTime number
---@param KeyCodeInfos ULuaArrayHelper<FPCKeyInputUploadCodeInfo>
---@param ActionInfos ULuaArrayHelper<FPCKeyInputUploadActionInfo>
---@param RecordSectionIndex number
---@param CurWorldTimeSecond number
---@param ClientUploadTime number
function AReplayCollectActor:ReplayMultiCast_ReportPCKeyInput(PlayerUID, EventTime, KeyCodeInfos, ActionInfos, RecordSectionIndex, CurWorldTimeSecond, ClientUploadTime) end
