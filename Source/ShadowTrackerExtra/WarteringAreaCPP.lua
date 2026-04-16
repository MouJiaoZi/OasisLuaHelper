---@meta

---@class FDropOffLocationType
---@field World number
---@field Relative number
FDropOffLocationType = {}


---@class FFixedDropOffLocationType
---@field World number
---@field Relative number
FFixedDropOffLocationType = {}


---@class EInteractiveObjectType
---@field Normal number
---@field BrainMachine number
---@field __MAX number
EInteractiveObjectType = {}


---@class FWaterDropItemData
---@field DropLocation FVector
---@field DropID number
FWaterDropItemData = {}


---@class FLoveTreeData
---@field id number
---@field Loc FVector
---@field minRate number
---@field maxRate number
FLoveTreeData = {}


---@class FSkeletalAnimationSyncData
---@field Status boolean
FSkeletalAnimationSyncData = {}


---@class FSocketAttachmentInternalData
---@field SocketName string
---@field OffsetLoc FVector
---@field OffsetRot FRotator
---@field bFemaleUseDiffAnim boolean
FSocketAttachmentInternalData = {}


---@class FSocketAttachmentNameTable
---@field SocketName string
---@field OffsetLoc FVector
---@field OffsetRot FRotator
---@field bFemaleUseDiffAnim boolean @Check this if you want female use different anim montage
FSocketAttachmentNameTable = {}


---@class FBunnyDanceSyncData
---@field CurrentIndex number
---@field bIsDancing boolean
---@field TimeStamp number
FBunnyDanceSyncData = {}


---@class AWarteringAreaCPP: AUAERegionActor, IUAESkillInterface, IPickupDropFixedPosition, IPlayerLogicInterface, IDamageableInterface
---@field OnPlayerBeforeAttachedToThisDelegate FOnPlayerBeforeAttachedToThisDelegate
---@field OnPlayerAttachedToThisDelegate FOnPlayerAttachedToThisDelegate
---@field OnPlayerDettachedFromThisDelegate FOnPlayerDettachedFromThisDelegate
---@field OnBattleResult FOnBattleResult
---@field bModifyCharacterMeshTrans boolean
---@field bForceSkipCharacterMeshRotCheckWhenHasThisMiniTree boolean
---@field bCanEnterVehicleWhenAttached boolean
---@field bCanPickUpWhenAttached boolean
---@field DanceTimeStamp FBunnyDanceSyncData
---@field CurrentScale number
---@field CurActTime number
---@field PlayerCDTable ULuaArrayHelper<APlayerController>
---@field bIsInMasterCD boolean
---@field SocketBaseTags string
---@field CurrentCarouselRotationAccel number
---@field CurrentCarouselRotation number
---@field CurrentInteractingPlayerCount number
---@field PlayerNumberForTriggerEvent number
---@field OccupiedSockets ULuaArrayHelper<FSocketAttachmentInternalData>
---@field SocketNames ULuaArrayHelper<FSocketAttachmentNameTable>
---@field AttachedNumber number
---@field SkeletalMeshAttachCounter ULuaMapHelper<USceneComponent, number>
---@field SkeletalAnimationSyncData ULuaArrayHelper<FSkeletalAnimationSyncData>
---@field PrevSkeletalAnimationSyncData ULuaArrayHelper<FSkeletalAnimationSyncData>
---@field DropOffLocations ULuaArrayHelper<FVector>
---@field DropOffLocationType FDropOffLocationType
---@field bDropOffRelativeUseLocationOffset boolean
---@field AssociatedSkillIndex number
---@field AssociatedSkillUID number
---@field AttachedPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field IsDayTime number
---@field bSimAnimUpdateEveryFrame boolean
---@field ShowRabbitAnim boolean
---@field PawnDoneList ULuaArrayHelper<APawn>
---@field bUseSkinWeightProfile boolean
---@field bUseFixedDropPosition boolean
---@field FixedDropOffLocationType FFixedDropOffLocationType
---@field FixedRelativeDropPositions ULuaArrayHelper<FVector>
---@field InteractiveObjectType EInteractiveObjectType
---@field bEnableAvatarSuitGender boolean
---@field MinRotator FRotator
---@field MaxRotator FRotator
---@field bCanBePicked boolean
local AWarteringAreaCPP = {}

---@param PlayerController APlayerController
function AWarteringAreaCPP:OnSpawnTreeParticleCPP(PlayerController) end

---@param PlayerController APlayerController
function AWarteringAreaCPP:SpawnTreeParticleCPP_Multicast(PlayerController) end

---@param MontageIndex number
---@param Players ULuaArrayHelper<AActor>
function AWarteringAreaCPP:StartDancing_Multicast(MontageIndex, Players) end

---@param MontageIndex number
---@param Players ULuaArrayHelper<AActor>
function AWarteringAreaCPP:OnStartDancing(MontageIndex, Players) end

---@param Players ULuaArrayHelper<AActor>
---@param MontageIndex number
---@param JoinTime number
function AWarteringAreaCPP:OnPlayersDance(Players, MontageIndex, JoinTime) end

---@param Players ULuaArrayHelper<AActor>
---@param MontageIndex number
---@param JoinTime number
function AWarteringAreaCPP:DispatchPlayerDance_Multicast(Players, MontageIndex, JoinTime) end

---@param pController AUAEPlayerController
---@param treeData ULuaArrayHelper<FLoveTreeData>
function AWarteringAreaCPP:SetupMinimapDisplay(pController, treeData) end

---@param syncData FBunnyDanceSyncData
function AWarteringAreaCPP:OnRep_TimeStamp(syncData) end

---@param syncData FBunnyDanceSyncData
function AWarteringAreaCPP:OnTimeStampRep(syncData) end

---@param Players ULuaArrayHelper<AActor>
function AWarteringAreaCPP:StopDancing_Multicast(Players) end

---@param Players ULuaArrayHelper<AActor>
function AWarteringAreaCPP:OnStopDancing(Players) end

function AWarteringAreaCPP:OnRep_CurrentScaleBP() end

function AWarteringAreaCPP:OnRep_CurrentScaleCPP() end

function AWarteringAreaCPP:OnRep_CurActTimeBP() end

---@param PlayerController APlayerController
---@param ExMsg string
function AWarteringAreaCPP:ServerDoWaterLogic(PlayerController, ExMsg) end

---@param PlayerController APlayerController
---@param CDTime number
function AWarteringAreaCPP:ResetPCByTime(PlayerController, CDTime) end

---@param PlayerController APlayerController
function AWarteringAreaCPP:SetCDFlagByPC(PlayerController) end

---@param PlayerController APlayerController
---@return boolean
function AWarteringAreaCPP:GetIsPCInCD(PlayerController) end

---@param PlayerController APlayerController
function AWarteringAreaCPP:OnPCCDCleared(PlayerController) end

---@param CurPawn APawn
---@return boolean
function AWarteringAreaCPP:CanTriggertEvent(CurPawn) end

function AWarteringAreaCPP:OnClientCurrentInteractingPlayerCountChanged() end

---@param InActor AActor
---@param bPlayMontage boolean
---@return boolean
function AWarteringAreaCPP:AttachPlayerToSockets(InActor, bPlayMontage) end

---@param InActor AActor
---@param bStopMontage boolean
---@return boolean
function AWarteringAreaCPP:DetachPlayerFromSockets(InActor, bStopMontage) end

---@param AttachedPlayer AActor
---@param AttachedComponent USceneComponent
function AWarteringAreaCPP:OnPlayerAttached(AttachedPlayer, AttachedComponent) end

---@param AttachedPlayer AActor
---@param AttachedComponent USceneComponent
function AWarteringAreaCPP:OnPlayerDetached(AttachedPlayer, AttachedComponent) end

---@param Number number
function AWarteringAreaCPP:OnPlayerNumberChanged(Number) end

---@param AttachedComponent USceneComponent
---@param bShouldStartAnimation boolean
function AWarteringAreaCPP:OnSkeletalAnimationStateChanged(AttachedComponent, bShouldStartAnimation) end

function AWarteringAreaCPP:OnRep_SkeletalAnimationSyncData() end

---@param InSkeletalAnimationSyncData FSkeletalAnimationSyncData
function AWarteringAreaCPP:OnSkeletalAnimationSyncData(InSkeletalAnimationSyncData) end

---@return number
function AWarteringAreaCPP:CacheAssociatedSkillIndex() end

---@return number
function AWarteringAreaCPP:CacheAssociatedSkillUID() end

function AWarteringAreaCPP:GetAttachedPlayers() end

function AWarteringAreaCPP:OnRep_IsDayTime() end

function AWarteringAreaCPP:OnRep_ShowRabbitAnim() end

function AWarteringAreaCPP:OnRep_PawnDoneList() end

---@return boolean
function AWarteringAreaCPP:IsDropFixedRelativePositionSetUp() end

---@param DropOwner AActor
---@return FVector
function AWarteringAreaCPP:GetDropFixedRelativePosition(DropOwner) end
