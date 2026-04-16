---@meta

---@class EAIStateItemStateType
---@field TombBox number
---@field PickUpWrapper number
---@field AirDrop number
---@field Invalid number
EAIStateItemStateType = {}


---@class FMLAITTKCheckReportConfig
---@field ReportExceptionType string
---@field TTKCheckTime number
FMLAITTKCheckReportConfig = {}


---@class FMLAIKOAndKillReportConfig
---@field ReportExceptionType string
---@field ReportCondition UAIStateReportCondition
---@field bForceReport boolean
---@field ReportProbability number
---@field bReportKillerUID boolean
FMLAIKOAndKillReportConfig = {}


---@class FBlastingModeFTeamPoint
---@field TeamID number
---@field TeamScore number
FBlastingModeFTeamPoint = {}


---@class FBlastingModeAIStatGameState
---@field ExecuteTime number
---@field TeamPoints ULuaArrayHelper<FBlastingModeFTeamPoint>
---@field bBombed boolean
---@field bExploded boolean
---@field bDefused boolean
---@field Bombpos FVector
---@field CurrentRound number
---@field CurrentStage number
FBlastingModeAIStatGameState = {}


---@class FBlastingModeAIStatProgressBarState
---@field AIProgressType number
---@field RemainTime number
FBlastingModeAIStatProgressBarState = {}


---@class FElevatorState
---@field State number
---@field Floor number
---@field Position FVector
FElevatorState = {}


---@class FAnnihilationModeAIStatGameState
---@field ExecuteTime number
---@field TeamPoints ULuaArrayHelper<FBlastingModeFTeamPoint>
---@field CurrentRound number
---@field CurrentStage number
---@field RegionID number
FAnnihilationModeAIStatGameState = {}


---@class FAIWarDogRangeSearchItemRequest
---@field ItemID number
---@field Type EAIStateItemStateType
---@field SearchRadius number
FAIWarDogRangeSearchItemRequest = {}


---@class FAIWarDogRangeSearchVehicleRequest
---@field Category number
---@field SearchRadius number
FAIWarDogRangeSearchVehicleRequest = {}


---@class FAIWarDogBPState
---@field RescuePlayerKey number
---@field RescueRemainCount number
---@field DeliverTargetPlayerKey number
---@field bAutoDriveEnabled boolean
---@field bDeliveryHasOpenedBackpack boolean
FAIWarDogBPState = {}


---@class UAIStateCache: UObject
local UAIStateCache = {}


---@class UAIStateCachePartner: UAIStateCache
---@field ItemPurchaseTime ULuaMapHelper<number, string>
local UAIStateCachePartner = {}


---@class UAIStateCacheLostTomb: UAIStateCache
---@field SkillConfigID number
---@field EnemySenseRadius number
local UAIStateCacheLostTomb = {}


---@class UAIStateInfoComponent: UActorComponent
---@field VisibilityTraceChannel ECollisionChannel
---@field VisibilityTraceStartOffset ULuaMapHelper<string, FVector>
---@field VisibilityTraceEndOffset ULuaMapHelper<string, FVector>
---@field bVisibilityTraceComplex boolean
---@field ProjFragTag string
---@field ProjStunTag string
---@field ProjBurnTag string
---@field ProjSmokeTag string
---@field ProjThermite string
---@field ProjFragExplodeRadius number
---@field ProjStunExplodeRadius number
---@field ProjBurnExplodeRadius number
---@field ProjSmokeExplodeRadius number
---@field ProjThermiteRadius number
---@field MetDoorTag string
---@field SmokeTraceChannel ECollisionChannel
---@field SenseEnemyRadius number
---@field WarDogSenseEnemyRadius number
---@field SenseEnemyRadiusWeatherFactors ULuaMapHelper<EWeatherStatusType, number>
---@field SenseEnemyAngle number
---@field SenseMaxEnemy number
---@field bSenseTeammate boolean
---@field SenseEnemyNoVisibileTestHP number
---@field SenseAirDropRadius number
---@field SenseAirDropItemRadius number
---@field SenseBoxRadius number
---@field SenseItemRadius number
---@field SenseMaxBox number
---@field SenseMaxItem number
---@field SenseObstacleRadius number
---@field SenseAmmoDepotRadius number
---@field SenseCellarBreakableDoorRadius number
---@field SenseEscapeRadius number
---@field SenseElevatorDist number
---@field SenseMinerDist number
---@field AmmoDepotTag string
---@field CellarBreakableDoorTag string
---@field SupplyBoxTag string
---@field EscapeKeyDoorTag string
---@field EscapeBigDrillingRigTag string
---@field EscapeKarakinMinerTag string
---@field AmmoDepotHPName string
---@field AmmoDepotMaxHPName string
---@field SenseMaxObstacle number
---@field SenseMaxInteractable number
---@field SenseMaxEscapeObstacle number
---@field SenseThrownRadius number
---@field SenseSmokeThrownRadius number
---@field SenseStunBuffName string
---@field SenseMaxThrown number
---@field SenseDoorRadius number
---@field SenseMaxDoor number
---@field SenseMaxVehicle number
---@field MarkMap ULuaMapHelper<string, number>
---@field TTKCheckReportConfig ULuaArrayHelper<FMLAITTKCheckReportConfig>
---@field TTKCheckInitHP number
---@field TTKCheckShootTimes number
---@field MLAIKOAndKillOtherReportConfig ULuaArrayHelper<FMLAIKOAndKillReportConfig>
---@field MLAIKOAndKilledByOtherReportConfig ULuaArrayHelper<FMLAIKOAndKillReportConfig>
---@field LongDepositTimeToReport number
---@field LongDepositTimeToReportProbability number
---@field SenseNearbyWarDogRadius number
---@field SenseInteractableRadius number
---@field SenseVehicleRadius number
---@field SenseSuperPeopleBuildingRadius number
---@field SenseSuperPeopleActivityActorRadius number
---@field bIsAlert boolean
---@field bIsFadeOut boolean
---@field MLAIModeId number
---@field MapID number
---@field bAIPartnerMode boolean
---@field WarDogWeakPtr ASTQuadrupedCharacter
local UAIStateInfoComponent = {}

---@param MyChar ASTExtraBaseCharacter
function UAIStateInfoComponent:GetEscapeModePlayerSettlePoints(MyChar) end

---@param MyChar ASTExtraCharacter
---@param Elevator AActivityBaseActor
---@return boolean
function UAIStateInfoComponent:IsInEscapeElevator(MyChar, Elevator) end

---@param EmoteId number
---@param OwnerChar ASTExtraBaseCharacter
function UAIStateInfoComponent:OnPlayerStartPlayEmote(EmoteId, OwnerChar) end

---@param Event EEmoteAIEvent
---@param EmoteId number
---@param OwnerChar ASTExtraBaseCharacter
function UAIStateInfoComponent:OnEmoteAIEventFire(Event, EmoteId, OwnerChar) end

---@param Box AActivityBaseActor
---@return boolean
function UAIStateInfoComponent:IsEscapeSupplyBoxCanOpen(Box) end

---@param Box AActivityBaseActor
---@param AIC AFakePlayerAIController
---@return boolean
function UAIStateInfoComponent:IsAICanTriggerEscapeSupplyBox(Box, AIC) end

---@param Box AActivityBaseActor
---@return number
function UAIStateInfoComponent:GetEscapeModeSupplyBoxType(Box) end

---@param Box AActivityBaseActor
---@return boolean
function UAIStateInfoComponent:IsEscapeKeyDoorOpen(Box) end

---@param Miner AActivityBaseActor
---@return boolean
function UAIStateInfoComponent:IsMinerCanUse(Miner) end

---@param Miner AActivityBaseActor
---@param AIC AFakePlayerAIController
---@return boolean
function UAIStateInfoComponent:IsAICanTriggerMiner(Miner, AIC) end

---@param Elevator AActivityBaseActor
---@return FElevatorState
function UAIStateInfoComponent:GetElevatorState(Elevator) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UAIStateInfoComponent:IsInCirclePainVolume(Character) end

---@param AIC AFakePlayerAIController
---@return number
function UAIStateInfoComponent:GetSuperPeopleHeroId(AIC) end

---@return FAnnihilationModeAIStatGameState
function UAIStateInfoComponent:GetAnnihilationModeAIStatGameState() end

---@return number
function UAIStateInfoComponent:GetAnnihilationModePlayerCampType() end

---@param WarDog ASTQuadrupedCharacter
---@return FAIWarDogBPState
function UAIStateInfoComponent:GetWarDogBPState(WarDog) end

---@return FBlastingModeAIStatGameState
function UAIStateInfoComponent:GetBlastingModeGameState() end

---@return number
function UAIStateInfoComponent:GetPlayerCampID() end

---@return FBlastingModeAIStatProgressBarState
function UAIStateInfoComponent:GetBlastingModeBombProgressBarState() end

---@return boolean
function UAIStateInfoComponent:CanCollectBlastingModeState() end

---@return boolean
function UAIStateInfoComponent:CanCollectEscapeModeState() end

---@return boolean
function UAIStateInfoComponent:CanCollectLostTombModeState() end

---@return boolean
function UAIStateInfoComponent:CanCollectSuperPeopleState() end

---@return boolean
function UAIStateInfoComponent:CanCollectAnnihilationTeamModeState() end

---@param WarDog ACharacter
function UAIStateInfoComponent:RegisterWarDog(WarDog) end

function UAIStateInfoComponent:UnregisterWarDog() end

---@return boolean
function UAIStateInfoComponent:HasValidStateInfo() end

---@param InType EAirAttackInfo
---@param Waveindex number
---@param AirAttackMode EAirAttackMode
function UAIStateInfoComponent:OnAirAttackNotify(InType, Waveindex, AirAttackMode) end

---@param bNeedFullState boolean
---@param OutData ULuaArrayHelper<number>
---@return number
function UAIStateInfoComponent:GetParametrixAIStateRequestPacked(bNeedFullState, OutData) end

function UAIStateInfoComponent:GetInnerStatePBData() end

---@return number
function UAIStateInfoComponent:GetCurStateSerialNo() end

---@return number
function UAIStateInfoComponent:GetCurStateSerialNoPartner() end

---@param InRotation FRotator
function UAIStateInfoComponent:BeginFreeCamera(InRotation) end

function UAIStateInfoComponent:EndFreeCamera() end

---@param msgItem FInGameChatMsg
---@param PlayerKey string
function UAIStateInfoComponent:OnAIReceiveVoiceMsg(msgItem, PlayerKey) end

---@param PlayerCharacter ASTExtraBaseCharacter
function UAIStateInfoComponent:OnPlayerGotoDie(PlayerCharacter) end

---@param bRegister boolean
function UAIStateInfoComponent:RegisterPlayerInfoDelegates(bRegister) end

---@param DamageContext FGameMagnitudeContext
---@param DamageFlags EDamageEventFlags
---@param DamageEvent FDamageEvent
function UAIStateInfoComponent:OnWarDogDamageToCharacterWithContext(DamageContext, DamageFlags, DamageEvent) end

---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
---@param IsHeadShot boolean
---@param DamageHitPosition number
function UAIStateInfoComponent:OnWarDogPostTakeDamage(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage, IsHeadShot, DamageHitPosition) end

---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UAIStateInfoComponent:OnWarDogOwnerPostTakeDamage(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param ItemID number
---@param Type EAIStateItemStateType
---@param SearchRadius number
function UAIStateInfoComponent:AddWarDogRangeSearchItemRequest(ItemID, Type, SearchRadius) end

---@param Category number
---@param SearchRadius number
function UAIStateInfoComponent:AddWarDogRangeSearchVehicleRequest(Category, SearchRadius) end
