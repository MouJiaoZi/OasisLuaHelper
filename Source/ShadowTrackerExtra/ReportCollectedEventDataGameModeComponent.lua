---@meta

---@class UReportCollectedEventDataGameModeComponent: UActorComponent
---@field ComponentTickInterval number
local UReportCollectedEventDataGameModeComponent = {}

---@param InPlayerController APlayerController
function UReportCollectedEventDataGameModeComponent:OnPlayerPostLogin(InPlayerController) end

---@param InPlayerController APlayerController
function UReportCollectedEventDataGameModeComponent:OnPlayerLogout(InPlayerController) end

---@param InActor AActor
function UReportCollectedEventDataGameModeComponent:OnActorInitialized(InActor) end

---@param InActor AActor
---@param InEndPlayReason EEndPlayReason
function UReportCollectedEventDataGameModeComponent:OnActorEndPlay(InActor, InEndPlayReason) end

---@param InPUBGDoor APUBGDoor
function UReportCollectedEventDataGameModeComponent:OnPUBGDoorBegunPlay(InPUBGDoor) end

---@param InPUBGDoor APUBGDoor
function UReportCollectedEventDataGameModeComponent:OnPUBGDoorEndPlay(InPUBGDoor) end

---@param InPUBGDoor APUBGDoor
---@param bBroken boolean
---@param InBrokenMesh UStaticMeshComponent
---@param InBrokenCauser AActor
function UReportCollectedEventDataGameModeComponent:OnPUBGDoorBroken(InPUBGDoor, bBroken, InBrokenMesh, InBrokenCauser) end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_QualityPlaza(PlayerController) end

function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_CanJump() end

function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_ForceJump() end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_ParachuteJumping(PlayerController) end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_ParachuteOpen(PlayerController) end

---@param PlayerController AUAEPlayerController
---@param bLandingOnHouse boolean
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_Landing(PlayerController, bLandingOnHouse) end

---@param InPlayerKey number
---@param bAI boolean
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_Respawn(InPlayerKey, bAI) end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_FireWorking(PlayerController) end

---@param InPlayerKey number
---@param EventID number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_GunMaster(InPlayerKey, EventID) end

---@param InPlayerKey number
---@param Reason string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_GameStatus_Win(InPlayerKey, Reason) end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_StartMatching(PlayerController) end

---@param PlaneComponent UPlaneComponent
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_PlaneSegment(PlaneComponent) end

---@param PlayerController AUAEPlayerController
---@param SegmentID number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_PlaneSegmentSelection(PlayerController, SegmentID) end

---@param PlaneComponent UPlaneComponent
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_PlaneCarrying(PlaneComponent) end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_TakeDropItem(PlayerController) end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_UsingItem(PlayerController) end

---@param PlayerControllerr AUAEPlayerController
---@param CharacterThrowComponent UThrowComponent
---@param Status string
---@param ItemId number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_UsingItem_Throw(PlayerControllerr, CharacterThrowComponent, Status, ItemId) end

---@param PlayerController AUAEPlayerController
---@param InBackpackComponent UBackpackComponent
---@param InTakenCount number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_ConsumingItem(PlayerController, InBackpackComponent, InTakenCount) end

---@param PlayerController AUAEPlayerController
---@param Type string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_Falling(PlayerController, Type) end

---@param PlayerController AUAEPlayerController
---@param TargetActor AActor
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_Climbing(PlayerController, TargetActor) end

---@param PlayerController AUAEPlayerController
---@param STCharacterCarryOtherCom USTCharacterCarryOtherComp
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_Carring(PlayerController, STCharacterCarryOtherCom) end

---@param SelfPlayerController AUAEPlayerController
---@param InstigatorPlayerController AUAEPlayerController
---@param STExtraVehicleBase ASTExtraVehicleBase
---@param DamageCauser AActor
---@param ActualDamage number
---@param TargetPart string
---@param HurtEquipId string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_UnderEnermyAttack_Vehicle(SelfPlayerController, InstigatorPlayerController, STExtraVehicleBase, DamageCauser, ActualDamage, TargetPart, HurtEquipId) end

---@param SelfPlayerController AUAEPlayerController
---@param InstigatorPlayerController AUAEPlayerController
---@param STExtraBaseCharacter ASTExtraBaseCharacter
---@param DamageCauser AActor
---@param AttackerPawn APawn
---@param bFatalHealthCost boolean
---@param FinalDamage number
---@param OldHealth number
---@param OldStates number
---@param DamageHitPos EAvatarDamagePosition
---@param OldBigHeadDurability number
---@param OldBigBodyDurability number
---@param BigHeadDurabilityIndexName string
---@param BigBodyDurabilityIndexName string
---@param Reason string
---@param TargetPart string
---@param HurtEquipId string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_UnderEnermyAttack_Character(SelfPlayerController, InstigatorPlayerController, STExtraBaseCharacter, DamageCauser, AttackerPawn, bFatalHealthCost, FinalDamage, OldHealth, OldStates, DamageHitPos, OldBigHeadDurability, OldBigBodyDurability, BigHeadDurabilityIndexName, BigBodyDurabilityIndexName, Reason, TargetPart, HurtEquipId) end

---@param SelfPlayerController AUAEPlayerController
---@param HitActor AActor
---@param DamageCauser AActor
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_UnderEnermyAttack_WepPan(SelfPlayerController, HitActor, DamageCauser) end

---@param SelfPlayerController AUAEPlayerController
---@param InstigatorPlayerController AUAEPlayerController
---@param STExtraBaseCharacter ASTExtraBaseCharacter
---@param OldStates number
---@param Reason string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_TakingDamage(SelfPlayerController, InstigatorPlayerController, STExtraBaseCharacter, OldStates, Reason) end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_ReducingSignalValue(PlayerController) end

---@param CircleMgrComponent UCircleMgrComponent
---@param Index number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_CircleReducing(CircleMgrComponent, Index) end

---@param CircleMgrComponent UCircleMgrComponent
---@param Index number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_CircleChange(CircleMgrComponent, Index) end

---@param PlayerController AUAEPlayerController
---@param STCharacterRescueOtherComp USTCharacterRescueOtherComp
---@param Status string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_Rescue(PlayerController, STCharacterRescueOtherComp, Status) end

---@param PlayerController AUAEPlayerController
---@param Character ASTExtraBaseCharacter
---@param STExtraVehicleBase ASTExtraVehicleBase
---@param Status string
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIndex number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIndex number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_DrivingVehicle(PlayerController, Character, STExtraVehicleBase, Status, LastSeatType, LastSeatIndex, NewSeatType, NewSeatIndex) end

---@param PlayerController AUAEPlayerController
---@param STExtraVehicleBase ASTExtraVehicleBase
---@param VehicleAvatarComponent UVehicleAvatarComponent
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_VehicleAvatar(PlayerController, STExtraVehicleBase, VehicleAvatarComponent) end

---@param PlayerController AUAEPlayerController
---@param State string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_ReloadingBullet(PlayerController, State) end

---@param AirDropBoxActor AAirDropBoxActor
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_AirDrop_Spawned(AirDropBoxActor) end

---@param Id number
---@param LanedLocation FVector
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_AirDrop_Landed(Id, LanedLocation) end

---@param PlayerController AUAEPlayerController
---@param PickUpBoxType EPickUpBoxType
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_PickupBoxOpen(PlayerController, PickUpBoxType) end

function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_SyncInfo() end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_PlayerInfo(PlayerController) end

---@param FollowerUAEPlayerController AUAEPlayerController
---@param FolloweeUAEPlayerController AUAEPlayerController
---@param FollowType string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_Following(FollowerUAEPlayerController, FolloweeUAEPlayerController, FollowType) end

---@param PlayerController AUAEPlayerController
---@param PinLocation FVector
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_MiniMapPinning(PlayerController, PinLocation) end

---@param PlayerController AUAEPlayerController
---@param STExtraBaseCharacter ASTExtraBaseCharacter
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_SwitchingPersonPerspective(PlayerController, STExtraBaseCharacter) end

---@param PlayerController AUAEPlayerController
---@param EmoteComponent UEmoteComponent
---@param EmoteID number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_Dancing(PlayerController, EmoteComponent, EmoteID) end

---@param PlayerController AUAEPlayerController
---@param PickUpListWrapperActor APickUpListWrapperActor
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_PickingupTombBox(PlayerController, PickUpListWrapperActor) end

function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_AirAttacking() end

---@param PlayerController AUAEPlayerController
---@param STExtraBaseCharacter ASTExtraBaseCharacter
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_CurrentWeapon(PlayerController, STExtraBaseCharacter) end

---@param PlayerController AUAEPlayerController
---@param STExtraPlayerCharacter ASTExtraPlayerCharacter
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_SceneInfo(PlayerController, STExtraPlayerCharacter) end

function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_TeamInfo() end

---@param PlayerController AUAEPlayerController
---@param Action string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_EnteringLeavingTeam(PlayerController, Action) end

---@param STExtraGameStateBase ASTExtraGameStateBase
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_RankList(STExtraGameStateBase) end

---@param PlayerController AUAEPlayerController
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_TextMessage(PlayerController) end

---@param PlayerController AUAEPlayerController
---@param STExtraBaseCharacter ASTExtraBaseCharacter
---@param ChangedPawnState EPawnState
---@param Type string
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_PawnState(PlayerController, STExtraBaseCharacter, ChangedPawnState, Type) end

---@param PlayerController AUAEPlayerController
---@param PUBGDoor APUBGDoor
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_OpenCloseDoor(PlayerController, PUBGDoor) end

---@param STExtraBaseCharacter ASTExtraBaseCharacter
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_VehicleState(STExtraBaseCharacter) end

---@param PlayerController AUAEPlayerController
---@param STExtraBaseCharacter ASTExtraBaseCharacter
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_EnergyState(PlayerController, STExtraBaseCharacter) end

---@param TeamID number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_TeamDataChanged(TeamID) end

---@param FatalDamageMaxKillStatus EFatalDamageMaxKillStatus
---@param CauserPlayerState AUAEPlayerState
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_MaxKiller(FatalDamageMaxKillStatus, CauserPlayerState) end

---@param PlayerController AUAEPlayerController
---@param QuickSignMsg FQuickSignMsg
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_QuickSign(PlayerController, QuickSignMsg) end

---@param PlayerController AUAEPlayerController
---@param OperationType string
---@param DefineID FItemDefineID
---@param FireCount number
---@param HitCount number
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_WeaponOperation(PlayerController, OperationType, DefineID, FireCount, HitCount) end

---@param Type string
---@param Master ASTExtraSplicedTrain
---@param Slave ASTExtraSplicedTrain
function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_VehicleConnection(Type, Master, Slave) end

function UReportCollectedEventDataGameModeComponent:ReportCollectedEvent_CollectedEventTypeChanged() end
