---@meta

---@class EInitMLNetOnlineTime
---@field BeginPlay number @对局开始
---@field EnterFight number @进入战斗
EInitMLNetOnlineTime = {}


---枪械射击配置
---@class FAIShootConfig
---@field ID string
---@field DifficultyLevel number
---@field WeaponType number
---@field ShootDistance FVector2D
---@field WeaponShootType number
---@field DamageScale number
---@field DeviationScale number
---@field HitRate number
---@field ShootLeftRightRange FVector2D
---@field ShootUpDownRange FVector2D
---@field ShootTargetSpeedRange FVector2D
---@field ShootTargetDistanceRangeDueToSpeed FVector2D
---@field ShootCount number
---@field SingleShootInterval FVector2D
---@field MinSingleShootIntervalDeta number
---@field StrafeBulletNumScale FVector2D
---@field MinStrafeBulletNumScaleDeta number
---@field ShootInterval FVector2D
---@field MinShootIntervalDeta number
---@field Weight number
FAIShootConfig = {}


---Moba AI射击配置
---@class FMobaAIShootConfig
---@field ID string
---@field DifficultyLevel number
---@field HeroID number
---@field ShootDistance FVector2D
---@field WeaponShootType number
---@field DamageScale number
---@field DeviationScale number
---@field MinionHitRate number
---@field BuildingHitRate number
---@field HeroHitRate number
---@field ShootLeftRightRange FVector2D
---@field ShootUpDownRange FVector2D
---@field ShootTargetSpeedRange FVector2D
---@field ShootTargetDistanceRangeDueToSpeed FVector2D
---@field ShootCount number
---@field SingleShootInterval FVector2D
---@field MinSingleShootIntervalDeta number
---@field StrafeBulletNumScale FVector2D
---@field MinStrafeBulletNumScaleDeta number
---@field ShootInterval FVector2D
---@field MinShootIntervalDeta number
---@field Weight number
FMobaAIShootConfig = {}


---@class FAIActingCandidateData
---@field TeamId number
---@field AIPlayerKey number
---@field AIPlayerUID string
---@field AIPlayerName string
FAIActingCandidateData = {}


---@class FEscapeSimulateConfig
---@field StartSeconds number
---@field EndSeconds number
---@field Interval number
---@field MaxCount number
FEscapeSimulateConfig = {}


---@class FAIActingItem
---@field StartSeconds number
---@field EndSeconds number
---@field DeadPercent number
---@field PlayerNumScale number
---@field IsFinished boolean
---@field WeaponIdList ULuaArrayHelper<number>
FAIActingItem = {}


---@class FAIRatingDamage
---@field RatingDamageScale number
---@field FiringAccuracyRadius number
---@field AIFeedLimit number
---@field SectionRightValue number
FAIRatingDamage = {}


---@class FAIHPBasedReductionDamage
---@field HP number
---@field ReductionDamageScale number
FAIHPBasedReductionDamage = {}


---@class FAIRatingFireHitRate
---@field FireHitRate number
---@field SectionRightValue number
FAIRatingFireHitRate = {}


---@class FAIAttackAIRatingDamage
---@field RatingDamageScale number
---@field FiringAccuracyRadius number
---@field SectionRightValue number
FAIAttackAIRatingDamage = {}


---@class FAIAttackAIRatingFireHitRate
---@field FireHitRate number
---@field SectionRightValue number
FAIAttackAIRatingFireHitRate = {}


---@class FAIAttackMORatingDamage
---@field RatingDamageScale number
---@field FiringAccuracyRadius number
---@field SectionRightValue number
FAIAttackMORatingDamage = {}


---@class FAIAttackBuildingRatingDamage
---@field RatingDamageScale number
---@field FiringAccuracyRadius number
---@field SectionRightValue number
FAIAttackBuildingRatingDamage = {}


---@class FAIAttackAnimalRatingDamage
---@field RatingDamageScale number
---@field FiringAccuracyRadius number
---@field SectionRightValue number
FAIAttackAnimalRatingDamage = {}


---@class FAIDeliveryAreaLimit
---@field TopLeftVec FVector
---@field BottomRightVec FVector
FAIDeliveryAreaLimit = {}


---@class FAIBeginAttackEachOther
---@field BeginAttackEachOtherTime number
---@field RightRatingSection number
FAIBeginAttackEachOther = {}


---@class FDeliveryRatingConfig
---@field DeliveryInterval number
---@field RightRatingSection number
FDeliveryRatingConfig = {}


---@class FDeliveryItem
---@field Percent number
---@field DeliveryNum number
FDeliveryItem = {}


---@class FDeliveryPlayerConfig
---@field DeliveryItem ULuaArrayHelper<FDeliveryItem>
---@field RightRatingSection number
FDeliveryPlayerConfig = {}


---@class FAIDynamicDamageBasedHP
---@field HealthPercentLeft number
---@field HealthPercentRight number
---@field FireHitRate number
---@field DamageScale number
FAIDynamicDamageBasedHP = {}


---@class FAIHeadshotDistFalloffCoeff
FAIHeadshotDistFalloffCoeff = {}


---@class FAIShootDamageMobaHeroBasedLevel
---@field AILevel number
---@field FirePlayerHitRate number
---@field FireMinionHitRate number
---@field FireBuildingHitRate number
---@field FireAIHeroHitRate number
FAIShootDamageMobaHeroBasedLevel = {}


---@class FAIMobaEquipmentScore
---@field AIEquipType number
---@field EquipPriceLowerLimit number
---@field EquipPriceUpperLimit number
---@field EquipScore number
FAIMobaEquipmentScore = {}


---@class FDeliveryPolygonPoints
---@field DeliveryPolygonPoint ULuaArrayHelper<FVector>
FDeliveryPolygonPoints = {}


---@class FMLAIWeaponEquipSpawnItem
---@field ItemID number
---@field ItemNum number
---@field WeaponAttachments ULuaArrayHelper<number>
---@field BulletID number
---@field BulletNum number
FMLAIWeaponEquipSpawnItem = {}


---@class FNotifyBoundedAICStat
---@field AIC AFakePlayerAIController
---@field AIType number
FNotifyBoundedAICStat = {}


---@class FNotifyBindFailedAICStat
---@field AIType number
---@field FailedReason number
---@field FailedAmount number
FNotifyBindFailedAICStat = {}


---@class FMultiAirlineAISimulateJumpData
---@field CandicateAICs ULuaArrayHelper<AFakePlayerAIController>
---@field JumpCount number
---@field JumpTimeElapse number
---@field NextJumpTime number
FMultiAirlineAISimulateJumpData = {}


---@class FSuperPeopleHeroInfo
---@field SkillUIDs ULuaSetHelper<number>
FSuperPeopleHeroInfo = {}


---@class FSuperPeopleStateInfoConfig
---@field HeroInfos ULuaMapHelper<number, FSuperPeopleHeroInfo>
---@field AllowedBuildingIds ULuaSetHelper<number>
---@field AllowedBuffNames ULuaMapHelper<string, number>
---@field AllowedThrownTags ULuaMapHelper<string, number>
FSuperPeopleStateInfoConfig = {}


---@class FOnExecuteMoveRequestDelegate : ULuaSingleDelegate
FOnExecuteMoveRequestDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UBehaviorTreeComponent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnExecuteMoveRequestDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 UBehaviorTreeComponent
function FOnExecuteMoveRequestDelegate:Execute(Param1) end


---@class FOnExecuteClearTroubleDelegate : ULuaSingleDelegate
FOnExecuteClearTroubleDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UBehaviorTreeComponent) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnExecuteClearTroubleDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 UBehaviorTreeComponent
function FOnExecuteClearTroubleDelegate:Execute(Param1) end


---@class FOnAIActingActive : ULuaMulticastDelegate
FOnAIActingActive = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAIActingActive:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
function FOnAIActingActive:Broadcast(Param1) end


---@class UAIActingComponent: UActorComponent
---@field bMLAIWeaponEquipConfigInited boolean
---@field PlayersOnSquare number
---@field OriginalTotalAINum number
---@field OriginalTotalCandidateAINum number
---@field MaxTeamNum number
---@field MaxPlayerNum number
---@field RecordSecSincePlane number
---@field CandidateAIList ULuaArrayHelper<FAIActingCandidateData>
---@field MaxActiveAI number
---@field ActiveAI_n number
---@field ActiveAI_m number
---@field AISpawnCircleOriginOffset number
---@field NoWhiteCirclesRadius number
---@field SpawnMapBounds FBox2D
---@field SpawnCheckHumanRadiusSquare number
---@field TryFindSpawnAILocNum number
---@field SelectActionPeriod number
---@field FakeAISpawnFailedPeriodTime number
---@field AIActingItemList ULuaArrayHelper<FAIActingItem>
---@field AIAttackEachOtherRatingTimeConfig ULuaArrayHelper<FAIBeginAttackEachOther>
---@field EscapeSimulateConfig FEscapeSimulateConfig
---@field FullFeedLimit number
---@field DeliveryWaveInterval ULuaArrayHelper<FDeliveryRatingConfig>
---@field DeliveryBeginTime number
---@field DeliveryFreq number
---@field DeliveryAINumEachPeriod number
---@field MinimumWarmScore number
---@field AIDeliveryAreaLimit ULuaArrayHelper<FAIDeliveryAreaLimit> @送快递区域多边形区域 (目标在此区域内才会送快递)
---@field AIDeliveryForbiddenAreas ULuaArrayHelper<FBox> @AI送快递目标位置禁入区域 (目标在此区域内不会被送快递)
---@field AIFollowWayPointAreas ULuaArrayHelper<FBox> @AI长寻路区域,需要走路点方案
---@field bUseDeliveryPosCheck boolean @开启送快递位置密度检测：bUseDeliveryPosCheck
---@field DeliveryPosCheckRange number @AI送快递目标位置密度检测距离
---@field DeliveryPosCheckMaxPlayerNum number @AI送快递目标位置密度最大人数（大于该人数不送）
---@field DeliveryPosCheckMaxTeamNum number @AI送快递目标位置密度最大队伍数（大于该队伍数不送）
---@field DeliveryPolygonPointsList ULuaArrayHelper<FDeliveryPolygonPoints> @AI送快递目标位置密度检测区域白名单 (目标在此区域内不会做密度控制校验) 要求：1.凸多边形 2.顶点以固定的顺序给出（逆时针或顺时针）
---@field AIRatingDamageConfig ULuaArrayHelper<FAIRatingDamage>
---@field ModelAIRatingDamageConfig ULuaArrayHelper<FAIRatingDamage>
---@field MLAIRatingReductionDamageConfig ULuaArrayHelper<FAIRatingDamage>
---@field MLAIProjectileReductionDamageConfig ULuaArrayHelper<FAIHPBasedReductionDamage>
---@field MLAIVehicleReductionDamageConfig ULuaArrayHelper<FAIHPBasedReductionDamage>
---@field MLAIDamageProtectModeIDBlackList ULuaArrayHelper<number>
---@field AIAttackAIRatingDamage ULuaArrayHelper<FAIAttackAIRatingDamage>
---@field AIAttackMORatingDamage ULuaArrayHelper<FAIAttackMORatingDamage>
---@field AIAttackBuildingRatingDamage ULuaArrayHelper<FAIAttackBuildingRatingDamage>
---@field AIDeliveryPlayerConfig ULuaArrayHelper<FDeliveryPlayerConfig>
---@field AIAttackAnimalRatingDamage ULuaArrayHelper<FAIAttackAnimalRatingDamage>
---@field bUseFireHitRateForAIShooting boolean
---@field AIAttackNotHitOffsetWidth number @命中参数说明：命中时打中间的矩形，没命中时打矩形周围的区域， OffsetWidth为宽度扩展，OffsetHeight为向上高度扩展 ------------------------------------------------- |                 OffsetHeight                  | |                 |-----------|                 | |                 |           |                 | |<--OffsetWidth-->|           |<--OffsetWidth-->|
---@field AIAttackNotHitOffsetHeight number
---@field AIRatingFireHitRateConfig ULuaArrayHelper<FAIRatingFireHitRate>
---@field AIAttackAIRatingFireHitRateConfig ULuaArrayHelper<FAIAttackAIRatingFireHitRate>
---@field bUseAIDynamicDamageBasedHP boolean
---@field bUseAIDynamicDamageBasedAILevel boolean
---@field bUseAIMobaHeroBasedAILevel boolean
---@field AIMobaHeroBasedAILevelConfig ULuaArrayHelper<FAIShootDamageMobaHeroBasedLevel>
---@field AIMobaEquipmentScoreConfig ULuaArrayHelper<FAIMobaEquipmentScore>
---@field AIAttackPlayerDynamicDamageHPConfig ULuaArrayHelper<FAIDynamicDamageBasedHP>
---@field AIAttackAIDynamicDamageHPConfig ULuaArrayHelper<FAIDynamicDamageBasedHP>
---@field MaxMoveRequestExecutePerFrame number
---@field MaxQueuingMoveRequests number
---@field MaxClearTroubleRequestExecutePerFrame number
---@field PathRecordTimeInterval number
---@field PathRecordDiffPointDistSq number
---@field PathRecordSpanTime number
---@field PathRecordTestPointMobilityType EOverrideQueryMobilityType
---@field PathRecordTestPointChannel ECollisionChannel
---@field PathRecordTestPointObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field PathRecordQueueSize number
---@field MaxPathRecordExecutePerFrame number
---@field AIPatrolPathDataFilePath string
---@field CachedCandidatePlayers ULuaArrayHelper<ASTExtraPlayerCharacter>
---@field CachedCandidateAICs ULuaArrayHelper<AFakePlayerAIController>
---@field HaveTurnedOnAIAttackEachOther boolean
---@field CurrentActing number
---@field JumpingTimeElapse number
---@field Ratio number
---@field JumpCount number
---@field MultiAirlineAISimulateJumpDataMap ULuaMapHelper<number, FMultiAirlineAISimulateJumpData>
---@field AverageRating number
---@field AIAttackEachOtherBeginTime number
---@field AIDeliveryWaveInterval number
---@field CircleIndexFakeAIPoisonDamage number
---@field AIAttackMORatingDamageIndex number
---@field AIAttackBuildingRatingDamageIndex number
---@field AIAttackAnimalRatingDamageIndex number
---@field WaterSwimActors ULuaArrayHelper<AActor>
---@field IsCheckVisibilityReverse boolean
---@field IsUseRVOAvoidance boolean
---@field bEnableAIStrategy number
---@field AIStrategyRatingConfig ULuaArrayHelper<number>
---@field AIStrategyInitReadyStateLeftTime number
---@field AIStrategyInitFallbackLeftTime number
---@field InitMLNetOnlineTimeDelay number
---@field MidDropMLAIDepositDistance number
---@field InitMLAIPersonalInfoRequestCount number
---@field MLAIWeaponEquipConfigTableName string
---@field MLAIWeaponAttachmentConfigTableName string
---@field MLAINetOnlineInitTime EInitMLNetOnlineTime
---@field IsEnablePartner boolean
---@field MLAIMarkPlayerInBattleSearchRadius number
---@field MLAIMarkPlayerInBattleFirePosDist number
---@field MLAIMarkPlayerInBattleShootDirDist number
---@field MLAIMarkPlayerInBattleNearDeathInterval number
---@field MLAIMarkPlayerInBattleCountDown number
---@field MLAIMarkPlayerInBattleMarkerTransferDist number
---@field DefaultRealtimeStatesSyncInterval number
---@field BFAIShootConfig string
---@field MobaAIShootConfig string
local UAIActingComponent = {}

---@param bNewActive boolean
---@param bReset boolean
function UAIActingComponent:SetActive(bNewActive, bReset) end

function UAIActingComponent:OnGameModeInitFinished() end

function UAIActingComponent:OnGameEnterFight() end

function UAIActingComponent:OnGameEnterFinish() end

---@param TeamID number
function UAIActingComponent:OnTeamDataChanged(TeamID) end

---@param AIC AFakePlayerAIController
---@param InPlayerKey number
---@param InTeamId number
---@param InPlayerName string
---@param UID number
function UAIActingComponent:AddCandidateAI(AIC, InPlayerKey, InTeamId, InPlayerName, UID) end

---@param InstigatorController ASTExtraPlayerController
---@param KnockDownCharacter ASTExtraBaseCharacter
function UAIActingComponent:ReceivedPlayerKnockedDown(InstigatorController, KnockDownCharacter) end

---@param VictimKey number
---@param InstigatorKey number
---@param FinalDamage number
function UAIActingComponent:ReceivedPlayerTakeDamage(VictimKey, InstigatorKey, FinalDamage) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UAIActingComponent:ReceivedPlayerKilled(PlayerKey, KillerKey, bIsAI) end

---@param Killer ASTExtraPlayerState
---@param DamageData FDamageCauserRecordData
---@param Assists ULuaArrayHelper<ASTExtraPlayerState>
---@param Victim AUAECharacter
function UAIActingComponent:ReceivedLogicalKilled(Killer, DamageData, Assists, Victim) end

---@param PlayerKey number
---@param KillerKey number
function UAIActingComponent:ReceivedAIPlayerDead(PlayerKey, KillerKey) end

---@param InPlayerKey number
---@param KillerKey number
function UAIActingComponent:ReceivedPlayerDead(InPlayerKey, KillerKey) end

---@param InPlayerKey number
---@param InCharacter ASTExtraPlayerCharacter
function UAIActingComponent:ReceivedPlayerAdd(InPlayerKey, InCharacter) end

---@param InPlayerKey number
---@param InAIC AFakePlayerAIController
function UAIActingComponent:ReceivedAICAdd(InPlayerKey, InAIC) end

---@return number
function UAIActingComponent:GetMaxActiveAI() end

---@param InNum number
function UAIActingComponent:IncreasePlayersOnSquare(InNum) end

---@param InNum number
function UAIActingComponent:IncreaseOriginalTotalAINum(InNum) end

---@return number
function UAIActingComponent:RetrieveCandidateAINum() end

---@return number
function UAIActingComponent:RetrieveDeferKillFakeAINum() end

---@param MAIC AMobAIController
---@return boolean
function UAIActingComponent:AdjustAIAttackMORatingDamage(MAIC) end

---@param BuildingActor ASTBuildingActorBase
---@return boolean
function UAIActingComponent:AdjustAIAttackBuildingRatingDamage(BuildingActor) end

---@param AIC ABasicAIController
---@return boolean
function UAIActingComponent:AdjustAIAttackAnimalRatingDamage(AIC) end

---@param PlayerKey number
---@param bIsAI boolean
function UAIActingComponent:ReceivedPlayerRespawn(PlayerKey, bIsAI) end

function UAIActingComponent:StopAllFakePlayerAIBehaviorTree() end

---在结算时执行停止行为树的逻辑 功能基本与StopAllFakePlayerAIBehaviorTree一致，在这里会给AI传递标记
function UAIActingComponent:StopAllAiOnGameFinish() end

function UAIActingComponent:GetExistingCharacters() end

---@param KilledPlayerKey number
---@param bAddDynamicRank boolean
function UAIActingComponent:DecreaseAlivePlayerNum(KilledPlayerKey, bAddDynamicRank) end

function UAIActingComponent:InitReportAIStrategyInfo() end

function UAIActingComponent:InitMLNetOnlineWhenHasMLAI() end

---@param Center FVector
---@param Radius number
---@param MaxAllowNum number
function UAIActingComponent:ActivateNearWayPoints(Center, Radius, MaxAllowNum) end

---@param Pos FVector
---@return boolean
function UAIActingComponent:AdjustPosIsInAIFollowWayPointArea(Pos) end

---@param OutDamageScale number
---@param VictimController AController
---@param InstigatorController AController
---@return number
function UAIActingComponent:GetSkillDamageScale(OutDamageScale, VictimController, InstigatorController) end

---@param MLAIModeId number
function UAIActingComponent:InitMLAIWeaponEquipConfig(MLAIModeId) end

---@param OutSpawnItemList ULuaArrayHelper<FMLAIWeaponEquipSpawnItem>
---@param DeliverTarget ASTExtraBaseCharacter
function UAIActingComponent:GetRandomMLAIWeaponEquipSpawnItems(OutSpawnItemList, DeliverTarget) end

---@param PlayerChar ASTExtraBaseCharacter
---@param bForNearDeath boolean
---@param bTransfer boolean
function UAIActingComponent:MarkPlayerInBattle(PlayerChar, bForNearDeath, bTransfer) end

---@param DeltaTime number
function UAIActingComponent:SelectAct(DeltaTime) end

---@param DeltaTime number
function UAIActingComponent:PlayAct(DeltaTime) end

---@param DeltaTime number
function UAIActingComponent:PlayFakeAINameAct(DeltaTime) end

---@param Killer FAIActingCandidateData
---@param Killed FAIActingCandidateData
---@param WeapID number
---@param InWillKilled number
---@param bLastOneAndPoison boolean
function UAIActingComponent:SimulateKilledFakeAI(Killer, Killed, WeapID, InWillKilled, bLastOneAndPoison) end

---@param OutSuccess boolean
---@return FVector
function UAIActingComponent:GetSpawnRandomLocation(OutSuccess) end

---@param Circle FVector
---@param OutSuccess boolean
---@return FVector
function UAIActingComponent:GetSpawnRandomLocationCheck(Circle, OutSuccess) end

---@param DeltaTime number
function UAIActingComponent:SimulateJumping(DeltaTime) end

---@param TmpPlaneData FPlaneData
---@param DeltaTime number
function UAIActingComponent:SimulateJumpingMultiAirline(TmpPlaneData, DeltaTime) end

---@param DeltaTime number
function UAIActingComponent:DeliveryAct(DeltaTime) end

function UAIActingComponent:CalcDeliverTargetData() end

function UAIActingComponent:TurnOnAIAttackEachOther() end

---@param RatingScore number
---@return number
function UAIActingComponent:GetRatingDamageConfig(RatingScore) end

---@param RatingDamageConfig ULuaArrayHelper<FAIRatingDamage>
---@param RatingScore number
---@return number
function UAIActingComponent:GetAIRatingDamageConfigIndex(RatingDamageConfig, RatingScore) end

---@param RatingScore number
---@return number
function UAIActingComponent:GetRatingFireHitRateConfig(RatingScore) end

---@param AverageRatingScore number
---@return number
function UAIActingComponent:GetAIAtkAIDamageConfig(AverageRatingScore) end

---@param AverageRatingScore number
---@return number
function UAIActingComponent:GetAIAtkAIFireHitRateConfig(AverageRatingScore) end

---@param AverageRatingScore number
---@return number
function UAIActingComponent:GetAIAttackAnimalDamageConfig(AverageRatingScore) end

---@param AverageRatingScore number
---@return number
function UAIActingComponent:GetAIAttackMODamageConfig(AverageRatingScore) end

---@param AverageRatingScore number
---@return number
function UAIActingComponent:GetAIAttackBuildingDamageConfig(AverageRatingScore) end

---@param RatingScore number
---@return number
function UAIActingComponent:GetRatingDeliverConfig(RatingScore) end

---@param OutAICs ULuaArrayHelper<AFakePlayerAIController>
function UAIActingComponent:GetAllAIC(OutAICs) end

---@param StrategyPlan number
function UAIActingComponent:OnNotifyAIStrategyPlan(StrategyPlan) end

---@param Info FDSAIStrategyInfo
function UAIActingComponent:OnNotifyAIStrategyUpdate(Info) end

---@param bV1Drop boolean
---@param UID number
---@param FeedNum number
function UAIActingComponent:TestOnNotifyV2(bV1Drop, UID, FeedNum) end

---@param UID number
---@param Info FAIScriptWeightInfo
function UAIActingComponent:OnNotifyAIScriptWeight(UID, Info) end

---@param Player ASTExtraPlayerCharacter
---@param AI AFakePlayerAIController
function UAIActingComponent:OnRequestDepositMLAI(Player, AI) end

---@param UID number
function UAIActingComponent:TestScriptCondition(UID) end

---@param WaveId number
---@param DeliveryTarget ASTExtraPlayerCharacter
---@param BoundedAICs ULuaArrayHelper<FNotifyBoundedAICStat>
---@param FailedInfo ULuaArrayHelper<FNotifyBindFailedAICStat>
function UAIActingComponent:NotifyAIDeliveryCommandProcessResult(WaveId, DeliveryTarget, BoundedAICs, FailedInfo) end

function UAIActingComponent:InitBFShootCfgTable() end

---@param PlayerKey number
---@param AIKey number
---@param Add boolean
function UAIActingComponent:AddRemoveRescuePlayerKey(PlayerKey, AIKey, Add) end

function UAIActingComponent:InitMobaHeroShootCfgTable() end
