---@meta

---Tick function that calls UGMCheatManager::Tick
---@class FCheatManagerTickFunction
FCheatManagerTickFunction = {}


---@class UGMCheatManager: UCheatManager
---@field TickFunction FCheatManagerTickFunction
---@field TestActorClass AActor
---@field CollisionMsgRpcActorMap ULuaMapHelper<APlayerController, AActor>
---@field SpawnedTestActorList ULuaArrayHelper<AActor>
---@field SpawnedWithPathTestComponentList ULuaArrayHelper<USceneComponent>
---@field SpawnedWithPathTestActorList ULuaArrayHelper<AActor>
---@field RabbitClass ULuaArrayHelper<AActor>
---@field TestFindPathFilterClass UNavigationQueryFilter
---@field TestAnimInstance UAnimInstance
---@field IceYearBeastClass AActor
---@field GlideParticle UParticleSystem
---@field ParticleDist number
---@field GlideTrails ULuaArrayHelper<UParticleSystemComponent>
---@field AvatarTestActorClassPath string
---@field CheckBackpackList ULuaArrayHelper<number>
---@field CheckBackpackPandantTimerHandle FTimerHandle
---@field CheckPendantList ULuaArrayHelper<number>
---@field CheckBackpackTimerHandle FTimerHandle
---@field CustompTestConfigActorMap ULuaMapHelper<string, string>
---@field FrameCaptureClass AActor
---@field SpawnedActors ULuaArrayHelper<AActor>
---@field CrashDelayTimerHandle FTimerHandle
---@field CurrentPlayAutoAimFrame number
---@field CurrentGMGroupName string
local UGMCheatManager = {}

---@param DeltaTime number
function UGMCheatManager:Tick(DeltaTime) end

function UGMCheatManager:GenerateGUID() end

function UGMCheatManager:CrowdManager_SwitchDebug() end

function UGMCheatManager:CrowdManager_PrevHistory() end

function UGMCheatManager:CrowdManager_NextHistory() end

---@param InRadius number
function UGMCheatManager:CrowdManager_WatchNearest(InRadius) end

function UGMCheatManager:CrowdManager_SingleFrame() end

function UGMCheatManager:CrowdManager_CancelSingleFrame() end

---@param InWeight number
function UGMCheatManager:CrowdManager_SetObstacleAvoidanceParams(InWeight) end

---@param TaskID number
---@param SenderID number
function UGMCheatManager:TestEventFunc_UpdateTaskProgress(TaskID, SenderID) end

---@param Num number
function UGMCheatManager:SpawnBotForTest(Num) end

---@param Num number
function UGMCheatManager:SpawnFakePlayer(Num) end

---@param Num number
---@param TeamID number
function UGMCheatManager:SpawnFakePlayerForUGC(Num, TeamID) end

---@param Num number
---@param BehaviorTreeIndex number
---@param Radius number
---@param AvatarList string
---@param SpawnLoc string
function UGMCheatManager:SpawnAITest(Num, BehaviorTreeIndex, Radius, AvatarList, SpawnLoc) end

---@param PlayerKey number
---@param TeamID number
---@param Difficulty number
function UGMCheatManager:SpawnAIByKey(PlayerKey, TeamID, Difficulty) end

---@param Num number
---@param TeamID number
function UGMCheatManager:AddAIToGame(Num, TeamID) end

---@param InPlayerKey number
function UGMCheatManager:SetWhoKillMe(InPlayerKey) end

---@param Yaw number
---@param free boolean
function UGMCheatManager:TestOBSimulateViewData(Yaw, free) end

---@param cmd number
function UGMCheatManager:CommonTest(cmd) end

---@param byAI number
function UGMCheatManager:TestKill(byAI) end

---@param str string
---@param count number
function UGMCheatManager:SusTest(str, count) end

---@param InTeamID number
function UGMCheatManager:OBTeam(InTeamID) end

---@param InTeamIDs ULuaArrayHelper<number>
function UGMCheatManager:OBTeams(InTeamIDs) end

function UGMCheatManager:ForceGC() end

function UGMCheatManager:ToggleShowBuildHP() end

function UGMCheatManager:ToggleDanceDebugDraw() end

function UGMCheatManager:DumpGiftStatus() end

function UGMCheatManager:ForceEndInputForAppWillDeactivate() end

---@param bEquip boolean
function UGMCheatManager:TestWeaponAttachment(bEquip) end

---@param targetName string
function UGMCheatManager:GMFollow(targetName) end

---@param x number
---@param y number
---@param z number
function UGMCheatManager:GMDisplayNavPath(x, y, z) end

---@param bEnable boolean
function UGMCheatManager:GMDebugSkill(bEnable) end

---@param replayname string
function UGMCheatManager:ReplayCameraWrite(replayname) end

---@param replayname string
---@param comparedata string
function UGMCheatManager:ReplayCameraCompare(replayname, comparedata) end

---@param X number
---@param Y number
---@param Z number
function UGMCheatManager:TeleportTo(X, Y, Z) end

---@param X number
---@param Y number
---@param Z number
---@param FX number
---@param FY number
---@param FZ number
function UGMCheatManager:TeleportAndRotateTo(X, Y, Z, FX, FY, FZ) end

function UGMCheatManager:RespawnMe() end

function UGMCheatManager:DebugStopCapture() end

function UGMCheatManager:ToggleDepthOfViewInfo() end

function UGMCheatManager:ToggleWeaponAvatarInfo() end

function UGMCheatManager:ToggleSensibilityInfo() end

function UGMCheatManager:TogglePawnMeshInfo() end

function UGMCheatManager:ToggleShowGAStateInfo() end

---@param PlayerKey number
---@param ShowType number
function UGMCheatManager:TogglePawnInfo(PlayerKey, ShowType) end

---@param PlayerKey number
---@param ShowType number
---@param ShowFlag number
function UGMCheatManager:TogglePawnInfoNew(PlayerKey, ShowType, ShowFlag) end

---@param switchKey string
---@param bshow boolean
function UGMCheatManager:ToggleShowCustomInfo(switchKey, bshow) end

function UGMCheatManager:ToggleVTInfo() end

function UGMCheatManager:ToggleCampInfo() end

function UGMCheatManager:ToggleSpringMode() end

function UGMCheatManager:ToggleSpringDebug() end

function UGMCheatManager:ToggleActivityDebug() end

function UGMCheatManager:TogglePersistDebug() end

---@param UID number
---@param RecordType number
function UGMCheatManager:TestGameplayDataRecord(UID, RecordType) end

---@param bEnable boolean
function UGMCheatManager:AutoSetPlayerLocation(bEnable) end

function UGMCheatManager:PrintAllAnim() end

function UGMCheatManager:PrintWeaponAllState() end

---@param Enable boolean
function UGMCheatManager:SetAnimEnable(Enable) end

---@param memberID number
function UGMCheatManager:SetGVMemberID(memberID) end

---@param memberID number
function UGMCheatManager:GetGVMemberID(memberID) end

---@param Enable boolean
function UGMCheatManager:SetCameraLagEnable(Enable) end

---@param Enable boolean
function UGMCheatManager:SetCameraSpringArmDoCollisionTest(Enable) end

function UGMCheatManager:ToggleShootVertify() end

function UGMCheatManager:MaintenanceVehicle() end

---@param Path string
---@param bLoad boolean
function UGMCheatManager:TestLoadTexture(Path, bLoad) end

---@param hp number
---@param fuel number
function UGMCheatManager:SetVehicleHPFuel(hp, fuel) end

function UGMCheatManager:GetVehicleHP() end

function UGMCheatManager:GetVehicleFuel() end

---@param fuel number
function UGMCheatManager:AddVehicleFuel(fuel) end

---@param percent number
---@param time number
---@param factor number
function UGMCheatManager:AccelerateVehicle(percent, time, factor) end

function UGMCheatManager:TriggerVehicleResolvingStuck() end

function UGMCheatManager:GMDecreaseHealth() end

---@param ID number
function UGMCheatManager:GMUseItem(ID) end

---@param ExpectedCapacity number
function UGMCheatManager:GMSetBackpackCapacity(ExpectedCapacity) end

---@param ID number
---@param OffsetX number
---@param OffsetY number
---@param OffsetZ number
---@param BornType number
---@param interval number
---@param deadAfter number
function UGMCheatManager:GMStartCreateDeadZombie(ID, OffsetX, OffsetY, OffsetZ, BornType, interval, deadAfter) end

---@param ID number
---@param BornType number
---@param deadAfter number
---@param OffsetX number
---@param OffsetY number
---@param OffsetZ number
function UGMCheatManager:GMCreateDeadZombie(ID, BornType, deadAfter, OffsetX, OffsetY, OffsetZ) end

---@param tempChar ASTExtraSimpleCharacter
function UGMCheatManager:GMKillMonster(tempChar) end

---@param Val number
function UGMCheatManager:GMSetHealth(Val) end

---@param Val number
function UGMCheatManager:GMSetEnergy(Val) end

---@param Val number
function UGMCheatManager:GMSetHealthMax(Val) end

---@param AIPlayerKey number
---@param Val number
function UGMCheatManager:GMSetAIHealth(AIPlayerKey, Val) end

---@param Val number
function UGMCheatManager:GMSetZombieHealth(Val) end

---@param LuaTableName string
---@param LuaTableFunc string
function UGMCheatManager:GMSuicideWithCallLuaTableFunc(LuaTableName, LuaTableFunc) end

function UGMCheatManager:GMSuicide() end

function UGMCheatManager:GenDeadBox() end

function UGMCheatManager:GMSuicideWithGiveUp() end

function UGMCheatManager:GMSuicideWithPoisonDamage() end

function UGMCheatManager:GMRevivalTeammate() end

function UGMCheatManager:GMSpawnAICarAtAllPoints() end

function UGMCheatManager:GMBuyRevivalSign() end

function UGMCheatManager:GMBuyRevivalTeammate() end

---@param AchievenmentID number
function UGMCheatManager:AddHunterAchievement(AchievenmentID) end

---@param count number
function UGMCheatManager:GMRainCount(count) end

---@param FrameRateLock number
function UGMCheatManager:GMIOSFrameRateLock(FrameRateLock) end

---@param isInvincible boolean
function UGMCheatManager:GMInvincible(isInvincible) end

---@param bDestoryPC boolean
function UGMCheatManager:SimulateNotifyPlayerExit(bDestoryPC) end

---@param InType number
function UGMCheatManager:SetForcePunish(InType) end

function UGMCheatManager:GMSpeedUp() end

---@param WalkSpeed number
function UGMCheatManager:GMSetSpeed(WalkSpeed) end

---@param Factor number
function UGMCheatManager:GMSetCheatSpeedModifier(Factor) end

---@param CDTime number
---@param LastTime number
function UGMCheatManager:GMSetCircleTime(CDTime, LastTime) end

---@param IsNeedEightDirection boolean
function UGMCheatManager:GMSetJoystickEightDirection(IsNeedEightDirection) end

---@param IsNeedActivatedRange boolean
---@param ActivatedRange number
function UGMCheatManager:GMSetJoystickActivatedRange(IsNeedActivatedRange, ActivatedRange) end

---@param bNewLoadAll boolean
function UGMCheatManager:GMSetServerLevelLoadingMode(bNewLoadAll) end

function UGMCheatManager:GMRevivePlayer() end

function UGMCheatManager:GMEnableMLCompanion() end

function UGMCheatManager:PrintMainCharAllAvatar() end

---@param type number
function UGMCheatManager:FallKill(type) end

---@param Enable boolean
function UGMCheatManager:SetTouchMoveLog(Enable) end

---@param NewWeaponFunction number
function UGMCheatManager:ChangeWeaponFunction(NewWeaponFunction) end

---@param EmoteID number
function UGMCheatManager:OnFacialEmoteSlotClicked(EmoteID) end

function UGMCheatManager:LocalInterruptPlayFacialEmote() end

function UGMCheatManager:GotoSpectating() end

function UGMCheatManager:JumpFromPlane() end

function UGMCheatManager:Land() end

---@param x number
---@param y number
---@param z number
---@param duration number
function UGMCheatManager:LaunchCharacter(x, y, z, duration) end

function UGMCheatManager:OBWhoKilledMe() end

function UGMCheatManager:OBSameCampPlayer() end

function UGMCheatManager:OBPlayerList() end

---@param Transform boolean
function UGMCheatManager:ExecuteOBTransform(Transform) end

function UGMCheatManager:TestReact() end

---@param Seconds number
function UGMCheatManager:TestSleep(Seconds) end

function UGMCheatManager:RefreshReconnectUI() end

---@param tableName string
---@param functionName string
function UGMCheatManager:CallLuaTableFunction(tableName, functionName) end

---@param tableName string
---@param functionName string
---@param paramsStr string
function UGMCheatManager:CallLuaTableFunctionParam(tableName, functionName, paramsStr) end

---@param functionName string
function UGMCheatManager:CallLuaGlobalFunction(functionName) end

function UGMCheatManager:WatchReport() end

---@param RankScore number
function UGMCheatManager:SetRateScore(RankScore) end

function UGMCheatManager:SetDeliver() end

function UGMCheatManager:SetPreDeliver() end

---@param LinkType EPerformLinkType
function UGMCheatManager:SetPerformLink(LinkType) end

function UGMCheatManager:ClearOutBoundDamage() end

function UGMCheatManager:SpawnLevelDirector() end

function UGMCheatManager:StartMainTriggerClock() end

---@param DelayFrame number
function UGMCheatManager:SetTouchMoveDelay(DelayFrame) end

---@param CacheNum number
function UGMCheatManager:SetCacheInputNum(CacheNum) end

---@param WeightList string
function UGMCheatManager:SetTouchCacheWeight(WeightList) end

---@param x number
---@param y number
---@param z number
function UGMCheatManager:TestLineTrace(x, y, z) end

---@param IsFPP boolean
function UGMCheatManager:SetViewFPP(IsFPP) end

---@param bPause boolean
---@param ShouldTPose boolean
---@param PauseAllPawn boolean
function UGMCheatManager:PauseAnim(bPause, ShouldTPose, PauseAllPawn) end

---@param EmoteID number
function UGMCheatManager:DebugStopEmote(EmoteID) end

---@param EmoteID number
---@param bOpenSpecMotion boolean
function UGMCheatManager:DebugStartEmote(EmoteID, bOpenSpecMotion) end

---@param EmoteID number
---@param bOpenSpecMotion boolean
function UGMCheatManager:DebugStartEmoteOnReplayClient(EmoteID, bOpenSpecMotion) end

---@param Rate number
function UGMCheatManager:DebugSetEmotePlayRate(Rate) end

---@param EmoteID number
---@param Times number
function UGMCheatManager:DebugPlayEmoteRPC(EmoteID, Times) end

function UGMCheatManager:DebugReplaceEmoteSuitSkin() end

---@param Index number
function UGMCheatManager:ReplaceSuitSkin(Index) end

function UGMCheatManager:DebugSpeed() end

function UGMCheatManager:AILog() end

function UGMCheatManager:AIStopBehavior() end

function UGMCheatManager:MobAIStopBehavior() end

function UGMCheatManager:AIStopMove() end

function UGMCheatManager:AIShowDebug() end

---@param dis number
---@param Sep number
---@param type number
function UGMCheatManager:MoveAllVehi(dis, Sep, type) end

---@param LeftAngle number
function UGMCheatManager:SetNeckLeft(LeftAngle) end

---@param RightAngle number
function UGMCheatManager:SetNeckRight(RightAngle) end

---@param MaxAngle number
function UGMCheatManager:SetNeckMax(MaxAngle) end

---@param UpAngle number
function UGMCheatManager:SetNeckUp(UpAngle) end

---@param Speed number
function UGMCheatManager:SetNeckSpeed(Speed) end

function UGMCheatManager:OpenHitTest() end

---@param Score number
function UGMCheatManager:AddScore(Score) end

---@param isEnable boolean
function UGMCheatManager:EnableFWAct(isEnable) end

---@param bShouldReport boolean
---@param DurationTime number
function UGMCheatManager:GMLoadUIStyle(bShouldReport, DurationTime) end

---@param bShouldReport boolean
function UGMCheatManager:GMUnLoadUIStyle(bShouldReport) end

---@param bShouldReport boolean
function UGMCheatManager:GMLoadUIStyleServer(bShouldReport) end

---@param bShouldReport boolean
function UGMCheatManager:GMUnLoadUIStyleServer(bShouldReport) end

function UGMCheatManager:GMAddHotSpotData() end

function UGMCheatManager:GMTestTaskVersionException() end

function UGMCheatManager:GMTestTaskDialogNodeNullException() end

function UGMCheatManager:DumpUIStyleReferenceInfo() end

---@param count number
function UGMCheatManager:SetSkillDup(count) end

---@param InValue number
function UGMCheatManager:SetGrav(InValue) end

---@param index number
function UGMCheatManager:SetDeadSmokeIndex(index) end

---@param isShow boolean
function UGMCheatManager:ShowSqUI(isShow) end

---@param WeaponSkin number
function UGMCheatManager:CreateAvatarWeapon(WeaponSkin) end

function UGMCheatManager:DestroyCurWeapon() end

---@param WeaponSkin number
function UGMCheatManager:AddWeaponAvatar(WeaponSkin) end

---@param WeaponSkin number
function UGMCheatManager:AddWeaponAllAvatarList(WeaponSkin) end

---@param WeaponSkin number
function UGMCheatManager:AddWeaponAllAvatarListWithReasearchData(WeaponSkin) end

---@param NewWeaponSkinID number
function UGMCheatManager:ReplaceWeaponSkin(NewWeaponSkinID) end

---@param WeaponBaseSkinID number
---@param WeaponBaseAttachment number
---@param WeaponSkinAttachment number
function UGMCheatManager:AddWeaponAttachmentAvatar(WeaponBaseSkinID, WeaponBaseAttachment, WeaponSkinAttachment) end

---@param WeaponSkinID number
---@param WeaponAbilityItem number
---@param IsNeedCreate number
function UGMCheatManager:AddWeaponAbilityAvatar(WeaponSkinID, WeaponAbilityItem, IsNeedCreate) end

---@param WeaponSkinID number
---@param AbilityItem1 number
---@param AbilityItem2 number
---@param AbilityItem3 number
function UGMCheatManager:AddWeaponAbilityList(WeaponSkinID, AbilityItem1, AbilityItem2, AbilityItem3) end

---@param VehicleSkinID number
---@param VehicleAbilityItem number
function UGMCheatManager:AddVehicleAbilityAvatar(VehicleSkinID, VehicleAbilityItem) end

---@param CharacterSkinID number
---@param CharacterAbilityItem number
function UGMCheatManager:AddCharacterAbilityAvatar(CharacterSkinID, CharacterAbilityItem) end

---@param Level number
function UGMCheatManager:SetCharacterAbilityAvatarLevel(Level) end

---@param InVehicleID number
---@param InVehicleSkinID number
---@param InVehicleAbilityID number
function UGMCheatManager:TestDisplayPlatform(InVehicleID, InVehicleSkinID, InVehicleAbilityID) end

---@param InIndex number
function UGMCheatManager:TestFlowLight(InIndex) end

---@param VehicleSkinID number
---@param VehicleAbilityItem number
function UGMCheatManager:TestVehicleVoice(VehicleSkinID, VehicleAbilityItem) end

---@param bOpen boolean
function UGMCheatManager:OpenVehicleDetailLog(bOpen) end

function UGMCheatManager:CloseVehicleDetailLog() end

---@param bOpen boolean
function UGMCheatManager:OpenVehicleAutoMoveRaceMode(bOpen) end

function UGMCheatManager:DumpPreProcessedRelevancySetInfo() end

---@param MaxNum number
function UGMCheatManager:SetGameModeMaxVehicleNum(MaxNum) end

function UGMCheatManager:RefreshWeaponAvatar() end

---@param itemID number
---@param Count number
function UGMCheatManager:ConsumeItemByLobby(itemID, Count) end

function UGMCheatManager:DebugLocation() end

function UGMCheatManager:ChangeViewTarget() end

function UGMCheatManager:DebugCamera() end

function UGMCheatManager:CallOnReconnect() end

function UGMCheatManager:StatVehicle() end

---@param InState EPawnState
---@param IsEnter boolean
function UGMCheatManager:EnterPawnState(InState, IsEnter) end

function UGMCheatManager:DebugOBNearPlayerList() end

---@param InCollide boolean
function UGMCheatManager:BuildingCollide(InCollide) end

---@param ObjectName string
function UGMCheatManager:DumpObjectProperties(ObjectName) end

---@param Num number
function UGMCheatManager:AddAI(Num) end

---设置 ExtendedFakePlayerHitRateConfig 中六条曲线组各自使用的曲线索引（范围 0~19）
---@param PlayerHitRateWithAILevel number
---@param PlayerDamageWithAILevel number
---@param PlayerHitRateWithPlayerHealth number
---@param PlayerDamageWithPlayerHealth number
---@param AIHitRateWithAILevel number
---@param AIDamageWithAILevel number
function UGMCheatManager:SetTTKTestCurveIndex(PlayerHitRateWithAILevel, PlayerDamageWithAILevel, PlayerHitRateWithPlayerHealth, PlayerDamageWithPlayerHealth, AIHitRateWithAILevel, AIDamageWithAILevel) end

function UGMCheatManager:DumpCharacter() end

---@param FileName string
function UGMCheatManager:DumpCharacterToFile(FileName) end

---@param FileName string
function UGMCheatManager:DumpPlayerStateToFile(FileName) end

---@param FileName string
function UGMCheatManager:DumpPlayerCameraManagerToFile(FileName) end

---@param FileName string
function UGMCheatManager:DumpAllCharactersToFile(FileName) end

function UGMCheatManager:DumpObservingCharacter() end

---@param FileName string
function UGMCheatManager:DumpObservingCharacterToFile(FileName) end

function UGMCheatManager:DumpVehicle() end

---@param FileName string
function UGMCheatManager:DumpVehicleToFile(FileName) end

function UGMCheatManager:DumpVehiclePassenger() end

function UGMCheatManager:DumpPlayerController() end

---@param FileName string
function UGMCheatManager:DumpPlayerControllerToFile(FileName) end

function UGMCheatManager:DumpCharacterAnimInstanceToLog() end

---@param InFileName string
---@param InPlayerUID string
function UGMCheatManager:DumpCharacterAnimInstanceToFile(InFileName, InPlayerUID) end

---@param InFileName string
---@param InPlayerUID string
function UGMCheatManager:DumpCharacterAnimFMToFile(InFileName, InPlayerUID) end

function UGMCheatManager:DumpVehicleAnimInstance() end

---@param FileName string
function UGMCheatManager:DumpVehicleAnimInstanceToFile(FileName) end

---@param FileName string
function UGMCheatManager:DumpWeaponsToFile(FileName) end

---@param FileName string
function UGMCheatManager:DumpPlayerInfoToFile(FileName) end

---@param FileName string
function UGMCheatManager:DumpVaultableActorInfoToFile(FileName) end

---@param FileName string
function UGMCheatManager:DumpMonstersAnimInfoToFile(FileName) end

function UGMCheatManager:ClearObjectDumpFiles() end

function UGMCheatManager:DumpTeammateToFile() end

---@param FileName string
function UGMCheatManager:DumpViewInfoToFile(FileName) end

function UGMCheatManager:DumpTombBox() end

---@param TestTagStr string
function UGMCheatManager:ReloadGameplayTagConfig(TestTagStr) end

---@param IsShow boolean
function UGMCheatManager:ShowParachuteJumpDebugLine(IsShow) end

---@param Index number
---@param WarningTime number
---@param SpawnTime number
function UGMCheatManager:GMModifyZombieWaveTime(Index, WarningTime, SpawnTime) end

---@param StateTime number
function UGMCheatManager:GMSetFightingStateTime(StateTime) end

function UGMCheatManager:ToggleSubModeGMUI() end

---@param InCrashDelay number
function UGMCheatManager:CrashAfterSeconds(InCrashDelay) end

function UGMCheatManager:DoCrash() end

function UGMCheatManager:CloseDS() end

function UGMCheatManager:CallEscapeHelicopterAtCircleLoc() end

---@param CallHeight number
function UGMCheatManager:CallGunMasterHelicopterAtHight(CallHeight) end

function UGMCheatManager:DrawDebugPlayerLoc() end

function UGMCheatManager:CallGunMasterHelicopterFlyOut() end

function UGMCheatManager:CallGunMasterHelicopterFlyIn() end

---@param InBuyingItem number
---@param InBuyingCount number
function UGMCheatManager:TestBountyBuyItem(InBuyingItem, InBuyingCount) end

---@param InTestSpawnCount number
function UGMCheatManager:TestSpawnFakeChar(InTestSpawnCount) end

---@param TestType number
---@param TestCount number
---@param TestIndex number
function UGMCheatManager:TestFastArray(TestType, TestCount, TestIndex) end

---@param TestType number
---@param TestCount number
---@param TestIndex number
function UGMCheatManager:TestFastArrayDoubleBackup(TestType, TestCount, TestIndex) end

---@param Value boolean
function UGMCheatManager:GMToggleUseSensitiveArchiveDataMap(Value) end

---@param WearType number
---@param WearPartID number
---@param WearItemID number
function UGMCheatManager:AddWearItem(WearType, WearPartID, WearItemID) end

---@param InPathDepth number
function UGMCheatManager:DumpAvatarConfigRootPath(InPathDepth) end

function UGMCheatManager:CheatBuilding() end

---@param StrFormula string
function UGMCheatManager:CalStringFormula(StrFormula) end

---@param Id number
function UGMCheatManager:PlaceBuilding(Id) end

---@param Index number
function UGMCheatManager:MoveToMonsterBox(Index) end

function UGMCheatManager:PrintOnWakeVehicleNumber() end

---@param RegionX number
---@param RegionY number
---@param x number
---@param y number
---@param z number
function UGMCheatManager:LoadItemSpot(RegionX, RegionY, x, y, z) end

function UGMCheatManager:ForceStopDynamicWeatherChange() end

function UGMCheatManager:ForceStartNextDynamicWeatherChange() end

---@param WeatherIdx number
function UGMCheatManager:GotoSpecificWeather(WeatherIdx) end

---@param AnimalType number
function UGMCheatManager:MoveToAnimal(AnimalType) end

function UGMCheatManager:AnimalShowInfoWidget() end

function UGMCheatManager:AnimalStopMove() end

---@param AnimalType number
function UGMCheatManager:MoveToAnimalInTurn(AnimalType) end

function UGMCheatManager:PrintCamera() end

function UGMCheatManager:PrintMinimapInfo() end

---@param x number
---@param y number
---@param z number
function UGMCheatManager:MoveAIToLoc(x, y, z) end

---@param x number
---@param y number
---@param z number
function UGMCheatManager:MoveNearestAIToLoc(x, y, z) end

---@param AIPlayerKey number
---@param x number
---@param y number
---@param z number
function UGMCheatManager:MoveAIToLocWithPlayerKey(AIPlayerKey, x, y, z) end

---@param AIPlayerKey number
---@param ItemId number
---@param Count number
function UGMCheatManager:AIAddItemWithPlayerKey(AIPlayerKey, ItemId, Count) end

---@param AIPlayerKey number
---@param ItemId number
---@param Count number
function UGMCheatManager:AIDropItemWithPlayerKey(AIPlayerKey, ItemId, Count) end

---@param ItemId number
---@param Count number
function UGMCheatManager:AllAIAddItem(ItemId, Count) end

---@param x number
---@param y number
---@param z number
function UGMCheatManager:MoveAnimalToLoc(x, y, z) end

function UGMCheatManager:MoveAIToMarkPosition() end

function UGMCheatManager:PrintAIDebugInfo() end

---@param Range number
function UGMCheatManager:PrintAIFloatDebugInfo(Range) end

function UGMCheatManager:MoveAIToNearBy() end

function UGMCheatManager:MoveAllAIToNearBy() end

---@param Num number
---@param CampID number
function UGMCheatManager:MoveSomeAIToNearBy(Num, CampID) end

function UGMCheatManager:MoveSuperTeamAIToNearBy() end

---@param PoseType number
function UGMCheatManager:SetAIPoseState(PoseType) end

---@param bIsRelax boolean
---@param Mode number
function UGMCheatManager:SetAIRelaxWarningMode(bIsRelax, Mode) end

function UGMCheatManager:TestReportExceptionToCS() end

function UGMCheatManager:PrintAIShootingInfo() end

function UGMCheatManager:PrintPlayerAvatarInfo() end

---@param Range number
function UGMCheatManager:PrintAIShootImpactInfo(Range) end

---@param Radius number
function UGMCheatManager:PrintAnimalDebugInfo(Radius) end

---@param LogTime number
function UGMCheatManager:PrintNearsetAIHostDebugInfo(LogTime) end

---@param LogTime number
function UGMCheatManager:PrintNearestAIDebugInfo(LogTime) end

---@param LogTime number
---@param MaxDist number
function UGMCheatManager:PrintAllAIDebugInfo(LogTime, MaxDist) end

---@param LogTime number
function UGMCheatManager:PrintForwardAIDebugInfo(LogTime) end

function UGMCheatManager:GMReportAllAliveAIState() end

---@param IsShow number
function UGMCheatManager:GMShowAllAILevel(IsShow) end

function UGMCheatManager:GMPrintAllAIMLSpecialZone() end

---@param CurveName string
---@param WarpingKeyName string
---@param Type number
---@param Param number
function UGMCheatManager:SetAICurveMove(CurveName, WarpingKeyName, Type, Param) end

function UGMCheatManager:ReloadNavLink() end

function UGMCheatManager:SetFollow() end

---@param AvatarID number
---@param AvatarID2 number
function UGMCheatManager:ReputAvatar(AvatarID, AvatarID2) end

---@param bEnable number
---@param SuitSkinID number
function UGMCheatManager:GMEnableClientSwitchSuit(bEnable, SuitSkinID) end

---@param NeedShow boolean
function UGMCheatManager:ShowAIPosition(NeedShow) end

function UGMCheatManager:GenerateAllItems() end

---@param index number
function UGMCheatManager:PlaySpecialAnimByIndex(index) end

function UGMCheatManager:StartTimer() end

function UGMCheatManager:EndTimer() end

function UGMCheatManager:PrintBodyInstanceInfo() end

---@param ID number
---@param Num number
---@param BornType number
function UGMCheatManager:SpawnMonster(ID, Num, BornType) end

---@param ID number
---@param Num number
---@param BornType number
---@param OffsetX number
---@param OffsetY number
---@param OffsetZ number
function UGMCheatManager:SpawnMonsterByOffset(ID, Num, BornType, OffsetX, OffsetY, OffsetZ) end

---@param ID number
---@param Num number
---@param BornType number
---@param LocX number
---@param LocY number
---@param LocZ number
---@param RotX number
---@param RotY number
---@param RotZ number
function UGMCheatManager:SpawnMonsterByLocAndRot(ID, Num, BornType, LocX, LocY, LocZ, RotX, RotY, RotZ) end

function UGMCheatManager:FireSpawnItemHouse() end

---@param EventIndex number
---@param PressOrRelease number
function UGMCheatManager:SkillCustomEvent(EventIndex, PressOrRelease) end

---@param BuffName string
---@param RemoveFirstly boolean
function UGMCheatManager:GMAddBuff(BuffName, RemoveFirstly) end

---@param BuffName string
---@param BuffExpire number
---@param Layer number
function UGMCheatManager:GMAddBuffWithTime(BuffName, BuffExpire, Layer) end

---@param BuffExpire number
function UGMCheatManager:GMAddAllBuffsWithTime(BuffExpire) end

function UGMCheatManager:GMAddAllSkills() end

---@param BeginOrEnd number
---@param AirDropName string
function UGMCheatManager:CallWinnerAirdrop(BeginOrEnd, AirDropName) end

function UGMCheatManager:PrintAllRabbitVehicleInfo() end

---@param BeginOrEnd number
function UGMCheatManager:AsianGameTargetFinder(BeginOrEnd) end

---@param BeginOrEnd number
function UGMCheatManager:GameCup(BeginOrEnd) end

---@param Cmd number
function UGMCheatManager:FireSpawnItemGm(Cmd) end

---@param bEnable boolean
function UGMCheatManager:CloseClientSimpleCharacterCollision(bEnable) end

---@param start FVector
---@param End FVector
function UGMCheatManager:TestMoveSweepTest(start, End) end

---@param RespawnStartID number
---@param bJump boolean
function UGMCheatManager:FireReviveTeammate(RespawnStartID, bJump) end

function UGMCheatManager:FireSpawnAirplane() end

function UGMCheatManager:AirDrop() end

---@param ClassPath string
function UGMCheatManager:AirDropC(ClassPath) end

---@param Index number
function UGMCheatManager:AirDropIndex(Index) end

---@param InFov number
function UGMCheatManager:ResetTPPFOV(InFov) end

---@param InX number
---@param InY number
---@param InZ number
function UGMCheatManager:ResetTPPSocketOffset(InX, InY, InZ) end

function UGMCheatManager:RemoveTPPSocketOffset() end

function UGMCheatManager:DebugCheckLevelStreaming() end

---@param speed number
function UGMCheatManager:SetFallSpeed(speed) end

---@param InYaw number
function UGMCheatManager:TestYaw(InYaw) end

---@param count number
function UGMCheatManager:SetCountForDumpCallStack(count) end

---@param InFriendObserverEnemyTrace number
---@param InEnableWatchHidePlayerLevel number
function UGMCheatManager:SetFriendObserverEnemyTrace(InFriendObserverEnemyTrace, InEnableWatchHidePlayerLevel) end

---@return boolean
function UGMCheatManager:IsWinDebugMode() end

function UGMCheatManager:DumpOBPosList() end

---@param IdxOrName string
function UGMCheatManager:GTP(IdxOrName) end

---@param bShow boolean
function UGMCheatManager:ShowJoyStick(bShow) end

---@param bFlag boolean
function UGMCheatManager:GMWatcher(bFlag) end

---@param bFlag boolean
function UGMCheatManager:SetGMatchRoom(bFlag) end

---@param InKey string
function UGMCheatManager:ShowConsoleValue(InKey) end

---@param InModule string
---@param InMsg string
function UGMCheatManager:GMCastUIMsg(InModule, InMsg) end

---@param WeatherType number
---@param EventType number
function UGMCheatManager:SetDynamicWeather(WeatherType, EventType) end

---@param Key string
---@param IsPlay boolean
function UGMCheatManager:PlayAppearance(Key, IsPlay) end

---@param InTemperature number
function UGMCheatManager:SetTemperature(InTemperature) end

function UGMCheatManager:AIIgnoreAnimal() end

---@param InIgnore number
function UGMCheatManager:AIIgnoreMe(InIgnore) end

function UGMCheatManager:StopAndInvincibleAI() end

function UGMCheatManager:RevertAndUnInvincibleAI() end

function UGMCheatManager:StopAndInvincibleMonster() end

function UGMCheatManager:RevertAndUnInvincibleMonster() end

---@param Distance number
---@param ZOffset number
function UGMCheatManager:SetAIZOffset(Distance, ZOffset) end

---@param Distance number
---@param Level number
function UGMCheatManager:SetAIGenerateArmsRaceWeapon(Distance, Level) end

---@param isInvincible number
function UGMCheatManager:SetAIInvincible(isInvincible) end

function UGMCheatManager:DrawTraceEnemyLine() end

function UGMCheatManager:MobAIIgnorePlayers() end

function UGMCheatManager:EnableLogPosInfo() end

function UGMCheatManager:StopMobAI() end

function UGMCheatManager:RestartMobAI() end

function UGMCheatManager:KillAllZombie() end

---@param typeID number
function UGMCheatManager:SwitchZombieAnimTick(typeID) end

---@param Radius number
---@param Height number
function UGMCheatManager:KillAllZombieInRange(Radius, Height) end

---@param type number
function UGMCheatManager:KillAllZombieImmidiate(type) end

function UGMCheatManager:ClearAI() end

function UGMCheatManager:HideAI() end

---@param bEnable number
function UGMCheatManager:TestMRegionRelevant(bEnable) end

---@param Num number
function UGMCheatManager:TestBigRPC(Num) end

---@param bEnable number
function UGMCheatManager:TestWorldTime(bEnable) end

---@param StartX number
---@param StartY number
---@param StartZ number
---@param EndX number
---@param EndY number
---@param EndZ number
function UGMCheatManager:DrawDebugLineWithHit(StartX, StartY, StartZ, EndX, EndY, EndZ) end

function UGMCheatManager:TestShooterFireLocCheat() end

function UGMCheatManager:ClearPickupactor() end

---@param show number
function UGMCheatManager:ShowHideAllUI(show) end

function UGMCheatManager:HidePlayer() end

---@param CVarName string
function UGMCheatManager:DumpCVarValue(CVarName) end

---@param CVarName string
function UGMCheatManager:DumpCVarV2(CVarName) end

function UGMCheatManager:DumpDebugSpawnActorData() end

---@param value number
function UGMCheatManager:EnableDeferConstructComp(value) end

---@param value number
function UGMCheatManager:SetWrapperNetCullDis(value) end

function UGMCheatManager:ToggleEvent() end

function UGMCheatManager:StartLogTrack() end

function UGMCheatManager:DumpLogTrack() end

---@param PoseType number
function UGMCheatManager:SwitchPoseState(PoseType) end

---@param EventEnumValue number
function UGMCheatManager:SkillEEvent(EventEnumValue) end

---@param EventEnumValue number
function UGMCheatManager:SkillCEvent(EventEnumValue) end

function UGMCheatManager:PrintCharacterPropertyValue() end

function UGMCheatManager:StartRacing() end

function UGMCheatManager:ResetNearClip() end

---@param bEnterFight boolean
function UGMCheatManager:LoadAllRegionItems(bEnterFight) end

function UGMCheatManager:LoadAllRegionVehicle() end

---@param CmdValue number
function UGMCheatManager:ShowHitEffect(CmdValue) end

---@param CmdValue number
function UGMCheatManager:ShowHitFont(CmdValue) end

---@param CmdValue number
function UGMCheatManager:ShowHitFlesh(CmdValue) end

---@param CmdValue number
function UGMCheatManager:SetSignalHPRecoveryInBlueCircle(CmdValue) end

---@param CmdValue number
function UGMCheatManager:SetSignalHPApplyExtraDamageFlag(CmdValue) end

---@param AttrName string
---@param CmdValue number
function UGMCheatManager:GMSetPlayerAttributeValue(AttrName, CmdValue) end

---@param isDebug boolean
---@param startDistance number
---@param endDistance number
---@param startScale number
---@param endScale number
function UGMCheatManager:SetBulletImpactScale(isDebug, startDistance, endDistance, startScale, endScale) end

---@param bIsIgnoreRecoverty boolean
---@param IgnoreRecovertyPropertyName string
function UGMCheatManager:GMSetRecover(bIsIgnoreRecoverty, IgnoreRecovertyPropertyName) end

function UGMCheatManager:ToggleObserverSmooth() end

---@param Yaw number
---@param Picth number
---@param Roll number
function UGMCheatManager:SetControlRotation(Yaw, Picth, Roll) end

---@param InNum number
function UGMCheatManager:SpawnTestActor(InNum) end

---@param InMode number
function UGMCheatManager:SetTestActorMode(InMode) end

function UGMCheatManager:PrintAllCharacterStates() end

function UGMCheatManager:CallAirDropByAction() end

---@param X number
---@param Y number
---@param Z number
function UGMCheatManager:OpenFixationFreeFallVelocity(X, Y, Z) end

function UGMCheatManager:CloseFixationFreeFallVelocity() end

---@param ZombieType number
function UGMCheatManager:MoveToZombie(ZombieType) end

---@param ZombieType number
---@param KillNum number
function UGMCheatManager:KillZombieWithType(ZombieType, KillNum) end

---@param Range number
---@param ZombieKD number
---@param SkillIndex number
function UGMCheatManager:ZombieCastSkill(Range, ZombieKD, SkillIndex) end

---@param bOpen boolean
function UGMCheatManager:OpenZombieDrawDebugInfo(bOpen) end

---@param bOpen boolean
function UGMCheatManager:ShowZombieInfo(bOpen) end

---@param bOpen boolean
function UGMCheatManager:ShowZombieHatredInfo(bOpen) end

---@param bOpen boolean
function UGMCheatManager:ShowZombieBuffInfo(bOpen) end

---@param SphereRadius number
function UGMCheatManager:ShowZombieBombRange(SphereRadius) end

function UGMCheatManager:ShowZombieAllDebugInfo() end

---@param Tag number
function UGMCheatManager:ForbidSpawnZombie(Tag) end

---@param Tag number
---@param Count number
function UGMCheatManager:SetZombieTotalForOnePlayer(Tag, Count) end

function UGMCheatManager:SetOtherPawnSwimming() end

---@param Radius number
function UGMCheatManager:PrintStaticAgentInRadius(Radius) end

function UGMCheatManager:GMOffsetUI() end

---@param Radius number
---@param TeamID number
function UGMCheatManager:ShowPlayerRangeByTeamID(Radius, TeamID) end

function UGMCheatManager:TestSpawnShips() end

function UGMCheatManager:TestReportHeroSkillRecord() end

---@param ShipIndex number
---@param OffsetZ number
function UGMCheatManager:TeleportToTransportShip(ShipIndex, OffsetZ) end

function UGMCheatManager:ShowAISwimInfo() end

---@param X number
---@param Y number
---@param Z number
---@param UpOffset number
function UGMCheatManager:RotateVehicle(X, Y, Z, UpOffset) end

---@param bEnable boolean
function UGMCheatManager:EnableVehicleSpringArmSubstep(bEnable) end

---@param Stratagy number
function UGMCheatManager:SetWheelVehicleSharpSlopeLimitMoveStrategy(Stratagy) end

---@param X number
---@param Y number
---@param Z number
---@param UpOffset number
function UGMCheatManager:RotateNeareastVehicle(X, Y, Z, UpOffset) end

function UGMCheatManager:ResetVehicleToLastValidTransform_2Stuck() end

---@param disable number
function UGMCheatManager:ServerSetDisableExitVehicle(disable) end

---@param AddTime number
function UGMCheatManager:GMAddVehicleServerAuthorizedTime(AddTime) end

function UGMCheatManager:ForceExitVehicle() end

---@param Position FVector
function UGMCheatManager:MoveSimulatedVehicle(Position) end

---@param Impulse FVector
function UGMCheatManager:KickSimulatedVehicle(Impulse) end

---@param StartSpeed number
---@param EndSpeed number
function UGMCheatManager:RecordDriving(StartSpeed, EndSpeed) end

---@param InDragCoefficientScale number
---@param InGMBoostingTorqueScalerScale number
---@param InMaxRPMScale number
function UGMCheatManager:Modify4WVehicleMaxVelocity(InDragCoefficientScale, InGMBoostingTorqueScalerScale, InMaxRPMScale) end

---@param InGMBoostingTorqueScale number
function UGMCheatManager:Modify4WVehicleTorqueScale(InGMBoostingTorqueScale) end

---@param InGMBoostingMaxRPMScale number
function UGMCheatManager:Modify4WVehicleMaxRPMScale(InGMBoostingMaxRPMScale) end

---@param InGMMaxAccelerationScale number
function UGMCheatManager:ModifyFloatingVehicleMaxAccelerationScale(InGMMaxAccelerationScale) end

---@param InCD number
function UGMCheatManager:ModifySTExtraGlideCarAccelerateCD(InCD) end

---@param DeltaTime number
---@param TargetLoc FVector
function UGMCheatManager:TestMyriapodVehicleServerMoveDual(DeltaTime, TargetLoc) end

---@param NewInterval number
function UGMCheatManager:CheckVehicleAdapterInterval(NewInterval) end

---@param Position FVector
---@param Rotator FRotator
---@param Velocity FVector
---@param AngularVelocity FVector
function UGMCheatManager:SetVehicleToSpecialState(Position, Rotator, Velocity, AngularVelocity) end

---@param id number
---@param Mode number
function UGMCheatManager:PlayCarMusic(id, Mode) end

---@param DeltaSpeed number
function UGMCheatManager:AddVehicleForwardVelocityClient(DeltaSpeed) end

---@param DeltaSpeed number
function UGMCheatManager:AddVehicleUpVelocityClient(DeltaSpeed) end

---@param ForwardMoveDist number
---@param RightwardMoveDist number
---@param UpwardMoveDist number
function UGMCheatManager:VehicleMoveClient(ForwardMoveDist, RightwardMoveDist, UpwardMoveDist) end

---@param ForwardMoveDist number
---@param RightwardMoveDist number
---@param UpwardMoveDist number
function UGMCheatManager:VehicleMoveClientNearest(ForwardMoveDist, RightwardMoveDist, UpwardMoveDist) end

---@param ForwardMoveDist number
---@param RightwardMoveDist number
---@param UpwardMoveDist number
function UGMCheatManager:VehicleMoveServer(ForwardMoveDist, RightwardMoveDist, UpwardMoveDist) end

---@param ForwardMoveDist number
---@param RightwardMoveDist number
---@param UpwardMoveDist number
function UGMCheatManager:VehicleMoveServerNearest(ForwardMoveDist, RightwardMoveDist, UpwardMoveDist) end

function UGMCheatManager:FillDriftVehicleNIO() end

---@param ResID number
function UGMCheatManager:AddVehicleAvatar(ResID) end

---@param AvartarID number
function UGMCheatManager:CreateVehicleAvatar(AvartarID) end

---@param AvatarItemTypeSpecificID number
function UGMCheatManager:CreateVehicleWithSkinAvatarID(AvatarItemTypeSpecificID) end

function UGMCheatManager:AddVehicleAvatarAll() end

---@param DeviceLevelType number
---@param Level number
function UGMCheatManager:ChangeDeviceLevel(DeviceLevelType, Level) end

function UGMCheatManager:SwitchVehicleTranslucentMat() end

---@param InVehicleSkinID number
---@param InVehiclePendantID number
function UGMCheatManager:AddVehiclePendantAvatar(InVehicleSkinID, InVehiclePendantID) end

---@param InVehicleSkinID number
---@param InCustomName string
function UGMCheatManager:AddVehicleCustomName(InVehicleSkinID, InCustomName) end

---@param InVehicleSkinID number
---@param InCustomLicensePlateName string
---@param InCustomLicensePlateNum string
function UGMCheatManager:AddVehicleCustomLicensePlateNameAndNum(InVehicleSkinID, InCustomLicensePlateName, InCustomLicensePlateNum) end

---@param ResID1 number
---@param ResID2 number
---@param ResID3 number
---@param ResID4 number
function UGMCheatManager:SwitchVehicleAvatar(ResID1, ResID2, ResID3, ResID4) end

---@param Num number
function UGMCheatManager:CreateSplicedTrain(Num) end

---@param NewSpeed number
function UGMCheatManager:ModifyCurRacingBBCarSpeed(NewSpeed) end

function UGMCheatManager:CharacterAddCollision() end

---@param Radius number
---@param Time number
function UGMCheatManager:ShowVehicleCenterOfMass(Radius, Time) end

---@param Enable number
function UGMCheatManager:EnableVehicleAntiStuckBox(Enable) end

---@param IsSlip number
---@param YawAngularImpulseInDegrees number
---@param SlipTime number
function UGMCheatManager:SetVehicleToSlipState(IsSlip, YawAngularImpulseInDegrees, SlipTime) end

---@param WindowIndex number
function UGMCheatManager:DestroyVehicleWindow(WindowIndex) end

---@param PartIndex number
---@param HP number
function UGMCheatManager:DestroyVehiclePartHP(PartIndex, HP) end

function UGMCheatManager:DumpVehicleShapeInfo() end

---@param X number
---@param Y number
---@param Z number
function UGMCheatManager:AddPawnSpeed(X, Y, Z) end

---@param SpawnLoc FVector
function UGMCheatManager:SpawnCharmPlayerDisplayDirector(SpawnLoc) end

---@param Pro number
function UGMCheatManager:SetCharmProbability(Pro) end

function UGMCheatManager:EnableCharmPlayerTestData() end

function UGMCheatManager:EnableTeamAssembleTestData() end

---@param Count number
function UGMCheatManager:SetMaxAllowReplicatedCharacterCount(Count) end

---@param PlayerPawnNum number
---@param VehicleNum number
function UGMCheatManager:SetMaxConsiderNum(PlayerPawnNum, VehicleNum) end

---@param PlayerPawnNum number
---@param VehicleNum number
function UGMCheatManager:SetMaxBufferNum(PlayerPawnNum, VehicleNum) end

function UGMCheatManager:RetrievePlayerListTest() end

function UGMCheatManager:RetrieveVehiclePlayerParams() end

---@param PlayerID FPlayerID
---@return FGameModePlayerParams
function UGMCheatManager:RetrievePlayerParamsTest(PlayerID) end

function UGMCheatManager:SpawnTestGasCan() end

---@param NewNum number
function UGMCheatManager:SetGasCanMaxFXNum(NewNum) end

function UGMCheatManager:DumpAllCVars() end

---@param IsSpawnRabbit number
function UGMCheatManager:SpawnAndCatchRabbit(IsSpawnRabbit) end

---@param startX number
---@param startY number
---@param startZ number
---@param endX number
---@param endY number
---@param endZ number
function UGMCheatManager:AutoTestFindPath(startX, startY, startZ, endX, endY, endZ) end

---@param start FVector
---@param End FVector
function UGMCheatManager:AutoTestFindPathByVector(start, End) end

function UGMCheatManager:SpawnAllHeavyWeaponBox() end

function UGMCheatManager:TraceTest() end

---@param DropID number
function UGMCheatManager:DropItem(DropID) end

function UGMCheatManager:SpawnExplosionSimulator() end

---@param Index number
function UGMCheatManager:RemoveTeammateStateByIndex(Index) end

---@param StartX number
---@param StartY number
---@param StartZ number
---@param EndX number
---@param EndY number
---@param EndZ number
---@param Times number
function UGMCheatManager:TestFindPathProfile(StartX, StartY, StartZ, EndX, EndY, EndZ, Times) end

---@param NewHealth number
function UGMCheatManager:SetHealthSafety(NewHealth) end

---@param NewHealthMax number
function UGMCheatManager:SetHealthMaxSafety(NewHealthMax) end

---@param NewModifier number
function UGMCheatManager:SetMoveSpeedModifier(NewModifier) end

---@param NewModifier number
function UGMCheatManager:SetSwimSpeedModifier(NewModifier) end

---@param NewModifier number
function UGMCheatManager:SetJumpHeightModifier(NewModifier) end

function UGMCheatManager:TestGameResult() end

---@param DataCount number
function UGMCheatManager:GMCACSimulateScreenMoveInput(DataCount) end

---@param Dir number
---@param X number
---@param Y number
---@param Z number
function UGMCheatManager:GMChangeAutoPeekBoxSize(Dir, X, Y, Z) end

---@param PoseType number
---@param Dir number
---@param X number
---@param Y number
---@param Z number
function UGMCheatManager:GMChangeAutoPeekBoxLoc(PoseType, Dir, X, Y, Z) end

---@param bOpen boolean
function UGMCheatManager:OpenLog_MoveInputStateOfLeader(bOpen) end

---@param bSet boolean
---@param Type number
function UGMCheatManager:GMActiveRenderDynamicStyle(bSet, Type) end

---@param bSet boolean
function UGMCheatManager:GMSetSceneToGrayOnDeathActive(bSet) end

---@param Teleporter string
function UGMCheatManager:GMTeleport(Teleporter) end

function UGMCheatManager:GMFindAITruck_CG31() end

function UGMCheatManager:GMDeletePatrolCar_CG32() end

function UGMCheatManager:GMFindCamel_CG35() end

---@param TeammateNum number
function UGMCheatManager:AddTeamAssemableTestData(TeammateNum) end

function UGMCheatManager:TestSwitchToTeamAssemableView() end

---@param TeammateNum number
function UGMCheatManager:TestSwitchToTeamAssemableViewWithNum(TeammateNum) end

---@param TeammateNum number
function UGMCheatManager:TestSwitchToSuperPeopleTeamAssemableViewWithNum(TeammateNum) end

---@param MaxPlayerNum number
---@param MaxTeamNum number
function UGMCheatManager:SetDeliveryCheckMaxPlayerAndTeamNum(MaxPlayerNum, MaxTeamNum) end

---@param index number
function UGMCheatManager:AIChangeBehaviorTree(index) end

---@param BShow boolean
function UGMCheatManager:ShowKeroseneFurnaceLog(BShow) end

---@param BMutex boolean
function UGMCheatManager:KeroseneEffectMutex(BMutex) end

function UGMCheatManager:ShowGLightShaftsValue() end

---@param WeatherName string
function UGMCheatManager:LoadWeatherLevel(WeatherName) end

---@param InputIndex number
function UGMCheatManager:LoadRandomLevel(InputIndex) end

---@param HeightOffset number
---@param Radius number
---@param SpawnCountsPerTime number
---@param SpawnCD number
---@param TotalTime number
---@param EmitterPath string
function UGMCheatManager:SpawnEmitter(HeightOffset, Radius, SpawnCountsPerTime, SpawnCD, TotalTime, EmitterPath) end

function UGMCheatManager:SpawnEmitterTimer() end

---@param Visible number
function UGMCheatManager:SetCurPawnMeshVisible(Visible) end

---@param Update number
function UGMCheatManager:SetCurPawnMeshSkeletonUpdate(Update) end

---@param ArmLength number
function UGMCheatManager:SetArmLength(ArmLength) end

---@param bNewUseViewTranslatedTransform boolean
function UGMCheatManager:SetUseViewTranslatedTransform(bNewUseViewTranslatedTransform) end

function UGMCheatManager:SwitchAnimInstance() end

function UGMCheatManager:DumpPropertyRepData() end

function UGMCheatManager:TestClassFieldAccessDenied() end

---@param isOpen boolean
function UGMCheatManager:OpenPassWallCheck(isOpen) end

---@param isOpen boolean
function UGMCheatManager:OpenPassWallPenetratingRevise(isOpen) end

---@param isOpen boolean
function UGMCheatManager:PassWallIgnoreHitPawnBox(isOpen) end

---@param isOpen boolean
function UGMCheatManager:OpenCompress(isOpen) end

---@param isOpen boolean
function UGMCheatManager:OpenClientAuthLoc(isOpen) end

---@param Role number
function UGMCheatManager:TestMessageBox(Role) end

---@param inMsg string
function UGMCheatManager:ShowMessageBox(inMsg) end

---@param dis number
---@param offsetZ number
---@param mobilityType number
---@param LocationOffset FVector
---@param bSendDS boolean
function UGMCheatManager:GMSetSweepActorLocationOffset(dis, offsetZ, mobilityType, LocationOffset, bSendDS) end

---@param dis number
---@param offsetZ number
---@param mobilityType number
---@param bEnableCollision boolean
---@param bSendDS boolean
function UGMCheatManager:GMSetClientSweepActorEnableCollision(dis, offsetZ, mobilityType, bEnableCollision, bSendDS) end

---@param dis number
---@param offsetZ number
---@param mobilityType number
---@param bEnableCollision boolean
---@param bSendDS boolean
function UGMCheatManager:GMSetClientSweepCharacterCapsuleEnableCollision(dis, offsetZ, mobilityType, bEnableCollision, bSendDS) end

---@param dis number
---@param offsetZ number
---@param bEnableCollision boolean
---@param bSendDS boolean
function UGMCheatManager:GMSetClientSweepVehicleShapeEnableCollision(dis, offsetZ, bEnableCollision, bSendDS) end

---@param dis number
---@param offsetZ number
---@param mobilityType number
---@param radiusScale number
---@param halfHeightScale number
---@param bShowPhysics boolean
---@param bShowFaceIndex boolean
---@param bSweepByObjectType boolean
function UGMCheatManager:TestSweepSinglePawnDir(dis, offsetZ, mobilityType, radiusScale, halfHeightScale, bShowPhysics, bShowFaceIndex, bSweepByObjectType) end

---@param dis number
---@param offsetZ number
---@param mobilityType number
---@param radiusScale number
---@param halfHeightScale number
---@param bShowPhysics boolean
---@param bShowFaceIndex boolean
function UGMCheatManager:TestSweepSinglePawnFloor(dis, offsetZ, mobilityType, radiusScale, halfHeightScale, bShowPhysics, bShowFaceIndex) end

---@param CapsuleLocation FVector
---@param bZeroDelta boolean
function UGMCheatManager:TestFindFloor(CapsuleLocation, bZeroDelta) end

---@param offsetDir number
---@param offsetZ number
---@param DwonLineDistance number
function UGMCheatManager:TestFindDownTest(offsetDir, offsetZ, DwonLineDistance) end

---@param offsetDir number
---@param offsetZ number
---@param DwonLineDistance number
function UGMCheatManager:TestFindDownMultiTest(offsetDir, offsetZ, DwonLineDistance) end

---@param offsetDir number
---@param offsetZ number
---@param DwonLineDistance number
function UGMCheatManager:TestCustomFindDownTest(offsetDir, offsetZ, DwonLineDistance) end

---@param offsetDir number
---@param offsetZ number
---@param DwonLineDistance number
function UGMCheatManager:TestCustomFindDownMultiTest(offsetDir, offsetZ, DwonLineDistance) end

---@param Tag string
function UGMCheatManager:RefreshPhysicsByTag(Tag) end

---@param Tag string
function UGMCheatManager:GetMeshLocationByTag(Tag) end

---@param mobilityType number
---@param pos FVector
---@param radiusScale number
---@param halfHeightScale number
function UGMCheatManager:TestOverlapByScale(mobilityType, pos, radiusScale, halfHeightScale) end

---@param mobilityType number
---@param radiusScale number
---@param halfHeightScale number
function UGMCheatManager:TestPawnOverlapByScale(mobilityType, radiusScale, halfHeightScale) end

---@param CheckOverlapTestAmount number
---@param inRadius number
---@param inHalfHeight number
function UGMCheatManager:TestOverlapProperty(CheckOverlapTestAmount, inRadius, inHalfHeight) end

---@param CheckOverlapTestAmount number
---@param dis number
function UGMCheatManager:TestSweepSingleProperty(CheckOverlapTestAmount, dis) end

---@param CheckOverlapTestAmount number
---@param dis number
function UGMCheatManager:TestSweepMultiProperty(CheckOverlapTestAmount, dis) end

---@param CheckOverlapTestAmount number
---@param dis number
function UGMCheatManager:TestLineTraceSingleProperty(CheckOverlapTestAmount, dis) end

---@param CheckOverlapTestAmount number
---@param dis number
function UGMCheatManager:TestLineTraceMultiProperty(CheckOverlapTestAmount, dis) end

---@param isOpen boolean
function UGMCheatManager:OpenCombinePassWallCheck(isOpen) end

---@param isOpen boolean
function UGMCheatManager:OpenCombineMoveBagCheckActorNotMoveStatus(isOpen) end

---@param isOpen boolean
function UGMCheatManager:OpenCombineMoveBagOverlapTestByDynamic(isOpen) end

---@param CheckOverlapTestAmount number
function UGMCheatManager:ShowCombineMoveBagOverlapTestTime(CheckOverlapTestAmount) end

---@param isOpen boolean
function UGMCheatManager:TestCheckClientFallingFloorHit(isOpen) end

---@param isOpen boolean
function UGMCheatManager:OpenCheckClientFallingFloorHit(isOpen) end

---@param bShowPhysics boolean
function UGMCheatManager:PrintPawnCurrentFloor(bShowPhysics) end

---@param StartPos FVector
---@param EndPos FVector
function UGMCheatManager:TestCheckMovePassWall(StartPos, EndPos) end

---@param DeltaSeconds number
---@param Location FVector
---@param Acceleration FVector
---@param Velocity FVector
---@param FinaDir FVector
function UGMCheatManager:TestPawnMoveByCustomMoveAlongFloor(DeltaSeconds, Location, Acceleration, Velocity, FinaDir) end

---@param DeltaSeconds number
---@param Location FVector
---@param Acceleration FVector
---@param Velocity FVector
---@param FinaDir FVector
function UGMCheatManager:TestPawnMoveByPhysWalking(DeltaSeconds, Location, Acceleration, Velocity, FinaDir) end

---@param DeltaSeconds number
---@param Location FVector
---@param Acceleration FVector
---@param Velocity FVector
function UGMCheatManager:TestPawnMoveParam(DeltaSeconds, Location, Acceleration, Velocity) end

---@param mobilityType number
---@param start FVector
---@param End FVector
---@param isShowFaceIndex boolean
---@param bShowPhysics boolean
function UGMCheatManager:TestPawnSweepSingle(mobilityType, start, End, isShowFaceIndex, bShowPhysics) end

---@param TestCount number
---@param Dist number
---@param mobilityType number
function UGMCheatManager:TestPawnSweepSingleProfile(TestCount, Dist, mobilityType) end

---@param mobilityType number
---@param start FVector
---@param End FVector
---@param radiusScale number
---@param halfHeightScale number
---@param isShowFaceIndex boolean
---@param bShowPhysics boolean
function UGMCheatManager:TestPawnSweepSingleByScale(mobilityType, start, End, radiusScale, halfHeightScale, isShowFaceIndex, bShowPhysics) end

---@param mobilityType number
---@param start FVector
---@param End FVector
---@param radiusScale number
---@param halfHeightScale number
---@param isShowFaceIndex boolean
---@param bShowPhysics boolean
function UGMCheatManager:TestPawnSweepMultiByScale(mobilityType, start, End, radiusScale, halfHeightScale, isShowFaceIndex, bShowPhysics) end

---@param flag number
function UGMCheatManager:SetClientPawnLocationNan(flag) end

---@param TraceStart FVector
---@param TraceEnd FVector
---@param RotationQuat FQuat
function UGMCheatManager:TestComponentSweepMulti(TraceStart, TraceEnd, RotationQuat) end

---@param bOpen boolean
function UGMCheatManager:ShowTurnAroundLog(bOpen) end

---@param bOpen boolean
function UGMCheatManager:ShowPawnMoveLogOnlyAI(bOpen) end

---@param bOpen boolean
function UGMCheatManager:ShowPawnMoveLog(bOpen) end

---@param flag number
function UGMCheatManager:GMShowPawnMoveLogFlag(flag) end

---@param flag number
function UGMCheatManager:ShowPawnMoveLogFlag(flag) end

---@param Role number
---@param Flag number
function UGMCheatManager:GMSetBaseCollisionEnable(Role, Flag) end

---@param Role number
---@param MovementMode number
---@param CustomMode number
function UGMCheatManager:GMSetMovementMode(Role, MovementMode, CustomMode) end

---@param CustomMode number
function UGMCheatManager:GMSetLandCustomMovementMode(CustomMode) end

function UGMCheatManager:ResetCustomMovementState() end

---@param flag number
function UGMCheatManager:ShowPawnMoveLogCharacterFlag(flag) end

---@param flag number
---@param PlayerKey number
function UGMCheatManager:ShowPawnMoveLogFlagWithPlayerKey(flag, PlayerKey) end

---@param flag number
---@param PlayerKey number
function UGMCheatManager:ShowMoveDebugDrawFlagWithPlayerKey(flag, PlayerKey) end

---@param flag number
---@param PlayerKey number
function UGMCheatManager:ShowMoveHeadFlagWithPlayerKey(flag, PlayerKey) end

---@param PlayerKey number
---@param MaxCount number
function UGMCheatManager:StartMovementLogRecord(PlayerKey, MaxCount) end

---@param PropertyName string
function UGMCheatManager:AddMoveLogProperty(PropertyName) end

function UGMCheatManager:ClearMoveLogProperty() end

function UGMCheatManager:StopMovementLogRecord() end

---@param InAIMovementSimulatePredictTime number
function UGMCheatManager:SetAIMovementSimulatePredictTime(InAIMovementSimulatePredictTime) end

---@param Flag number
---@param Distance number
function UGMCheatManager:ShelterKillDebug(Flag, Distance) end

---@param bOpen boolean
function UGMCheatManager:PhysWalkingIsNotReviseVelocity(bOpen) end

---@param bOpen boolean
function UGMCheatManager:ShowPawnImpulseLog(bOpen) end

---@param bOpen boolean
function UGMCheatManager:StopAimRotation(bOpen) end

---@param radius number
---@param halfH number
function UGMCheatManager:AlterPawnCapsuleSize(radius, halfH) end

---@param bShow boolean
---@param type number
---@param particalNum number
function UGMCheatManager:ShowHideScreenParticleEffect(bShow, type, particalNum) end

---@param ID number
function UGMCheatManager:TipShowID(ID) end

---@param ID number
---@param ID2 number
function UGMCheatManager:TipShow2ID(ID, ID2) end

---@param ID number
---@param str1 string
---@param str2 string
function UGMCheatManager:TipShowIDWithParams(ID, str1, str2) end

---@param ID number
function UGMCheatManager:TipPopUpWindowWithID(ID) end

function UGMCheatManager:DumpUIElemType() end

---@param className string
---@param active boolean
function UGMCheatManager:SetSkillActiveByClassName(className, active) end

---@param classPath string
function UGMCheatManager:AddOneSkillByClassPath(classPath) end

---@param SkillClassPath string
function UGMCheatManager:RemoveOneSkillByClassPath(SkillClassPath) end

function UGMCheatManager:SkillShowState() end

---@param cdEnergy number
function UGMCheatManager:SkillRecoveryCD(cdEnergy) end

---@param CDPercent number
function UGMCheatManager:PESkillRecoveryCD(CDPercent) end

function UGMCheatManager:SkillTriggerSkillWithUI() end

function UGMCheatManager:SkillForceSynctate() end

function UGMCheatManager:SkillPrintCDData() end

---@param Count number
function UGMCheatManager:SimulateSpawnItem(Count) end

function UGMCheatManager:PrintSimulateSpawnItem() end

---@param Index number
function UGMCheatManager:TeleportToFireBalloon(Index) end

---@param Distance number
function UGMCheatManager:SetSnipeHeadKillRequireDistance(Distance) end

---@param IsFollow number
function UGMCheatManager:SpawnIceYearBeast(IsFollow) end

---@param Enable number
function UGMCheatManager:GMSetGISFailLogEnabled(Enable) end

---@param EventName string
---@param Timestamp string
function UGMCheatManager:FireGameEvent(EventName, Timestamp) end

---@param Count number
function UGMCheatManager:GlideTrail(Count) end

---@param EventID number
function UGMCheatManager:TriggerNYAEvent(EventID) end

function UGMCheatManager:OpenAutoTapdUI() end

---@param DestinTime number
function UGMCheatManager:TriggerNYAJumpSequence(DestinTime) end

---@param EventID number
---@param InParamInt number
---@param InPatemStr string
---@param IsClosest boolean
function UGMCheatManager:TriggerConcertEvent(EventID, InParamInt, InPatemStr, IsClosest) end

---@param DestinTime number
---@param IsClosest boolean
function UGMCheatManager:JumpConcertSequence(DestinTime, IsClosest) end

---@param Count number
---@param InAngle number
---@param InRadius number
function UGMCheatManager:SpawnKOFSkillActor(Count, InAngle, InRadius) end

---@param Count number
---@param IsHit number
---@param InAngle number
---@param InRadius number
function UGMCheatManager:SpawnKOFSkillActorHitParticle(Count, IsHit, InAngle, InRadius) end

function UGMCheatManager:TriggerAIBuildSkill() end

function UGMCheatManager:TestMoveAirDropBoxUnderGround() end

---@param LocX number
---@param LocY number
---@param LocZ number
---@param ActorPath string
function UGMCheatManager:CreateActorAtLoction(LocX, LocY, LocZ, ActorPath) end

function UGMCheatManager:ForceAppExit() end

---@param Tag string
function UGMCheatManager:TestDynamicWeatherEvent(Tag) end

---仅在本地加速
---@param NewTimeDilation number
function UGMCheatManager:SlomoLocal(NewTimeDilation) end

---调试上报
---@param InRep string
function UGMCheatManager:DebugAcRep(InRep) end

---@param DstWeather boolean
function UGMCheatManager:TestDynamicWeatherRep(DstWeather) end

function UGMCheatManager:MoveToMarkPosition() end

function UGMCheatManager:GetAllActorNames() end

---@param CVarName string
---@param DefaultValue number
function UGMCheatManager:RegisterFloatCVar(CVarName, DefaultValue) end

---@param CVarName string
---@param DefaultValue string
function UGMCheatManager:RegisterStringCVar(CVarName, DefaultValue) end

---@param CVarName string
---@param DefaultValue boolean
function UGMCheatManager:RegisterBoolCVar(CVarName, DefaultValue) end

---@param CVarName string
---@param DefaultValue number
function UGMCheatManager:RegisterIntCVar(CVarName, DefaultValue) end

---@param AnimalType EAnimalType
---@param Num number
function UGMCheatManager:DeleverAnimalCountPerWave(AnimalType, Num) end

function UGMCheatManager:AllJump() end

---@param WeaponGroupID number
function UGMCheatManager:ChangeArmsRaceWeaponGroup(WeaponGroupID) end

---@param State number
function UGMCheatManager:DisablePawnState(State) end

---@param State number
function UGMCheatManager:ResetPawnStateDisabled(State) end

---@param Tag string
function UGMCheatManager:SpawnItemZombie(Tag) end

function UGMCheatManager:DumpBuffManager() end

---@param ActorClass string
---@param PropertyName string
---@param Value string
function UGMCheatManager:SetAllActorsOfClassPropertyValue(ActorClass, PropertyName, Value) end

---@param PlayerName string
function UGMCheatManager:CreateAvatarPose(PlayerName) end

---@param PlayerName string
---@param LODIndex number
---@param SectionIndex number
---@param IsShow boolean
function UGMCheatManager:TestHideMaterial(PlayerName, LODIndex, SectionIndex, IsShow) end

---@param StrategyType number
function UGMCheatManager:EnableLandscapeRenderStrategy(StrategyType) end

---@param LODType number
function UGMCheatManager:EnableHideLandscapLOD(LODType) end

function UGMCheatManager:EnableCounterLODLandscapeDrawcalls() end

---@param MaskValue number
function UGMCheatManager:EnableTestLandscapeRender(MaskValue) end

function UGMCheatManager:EnableLogLandscapeRenderDebugInfo() end

---@param ActorClass string
---@param FunctionName string
---@param Arguments ULuaArrayHelper<string>
function UGMCheatManager:CallAllActorsOfClassFunction(ActorClass, FunctionName, Arguments) end

---@param ID number
function UGMCheatManager:GMReqCreateVehicleWithSkinAvatarID(ID) end

---@param Tag string
function UGMCheatManager:SpawnCallZombie(Tag) end

---@param dist number
function UGMCheatManager:DisableCollision(dist) end

---@param bDst boolean
function UGMCheatManager:BlendFog(bDst) end

---@param PreviousState number
---@param CurrentState number
function UGMCheatManager:ZombieHealthStateChange(PreviousState, CurrentState) end

---@param DefaultTag string
function UGMCheatManager:SpawnItemBySpotDefaultTag(DefaultTag) end

---@param Sx number
---@param Sy number
---@param Sz number
---@param Tx number
---@param Ty number
---@param Tz number
---@param Radius number
function UGMCheatManager:ShootBlockTest(Sx, Sy, Sz, Tx, Ty, Tz, Radius) end

---@param Sx number
---@param Sy number
---@param Sz number
---@param Tx number
---@param Ty number
---@param Tz number
function UGMCheatManager:AcBlockTest(Sx, Sy, Sz, Tx, Ty, Tz) end

---@param speed number
function UGMCheatManager:SetDesertStormRotateSpeed(speed) end

---@param x number
---@param y number
---@param ClassPath string
function UGMCheatManager:CallTransportAircraft(x, y, ClassPath) end

---@param x number
---@param y number
---@param z number
---@param ClassPath string
function UGMCheatManager:AirDropByClassPath(x, y, z, ClassPath) end

function UGMCheatManager:DropAllItem() end

function UGMCheatManager:ForceDropAllItem() end

function UGMCheatManager:DropCurrentWeapon() end

---@param Radius number
---@param CircleType number
---@param InnerCircleType number
function UGMCheatManager:MakeDesiredCircle(Radius, CircleType, InnerCircleType) end

function UGMCheatManager:RecollectBPTable() end

function UGMCheatManager:RecollectEditorLoadLevels() end

function UGMCheatManager:GMTestMapNoise() end

function UGMCheatManager:TraceVehicleToGroudDistance() end

---@param PoseID number
---@param OffsetIndex number
---@param OffsetX number
---@param OffsetY number
---@param OffsetZ number
function UGMCheatManager:ModifyBodyRelativeOffset(PoseID, OffsetIndex, OffsetX, OffsetY, OffsetZ) end

---@param Tag number
function UGMCheatManager:GMCloseUELog(Tag) end

function UGMCheatManager:DrawAILeanOcclusion() end

function UGMCheatManager:BuffAddAll() end

function UGMCheatManager:BuffClearAll() end

---@param Cmd string
function UGMCheatManager:IDIPModifyAirDropConfigs(Cmd) end

---@param Cmd string
function UGMCheatManager:IDIPModifyItemsBoxConfigs(Cmd) end

---@param bStar boolean
---@param index number
function UGMCheatManager:StartOrStopStarGameEvent(bStar, index) end

function UGMCheatManager:CleanStarGameCD() end

---@param PlayerName string
---@param TeamID number
---@param PlayerKillNum number
---@param TeamKillNum number
function UGMCheatManager:ShowOBMultiKillTips(PlayerName, TeamID, PlayerKillNum, TeamKillNum) end

---@param TeamAID number
---@param TeamBID number
---@param bIsAll boolean
function UGMCheatManager:ShowOBTeamKillTeamTips(TeamAID, TeamBID, bIsAll) end

---@param InsVal number
function UGMCheatManager:AddAllSeasonTaskProgress(InsVal) end

---@param Taskid number
function UGMCheatManager:TestFireTaskComputeEvent(Taskid) end

function UGMCheatManager:ViewTargetActor() end

function UGMCheatManager:SpawnAvatarTestActor() end

---@return number
function UGMCheatManager:QuestCurrentShaderNum() end

---@param ResPath string
function UGMCheatManager:TestSyncLoad(ResPath) end

function UGMCheatManager:DmpOLType() end

---@param X number
---@param Y number
---@param Z number
---@param BP_Path string
function UGMCheatManager:SpawnedOneActor(X, Y, Z, BP_Path) end

---@param BP_Path string
---@param Count number
function UGMCheatManager:SpawnedActorWithCount(BP_Path, Count) end

---@param InPendantID number
---@param InCheckInterval number
function UGMCheatManager:LocalTestBackpackPendantForAllBackpack(InPendantID, InCheckInterval) end

function UGMCheatManager:CheckOneBackpackForPandant() end

---@param InBackpackID number
---@param InCheckInterval number
function UGMCheatManager:LocalTestBackpackForAllBackpackPendant(InBackpackID, InCheckInterval) end

function UGMCheatManager:CheckOnePendantForBackpack() end

function UGMCheatManager:LocalTestPlayerOBInfo() end

---@param InIsEnable number
---@param InDisplayIndex number
function UGMCheatManager:LocalTestPosterCapture(InIsEnable, InDisplayIndex) end

---@param InTestWearSkinType number
---@param InTestWeaponType number
function UGMCheatManager:TestPlayerOBInfo(InTestWearSkinType, InTestWeaponType) end

---@param InTestActorKey string
function UGMCheatManager:SpawnCustomTestConfigActor(InTestActorKey) end

---@param InAvatarID number
function UGMCheatManager:EquipTestAvatar(InAvatarID) end

---@param ItemName string
---@param Count number
function UGMCheatManager:SetTrainingItemInfo(ItemName, Count) end

function UGMCheatManager:ClearTrainingData() end

function UGMCheatManager:CaptureFrame() end

function UGMCheatManager:UploadFrame() end

function UGMCheatManager:DownloadFrame() end

---@param bEnable boolean
function UGMCheatManager:EnableFireShotCameraRotRecord(bEnable) end

function UGMCheatManager:GrenadeToggleSkill() end

function UGMCheatManager:DebugPickupHuntTask() end

function UGMCheatManager:FNameTest() end

---@param avatarID1 number
---@param avatarID2 number
---@param avatarID3 number
---@param avatarID4 number
function UGMCheatManager:LockBoardAvatar(avatarID1, avatarID2, avatarID3, avatarID4) end

function UGMCheatManager:UnLockBoardAvatar() end

function UGMCheatManager:StopBoardAvatarRefresh() end

---@param open boolean
---@param interval number
function UGMCheatManager:OpenBoardAvatarTick(open, interval) end

---@param index number
function UGMCheatManager:RemoveBoardAvatarShowcase(index) end

---@param index number
function UGMCheatManager:SpawnBoardAvatarShowcase(index) end

---@param Path string
---@param SpawnOnDS number
---@param Num number
---@param isAttach number
function UGMCheatManager:SpawnActorByPath(Path, SpawnOnDS, Num, isAttach) end

function UGMCheatManager:DestroySpawnedActors() end

---@param Path string
---@param X number
---@param Y number
---@param Z number
---@param RelativeToPlayer number
---@param UseRotation number
function UGMCheatManager:SpawnActorByPathAndLoc(Path, X, Y, Z, RelativeToPlayer, UseRotation) end

function UGMCheatManager:SpawnDoors() end

function UGMCheatManager:RecordVehicle() end

function UGMCheatManager:MoveVehicle() end

---@param bWantsAllow boolean
function UGMCheatManager:AllowAudioPlayback(bWantsAllow) end

---@param open boolean
function UGMCheatManager:TestOpenHDR(open) end

function UGMCheatManager:FakePlayerEnterHelicopter() end

function UGMCheatManager:FakePlayerEnterBunker() end

function UGMCheatManager:FakePlayerEnterTaxi() end

---@param bEnable boolean
function UGMCheatManager:DisablePlayerGravity(bEnable) end

---@param ActorClassPath string
---@param GapSize number
function UGMCheatManager:SpawnActorByClass(ActorClassPath, GapSize) end

---@param ActorClassPath string
function UGMCheatManager:LoadClassByPath(ActorClassPath) end

function UGMCheatManager:StartCapAudio() end

function UGMCheatManager:StopCapAudio() end

---@param InPosX number
---@param InPosY number
---@param InPosZ number
function UGMCheatManager:SpawnAirMissile(InPosX, InPosY, InPosZ) end

function UGMCheatManager:BlackBomb() end

function UGMCheatManager:BlackBombIcon() end

---@param bStart boolean
function UGMCheatManager:GMSetCircleRun(bStart) end

function UGMCheatManager:GMPauseCircle() end

function UGMCheatManager:GMUnPauseCircle() end

function UGMCheatManager:GMPlayerUpgrade() end

---@param LodIdx number
---@param IsBatchAll number
function UGMCheatManager:AvatarBatchTest(LodIdx, IsBatchAll) end

function UGMCheatManager:AvatarBatchUseGPUOpt() end

function UGMCheatManager:ApplyDefaultMat() end

---@param InValue boolean
function UGMCheatManager:ToggleAIRestartPlayer(InValue) end

function UGMCheatManager:TriggerBlackAirAttack() end

---@param InYaw number
function UGMCheatManager:AirAttack(InYaw) end

---@param bStart boolean
---@param DeltaTime number
function UGMCheatManager:ContinuedAirAttack(bStart, DeltaTime) end

---@param InClassPath string
function UGMCheatManager:TriggerNearestActivityActor(InClassPath) end

---@param NewState string
---@param Radius number
function UGMCheatManager:GMChangeActivityActorStateInRange(NewState, Radius) end

function UGMCheatManager:TriggerNearestVendingMachine() end

---@param type number
function UGMCheatManager:HouseExplosionTest(type) end

---@param type number
function UGMCheatManager:WallExplosionTest(type) end

---@param type number
---@param Str string
function UGMCheatManager:LogicAreaTest(type, Str) end

---@param Cmd string
function UGMCheatManager:ClientSimulationNegotiateDHKey(Cmd) end

function UGMCheatManager:SpawnBuildingOne() end

function UGMCheatManager:SpawnBuildingTwo() end

---@param bClearNoGC boolean
function UGMCheatManager:ClearAssetsRefManagerAllRef(bClearNoGC) end

function UGMCheatManager:LogAssetsRefManagerAllRef() end

---@param EffectNum number
---@param ActorNum number
function UGMCheatManager:ChangeFireWorkLimit(EffectNum, ActorNum) end

---@param bEnable boolean
function UGMCheatManager:EnableFireWorkOpt(bEnable) end

---@param bHide boolean
---@param ActorName string
function UGMCheatManager:HideActorByName(bHide, ActorName) end

---@param bHide boolean
---@param MeshName string
function UGMCheatManager:HideAllMeshCompsByMeshName(bHide, MeshName) end

---@param Path string
function UGMCheatManager:AddBlackLevelPathDic(Path) end

---@param InAvatarList string
---@param InParse string
---@param InEmojiID number
---@param InScaleValue number
---@param InOffsetValue number
function UGMCheatManager:AutoTestPlayAnimationStartParam(InAvatarList, InParse, InEmojiID, InScaleValue, InOffsetValue) end

---@param InAvatarList string
---@param InParse string
---@param InEmojiID number
function UGMCheatManager:AutoTestPlayAnimationStart(InAvatarList, InParse, InEmojiID) end

function UGMCheatManager:AutoTestAnimationTestGetAllAvatarList() end

function UGMCheatManager:TestAddUIToRoot() end

function UGMCheatManager:ChangeFace() end

function UGMCheatManager:ChangeFaceMore() end

---@param num number
function UGMCheatManager:AddParkScore(num) end

---@param isEnable boolean
function UGMCheatManager:SetPickupEnable(isEnable) end

---@param Func string
---@param Params string
function UGMCheatManager:DoLuaGM(Func, Params) end

---@param Distance number
function UGMCheatManager:SpawnWeaponDamageMonitor(Distance) end

---@param Func string
---@param Params string
function UGMCheatManager:DoClientLuaGM(Func, Params) end

function UGMCheatManager:AddWorldToRoot() end

---@param LevelName string
function UGMCheatManager:LoadStreamLevel(LevelName) end

---@param LevelName string
function UGMCheatManager:ToggleStreamLevel(LevelName) end

---@param LevelName string
function UGMCheatManager:ToggleWorldCompositionLevel(LevelName) end

---@param PathName string
---@param bObjOrUClass boolean
function UGMCheatManager:PrintRefrence(PathName, bObjOrUClass) end

---@param bAvailability boolean
function UGMCheatManager:SetLowQualityUnderWaterEffect(bAvailability) end

---@param Num number
---@param avatarList string
function UGMCheatManager:AddAIToGameWithGalaxyFace(Num, avatarList) end

---@param Num number
---@param avatarList string
function UGMCheatManager:AddAIToGameWithNormalFace(Num, avatarList) end

function UGMCheatManager:EnableShowAirAttackIcon() end

---@param enable number
function UGMCheatManager:AirAttackMaterialize(enable) end

---@param Path string
function UGMCheatManager:PlayMontageByPath(Path) end

---@param PropName string
---@param PropType string
---@param PropValue string
function UGMCheatManager:SetPlayerCurrentWeaponPropertyValue(PropName, PropType, PropValue) end

---@param PropName string
function UGMCheatManager:AddWeaponPropertyNameToPrintOnShoot(PropName) end

---@param avatarSurtID number
function UGMCheatManager:AddItem_AvatarSuit(avatarSurtID) end

function UGMCheatManager:TestObjectLimit() end

---@param ModuleName string
---@param FuncName string
---@param ParamStr string
function UGMCheatManager:SendGMToLuaDS(ModuleName, FuncName, ParamStr) end

function UGMCheatManager:LetDSCrash() end

---@param id number
---@param OpenActiveRegionTag boolean
---@param Pitch number
---@param Yaw number
---@param Roll number
function UGMCheatManager:SpawnVehicleWithID(id, OpenActiveRegionTag, Pitch, Yaw, Roll) end

---@param Path string
function UGMCheatManager:SpawnAcotorWithPath(Path) end

---@param Path string
---@param SpawnLocation FVector
---@param WarmUpTime number
---@param PauseAfterWarmUp boolean
---@param Lod number
---@param bDeterministic boolean
---@param PlaySpeed number
function UGMCheatManager:SpawnEffectWithPath(Path, SpawnLocation, WarmUpTime, PauseAfterWarmUp, Lod, bDeterministic, PlaySpeed) end

---@param bHide boolean
function UGMCheatManager:HideMe(bHide) end

---@param MaterialPath string
---@param SpawnLocation FVector
---@param SpawnRotate FVector
---@param Size number
---@param MeshPath string
function UGMCheatManager:SpawnMaterialWithPath(MaterialPath, SpawnLocation, SpawnRotate, Size, MeshPath) end

---@param BeginLocation FVector
---@param EndLocation FVector
---@param NormalizedLocation number
---@param AvatarBPPath string
function UGMCheatManager:SpawnAvatarWithPath(BeginLocation, EndLocation, NormalizedLocation, AvatarBPPath) end

function UGMCheatManager:ClearSpawnedEffect() end

function UGMCheatManager:ToggleShowParticle() end

---@param PauseAllPawn boolean
---@param WarmUpRate number
function UGMCheatManager:PauseAvatarEffect(PauseAllPawn, WarmUpRate) end

---@param id number
---@param Loc FVector
---@param Rotator FRotator
---@param JustClient boolean
---@param SimlutePhysics boolean
---@param LinVel FVector
---@param AngVel FVector
function UGMCheatManager:SpawnVehicleWithTrans(id, Loc, Rotator, JustClient, SimlutePhysics, LinVel, AngVel) end

function UGMCheatManager:ExitVehicleAndDestory() end

function UGMCheatManager:SleepAllVehicle() end

function UGMCheatManager:EnterNearestVehicle() end

---@param ID number
---@param SkipCheckBeforeReqEnterVehicle boolean
function UGMCheatManager:EnterVehicleWithID(ID, SkipCheckBeforeReqEnterVehicle) end

function UGMCheatManager:VehicleWeaponStartFireOnClient() end

function UGMCheatManager:VehicleWeaponStartFireOnServer() end

---@param SeatID number
---@param weaponIndex number
---@param weaponIndexSupport number
function UGMCheatManager:VehicleWeapon_AddVehicleWeaponFromSupportKit(SeatID, weaponIndex, weaponIndexSupport) end

---@param SeatID number
---@param weaponIndex number
function UGMCheatManager:VehicleWeapon_RemoveVehicleWeapon(SeatID, weaponIndex) end

---@param Enable number
function UGMCheatManager:EnableFixReverseAsBrakeOnDynamicPlatform(Enable) end

---@param bEnter boolean
function UGMCheatManager:ActiveNearestVehicleRegionsChanged(bEnter) end

function UGMCheatManager:SleepNearestVehicle() end

---@param ModuleName string
---@param FuncName string
---@param ParamStr string
function UGMCheatManager:GmComponentFunc(ModuleName, FuncName, ParamStr) end

---@param id number
---@param Loc FVector
---@param Delay number
function UGMCheatManager:SpawnVehicleAndSleep(id, Loc, Delay) end

function UGMCheatManager:DelaySleepVehicle() end

---@param SkillType number
function UGMCheatManager:TestVehicleSkill(SkillType) end

function UGMCheatManager:DumpVehicleSummary() end

function UGMCheatManager:GMTestProcessExitVehicleFailTLogUpLoad() end

function UGMCheatManager:GMTestProcessVehicleUpSpeedGreatChangeTLog() end

---@param NewScale number
function UGMCheatManager:VehicleChangeScale(NewScale) end

---@param Type number
function UGMCheatManager:ChangeBigShipRoute(Type) end

function UGMCheatManager:HideBigShipMesh() end

---@param Index number
function UGMCheatManager:TeleportToBigAirShip(Index) end

---@param Index number
function UGMCheatManager:TeleportToAirDropPlane(Index) end

function UGMCheatManager:ForceSpawnAccidentPlane() end

---@param Num number
---@param LocX number
---@param LocY number
---@param LocZ number
---@param HeightGap number
---@param LocXGap number
---@param LocYGap number
function UGMCheatManager:SpawnAirDropPlanes(Num, LocX, LocY, LocZ, HeightGap, LocXGap, LocYGap) end

---@param AirDropIndex number
function UGMCheatManager:TeleportAIToAirDropPlane(AirDropIndex) end

---@param AirDropIndex number
---@param bFly boolean
function UGMCheatManager:TeleportTeamToAirDropPlane(AirDropIndex, bFly) end

function UGMCheatManager:MakeAirDropPlanesFly() end

---@param bMove boolean
function UGMCheatManager:SetBigAirShipMoveState(bMove) end

---@param InSpeedRate number
function UGMCheatManager:SetBigAirShipSpeedRate(InSpeedRate) end

---@param TickInterval number
function UGMCheatManager:SetBigAirShipClientTickRate(TickInterval) end

function UGMCheatManager:BigAirShipPreLeave() end

function UGMCheatManager:FutureCarrierPreLeave() end

function UGMCheatManager:TestTransformPawn() end

---测试按配置下标切换天气效果. feishen, 20210202
---@param IDTag string
---@param Index number
---@param LogicTag string
function UGMCheatManager:TestSwitchWeatherByIndex(IDTag, Index, LogicTag) end

---ds设置时间偏移值， gm使用，有些逻辑需要判断时间逻辑，测试不好直接改两端时间，设计这个偏移修正值，就是来测试，正常是0， 偏移设置按照秒+，偏移一天，就是60*60*24
---@param InDSFixedDateTime number
function UGMCheatManager:SetDSFixedDateTime(InDSFixedDateTime) end

function UGMCheatManager:TestObGmKill() end

---@param Type_id number
---@param Count number
function UGMCheatManager:TestObSpecialTips(Type_id, Count) end

---@param CombatDroneRewardPointType number
---@param ExcellentOperationType number
---@param RescueDistance number
---@param RescueCircleNum number
---@param bRecallUseGun number
---@param RecallTeammateNum number
function UGMCheatManager:TestAddDroneRewardPoint(CombatDroneRewardPointType, ExcellentOperationType, RescueDistance, RescueCircleNum, bRecallUseGun, RecallTeammateNum) end

---@param MaxPoint number
function UGMCheatManager:SetDailyRewardPointMax(MaxPoint) end

function UGMCheatManager:SpawnVehicleAI() end

---@param bForceNoActive boolean
function UGMCheatManager:VehicleAIForcecNoActive(bForceNoActive) end

---@param bShowIcon boolean
function UGMCheatManager:VehicleAIShowIconInMiniMap(bShowIcon) end

---@param ActorClassPath string
---@param StateName string
---@param Count number
function UGMCheatManager:ChangeActorState(ActorClassPath, StateName, Count) end

---@param ActorClassPath string
function UGMCheatManager:DumpActorState(ActorClassPath) end

function UGMCheatManager:GMTestFireEvent() end

---@param ActorName string
function UGMCheatManager:TeleportToActor(ActorName) end

---@param Delay number
function UGMCheatManager:LoadAllLevelThenPrint(Delay) end

function UGMCheatManager:LogOutStatLevels() end

---@param LevelNameStr string
function UGMCheatManager:LoadLevel(LevelNameStr) end

function UGMCheatManager:ServerLoadAllLevel() end

---@param LevelName string
function UGMCheatManager:ServerUnloadLevel(LevelName) end

function UGMCheatManager:ServerForceWeaponReconnect() end

function UGMCheatManager:TestQuickSpawnItem() end

---@param EventID string
function UGMCheatManager:GMWayPointEvent(EventID) end

---@param NameOfAIWayPointSelector string
---@param GMPathIndex number
function UGMCheatManager:GMSelectorWayPoint(NameOfAIWayPointSelector, GMPathIndex) end

function UGMCheatManager:GMBehemothIgnorePlayer() end

function UGMCheatManager:GMBehemothIgnorePlayerCount() end

---@param SkillIndex number
function UGMCheatManager:GMNearestAICastSkill(SkillIndex) end

function UGMCheatManager:GetTeammateBattleResultData() end

---@param ActorClassPath string
function UGMCheatManager:TestFeedBack(ActorClassPath) end

---@param PackagePath string
function UGMCheatManager:DumpPackageReference(PackagePath) end

function UGMCheatManager:DumpPackageInfo() end

---@param ActorClassPath string
---@param Hand number
function UGMCheatManager:TestHaptic(ActorClassPath, Hand) end

function UGMCheatManager:TestVaultWindows() end

---@param ActorClassPath string
function UGMCheatManager:TestHaptic_HE(ActorClassPath) end

function UGMCheatManager:TestHaptic_HEByJson() end

function UGMCheatManager:ClearPoseSwitchAnimation() end

---@param ID number
function UGMCheatManager:TestVibrateEffectByAssetID(ID) end

---@param ID number
function UGMCheatManager:TestVibrateEffectByAssetIDDirectly(ID) end

---@param RecordFileName string
---@param AddStartItems string
---@param RecordDataClass string
function UGMCheatManager:AutoTestInputRecordeWriteStart(RecordFileName, AddStartItems, RecordDataClass) end

---@param RecordFileName string
---@param AddStartItems string
---@param RecordDataClass string
function UGMCheatManager:AutoTestInputRecordeCompareStart(RecordFileName, AddStartItems, RecordDataClass) end

function UGMCheatManager:ServerSpawnInputRecorderComp() end

---@param Index number
---@param bActive boolean
function UGMCheatManager:SwitchLuaNetworkTestActor(Index, bActive) end

function UGMCheatManager:SingleModeCheat() end

---@param InPlayerKey number
function UGMCheatManager:GMObserveCharacterByKey(InPlayerKey) end

---@param Change number
---@param HitRate number
---@param HitCount number
function UGMCheatManager:GMSuperTeamAIShoot(Change, HitRate, HitCount) end

---@param MaxDiff number
function UGMCheatManager:SetCustomMoveAllowablePositionError(MaxDiff) end

---@param NewMovementMode EMovementMode
function UGMCheatManager:SetMovementMode(NewMovementMode) end

---@param Mode number
function UGMCheatManager:SetCustomMoveUseDSPriorityMovement(Mode) end

---@param bOpen boolean
function UGMCheatManager:OpenFlyingMoveCheckPassWallAtAutonomousClient(bOpen) end

function UGMCheatManager:SkipLevelSequence() end

---@param bEnable number
---@param Filename string
function UGMCheatManager:EnableProfilerCaptureAK(bEnable, Filename) end

---@param Index number
function UGMCheatManager:RandomRouteSegment(Index) end

function UGMCheatManager:DrawAllPVSOCCompBound() end

function UGMCheatManager:ShowAllActiveTriggersOnServer() end

---@param InBPPath string
---@param TargetGrade number
---@param MaxHealth number
---@param ResetTime number
---@param DeviX number
---@param DeviY number
---@param DeviZ number
function UGMCheatManager:SpawnAsiaGameShootTar(InBPPath, TargetGrade, MaxHealth, ResetTime, DeviX, DeviY, DeviZ) end

function UGMCheatManager:ShowAsianGameTargetInfo() end

---@param InfoName string
function UGMCheatManager:ShowDSGameInfoByName(InfoName) end

---@param InfoName string
---@return number
function UGMCheatManager:GMGetInfectionType(InfoName) end

function UGMCheatManager:SaveDSGameInfosToIni() end

---@param IDIPConfigName string
function UGMCheatManager:GMPrintIDIPConfig(IDIPConfigName) end

---@param DelayQuitSpectating string
---@param DelayLookHelicopter string
function UGMCheatManager:BDLModifyReviveGM(DelayQuitSpectating, DelayLookHelicopter) end

---@param State string
function UGMCheatManager:ControlCurrentSequence(State) end

---@param RCRParamIndex number
---@param value number
function UGMCheatManager:GMModifyRCRParam(RCRParamIndex, value) end

---@param X number
---@param Y number
---@param Z number
---@param Extent number
function UGMCheatManager:GMDrawDebugBox(X, Y, Z, Extent) end

function UGMCheatManager:ResetClientMainPlayerAllWeaponShootDataRecord() end

---@param VelocityX number
---@param VelocityY number
---@param VelocityZ number
function UGMCheatManager:SetAdditiveVelocity(VelocityX, VelocityY, VelocityZ) end

function UGMCheatManager:AddSelfToRevivalChecker() end

function UGMCheatManager:CallPet() end

function UGMCheatManager:KillSelf() end

function UGMCheatManager:ReviveSelf() end

---@param State string
---@param Time number
function UGMCheatManager:SetGameModeStateTime(State, Time) end

---@param Stage number
---@param Time number
function UGMCheatManager:SetGameModeStateFightingStageTime(Stage, Time) end

---@param Num number
function UGMCheatManager:SetInitialSeekerNum(Num) end

---@param LogicTag string
---@param AllPC boolean
function UGMCheatManager:TestAlivePlayerCallPlane(LogicTag, AllPC) end

function UGMCheatManager:SpawnTestCarrier() end

function UGMCheatManager:UGCTestAirRoute() end

function UGMCheatManager:UGCTestCircle() end

function UGMCheatManager:UnloadAllSkills() end

---@param ReportType string
---@param ReportSubType string
---@param KeyWords string
---@param KeyWordsCount number
---@param Replace boolean
---@param StatType number
function UGMCheatManager:TestAddStringMsgToTLog(ReportType, ReportSubType, KeyWords, KeyWordsCount, Replace, StatType) end

function UGMCheatManager:TestReportStringMsg() end

---@param Path string
function UGMCheatManager:TestIDIPPlaneClassPath(Path) end

function UGMCheatManager:ShowPlayerMeshBound() end

---@param Num number
function UGMCheatManager:TestRollerCoasterPerformance(Num) end

function UGMCheatManager:DisableNewbieGuideComponent() end

---@param WithTeammate boolean
function UGMCheatManager:QuickStartBattleField(WithTeammate) end

---@param LogText string
function UGMCheatManager:WeaponShootTest(LogText) end

---@param bEnable boolean
function UGMCheatManager:EnableLocalWeaponInfiniteClipBullets(bEnable) end

---@param bOpen boolean
function UGMCheatManager:ShowAirplaneLog(bOpen) end

---@param bOpen boolean
function UGMCheatManager:SetPriorityBaseUpdateByTeleport(bOpen) end

function UGMCheatManager:ShowRevivalChecker() end

function UGMCheatManager:QuickPassTime() end

function UGMCheatManager:TestTarrayCheck() end

function UGMCheatManager:TestPrintCellPickupItemCount() end

function UGMCheatManager:TestPrintCellTreasureBoxCount() end

function UGMCheatManager:TestPrintCellVehicleCount() end

function UGMCheatManager:TestPrintCellMonsterAICount() end

function UGMCheatManager:PrintPhyDebug() end

function UGMCheatManager:TestPlayerCheating() end

function UGMCheatManager:TestPlayerCheating2() end

function UGMCheatManager:ServerLagDebug() end

---@param StartX number
---@param StartY number
---@param StartZ number
---@param DirX number
---@param DirY number
---@param DirZ number
---@param Length number
---@param Time number
function UGMCheatManager:GMDrawDebugDir(StartX, StartY, StartZ, DirX, DirY, DirZ, Length, Time) end

---@param StartX number
---@param StartY number
---@param StartZ number
---@param Pitch number
---@param Yaw number
---@param Roll number
---@param Length number
---@param Time number
function UGMCheatManager:GMDrawDebugRot(StartX, StartY, StartZ, Pitch, Yaw, Roll, Length, Time) end

---@param StartX number
---@param StartY number
---@param StartZ number
---@param EndX number
---@param EndY number
---@param EndZ number
---@param Time number
function UGMCheatManager:GMDrawDebugLine(StartX, StartY, StartZ, EndX, EndY, EndZ, Time) end

---@param MaxTime number
function UGMCheatManager:TestRecordSkillLog(MaxTime) end

function UGMCheatManager:PrintSkillRecordData() end

---@param Mask EActorHiddenMask
---@param Enable boolean
function UGMCheatManager:TestSetHiddenByMask(Mask, Enable) end

---@param ParameterName string
---@param value number
function UGMCheatManager:TestMissingMaterialParameterReport(ParameterName, value) end

---查找引用了动画蓝图的Avatar
function UGMCheatManager:SearchAvatarWithAnimBlueprint() end

---@param FilterRepeat number
---@param StartLine number
function UGMCheatManager:ScanAvatarWithAnimFromOuter(FilterRepeat, StartLine) end

---@param ResourcePath string
---@param NameKey string
function UGMCheatManager:CheckMeshBoneScale(ResourcePath, NameKey) end

---@param Old number
---@param New number
function UGMCheatManager:AsianTeamChangeStageNotify(Old, New) end

---@param InTickRate number
---@param bSetPlayerNetUpdateRate boolean
function UGMCheatManager:SetNetMaxTickRate(InTickRate, bSetPlayerNetUpdateRate) end

---@param FunctionName string
function UGMCheatManager:CallPawnBlueprintFunction(FunctionName) end

function UGMCheatManager:DumpAllPlayersWeaponInfo() end

function UGMCheatManager:DebugWeaponMeshVisibleCheckReport() end

function UGMCheatManager:DebugPickUpListDataReport() end

function UGMCheatManager:DebugListWrapperDataTooMuchReport() end

function UGMCheatManager:DebugShootCriticalVerifyFailedReport() end

function UGMCheatManager:DebugFindPutDownLocErrorReport() end

function UGMCheatManager:DebugShootBulletDownBlockReport() end

function UGMCheatManager:DebugWeaponDamageMonitorVar() end

function UGMCheatManager:DebugRevertVisionOpMeshError() end

function UGMCheatManager:DebugCoverKillReport() end

function UGMCheatManager:DebugCheckVisionOpMeshMiss() end

---@param Rate number
function UGMCheatManager:SetAllPlayerNetUpdateRate(Rate) end

function UGMCheatManager:DebugShootKnowBlock() end

function UGMCheatManager:DebugReportShootActivityTargetBlock() end

function UGMCheatManager:DebugRecoverHideUIFailedReport() end

---@param Seed number
function UGMCheatManager:DebugRandomSeed(Seed) end

---@param Msg string
function UGMCheatManager:DebugSendMsgToCQWeChat(Msg) end

function UGMCheatManager:DebugReportPlayerHitBoxPositionOffset() end

function UGMCheatManager:DebugReportPlayerPickupAvailableActorPoolMiss() end

function UGMCheatManager:DebugAutoFireReport() end

function UGMCheatManager:DebugCriticalVerifyPlayerDamagePunishReport() end

function UGMCheatManager:DebugTakeShootDamageRCRCheckFailedReport() end

function UGMCheatManager:DebugRCRNotRelevantRaycastConfirmReport() end

---@param StartX number
---@param StartY number
---@param StartZ number
---@param EndX number
---@param EndY number
---@param EndZ number
---@return FRotator
function UGMCheatManager:DebugGetRotatorByStartAndEndPos(StartX, StartY, StartZ, EndX, EndY, EndZ) end

---@param DirX number
---@param DirY number
---@param DirZ number
---@return FRotator
function UGMCheatManager:DebugGetRotatorByDirVec(DirX, DirY, DirZ) end

---@param Num number
function UGMCheatManager:DebugForceSetCriticalVerifyFailedNum(Num) end

function UGMCheatManager:DebugActorPendingConstructionReport() end

function UGMCheatManager:LogAllPlayerAndWeaponInfo() end

function UGMCheatManager:LogAllWeaponsInfo() end

function UGMCheatManager:DebugShootProjectileFailedCheckReport() end

---@param num number
function UGMCheatManager:KillN(num) end

---@param val number
function UGMCheatManager:BeEagleWatcher(val) end

---@param val number
function UGMCheatManager:EagleWatched(val) end

---AI训练相关流程
---@param AisIpInt number
---@param AisPortInt number
function UGMCheatManager:StartAiService(AisIpInt, AisPortInt) end

---开启AI训练
function UGMCheatManager:StartAiModel() end

---强制触发模型AI同步控制信息
---@param InType number
function UGMCheatManager:DebugAiSession(InType) end

---开始深度学习AI的调试信息显示
function UGMCheatManager:StartAiSDebug() end

---显示AI的详细信息
function UGMCheatManager:ShowAiDetail() end

---显示AI调试面板
function UGMCheatManager:ShowAiDebug() end

---测试GM列表信息
function UGMCheatManager:TestGmList() end

---显示新的GM面板
function UGMCheatManager:ShowNewGMPanel() end

---@param Index number
function UGMCheatManager:SwapAiTarget(Index) end

---开启AI对战
---@param AisIpInt number
---@param AisPortInt number
function UGMCheatManager:StartAiBattle(AisIpInt, AisPortInt) end

---开启模型AI体验
---@param AisIpInt number
---@param AisPortInt number
function UGMCheatManager:StartAiExperience(AisIpInt, AisPortInt) end

---调试深度学习AI上报
---@param InType number
function UGMCheatManager:DebugAiReport(InType) end

---停止AI服务
function UGMCheatManager:StopAiService() end

---客户端的可视化trace
function UGMCheatManager:ShowFakeTrace() end

---@param InTime number
function UGMCheatManager:ShowFakeTraceLong(InTime) end

---修改PlayerAnticheatManager上的开关数值
---@param SwitchName string
---@param Count number
function UGMCheatManager:ChangeVerifySwitch(SwitchName, Count) end

---执行一次实时巡查上报
---@param PolicyID number
function UGMCheatManager:DoFakeCheatReportSend(PolicyID) end

---@param FunctionName string
function UGMCheatManager:TestTopChat(FunctionName) end

function UGMCheatManager:PrintPrimVis() end

---@param MyPlayerKey number
---@param PlayerKey number
function UGMCheatManager:TestIsInSameCampByPlayerKey(MyPlayerKey, PlayerKey) end

---@param MyUID string
---@param UID string
function UGMCheatManager:TestIsInSameCampByUID(MyUID, UID) end

function UGMCheatManager:KillAllCaptainModeMems() end

---@param needExpose number
function UGMCheatManager:TestOtherCaptainExposed(needExpose) end

---@param n number
function UGMCheatManager:GMAsianSpeedUpTargetEffect(n) end

function UGMCheatManager:forceCrash() end

---@param CenterX number
---@param CenterY number
function UGMCheatManager:SetNextWhiteCircleCenter(CenterX, CenterY) end

---@param Angle number
function UGMCheatManager:SpecifyRevivalCardRouteAngle(Angle) end

---@param CampID number
function UGMCheatManager:KillCampAllPlayer(CampID) end

---@param Cmd string
function UGMCheatManager:ExcuteActorFunction(Cmd) end

---@param Cmd string
function UGMCheatManager:ExcutePersistFunction(Cmd) end

---@param CampID number
---@param TeamID number
function UGMCheatManager:TestCampActorAPI(CampID, TeamID) end

---@param InRotateYawValue number
---@param InRotateEveryFrame boolean
function UGMCheatManager:AutoRotate(InRotateYawValue, InRotateEveryFrame) end

---@param NewSpeed number
function UGMCheatManager:GMSetNetSpeed(NewSpeed) end

---@param ClassPath string
function UGMCheatManager:GMTestInvalidServerRPC(ClassPath) end

---@param InForwardValue number
---@param InRightValue number
function UGMCheatManager:AutoJoyStickInput(InForwardValue, InRightValue) end

---@param bStart boolean
---@param InStartArrayNum number
---@param InIncrementArrayNum number
---@param InNetFlowServerRPCSendDelta number
---@param bReliable boolean
function UGMCheatManager:GMTestNetFlowServerRPC(bStart, InStartArrayNum, InIncrementArrayNum, InNetFlowServerRPCSendDelta, bReliable) end

---bReliableRPC 0: UnReliable RPC 1: Reliable RPC 2: Property Replicate 3: Open
---@param bNetFlowCallRPC boolean
---@param bCallByServer boolean
---@param RelicateType number
---@param bForceFlushNet boolean
---@param bDeltaSend boolean
---@param InArraySize number
---@param InIncrementArrayNum number
---@param InTimeDelta number
---@param InNetFlowDestroyActorTimeDelta number
---@param InStartArraySize number
---@param InIncrementArraySize number
function UGMCheatManager:GMTestNetFlowRPC(bNetFlowCallRPC, bCallByServer, RelicateType, bForceFlushNet, bDeltaSend, InArraySize, InIncrementArrayNum, InTimeDelta, InNetFlowDestroyActorTimeDelta, InStartArraySize, InIncrementArraySize) end

---@param Num number
function UGMCheatManager:GMSetAlivePlayerNum(Num) end

---@param Num number
function UGMCheatManager:GMSetAliveRealPlayerNum(Num) end

---@param DamageScale number
function UGMCheatManager:GMSetMLAIAttackPlayerDamageScale(DamageScale) end

---@param Value number
function UGMCheatManager:GMMLAIApplyOddTeamAIDamageProtect(Value) end

---@param AIPlayerKey number
function UGMCheatManager:GMRefreshMLAIWeaponEquip(AIPlayerKey) end

---@param AIPlayerKey number
---@param AIStyle number
function UGMCheatManager:GMSetAIStyle(AIPlayerKey, AIStyle) end

---@param Func string
---@param Params string
function UGMCheatManager:GMMLAIDoCmd(Func, Params) end

---@param Func string
---@param Params string
function UGMCheatManager:GMBot(Func, Params) end

---@param AILevel number
function UGMCheatManager:GMUpdatePartnerAILevel(AILevel) end

function UGMCheatManager:SpawnInputRecordComponent() end

function UGMCheatManager:GMTestTargetRoomInShootingPark() end

---@param DamageValue number
function UGMCheatManager:GMTestFallingDamage(DamageValue) end

---@param Value number
function UGMCheatManager:GMSetUpdateMinimapPlayerNumPerFrame(Value) end

---@param bPause boolean
function UGMCheatManager:GMPausePlayerStreaming(bPause) end

function UGMCheatManager:GMDestroyMovementBaseActor() end

---@param Num number
function UGMCheatManager:GMEnableAllTower(Num) end

---UGC下隐藏所有UI，点击屏幕后重新显示，宣传截图用
function UGMCheatManager:UGCHideAllUI() end

---@param WeatherIndex number
---@param LerpValue number
function UGMCheatManager:TestClientPreviewWeather(WeatherIndex, LerpValue) end

---@param Num number
function UGMCheatManager:SendLargeArray(Num) end

---发送游戏结束协议
function UGMCheatManager:SendGameOver() end

---@param cmd string
function UGMCheatManager:ClientCMD(cmd) end

function UGMCheatManager:CheatParachute() end

function UGMCheatManager:CheatMovementAdjust() end

function UGMCheatManager:OpenAirWallVisibleCollision() end

function UGMCheatManager:GMOpenParachute() end

function UGMCheatManager:DumpAllAkEventInMemory() end

function UGMCheatManager:EnableAkEventCallbackLog() end

function UGMCheatManager:GMLogItemList() end

---@param NetArrayNum number
function UGMCheatManager:GMAddLargeNetProperty(NetArrayNum) end

---@param HomeCatPath string
function UGMCheatManager:GMAddTestHomeCat(HomeCatPath) end

function UGMCheatManager:ReportBugly() end

function UGMCheatManager:ReportXpcall() end

---@param Distance number
function UGMCheatManager:GMAsianTargetDestroyInARange(Distance) end

---@param ShouldPause number
function UGMCheatManager:PauseJumpAntiCheat(ShouldPause) end

---@param bEnable number
function UGMCheatManager:SetRevivalCheckerTick(bEnable) end

---@param bMoveable boolean
---@param TimeLimit number
function UGMCheatManager:TestSetMoveable(bMoveable, TimeLimit) end

---家园object监控
function UGMCheatManager:GMHomeDiagnoseReportUObjectLeakInfo() end

function UGMCheatManager:CreateReplayTestUI() end

function UGMCheatManager:DestroyCatsForTest() end

---@param isHairless boolean
function UGMCheatManager:SpawnCat(isHairless) end

---@param isPubgCat boolean
function UGMCheatManager:SpawnTestCat(isPubgCat) end

---@param TypeID number
---@param Count number
function UGMCheatManager:DispatchMarkByTypeIDWithCount(TypeID, Count) end

---@param Status number
---@param TypeID number
---@param InstanceID number
function UGMCheatManager:DispatchDSMapMark(Status, TypeID, InstanceID) end

function UGMCheatManager:BeginLogTrack() end

function UGMCheatManager:EndLogTrack() end

function UGMCheatManager:BeginLogTrackLoop() end

function UGMCheatManager:EndLogTrackLoop() end

---@param SkillPath string
function UGMCheatManager:TestTriggerSkill(SkillPath) end

---@param SkillSlot string
function UGMCheatManager:TriggerSkillBySlot(SkillSlot) end

---@param SkillUID number
function UGMCheatManager:TriggerSkill(SkillUID) end

---@param Tag string
---@param Event number
function UGMCheatManager:TriggerSkillByTag(Tag, Event) end

function UGMCheatManager:GenerateLevelUasgeData() end

---@param Size number
---@param Count number
---@param Interval number
function UGMCheatManager:TestSendPackets(Size, Count, Interval) end

function UGMCheatManager:SendPacketOnce() end

---@param NewFactor number
function UGMCheatManager:ChangeTriggerLevelsClientRadiusFactor(NewFactor) end

---@param RoomMode number
function UGMCheatManager:ChangeGMRoomMode(RoomMode) end

---@param CustomGamemodeID number
function UGMCheatManager:ChangeCustomGameModeID(CustomGamemodeID) end

function UGMCheatManager:PrintUIMsg() end

---@param TextURL string
function UGMCheatManager:GMSetClientTravel(TextURL) end

---@param Args string
function UGMCheatManager:ThrowBegin(Args) end

---@param Args string
function UGMCheatManager:ThrowEnd(Args) end

---@param Args string
function UGMCheatManager:ThrowCancel(Args) end

---@param Args string
function UGMCheatManager:ThrowMode(Args) end

---@param OptionalActorPath string
function UGMCheatManager:SpawnMeleeAttackDebugActor(OptionalActorPath) end

---@param LogStr string
function UGMCheatManager:TestTouch(LogStr) end

function UGMCheatManager:DumpReplicatedActorCompDS() end

function UGMCheatManager:AirDropBoxTest() end

function UGMCheatManager:TestLog() end

---@param AssetName string
function UGMCheatManager:GMLoadWeatherSequence(AssetName) end

---@param AssetName string
function UGMCheatManager:GMUnloadWeatherSequence(AssetName) end

---@param InteractType number
function UGMCheatManager:InteractWithHomeCat(InteractType) end

---@param bShow boolean
function UGMCheatManager:ShowPlayerRelativeDebugTool(bShow) end

function UGMCheatManager:ReportYourSelf() end

function UGMCheatManager:ReportMyself() end

---@param InPlayerKey number
function UGMCheatManager:ServerReportPlayer(InPlayerKey) end

---@param FilePath string
function UGMCheatManager:InitAutoAimFrames(FilePath) end

function UGMCheatManager:PlayNextAutoAimFrame() end

---@param InHUD AHUD
---@param InCanvas UCanvas
function UGMCheatManager:HandleHudPostRender(InHUD, InCanvas) end

---@param InGMStr string
function UGMCheatManager:LobbyGM(InGMStr) end

function UGMCheatManager:GetServerDynamicLevelsToGMUI() end

function UGMCheatManager:GetAllIDIPTriggerToGMUI() end

function UGMCheatManager:UpdateAllIDIPDynamicLevelsIDToGS() end

---@param ShowState number
function UGMCheatManager:GetServerItemsAttrIDIPToGMUI(ShowState) end

function UGMCheatManager:GMDumpShapesNumber() end

function UGMCheatManager:GMTestReportPlayerInfo() end

function UGMCheatManager:GMUI_BuildDebugCurTriggerLevel() end

---被动切线: 请求改变被动切线状态
---@param NewState number
function UGMCheatManager:GMChangeGameSwitchDSState(NewState) end

---主动切线: 请求切线服务器列表
function UGMCheatManager:GMRequestSwitchDSList() end

---主动切线: 请求切到指定服务器
---@param GameID string
function UGMCheatManager:GMSwitchToDS(GameID) end

---新建线路
function UGMCheatManager:GMNewDS() end

---关闭线路
---@param GameID string
function UGMCheatManager:GMKillDS(GameID) end

---@param Id number
---@param Modifiers1 number
---@param Modifiers2 number
---@param Modifiers3 number
---@param Modifiers4 number
function UGMCheatManager:AddItemWithModifiers(Id, Modifiers1, Modifiers2, Modifiers3, Modifiers4) end

---@param Id number
---@param Count number
function UGMCheatManager:CommonAddItem(Id, Count) end

---@param Id number
function UGMCheatManager:CommonUseItem(Id) end

---@param Id number
---@param Count number
function UGMCheatManager:CommonDelItem(Id, Count) end

---@param Id number
---@param Second number
function UGMCheatManager:SetItemTimeEnd(Id, Second) end

---@param Id number
---@param ModifyID number
function UGMCheatManager:AddSpecialModifyItem(Id, ModifyID) end

---@param Id number
---@param ModifyID number
---@param Value number
function UGMCheatManager:AddRandomCapacityModifyItem(Id, ModifyID, Value) end

---@param Id number
---@param Count number
function UGMCheatManager:BWAddItem(Id, Count) end

---@param Id number
---@param Count number
function UGMCheatManager:BWDelItem(Id, Count) end

function UGMCheatManager:BWTestSendSyncDepot() end

---@param Id number
---@param Count number
function UGMCheatManager:BWTestSendBatchAddItems(Id, Count) end

---@param Id number
---@param Count number
function UGMCheatManager:BWTestSendBatchDelItems(Id, Count) end

---@param Id number
---@param InstanceID number
---@param Count number
function UGMCheatManager:BWTestSendBatchDelItems2(Id, InstanceID, Count) end

---@param Id number
function UGMCheatManager:BWTestSendBatchRemoveItemNewFlags(Id) end

---@param Id number
---@param InstanceID number
function UGMCheatManager:BWTestSendBatchRemoveItemNewFlags2(Id, InstanceID) end

---@param Id number
---@param Count number
function UGMCheatManager:BWTestSendBatchUpdateUGCVirtualItems(Id, Count) end

function UGMCheatManager:BWSaveBackpack() end

function UGMCheatManager:BWLoadBackpack() end

function UGMCheatManager:BWTestItemCircularTimer() end

---@param Id number
---@param Count number
function UGMCheatManager:HomeAddItem(Id, Count) end

---@param Id number
---@param Count number
function UGMCheatManager:HomeDelItem(Id, Count) end

---@param IDList string
---@param AdvUrl string
function UGMCheatManager:GMChangeAdvertisement(IDList, AdvUrl) end

---@param ID number
---@param Params string
function UGMCheatManager:GMSpawnAdvertisement(ID, Params) end

---@param ClassPath string
---@param IdipID number
---@param IsActivate boolean
---@param Params string
function UGMCheatManager:GMTestBWInterActor(ClassPath, IdipID, IsActivate, Params) end

---@param Open number
---@param TableSwitchBPPath string
function UGMCheatManager:OpenTableSwitch(Open, TableSwitchBPPath) end

---@param Path string
function UGMCheatManager:AddPersietEffectWithPath(Path) end

---@param ConfigID number
---@param IsRunServer boolean
---@param PlayerKey number
function UGMCheatManager:GMActivityAutoTest(ConfigID, IsRunServer, PlayerKey) end

---@param ExampleClassPath string
---@param IsRunServer boolean
---@param PlayerKey number
function UGMCheatManager:GMActivityAutoTestByClassPath(ExampleClassPath, IsRunServer, PlayerKey) end

---@param TimeString string
function UGMCheatManager:GMChangeDSReceivedLobbyTime(TimeString) end

---@param InputParams string
function UGMCheatManager:GMSentIDIPState(InputParams) end

---@param Type number
---@param Param1 number
function UGMCheatManager:BWTaskGMFunction(Type, Param1) end

function UGMCheatManager:GMGroupBackpackCheckItem() end

---@param ItemId number
---@param HanldePackagePath string
---@param HanldeClassName string
function UGMCheatManager:GMCheckItemHandlePath(ItemId, HanldePackagePath, HanldeClassName) end

---@param ActorType number
function UGMCheatManager:GMSpawnTestRepActor(ActorType) end

---@param Num number
---@param Radius number
---@param SpawnLoc string
---@param AvatarList string
function UGMCheatManager:GMSpawnMobileAI(Num, Radius, SpawnLoc, AvatarList) end

---@param PawnPath string
---@param Num number
---@param Radius number
---@param SpawnLoc string
---@param AvatarList string
function UGMCheatManager:GMSpawnMobileAIWithPath(PawnPath, Num, Radius, SpawnLoc, AvatarList) end

---@param PawnClass UClass
---@param Num number
---@param Radius number
---@param SpawnLoc string
---@param AvatarList string
function UGMCheatManager:GMSpawnMobileAIWithPawnClass(PawnClass, Num, Radius, SpawnLoc, AvatarList) end

---@param bStop boolean
function UGMCheatManager:GMAllAIStopBehavior(bStop) end

function UGMCheatManager:PrintWorldStreamingLevels() end

function UGMCheatManager:PrintInstanceLevels() end

---@param Index number
---@param PositionX number
---@param PositionY number
function UGMCheatManager:SetCustomWhiteCircle(Index, PositionX, PositionY) end

---@param X number
---@param Y number
---@param InTargetDropIndex number
---@param FlyHeight number
function UGMCheatManager:ModifyAirDropLoc(X, Y, InTargetDropIndex, FlyHeight) end

---@param PositionX number
---@param PositionY number
---@param Radius number
function UGMCheatManager:AddSpecifiedAirAttackAreaList(PositionX, PositionY, Radius) end

function UGMCheatManager:ClearSpecifiedAirAttackAreaList() end

---@param bEnterFight boolean
function UGMCheatManager:SaveMapItems(bEnterFight) end

function UGMCheatManager:LoadMapItems() end

function UGMCheatManager:TestGalaxyFace() end

function UGMCheatManager:StartRecordVehicleInput() end

function UGMCheatManager:EndRecordVehicleInput() end

function UGMCheatManager:ReplayRecordVehicleInput() end

---@param DebugType number
function UGMCheatManager:DebugKillShow(DebugType) end

function UGMCheatManager:DumpAllActivityActors() end

---@param ID number
function UGMCheatManager:TestAircraft(ID) end

---@param TaskID number
---@param TeammateIndex number
function UGMCheatManager:ExcuteInteractionTask(TaskID, TeammateIndex) end

---@param InTimes number
function UGMCheatManager:AddRoomTimes(InTimes) end

---@param MinNums number
function UGMCheatManager:ChangeMinBeginNum(MinNums) end

function UGMCheatManager:GetMyEagleWatchTeamCheckResult() end

---@param TheGridLength number
---@param ClassPath string
---@param MaxNum number
function UGMCheatManager:DumpAllInvalidGrid(TheGridLength, ClassPath, MaxNum) end

function UGMCheatManager:WrongReqRemoteControlVehicle() end

---@param RTPCName string
---@param RTPCValue number
function UGMCheatManager:SetGlobalRTPCValue(RTPCName, RTPCValue) end

---@param WidgetClassPath string
function UGMCheatManager:AddGMUIByClassPath(WidgetClassPath) end

---@param Enable number
function UGMCheatManager:GMEnableCurWeaponConsistentPathFlyMode(Enable) end

---@param ExtStr string
function UGMCheatManager:TestAntiReport(ExtStr) end

function UGMCheatManager:TestAcitveEscape() end

---@param PauseOrder number
function UGMCheatManager:PauseMoveAntiCheat(PauseOrder) end

---@param QuantumBallClassPath string
---@param PositionX number
---@param PositionY number
---@param PositionZ number
---@param RotationP number
---@param RotationY number
---@param RotationR number
---@param FlyTime number
---@param EndPositionX number
---@param EndPositionY number
---@param EndPositionZ number
function UGMCheatManager:ReplayQuantumBall(QuantumBallClassPath, PositionX, PositionY, PositionZ, RotationP, RotationY, RotationR, FlyTime, EndPositionX, EndPositionY, EndPositionZ) end

function UGMCheatManager:TestSimulateAbsoluteLocation() end

---@param PlayerKey number
function UGMCheatManager:GMServerAcknowledgePossession(PlayerKey) end

---@param InMsg string
function UGMCheatManager:TestAddClientReportMsg(InMsg) end

---@param ControlMsg string
function UGMCheatManager:TestReportClientReportMsg(ControlMsg) end

function UGMCheatManager:TestDumpDeathPlayback() end

---@param DeltaTime number
function UGMCheatManager:RepTimesCount(DeltaTime) end

function UGMCheatManager:GM_TestRandomTeamID() end

---@param Num number
function UGMCheatManager:GMTestBigClientPRC(Num) end

---@param Num number
function UGMCheatManager:GMTestBigServerPRC(Num) end

---@param SkillIndex number
function UGMCheatManager:GMTestAISkill(SkillIndex) end

---@param idx number
function UGMCheatManager:GMTestPlayerHost(idx) end

---@param Enable number
function UGMCheatManager:GMTestPlayerExecuteComp(Enable) end

---@param Enable number
function UGMCheatManager:GMTestAIHost(Enable) end

---@param Enable number
function UGMCheatManager:GMEnableAIHost(Enable) end

---@param BTreeIdx number
function UGMCheatManager:GMReplaceAIC(BTreeIdx) end

function UGMCheatManager:GMTestRequestMLAIInSitu() end

function UGMCheatManager:GMAIForceChooseEnemy() end

---@param bShow number
function UGMCheatManager:GMAIShowTargetEnemy(bShow) end

---@param BuffName string
---@param AIClassPath string
function UGMCheatManager:AddBuffToAI(BuffName, AIClassPath) end

---@param DataTableName string
---@param GroupID number
function UGMCheatManager:SpawnNianEntity(DataTableName, GroupID) end

---@param TagName string
---@param Enter boolean
function UGMCheatManager:NianEntityEnterOrLeaveTag(TagName, Enter) end

function UGMCheatManager:KillAllAI() end

---@param Tag string
---@param IsIgnoreTag boolean
function UGMCheatManager:KillAllAIWithTag(Tag, IsIgnoreTag) end

---@param UpdateTime number
function UGMCheatManager:DebugShowAIAliveNum(UpdateTime) end

---@param AttrName string
function UGMCheatManager:DebugNianAttrValue(AttrName) end

function UGMCheatManager:DebugNianAttrLoc() end

function UGMCheatManager:WFADrawDebugInfo() end

---@param InLandRatio number
function UGMCheatManager:WFAChangeLandRatio(InLandRatio) end

function UGMCheatManager:WFAAllCircle() end

---@param PlayerKey number
function UGMCheatManager:GMTriggerScanCompass(PlayerKey) end

function UGMCheatManager:ForceOutPutDSLevelsDateToFile() end

---@param InUID1 number
---@param InUID2 number
function UGMCheatManager:GMTriggerNoPawnWidget(InUID1, InUID2) end

---@param NewBatchNum number
function UGMCheatManager:SetUIMarkUpdateNumPerBatch(NewBatchNum) end

---@param X number
---@param Y number
---@param Z number
---@param CanOpenParachuteHeight number
---@param ForceOpenParachuteHeight number
---@param CloseParachuteHeight number
function UGMCheatManager:ParachuteFromLoc(X, Y, Z, CanOpenParachuteHeight, ForceOpenParachuteHeight, CloseParachuteHeight) end

---@param EventName string
---@param StateName string
function UGMCheatManager:ChangeActivityEventState(EventName, StateName) end

function UGMCheatManager:OutputDropItemPoolData() end

---@param EnableValue number
function UGMCheatManager:GMSetAdjacentPlayerHighLight(EnableValue) end

---@param InName string
---@param InValue boolean
function UGMCheatManager:SetShowFlag(InName, InValue) end

---Show GameState.GetServerWorldTimeSeconds() in viewport 0: Disable, 1: Enable
---@param bShow boolean
function UGMCheatManager:GMShowDSTime(bShow) end

---@param Enable boolean
function UGMCheatManager:GMEnableRagdoll(Enable) end

---@param InClothingUpgradeShowCondition number
function UGMCheatManager:SetClothingUpgradeShowCondition(InClothingUpgradeShowCondition) end

---@param InReplayDesc string
function UGMCheatManager:StartMoveAnalysisWithRecord(InReplayDesc) end

---@param InReplayDesc string
function UGMCheatManager:StartMoveAnalysisWithReplayId(InReplayDesc) end

function UGMCheatManager:ShowAllTestCase() end

function UGMCheatManager:StopMoveAnalysis() end

---@param UseEvent boolean
function UGMCheatManager:TestReflectFunction(UseEvent) end

---@param OverridePath string
function UGMCheatManager:DestroyBotTargetLv3(OverridePath) end

---@param bArmed boolean
---@param OverridePath string
function UGMCheatManager:SpawnBotTargetLv3(bArmed, OverridePath) end

---@param Dist number
function UGMCheatManager:SpawnADS(Dist) end

function UGMCheatManager:GMDumpAllMRegionActors() end

function UGMCheatManager:GMEnableAICarCopilot() end

---@param LuaString string
function UGMCheatManager:DoLuaStr(LuaString) end

---@param LuaString string
function UGMCheatManager:DSDoLuaStr(LuaString) end

---@param InHide boolean
function UGMCheatManager:SetBackpackFightingHide(InHide) end

---@param InIsVisible boolean
---@param InIsTeamVisible boolean
function UGMCheatManager:TestClothExtraWingVisible(InIsVisible, InIsTeamVisible) end

---@param BoxExtent number
---@param Length number
---@param DeepCheckSize number
---@param Height number
---@param MaxTimes number
function UGMCheatManager:SetPlayerLocationNearToTeammate(BoxExtent, Length, DeepCheckSize, Height, MaxTimes) end

---@param Count number
function UGMCheatManager:SendWeaponReloadRPC(Count) end

---@param EmoteID number
function UGMCheatManager:PlayPetEmote(EmoteID) end

---@param Count number
function UGMCheatManager:ModifyCurrUseGlidCostCount(Count) end

function UGMCheatManager:GMUpdateBoundsErrorLevel() end

function UGMCheatManager:GMHidePlayerHeadUI() end

function UGMCheatManager:GMHideMiniMapMark() end

function UGMCheatManager:GMMarkCurLevelCenter() end

function UGMCheatManager:GMHideFireAnim() end

function UGMCheatManager:GMSpawnGMDropItemActor() end

function UGMCheatManager:GMSpawnGMLTDropItemActor() end

---@param FuncName string
function UGMCheatManager:GMProcessGMDropItemActor(FuncName) end

function UGMCheatManager:GMDestroyAllDropItemActor() end

function UGMCheatManager:GMDestroyAllLTDropItemActor() end

---@param time number
function UGMCheatManager:GMHorseFrightened(time) end

---@param BulletPath string
function UGMCheatManager:GMChangeCurrentWeaponBullet(BulletPath) end

---@param TableSwitchBPPath string
function UGMCheatManager:GMCreateUAETableSwitcher(TableSwitchBPPath) end

---@param ProduceID number
---@param Times number
---@param Gap number
---@param PlayerKey number
function UGMCheatManager:TestDropitemProduceID(ProduceID, Times, Gap, PlayerKey) end

---@param DropType number
---@param Times number
---@param Gap number
---@param PlayerKey number
function UGMCheatManager:TestAirDropitem(DropType, Times, Gap, PlayerKey) end

---@param ActorName string
function UGMCheatManager:DebugActorReplication(ActorName) end

---@param ClassName string
---@param PropertyName string
function UGMCheatManager:DebugPropertyReplication(ClassName, PropertyName) end

---@param ClassName string
---@param PropertyName string
function UGMCheatManager:DebugFastRepPropertyReplication(ClassName, PropertyName) end

function UGMCheatManager:DebugDSCheck() end

---@param InType number
function UGMCheatManager:SetBigwarAvatarSettingType(InType) end

---@param InDataTime number
function UGMCheatManager:GMCheckDateTime(InDataTime) end

---@param itemID number
---@param count number
---@param times number
function UGMCheatManager:GMTestItems(itemID, count, times) end

---@param itemID number
---@param count number
function UGMCheatManager:GMAddAndDropItem(itemID, count) end

---@param InType number
---@param ID number
---@param bCallback number
function UGMCheatManager:TestTryDownloadNotExistAvatarResponse(InType, ID, bCallback) end

function UGMCheatManager:GetAIDeliveryInfo() end

---@param Func string
---@param Params string
function UGMCheatManager:ControlAIDrop2(Func, Params) end

---@param InVal number
function UGMCheatManager:CanWatch(InVal) end

---@param Params string
function UGMCheatManager:GMUGCMobCharacterDropItem(Params) end

---@param bNeedNotify number
function UGMCheatManager:GMTestKickOutWithReconnect(bNeedNotify) end

function UGMCheatManager:GMTestPlayerExit() end

---@param NewTeamID number
function UGMCheatManager:ChangeMyTeamID(NewTeamID) end

---@param SeatIndex number
function UGMCheatManager:ChangeVehicleSeatForce(SeatIndex) end

---@param itemID number
---@param count number
function UGMCheatManager:TestFastDropItem(itemID, count) end

---@param Count number
function UGMCheatManager:AddDecalDyeItem(Count) end

---@param Count number
function UGMCheatManager:ModifySpecMotionRestCostCount(Count) end

---@param IsShow boolean
function UGMCheatManager:GMShowMouse(IsShow) end

---@param InEventName string
---@param InSlotID number
function UGMCheatManager:TestTriggerFlowLightEvent(InEventName, InSlotID) end

---Weapon					= 1, Vehicle					= 2,
---@param InType number
function UGMCheatManager:TestStartGalleryAvatarDownload(InType) end

function UGMCheatManager:TestStopGalleryAvatarDownload() end

function UGMCheatManager:GMCreateNewEMPZone() end

---@param x number
---@param y number
---@param z number
function UGMCheatManager:ForceCreateNewEMPZoneInLoc(x, y, z) end

function UGMCheatManager:StopEMPZoneControl() end

---@param SlotID number
---@param IsVisible boolean
function UGMCheatManager:TestSetSimulateAvatarVisible(SlotID, IsVisible) end

---@param Microseconds number
function UGMCheatManager:GMSleep(Microseconds) end

---@param ExceptionType string
---@param StackStr string
---@param bReportToBugly boolean
---@param bLuaNotCheck boolean
---@param DetailStr string
function UGMCheatManager:ExceptionReportTest(ExceptionType, StackStr, bReportToBugly, bLuaNotCheck, DetailStr) end

---@param Radius number
---@param MaxDepth number
---@param PosX number
---@param PosY number
function UGMCheatManager:GMDeform(Radius, MaxDepth, PosX, PosY) end

---@param RangeRadius number
---@param Times number
---@param DeformRadius number
---@param MaxDepth number
function UGMCheatManager:GMDeformRandom(RangeRadius, Times, DeformRadius, MaxDepth) end

---@param InClothID number
function UGMCheatManager:TestClothingUpgrade(InClothID) end

---@param PlayerKey number
function UGMCheatManager:GMRespawnMachineRevive(PlayerKey) end

function UGMCheatManager:GMTrigMultiAirlines() end

---@param Type number
---@param ItemID number
function UGMCheatManager:ChangePlatformAvatar(Type, ItemID) end

---@param bHide boolean
function UGMCheatManager:HideOrShowOtherPlayers(bHide) end

---@param DeformPct number
function UGMCheatManager:GMDeformAll(DeformPct) end

---@param GroupName string
---@param InEnglishName string
function UGMCheatManager:GMExecuteCommandGroup(GroupName, InEnglishName) end

---@param RequestInfo FHttpRequestInfo
---@param bSucceeded boolean
---@param DelegateRetCode number
function UGMCheatManager:OnGMCommandDownloadSuccess(RequestInfo, bSucceeded, DelegateRetCode) end

function UGMCheatManager:DSAndClientLoadAllStreamingLevels() end

---@param InParticlePath string
function UGMCheatManager:TestRingParticle(InParticlePath) end

function UGMCheatManager:TestRingParticleByTestID() end

---@param AbilityID number
---@param PetID number
---@param Park_Visible boolean
---@param Park_Teammate_Visible boolean
---@param PetLevel number
function UGMCheatManager:TestAircraftPetByTestID(AbilityID, PetID, Park_Visible, Park_Teammate_Visible, PetLevel) end

function UGMCheatManager:CreateCheatCommandComponent() end

---@param InEnable number
function UGMCheatManager:JinGu(InEnable) end

---@param EnergyValue number
function UGMCheatManager:GMAddMusicNotesEnergy(EnergyValue) end

---@param Point number
function UGMCheatManager:SetMyMilitarySupPoint(Point) end

---@param Points ULuaArrayHelper<number>
function UGMCheatManager:SetGameMilitarySupPoint(Points) end

---@param Func string
---@param Params string
function UGMCheatManager:WarDogGM(Func, Params) end

---@param Func string
---@param Params string
function UGMCheatManager:ClientWarDogGM(Func, Params) end

---@param ID number
function UGMCheatManager:ServerSetChickenID(ID) end

---@param ID number
function UGMCheatManager:ServerSetPlaneAnim(ID) end

function UGMCheatManager:ServerSetReplaceTextureURLList() end

---@param PlayerNum number
function UGMCheatManager:AddReadyStateHeadFlagPlayerParamsTest(PlayerNum) end

---@param bEnable number
function UGMCheatManager:EnableGMPStatistics(bEnable) end

---@param Pose number
---@param bIsBack number
---@param NewSpeedValue number
function UGMCheatManager:GMSetMoveConfigSpeed(Pose, bIsBack, NewSpeedValue) end

---@param bIsNewFpp boolean
function UGMCheatManager:GMTestControlPanelSwitchNewFPP(bIsNewFpp) end

---@param bIsLeft boolean
---@param NewOffset FVector
function UGMCheatManager:GMTestUpperArmPointOffset(bIsLeft, NewOffset) end

---@param Gender number
function UGMCheatManager:ClientSetAvatarGender(Gender) end

---@param Location number
---@param bIgnoreHandCollision boolean
---@param bIgnoreFootCollision boolean
---@param CheckRadius number
---@param CheckHeight number
---@param CheckPoints number
---@param CircleCount number
---@param TerrainRoughnessThreshold number
---@param MaxInviteDistance number
---@param InviterAndInviteeCanInteractScopeSize number
---@param InviteSamePlayerCD number
---@param AfterSuccessfulPerformanceCD number
---@param InviteeAndInviteeFacingAngles number
---@param bMM boolean
---@param bMF boolean
---@param bFF boolean
---@param bFM boolean
---@param bOpenDebugInfo boolean
function UGMCheatManager:SetDuoActionPerformanceInfo(Location, bIgnoreHandCollision, bIgnoreFootCollision, CheckRadius, CheckHeight, CheckPoints, CircleCount, TerrainRoughnessThreshold, MaxInviteDistance, InviterAndInviteeCanInteractScopeSize, InviteSamePlayerCD, AfterSuccessfulPerformanceCD, InviteeAndInviteeFacingAngles, bMM, bMF, bFF, bFM, bOpenDebugInfo) end

function UGMCheatManager:GMTestReqExitVehicleError() end

---@param LevelName string
function UGMCheatManager:GMStreamingLevel(LevelName) end

---@param bShow boolean
function UGMCheatManager:GMSwitchDebugInputArea(bShow) end

---@param bEmpty boolean
function UGMCheatManager:GMPostInputArea(bEmpty) end

---@param Times number
function UGMCheatManager:GMPostInputAreaMultiTimes(Times) end

---@param InReplaceArgs string
function UGMCheatManager:GMReplaceRegionNavMesh(InReplaceArgs) end

---@param StateTag string
---@param EnterOrLeave number
function UGMCheatManager:GMChangeDynamicState(StateTag, EnterOrLeave) end

function UGMCheatManager:OnControllerPostLogin() end

---@param PC AUAEPlayerController
function UGMCheatManager:OnRepIsGM(PC) end

---@param Num number
---@param Seed number
---@param InPath string
---@param X number
---@param Y number
---@param Z number
---@param RelativeToPlayer number
---@param UseRotation number
---@param bSpawnOnServer number
---@param RadiusScale number
function UGMCheatManager:GMSpawnActorByPathAndLocEnhanced(Num, Seed, InPath, X, Y, Z, RelativeToPlayer, UseRotation, bSpawnOnServer, RadiusScale) end

function UGMCheatManager:ShowAIPowerTrainStats() end

---@param AgentName string
function UGMCheatManager:GMReBuildNavmesh(AgentName) end

function UGMCheatManager:GMRefreshNavigationParams() end

function UGMCheatManager:RecordObjectInfoWithPtr() end

function UGMCheatManager:TestOnRep_TeamAssemableDisplayInfoList() end

---@param Mode number
function UGMCheatManager:TestCustomFly(Mode) end

---@param Enabled number
function UGMCheatManager:DebugDrawNavMesh(Enabled) end

function UGMCheatManager:GMEnableEffectModifierDebug() end

function UGMCheatManager:StartPakDownloadPressureTest() end

---@param AIType number
---@param Num number
---@param AITeamID number
---@param Difficulty number
function UGMCheatManager:SpawnAIByType(AIType, Num, AITeamID, Difficulty) end

---@param InTagName string
function UGMCheatManager:CallActivityAirDrop(InTagName) end

function UGMCheatManager:PIESimulatedLargerAircraftData() end

---@param Args string
function UGMCheatManager:ExecConsoleCommandOnActor(Args) end

---@param InTag string
---@param InAdd boolean
---@param InFPP boolean
---@param InOffset number
function UGMCheatManager:SetCustomPersonType(InTag, InAdd, InFPP, InOffset) end

---@param Dir number
---@param Mode number
function UGMCheatManager:GMTestMultDirHitDown(Dir, Mode) end

---@param bShowWindow boolean
---@param InCheatCommand string
---@param InClose number
function UGMCheatManager:TestSimplePropertyDebug(bShowWindow, InCheatCommand, InClose) end

function UGMCheatManager:DumpDSShutdownInfo() end

---@param Percent number
function UGMCheatManager:GMSetAIHealthPercent(Percent) end

---@param Dilation number
function UGMCheatManager:GMSetBossTimeDilation(Dilation) end

---@param FunctionName string
function UGMCheatManager:GMThemeCustomMethod(FunctionName) end

function UGMCheatManager:GMTeleportToGameCenterEasterEggPlace() end

function UGMCheatManager:GMAddLevelTestInfoComp() end

function UGMCheatManager:GMAddSpotExTestInfoComp() end

function UGMCheatManager:GMTestUGCException() end

---@param Count number
function UGMCheatManager:CreateSpectatorPCs(Count) end

---@param EventName string
function UGMCheatManager:GMFireActivityEvent(EventName) end

function UGMCheatManager:GMStopAvatarLogicBudget() end

function UGMCheatManager:GMChangeMultipleCharacterAvatars() end

function UGMCheatManager:GMRestartAvatarLogicBudget() end

function UGMCheatManager:GMPrintAvatarLogicBudgetInfo() end

function UGMCheatManager:GMTrigResult() end


---@class ATestReflectFuncitonHelper: AActor
local ATestReflectFuncitonHelper = {}

function ATestReflectFuncitonHelper:TestEntry() end

---@param bParam1 boolean
function ATestReflectFuncitonHelper:TestFunctionA(bParam1) end

---@param Param1 number
---@param Param2 number
function ATestReflectFuncitonHelper:TestFunctionB(Param1, Param2) end

---@param bParm2 boolean
function ATestReflectFuncitonHelper:TestFunctionC(bParm2) end

---@param bParam1 boolean
function ATestReflectFuncitonHelper:TestFunctionA_NonEvnent(bParam1) end

---@param Param1 number
---@param Param2 number
function ATestReflectFuncitonHelper:TestFunctionB_NonEvnent(Param1, Param2) end

---@param bParm2 boolean
function ATestReflectFuncitonHelper:TestFunctionC_NonEvnent(bParm2) end
