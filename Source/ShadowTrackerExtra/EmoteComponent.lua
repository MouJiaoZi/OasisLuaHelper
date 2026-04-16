---@meta

---@class EFollowEmoteErrorCode
---@field Success number
---@field Failed_AvatarEffect number
---@field Failed_SpecialEffect number
EFollowEmoteErrorCode = {}


---@class EEmoteEndReason
---@field Finished number
---@field PlayAnotherEmote number
---@field SequenceNext number
---@field Interrupted number
EEmoteEndReason = {}


---@class EEmoteMesh
---@field Body number
---@field Facial number
EEmoteMesh = {}


---@class EEmoteAIEvent
---@field None number
---@field Start number
---@field Interrupt number
---@field Finish number
EEmoteAIEvent = {}


---@class ENetEmoteType
---@field None number
---@field Interrupt number
---@field PlayEmote number
---@field FollowEmote number
---@field PairEmote number
---@field SetEmoteRate number
ENetEmoteType = {}


---@class FLastEmoteInfo
---@field EmoteID number
---@field AreaID number
---@field EmoteTime number
FLastEmoteInfo = {}


---@class FNetEmoteData
---@field RepStamp number
---@field EmoteType ENetEmoteType
---@field EmoteID number
---@field FollowPlayer number
---@field PairEmoteID number
---@field PairPlayer number
---@field AnimationRate number
---@field bCostSpecMotion boolean
---@field SyncRandomSeed number
FNetEmoteData = {}


---@class FEmoteSequenceInfo
---@field EmoteIDList ULuaArrayHelper<number>
---@field IsLoop boolean
FEmoteSequenceInfo = {}


---@class AEmoteHitActor: AActor, IObjectPoolInterface
local AEmoteHitActor = {}


---@class UEmoteComponent: UActorComponent, IInteractorInterface
---@field SimulateAllowEmoteWhenDieWhiteList ULuaArrayHelper<number>
---@field BlockingStates ULuaArrayHelper<EPawnState>
---@field BlockingTagNames ULuaArrayHelper<FGameplayTag>
---@field EmoteBPIDToAnimHandleMap ULuaMapHelper<number, UBackpackEmoteHandle>
---@field FacialEmoteBPIDToAnimHandleMap ULuaMapHelper<number, UBackpackFacialEmoteHandle>
---@field bAlwaysSwitchBackToWeapon boolean
---@field bIsDebugCollision boolean
---@field CurrentPlayEmoteID number
---@field CurrentPlayFacialEmoteID number
---@field bIsCurrentEmoteCostSpecMotion boolean
---@field bOpenSpecMotionOnReplayClient boolean
---@field PawnOwner ASTExtraBaseCharacter
---@field CurrentPlayEmoteSequence FEmoteSequenceInfo
---@field NextPlayEmoteSequence FEmoteSequenceInfo
---@field CurrentLoadedEmoteBlendTime number
---@field LastEmoteInfo FLastEmoteInfo
---@field CheckEmoteCollisionIgnoreActors ULuaArrayHelper<AActor>
---@field CurrentStartTime number
---@field IgnoreEmoteIDs ULuaArrayHelper<number>
---@field bIsFollowFakePlayer boolean
---@field InviteEmotePlayerPawn ASTExtraBaseCharacter
---@field CurrentNearPlayerEmoteID number
---@field PersistEffectList ULuaArrayHelper<UBasicPersistEffect>
---@field NetEmoteData FNetEmoteData
---@field NetFacialEmoteData FNetEmoteData
---@field RepDisconnect number
---@field SyncRandomSeed number
---@field bEnableTransitionAnimInSpecialLocomotion boolean
---@field StopTransitionOutTime number
---@field DisableEmoteIDs ULuaArrayHelper<number>
---@field SpecialDisableFollowDanceEmote ULuaMapHelper<number, boolean>
---@field PendingEmoteIDWhenInterruptDuoActionPerformance number
---@field bCanPendingEmoteIDWhenInterruptDuoActionPerformance boolean
---@field bPendingEmoteLoopWhenInterruptDuoActionPerformance boolean
---@field bIsLoadEmoteAnimAfterLoadHandle boolean
---@field EmoteMontagePositionOnPreAnimInstanceClear number
local UEmoteComponent = {}

---@param TempPawn APawn
function UEmoteComponent:InitializeOwner(TempPawn) end

---@param EmoteID number
function UEmoteComponent:InterruptAutonomousFollowEmote(EmoteID) end

---@param EmoteID number
---@param bOpenCost boolean
---@return boolean
function UEmoteComponent:LocalStartPlayEmote(EmoteID, bOpenCost) end

---@param EmoteID number
---@param FollowPlayer number
---@param IsCanCostSpecMotion boolean
---@return boolean
function UEmoteComponent:LocalStartFollowPlayEmote(EmoteID, FollowPlayer, IsCanCostSpecMotion) end

---@param EmoteID number
---@return boolean
function UEmoteComponent:LocalInterruptPlayEmote(EmoteID) end

---@param CurrentEmoteAnim UAnimationAsset
function UEmoteComponent:OnAsyncLoadEmoteAnim(CurrentEmoteAnim) end

---@param LoadedFX UParticleSystem
function UEmoteComponent:OnBubbleAssetLoaded(LoadedFX) end

---@param EmoteID number
---@param IsCanCostSpecMotion boolean
---@param IsFollowPlay boolean
---@return boolean
function UEmoteComponent:StartPlayEmoteAnim(EmoteID, IsCanCostSpecMotion, IsFollowPlay) end

---@param EmoteID number
---@param EndReason EEmoteEndReason
---@return boolean
function UEmoteComponent:StopPlayEmoteAnim(EmoteID, EndReason) end

---@param EmoteID number
---@param EndReason EEmoteEndReason
function UEmoteComponent:FinishEmoteAnim(EmoteID, EndReason) end

---@return boolean
function UEmoteComponent:EmoteAnimFinishedSuccessfully() end

function UEmoteComponent:StopEmoteAnimTimer() end

---@param AnimLength number
---@param AnimRate number
---@param StartTime number
function UEmoteComponent:StartEmoteAnimTimer(AnimLength, AnimRate, StartTime) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function UEmoteComponent:HandlePlayEmoteCloseWeapon(TargetChangeSlot) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function UEmoteComponent:HandleAcceptPairEmoteCloseWeapon(TargetChangeSlot) end

---@param EmoteID number
---@param bOpenCost boolean
---@return boolean
function UEmoteComponent:LocalStartPlaySkillEmote(EmoteID, bOpenCost) end

function UEmoteComponent:OnFollowNearPlayerEmote() end

function UEmoteComponent:OnFollowFakePlayerEmote() end

---@param Enable boolean
function UEmoteComponent:EnableFollowPlayEmote(Enable) end

function UEmoteComponent:OnAcceptPlayPairEmote() end

---@param EmoteID number
---@param bOpenCost boolean
---@return boolean
function UEmoteComponent:LocalStartPlayPairEmote(EmoteID, bOpenCost) end

---@param bEnable boolean
function UEmoteComponent:EnablePlayEmote(bEnable) end

---@param bEnable boolean
function UEmoteComponent:ClientSetEnablePlayEmote(bEnable) end

---@param EmoteID number
---@return boolean
function UEmoteComponent:IsCanPlayEmote(EmoteID) end

---@param IsCost boolean
---@param ItemID number
function UEmoteComponent:CostEmoteSpecMotion(IsCost, ItemID) end

---@param EmoteId number
---@param bCallBySequence boolean
function UEmoteComponent:OnPlayEmote(EmoteId, bCallBySequence) end

---@param EmoteId number
---@param bOpenSpecMotion boolean
function UEmoteComponent:OnPlayEmoteReplayClient(EmoteId, bOpenSpecMotion) end

---@param PlayEmoteIDList ULuaArrayHelper<number>
---@param Loop boolean
function UEmoteComponent:OnPlayEmoteSequence(PlayEmoteIDList, Loop) end

---@param HandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param RequestID number
function UEmoteComponent:OnEmoteSequenceItemHandleListLoaded(HandleList, RequestID) end

---@return boolean
function UEmoteComponent:IsPlayingEmoteSequence() end

function UEmoteComponent:OnInterruptCurrentEmote() end

---@param EmoteID number
---@param EndReason EEmoteEndReason
function UEmoteComponent:OnEndCurrentEmote(EmoteID, EndReason) end

---@return boolean
function UEmoteComponent:IsPlayingEmote() end

---@return boolean
function UEmoteComponent:IsFollowingEmote() end

---@return number
function UEmoteComponent:GetFollowingPlayer() end

---@return boolean
function UEmoteComponent:CheckCanAddEmoteBuff() end

---@param Door APUBGDoor
---@param DoorState number
function UEmoteComponent:OnPlayerOpenDoor(Door, DoorState) end

---@param bIsFPP boolean
function UEmoteComponent:OnSwitchPersonPerspective(bIsFPP) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UEmoteComponent:OnCharacterAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

function UEmoteComponent:OnPlayerExitFreeCamera() end

---@param HandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param RequestID number
function UEmoteComponent:OnPairEmoteItemHandleListLoaded(HandleList, RequestID) end

---@return boolean
function UEmoteComponent:IsEnableSetEmoteAnimationRate() end

---@param Rate number
function UEmoteComponent:OnSetEmoteAnimationRate(Rate) end

function UEmoteComponent:OnRecoverEmoteAnimationRate() end

---@return number
function UEmoteComponent:GetNextEmoteSuitSKinIndex() end

---@return number
function UEmoteComponent:GetEmoteSuitSKinShowNumber() end

---@return number
function UEmoteComponent:OnReplaceEmoteSuitSkin() end

function UEmoteComponent:OnRecoverEmoteSuitSkin() end

---@param EmoteID number
function UEmoteComponent:OnFacialEmoteSlotClicked(EmoteID) end

---@return boolean
function UEmoteComponent:IsPlayingFacialEmote() end

---@param EmoteID number
function UEmoteComponent:PlayFacialEmote(EmoteID) end

---@param EmoteID number
function UEmoteComponent:LocalStartPlayFacialEmote(EmoteID) end

function UEmoteComponent:LocalInterruptPlayFacialEmote() end

---@param EmoteID number
function UEmoteComponent:StartPlayFacialEmoteAnim(EmoteID) end

function UEmoteComponent:StopPlayFacialEmoteAnim() end

---@param EmoteID number
---@return boolean
function UEmoteComponent:CheckIsOwnFacialEmoteId(EmoteID) end

---@param EmoteID number
---@param EmoteHandle UBackpackFacialEmoteHandle
function UEmoteComponent:LoadFacialEmoteAnimMontage(EmoteID, EmoteHandle) end

---@param EmoteID number
---@param CurrentEmoteAnim UAnimationAsset
function UEmoteComponent:OnAsyncLoadFacialEmoteAnim(EmoteID, CurrentEmoteAnim) end

---@return boolean
function UEmoteComponent:IsCanPlayFacialEmote() end

---@param EmoteID number
---@return boolean
function UEmoteComponent:CheckIsSimulatedClientCanPlayEmote(EmoteID) end

---@param Min number
---@param Max number
---@return number
function UEmoteComponent:GetRandomFloat(Min, Max) end

---@param EmoteID number
---@return boolean
function UEmoteComponent:TryApplyPersistEffectOnDs(EmoteID) end

---@param EmoteID number
---@param bShouldRemoveFromIgnore boolean
---@return boolean
function UEmoteComponent:TryUnApplyPersistEffectOnDs(EmoteID, bShouldRemoveFromIgnore) end

---Net Functions ****************************************
---@param EmoteID number
---@param OpenCostSpec boolean
function UEmoteComponent:ReqStartPlayEmote(EmoteID, OpenCostSpec) end

---@param EmoteID number
---@param FollowPlayer number
---@param IsCanCostSpecMotion boolean
function UEmoteComponent:ReqStartFollowPlayEmote(EmoteID, FollowPlayer, IsCanCostSpecMotion) end

---@param EmoteID number
---@param OpenCostSpec boolean
function UEmoteComponent:ReqStartPlaySkillEmote(EmoteID, OpenCostSpec) end

---@param EmoteID number
---@param PairPlayer number
function UEmoteComponent:ReqInvitePlayPairEmote(EmoteID, PairPlayer) end

---@param EmoteID number
function UEmoteComponent:ReqRefuseInvitePlayPairEmote(EmoteID) end

---@param EmoteID number
---@param InvitePlayer number
function UEmoteComponent:ReqReceiveInvitePlayPairEmote(EmoteID, InvitePlayer) end

---@param EmoteID number
---@param InvitePlayer number
function UEmoteComponent:ReqAcceptPlayPairEmote(EmoteID, InvitePlayer) end

---@param EmoteID number
function UEmoteComponent:ReqInterruptPlayEmote(EmoteID) end

---@param OtherPlayer number
---@param EmoteID number
function UEmoteComponent:ReqInterruptOtherPlayerPlayEmote(OtherPlayer, EmoteID) end

---@param EmoteID number
function UEmoteComponent:ReqEmotePlayFinished(EmoteID) end

---@param Rate number
function UEmoteComponent:ReqSetEmoteAnimationRate(Rate) end

function UEmoteComponent:ReqRecoverEmoteAnimationRate() end

---@param Index number
function UEmoteComponent:ReqReplaceEmoteSuitSkin(Index) end

---@param Index number
function UEmoteComponent:ReqRecoverEmoteSuitSkin(Index) end

---@param EmoteID number
function UEmoteComponent:ReqStartPlayFacialEmote(EmoteID) end

function UEmoteComponent:ReqInterruptPlayFacialEmote() end

---@param EmoteID number
---@param IsCanCostSpecMotion boolean
---@param Rate number
function UEmoteComponent:MulticastStartPlayEmote(EmoteID, IsCanCostSpecMotion, Rate) end

---@param EmoteID number
---@param FollowPlayer number
---@param IsCanCostSpecMotion boolean
function UEmoteComponent:MulticastStartFollowPlayEmote(EmoteID, FollowPlayer, IsCanCostSpecMotion) end

---@param EmoteID number
---@param PairEmoteID number
---@param PairPlayer number
function UEmoteComponent:MulticastStartPairPlayEmote(EmoteID, PairEmoteID, PairPlayer) end

---@param Rate number
function UEmoteComponent:MulticastSetEmoteAnimationRate(Rate) end

---@param EmoteID number
function UEmoteComponent:MulticastInterruptPlayEmote(EmoteID) end

---@param EmoteID number
function UEmoteComponent:MulticastStartPlayFacialEmote(EmoteID) end

function UEmoteComponent:MulticastInterruptPlayFacialEmote() end

---@param EmoteID number
---@param IsCanCostSpecMotion boolean
---@param Rate number
function UEmoteComponent:ReplicateStartPlayEmote(EmoteID, IsCanCostSpecMotion, Rate) end

---@param EmoteID number
function UEmoteComponent:ReplicateStartPlayFacialEmote(EmoteID) end

---@param EmoteID number
---@param FollowPlayer number
---@param IsCanCostSpecMotion boolean
function UEmoteComponent:ReplicateStartFollowPlayEmote(EmoteID, FollowPlayer, IsCanCostSpecMotion) end

---@param EmoteID number
---@param PairEmoteID number
---@param PairPlayer number
function UEmoteComponent:ReplicateStartPairPlayEmote(EmoteID, PairEmoteID, PairPlayer) end

---@param Rate number
function UEmoteComponent:ReplicateSetEmoteAnimationRate(Rate) end

---@param EmoteID number
function UEmoteComponent:ReplicateInterruptPlayEmote(EmoteID) end

function UEmoteComponent:ReplicateInterruptPlayFacialEmote() end

---@param EmoteID number
---@param IsCanCostSpecMotion boolean
---@param Rate number
function UEmoteComponent:OnReplicateStartPlayEmote(EmoteID, IsCanCostSpecMotion, Rate) end

---@param EmoteID number
---@param FollowPlayer number
---@param IsCanCostSpecMotion boolean
function UEmoteComponent:OnReplicateStartFollowPlayEmote(EmoteID, FollowPlayer, IsCanCostSpecMotion) end

---@param EmoteID number
---@param PairEmoteID number
---@param PairPlayer number
function UEmoteComponent:OnReplicateStartPairPlayEmote(EmoteID, PairEmoteID, PairPlayer) end

---@param Rate number
function UEmoteComponent:OnReplicateSetEmoteAnimationRate(Rate) end

---@param EmoteID number
function UEmoteComponent:OnReplicateInterruptPlayEmote(EmoteID) end

---@param EmoteID number
function UEmoteComponent:OnReplicateStartPlayFacialEmote(EmoteID) end

function UEmoteComponent:OnReplicateInterruptPlayFacialEmote() end

function UEmoteComponent:HandlePawnOwnerOnAnimInitialized() end

function UEmoteComponent:OnPrePawnOwnerAnimClearScriptInstance() end

function UEmoteComponent:OnPawnOwnerMontageStopped() end

---@param EmoteId number
function UEmoteComponent:PlayEmoteClient(EmoteId) end

function UEmoteComponent:OnRep_NetEmoteData() end

function UEmoteComponent:OnRep_NetFacialEmoteData() end

function UEmoteComponent:OnRep_RepDisconnect() end

function UEmoteComponent:SetNetEmoteDataDirty() end

function UEmoteComponent:SetNetFacialEmoteDataDirty() end

function UEmoteComponent:OnRep_SyncRandomSeed() end

---@param InDisableIDs ULuaArrayHelper<number>
function UEmoteComponent:AddDisableEmoteID(InDisableIDs) end

---@param InDisableIDs ULuaArrayHelper<number>
function UEmoteComponent:DeleteDisableEmoteID(InDisableIDs) end

---@param ID number
---@param CanFollow boolean
function UEmoteComponent:AddSpecicalDisableFollowDanceEmote(ID, CanFollow) end

---@param ID number
function UEmoteComponent:DeleteSpecicalDisableFollowDanceEmote(ID) end

---@param ID number
---@param CanFollow boolean
function UEmoteComponent:SetFSpecicalDisableFollowDanceEmote(ID, CanFollow) end

---@param ID number
---@return boolean
function UEmoteComponent:CanSpecialEmoteFollowDance(ID) end

---@param Actor AActor
function UEmoteComponent:OnPlayerEnterPossessActor(Actor) end

function UEmoteComponent:RecoverPlayEmote() end

---@param EmoteID number
---@return boolean
function UEmoteComponent:CheckEmoteCanFollowCostSpecMotionByNoCostAnim(EmoteID) end

---@param StartPos number
function UEmoteComponent:TryRecoverPlayEmote(StartPos) end

---@param EmoteID number
---@return boolean
function UEmoteComponent:CheckEmoteNeedAddToIgnoreEmoteIDList(EmoteID) end

function UEmoteComponent:OnControllerArrived() end
