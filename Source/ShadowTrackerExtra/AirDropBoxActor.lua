---@meta

---@class EAirDropBoxReportType
---@field AirDropBoxReportType_Normal number
---@field AirDropBoxReportType_FlareGun number
---@field AirDropBoxReportType_Other number
EAirDropBoxReportType = {}


---@class EAirDropBoxSimulateCloseType
---@field SimulateCloseType_None number
---@field SimulateCloseType_Normal number
---@field SimulateCloseType_AttachParent number
---@field SimulateCloseType_CarriedState number
---@field SimulateCloseType_CarriedValue number
---@field SimulateCloseType_OutRange number
---@field SimulateCloseType_Other1 number
---@field SimulateCloseType_Other2 number
---@field SimulateCloseType_Other3 number
EAirDropBoxSimulateCloseType = {}


---@class FAssetPathWeightPair
---@field Path FSoftObjectPath
---@field Weight number
FAssetPathWeightPair = {}


---@class FAirDropResource
---@field bRandomParachuteMaterial boolean
---@field AirdropParachuteMaterialsPath ULuaArrayHelper<FAssetPathWeightPair>
FAirDropResource = {}


---@class FAirDropAdvertisementData
---@field BoxMeshPath string
---@field bBoxMeshOnlyVisibleToObserver boolean
---@field BoxMaterialPath string
---@field bBoxMaterialOnlyVisibleToObserver boolean
---@field UmbrellaMaterialPath string
---@field bUmbrellaMaterialOnlyVisibleToObserver boolean
---@field bDataFetched boolean
FAirDropAdvertisementData = {}


---@class FAirDropAppearanceResourcePath
---@field BoxMeshPath FSoftObjectPath
---@field BoxMaterialPath FSoftObjectPath
---@field ParachuteMeshPath FSoftObjectPath
---@field ParahcuteMaterialPath FSoftObjectPath
---@field BoxSmokePath FSoftObjectPath
---@field BoxFlashPath FSoftObjectPath
FAirDropAppearanceResourcePath = {}


---@class FAirDropBoxGenerateWrapperItemData
---@field WrapperClass APickUpWrapperActor
---@field Count number
FAirDropBoxGenerateWrapperItemData = {}


---@class FMovementSample
---@field Location FVector
---@field Rot FRotator
FMovementSample = {}


---@class FRecyclablePickupItemRandomConfig
---@field RecyclablePickupItemTemplate ARecyclablePickupItem
---@field RecyclablePickupItemSocketOffset FVector
---@field TermWeight number
FRecyclablePickupItemRandomConfig = {}


---@class FPlayerActiveRegionsChangedDelegate : ULuaMulticastDelegate
FPlayerActiveRegionsChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bEnter: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerActiveRegionsChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bEnter boolean
function FPlayerActiveRegionsChangedDelegate:Broadcast(bEnter) end


---@class UAirDropBoxDamageType: USTExtraDamageType
local UAirDropBoxDamageType = {}


---@class AAirDropBoxActor: AUAERegionActor, IInteractorInterface, IScopeInteractionInterface
---@field InsideBoxExtent FVector
---@field InsideCollisionParams ULuaArrayHelper<ECollisionChannel>
---@field InsideTime number
---@field InsideTimeThreshold number
---@field InsideDistThreshold number
---@field DroppingSpeed number
---@field bIsHitTheGround boolean
---@field HitGroundHeight number
---@field SmokeStartScaleDistance number
---@field SmokeEndScaleDistance number
---@field SmokeStartScaleValue number
---@field SmokeEndScaleValue number
---@field PrevSmokeCurrentDistanceScaler number
---@field bIsShowingSmoke boolean
---@field ForceUpdateLocInterval number
---@field ForceUpdateLocDelayInterval number
---@field ForceUpdateLocDissqThreshold number
---@field AvoidStuckForce number
---@field TlogID number
---@field AttachActorTags ULuaArrayHelper<string>
---@field bEnableFallDamage boolean
---@field MaxVelocity number
---@field MaxDamage number
---@field DeadInventoryBoxTemplate APlayerTombBox
---@field PickupItemRandomConfig ULuaArrayHelper<FRecyclablePickupItemRandomConfig>
---@field WrapperBoxName string
---@field AirDropBoxId number
---@field AirDropOrderIndex number
---@field OwningAirplaneID number
---@field PickupBoxType EPickUpBoxType
---@field StaticEvtID number
---@field DropType EAirDropType
---@field OBUIShowDistance number
---@field bIsSuperAirdrop boolean
---@field RandomNormalParachuteMatIndex number
---@field bNeedReportToServer boolean
---@field NormalAirdropBoxResource FAirDropResource
---@field SuperAirdropBoxResource FAirDropResource
---@field SummonerKey number
---@field CustomPickUpZLimit number
---@field CustomPickUpRadius number
---@field CurrentFestivalAppearanceResourceGroup number
---@field FestivalAppearanceResourceConfigGroup ULuaArrayHelper<FAirDropAppearanceResourcePath>
---@field bIsBoxHitTheGroundCpp boolean
---@field bIsBoxAttachCpp boolean
---@field ServerDroppingSpeedCpp number
---@field bRecoverSpeedCpp boolean
---@field AddTagCharacterAddAllDependency boolean
---@field AddTagMoveablePlatform boolean
---@field SpawnTime number
---@field DroppingStuffLocation FVector
---@field ForceUpdatePeriodCppDelay number
---@field ForceUpdatePeriodCpp number
---@field CheckMobilePlatformPeriodCpp number
---@field CheckMobilePlatformActorZ number
---@field CheckMobilePlatformTeleport FVector
---@field CheckMobilePlatformTag string
---@field SwimObjectArray ULuaArrayHelper<AActor>
---@field CheckWaterOverlapInterval number
---@field CheckWaterOverlapElapsedCpp number
---@field AsyncLoadAppearanceResource FAirDropResource
---@field AsyncLoadAdvertisementResource FAirDropResource
---@field AdvertisementData FAirDropAdvertisementData
---@field bUseAdvertisement boolean
---@field ClientMovementSample ULuaArrayHelper<FMovementSample>
---@field ClientMovementSampleCnt number
---@field IsCheckGameModeType boolean
---@field CheckGameModeTypeResult boolean
---@field CheckGameModeTypeCount number
---@field NoSimulateDis number
---@field bIsInWater boolean
---@field ClientSamlpeQueueIndex number
---@field TeamID number
---@field TeamPlayerIDs ULuaArrayHelper<number>
---@field CheckStopDurationDefault number
---@field CheckStopDuration number
---@field bIsListenPlayerActiveRegionsChanged boolean
---@field bSyncTickEnable boolean
---@field ActiveChangedDelegate FPlayerActiveRegionsChangedDelegate
---@field AttachToRelativeLoc FVector
---@field OnTheGroundAndCheckedMobilePlatform boolean
---@field bCanBeenCarried boolean @是否可以背负
---@field bIsCarried boolean
---@field CanBeCatchedByExcavator boolean
---@field ExcavatorCatachState number
---@field CachedBeforeThrow_Velocity FVector
---@field CachedBeforeThrow_MaxSpeed number
---@field CachedBeforeThrow_ProjectileGravityScale number
---@field CachedBeforeThrow_FollowVelocity boolean
---@field CachedBeforeThrow_RemainsVertical boolean
---@field bOpened boolean
---@field OnBoxBeOpened FOnBoxBeOpened
---@field OnBoxBeFirstOpened FOnBoxBeOpened
---@field PickUpItemFlowSourceType EPickUpItemFlowSourceType
---@field PlaneSpawnTime number
---@field DropBoxSpawnTime number
---@field BePickupedCount number
---@field AirDropReportID number
---@field LandLocation FVector
---@field AirDropBoxReportType EAirDropBoxReportType
---@field bUnifiedSimulateFunction boolean
---@field bDestinSimulateState boolean
---@field DropBoxSimulateCloseType number
---@field DropBoxSimulateCloseTypeClient number
---@field GroundActorList ULuaArrayHelper<AActor>
local AAirDropBoxActor = {}

function AAirDropBoxActor:BoxReachGround() end

---@param scale number
function AAirDropBoxActor:DistanceScalerChangedEvent(scale) end

---@param DataList ULuaArrayHelper<FAirDropBoxGenerateWrapperItemData>
---@param BoxLoc FVector
---@param TeamID number
function AAirDropBoxActor:GenerateWrappersBox(DataList, BoxLoc, TeamID) end

---@param BoxLoc FVector
---@param Template ARecyclablePickupItem
---@param SocketOffset FVector
function AAirDropBoxActor:SpawnPickupItem(BoxLoc, Template, SocketOffset) end

---@return boolean
function AAirDropBoxActor:ForceUpdateAirdropLoc() end

function AAirDropBoxActor:AddToAIList() end

---@param UpdatedComponent USceneComponent
function AAirDropBoxActor:SetBuoyancyUpdatedComponent(UpdatedComponent) end

function AAirDropBoxActor:OnRep_BoxId() end

---@param TeamID number
function AAirDropBoxActor:SetTeamID(TeamID) end

---@param TeamPlayerIDs ULuaArrayHelper<number>
function AAirDropBoxActor:SetTeamPlayerIDs(TeamPlayerIDs) end

function AAirDropBoxActor:OnRep_NormalParachuteMatIndex() end

function AAirDropBoxActor:OnRep_SpecialTypeChange() end

function AAirDropBoxActor:OnRep_AirdropTypeChange() end

function AAirDropBoxActor:ChangeAirdropAppearance() end

---@param SphereRadius number
---@return boolean
function AAirDropBoxActor:IsDropIntoWater(SphereRadius) end

function AAirDropBoxActor:OnBoxDropIntoWater() end

function AAirDropBoxActor:OnRep_IsBoxHitTheGroundCpp() end

function AAirDropBoxActor:BP_OnRep_IsBoxHitTheGroundCpp() end

function AAirDropBoxActor:BP_DropIntoWarter() end

function AAirDropBoxActor:OnRep_ServerDroppingSpeedCpp() end

function AAirDropBoxActor:OnRep_IsBoxBoxAttachCpp() end

function AAirDropBoxActor:BP_OnRep_IsBoxBoxAttachCpp() end

---@param Sound UAkAudioEvent
---@param bIsInWater boolean
---@param SwitchGroup string
function AAirDropBoxActor:PlayBoxLandingVoice(Sound, bIsInWater, SwitchGroup) end

---@param Order FAirDropOrder
function AAirDropBoxActor:SetOrder(Order) end

---@return boolean
function AAirDropBoxActor:CanTakeDamage() end

function AAirDropBoxActor:StartAsyncLoadBoxAppearanceResource() end

---@param ResPaths ULuaArrayHelper<FSoftObjectPath>
function AAirDropBoxActor:OnAsyncLoadingBoxAppearanceResourceFinished(ResPaths) end

---@return boolean
function AAirDropBoxActor:StartAsyncLoadNewAddListResource() end

---@param ResPaths ULuaArrayHelper<FSoftObjectPath>
function AAirDropBoxActor:OnAsyncLoadingNewAddListResourceFinished(ResPaths) end

function AAirDropBoxActor:OnRep_AdvertisementData() end

---@param MatPath FSoftObjectPath
function AAirDropBoxActor:AsyncLoadNormalParachutMats(MatPath) end

---@param MatPath FSoftObjectPath
function AAirDropBoxActor:OnAsyncLoadNormalParachutMatsFinished(MatPath) end

---@param AirdropParachuteMaterial UMaterialInstance
function AAirDropBoxActor:ApplyNormalParachuteMat(AirdropParachuteMaterial) end

---@param InMove FRepMovement
---@return number
function AAirDropBoxActor:AddClientSample(InMove) end

---@param CheckIndex number
---@return boolean
function AAirDropBoxActor:IsClientSamlpeChanged(CheckIndex) end

---@param RenderResList ULuaArrayHelper<FSoftObjectPath>
function AAirDropBoxActor:TryLoadFlareGunAbilityAssetsAsync(RenderResList) end

---@param ResPaths ULuaArrayHelper<FSoftObjectPath>
function AAirDropBoxActor:OnAsyncLoadingFlareGunAbilityAssetsFinished(ResPaths) end

---@param InResources ULuaArrayHelper<UObject>
function AAirDropBoxActor:OnRepFlareGunAbilityAssetsFinished(InResources) end

function AAirDropBoxActor:CheckMobilePlatform() end

---@param WorldContextObject UObject
function AAirDropBoxActor:GetAllAirDropBox(WorldContextObject) end

function AAirDropBoxActor:OnRep_StopTick() end

---@param PC APlayerController
function AAirDropBoxActor:MarkBoxOpened(PC) end

---@param Platform AActor
function AAirDropBoxActor:AttachToMobilePlatform(Platform) end

---@param Platform AActor
---@param RelativeLoc FVector
function AAirDropBoxActor:RPC_Client_AttachToMobilePlatform(Platform, RelativeLoc) end

---@param Pawn ASTExtraBaseCharacter
function AAirDropBoxActor:RPC_Server_RevertToSafeMoveState(Pawn) end

---设置是否被背负 流浪地球机械狗可以背负空投箱，在Attach状态下客户端不要将坐标设置到ReplicatedMovement.Location
---@param bInIsCarried boolean
function AAirDropBoxActor:SetIsCarried(bInIsCarried) end

function AAirDropBoxActor:OnRep_bIsCarried() end

---@param InCatchState number
function AAirDropBoxActor:SetExcavatorCatachState(InCatchState) end

function AAirDropBoxActor:OnRep_ExcavatorCatachState() end

---@param Velocity FVector
---@param MaxSpeed number
function AAirDropBoxActor:ThrowedByExcavator(Velocity, MaxSpeed) end

---@param ImpactResult FHitResult
function AAirDropBoxActor:OnExcavatorThrowOnGround(ImpactResult) end

---@param InPicker ASTExtraBaseCharacter
function AAirDropBoxActor:HandleBePickuped(InPicker) end

---@param InPlayerKey number
function AAirDropBoxActor:ReportAirDropBoxBePickuped(InPlayerKey) end

---@return boolean
function AAirDropBoxActor:IsAlreadyOpened() end

---@return boolean
function AAirDropBoxActor:GetUnifiedSimulateFunction() end

function AAirDropBoxActor:OnRep_DropBoxSimulateCloseType() end

---@param InActive boolean
---@param InForce boolean
function AAirDropBoxActor:SetSimulateState(InActive, InForce) end

---@return boolean
function AAirDropBoxActor:GetSimulateState() end

---@param InType EAirDropBoxSimulateCloseType
---@param InActive boolean
---@param InRemoveServer boolean
function AAirDropBoxActor:SetDropBoxSimulateCloseType(InType, InActive, InRemoveServer) end

---@param InForce boolean
function AAirDropBoxActor:UpdateCloseTypeSimulateState(InForce) end

---@return number
function AAirDropBoxActor:GetDropBoxSimulateCloseType() end

---@param InType EAirDropBoxSimulateCloseType
---@return boolean
function AAirDropBoxActor:HasDropBoxSimulateCloseType(InType) end

function AAirDropBoxActor:CheckGroudActorLife() end

---@param DestroyedActor AActor
function AAirDropBoxActor:HandleGroundActorDestoryed(DestroyedActor) end

---@param InRecycledActor AActor
---@param bPersistentPool boolean
function AAirDropBoxActor:HandleGroundActorRecycled(InRecycledActor, bPersistentPool) end


---@class AWaterSoundVolume: AActor
---@field VolumeAreaList ULuaArrayHelper<UShapeComponent>
local AWaterSoundVolume = {}
