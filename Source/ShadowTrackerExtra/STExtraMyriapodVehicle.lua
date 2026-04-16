---@meta

---@class EHitDir
---@field None number
---@field forward number
---@field right number
---@field back number
---@field left number
EHitDir = {}


---@class EExitBehaviorReason
---@field None number
---@field MoveEnd number
---@field InterruptInMove number
EExitBehaviorReason = {}


---@class EMyriapodFRRSerializeFlag
---@field EFRR_V number
---@field EFRR_LOC number
---@field EFRR_ROT number
---@field EFRR_MOVEMODE number
---@field EFRR_TOTALFIXED number
---@field EFRR_BASEACTOR number
---@field EFRR_BASECMP number
---@field EFRR_BASE_HEADER number
---@field EFRR_BASE_NGUID number
---@field EFRR_TARGETACTOR_NGUID number
---@field EFRR_MOVEINPUTSTATE number
---@field EFRR_ROEMTEVIEWPITCH number
---@field EFRR_ANIMSPEED number
---@field EFRR_TOTALEND number
---@field EFRR_NONE number
---@field EFRR_ALL number
EMyriapodFRRSerializeFlag = {}


---@class EMYRIAPODFRR_TYPE
---@field EFRR_TYPE_RBASEDMOVE number
---@field EFRR_TYPE_RMOVE number
---@field EFRR_TYPE_NONE number
EMYRIAPODFRR_TYPE = {}


---@class FSTMyriapodVehicleDust
---@field ContactSurface EPhysicalSurface
---@field MyriapodFootEffect UParticleSystem
FSTMyriapodVehicleDust = {}


---@class FMyriapodFRRBesedMove
---@field bBasedCmpIsNotNUll number
---@field bBasedActorIsNotNUll number
---@field bStaticBase number
---@field bNetSpawn number
---@field BasedCmpPathHash number
---@field bisPendingClientNetGuid boolean
---@field bServerHasBaseComponent boolean @Whether the server says that there is a base. On clients, the component may not have resolved yet.
---@field bRelativeRotation boolean @Whether rotation is relative to the base or absolute. It can only be relative if location is also relative.
---@field bServerHasVelocity boolean @Whether there is a velocity on the server. Used for forcing replication when velocity goes to zero.
FMyriapodFRRBesedMove = {}


---@class FMyriapodRepMovementFRR
---@field MVType EFRR_TYPE
---@field LinearVelocity FVector
---@field Location FVector
---@field ReplicatedMovementMode number
---@field Rotation FRotator
---@field ReplicatedPawnStateForDiff number
---@field RelicatedPoseStateForDiff number
---@field RelicatedPawnDisableStateForDiff number
---@field SerializeMask number
---@field BasedMove FMyriapodFRRBesedMove
---@field bHasSerializedWrite boolean
---@field bMoveTypeChangded boolean
---@field fAnimSpeed number
---@field fAnimAngularSpeed number
---@field ClientLastReplicatedPawnState number
---@field LastPoseState ESTEPoseState
---@field ClientLastReplicatedPawnDisableState number
---@field LocationQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.
---@field VelocityQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated velocity vectors. You should only need to change this from the default if you see visual artifacts.
---@field RotationQuantizationLevel ERotatorQuantization @Allows tuning the compression level for replicated rotation. You should only need to change this from the default if you see visual artifacts.
FMyriapodRepMovementFRR = {}


---@class FMyriapodApplyImpluseDelegate : ULuaMulticastDelegate
FMyriapodApplyImpluseDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Dir: EHitDir) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMyriapodApplyImpluseDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Dir EHitDir
function FMyriapodApplyImpluseDelegate:Broadcast(Dir) end


---@class FMyriapodDiedDelegate : ULuaSingleDelegate
FMyriapodDiedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMyriapodDiedDelegate:Bind(Callback, Obj) end

---执行委托
function FMyriapodDiedDelegate:Execute() end


---@class FMyriapodFallDownDelegate : ULuaSingleDelegate
FMyriapodFallDownDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMyriapodFallDownDelegate:Bind(Callback, Obj) end

---执行委托
function FMyriapodFallDownDelegate:Execute() end


---@class FSwitchToAIControllerDelegate : ULuaSingleDelegate
FSwitchToAIControllerDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSwitchToAIControllerDelegate:Bind(Callback, Obj) end

---执行委托
function FSwitchToAIControllerDelegate:Execute() end


---@class FBackFromAIControllerDelegate : ULuaSingleDelegate
FBackFromAIControllerDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBackFromAIControllerDelegate:Bind(Callback, Obj) end

---执行委托
function FBackFromAIControllerDelegate:Execute() end


---@class FMyriapodDoJumpDelegate : ULuaSingleDelegate
FMyriapodDoJumpDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMyriapodDoJumpDelegate:Bind(Callback, Obj) end

---执行委托
function FMyriapodDoJumpDelegate:Execute() end


---@class FVehicleEnterWater : ULuaSingleDelegate
FVehicleEnterWater = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleEnterWater:Bind(Callback, Obj) end

---执行委托
function FVehicleEnterWater:Execute() end


---@class FMyriapodMovementModeChangedSignature : ULuaMulticastDelegate
FMyriapodMovementModeChangedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraMyriapodVehicle, PrevMovementMode: EMovementMode, PreviousCustomMode: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMyriapodMovementModeChangedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraMyriapodVehicle
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function FMyriapodMovementModeChangedSignature:Broadcast(Character, PrevMovementMode, PreviousCustomMode) end


---@class ASTExtraMyriapodVehicle: ASTExtraVehicleBase, IActorJumOffInterface, IRelativeMoveActorInterface
---@field BaseTranslationOffset FVector @Saved translation offset of mesh.
---@field BaseRotationOffset FQuat @Saved rotation offset of mesh.
---@field bInBaseReplication boolean
---@field BasedMovement any @Info about our current movement base (object we are standing on).
---@field ReplicatedBasedMovement any @Replicated version of relative movement. Read-only on simulated proxies!
---@field NetworkPredictionInterface INetworkPredictionInterface
---@field ClientRootMotionParams FRootMotionMovementParams
---@field VecBodyCollsionName ULuaArrayHelper<string>
---@field VecBodyCollsion ULuaArrayHelper<UShapeComponent>
---@field OnReachedJumpApex FCharacterReachedApexSignature @Broadcast when Character's jump reaches its apex. Needs CharacterMovement->bNotifyApex = true
---@field MovementModeChangedDelegate FMyriapodMovementModeChangedSignature @Multicast delegate for MovementMode changing.
---@field OnCharacterMovementUpdated FCharacterMovementUpdatedSignature @Event triggered at the end of a CharacterMovementComponent movement update. This is the preferred event to use rather than the Tick event when performing custom updates to CharacterMovement properties based on the current state. This is mainly due to the nature of network updates, where client corrections in position from the server can cause multiple iterations of a movement update, which allows this event to update as well, while a Tick event would not.
---@field ReplicatedMovementMode number @CharacterMovement MovementMode (and custom mode) replicated for simulated proxies. Use CharacterMovementComponent::UnpackNetworkMovementMode() to translate it.
---@field bClientCheckEncroachmentOnNetUpdate number
---@field IgnoreCheckCanSetBase boolean
---@field RepMaxSpeedScale number
---@field CallingPlayerLocOffset FVector
---@field CallingPlayerLocBlackboardKeyName string
---@field IsCallingByPlayerBlackboardKeyName string
---@field PlayerEnterVelocityRate number
---@field PlayerEnterVelocityDelay number
---@field MinAddEnterVelocity number
---@field PlayerEnterVelocity FVector
---@field UseServerCtr boolean
---@field HorseLaunchSpeedCooldownTime number
---@field FallDownUpTime number @被撞到后到起身的时间，这个时间内四足载具不受控制
---@field bTakingDamageWhenLanding number
---@field bClientUpdating number @When true, applying updates to network client (replaying saved moves for a locally controlled character)
---@field bClientWasFalling number @True if Pawn was initially falling when started to replay network moves.
---@field bPressedJump number @When true, player wants to jump
---@field bSimGravityDisabled number @Disable simulated gravity (set when character encroaches geometry on client, to keep him from falling through floors)
---@field bWasJumping number @Tracks whether or not the character was already jumping last frame.
---@field DamageFactorWhenLanding number
---@field SpeedLostFactorWhenLanding number
---@field DamageVelocityZWhenLanding number
---@field JumpKeyHoldTime number @Jump key Held Time. This is the time that the player has held the jump key, in seconds.
---@field JumpForceTimeRemaining number @Amount of jump force time remaining, if JumpMaxHoldTime > 0.
---@field ProxyJumpForceStartedTime number @Track last time a jump force started for a proxy.
---@field JumpMaxHoldTime number @The max time the jump key can be held. Note that if StopJumping() is not called before the max jump hold time is reached, then the character will carry on receiving vertical velocity. Therefore it is usually best to call StopJumping() when jump input has ceased (such as a button up event).
---@field JumpMaxCount number @The max number of jumps the character can perform. Note that if JumpMaxHoldTime is non zero and StopJumping is not called, the player may be able to perform and unlimited number of jumps. Therefore it is usually best to call StopJumping() when jump input has ceased (such as a button up event).
---@field JumpCurrentCount number @Tracks the current number of jumps performed. This is incremented in CheckJumpInput, used in CanJump_Implementation, and reset in OnMovementModeChanged. When providing overrides for these methods, it's recommended to either manually increment / reset this value, or call the Super:: method.
---@field HearRadius number
---@field MaxFallSpeedZ number
---@field bThrowPlayerOutWhenInWater number
---@field bResponsesPlayerCallingWhenInWater number
---@field EnterWater FVehicleEnterWater
---@field InWaterDepth number
---@field MyriapodApplyImpluseDelegate FMyriapodApplyImpluseDelegate
---@field MyriapodDiedDelegate FMyriapodDiedDelegate
---@field MyriapodFallDownDelegate FMyriapodFallDownDelegate
---@field MyriapodSwitchToAIController FSwitchToAIControllerDelegate
---@field MyriapodBackFromAIController FBackFromAIControllerDelegate
---@field ClientMyriapodDoJumpDelegate FMyriapodDoJumpDelegate
---@field fSerioueInjuredHPPercent number
---@field bSerioueInjury boolean
---@field bDead boolean
---@field bMyriapodFallDown boolean
---@field fBrakeAnimHighSpeed number
---@field fBrakeAnimMidSpeed number
---@field fHighSpeedBrakeAnimTime number
---@field fMidSpeedBrakeAnimTime number
---@field fCanStopHighSpeedBrakeAnimTime number
---@field fCanStopMidSpeedBrakeAnimTime number
---@field MaxMoveSpeed number
---@field SpeedCheckDeltaTime number
---@field MaxSpeedOverflowTimes number
---@field MinAllowJumpSeconds number
---@field bUseJumpVelocityUpdateJumpTime boolean
---@field SpeedCheckThreshold number
---@field FallingMaxTime number
---@field bDSCorrectSimulate boolean
---@field fDSCorrectTimer number
---@field AllowMaxDiatanceSqAtServer number
---@field bUseMovementFloorDir boolean
---@field LegBoneNames ULuaArrayHelper<string>
---@field NotifyAkEventMap ULuaMapHelper<string, UAkAudioEvent> @音效相关
---@field MaterialSwitchGroup string
---@field NotifyMaterialMap ULuaMapHelper<UPhysicalMaterial, string>
---@field NotifySurfaceMap ULuaMapHelper<EPhysicalSurface, string>
---@field bUpdateCollsionByState boolean
---@field ProneCapsuleHalfHeight number
---@field ProneBodyBoxHeight number
---@field bDriverShoot boolean
---@field bFollowPawn boolean
---@field bBehaviorTreeState boolean
---@field CacheDustFx UParticleSystem
---@field fGetDustFxInterval number
---@field FootEffectArray ULuaArrayHelper<FSTMyriapodVehicleDust>
---@field SwimPs UParticleSystem
---@field MyriapodFootName ULuaArrayHelper<string>
---@field WaterEffectBoneName string
---@field SwimEffectBoneName string
---@field fLastLandTime number
---@field fJumpCD number
---@field bOpenMovementTickBigWorld number
---@field BigWorldVirtualControlNotAcceptRepMovement boolean
---@field bCanCallByPlayer boolean
---@field fMaxCallDisSquared2D number
---@field fMoveSucceedMaxDisSquared2DToTarget number
---@field CurStateType EHorseBehaviorType
---@field fExitBehaviorTreeSpeedRemain number
---@field fDriverLostControllerTimeOut number
---@field fDustFxUpdateMinSpeed number
---@field bEnableMoveBaseModify boolean
---@field MovedBaseActorTag string
---@field EngineEffectName string
---@field LinearVelocityWithTrailer FVector
---@field fTrailerCoefficientScale number
---@field fTrailerShootDriveMinSpeed number
---@field fFindFloorWithTrailerCD number
---@field fFindFloorWithTrailerTime number
---@field bShootDriveWithTrailer boolean
---@field bShootDriveController boolean
---@field bHideFollowBtn boolean
---@field bHideDriveShootBtn boolean
---@field bHideJumpBtn boolean
---@field bHideSprintBtn boolean
local ASTExtraMyriapodVehicle = {}

---@param DeltaTime number
---@return boolean
function ASTExtraMyriapodVehicle:RelativeUpdateBasedMovement(DeltaTime) end

function ASTExtraMyriapodVehicle:RelativeForceUpdateBaseTickDependency() end

---@param NewBaseComponent UPrimitiveComponent
---@param InBoneName string
---@param bNotifyPawn boolean
---@param JumpOffBaseComponent UPrimitiveComponent
function ASTExtraMyriapodVehicle:SetBaseAndJumpOff(NewBaseComponent, InBoneName, bNotifyPawn, JumpOffBaseComponent) end

---@param Hit FHitResult
function ASTExtraMyriapodVehicle:GetVehicleBaseHitResult(Hit) end

---@return boolean
function ASTExtraMyriapodVehicle:IsInMidAir() end

---@return boolean
function ASTExtraMyriapodVehicle:CanMove() end

---true if we are playing Root Motion right now
---@return boolean
function ASTExtraMyriapodVehicle:IsPlayingRootMotion() end

---Make the character jump on the next update. If you want your character to jump according to the time that the jump key is held, then you can set JumpKeyHoldTime to some non-zero value. Make sure in this case to call StopJumping() when you want the jump's z-velocity to stop being applied (such as on a button up event), otherwise the character will carry on receiving the velocity until JumpKeyHoldTime is reached.
function ASTExtraMyriapodVehicle:Jump() end

---Stop the character from jumping on the next update. Call this from an input event (such as a button 'up' event) to cease applying jump Z-velocity. If this is not called, then jump z-velocity will be applied until JumpMaxHoldTime is reached.
function ASTExtraMyriapodVehicle:StopJumping() end

---Check if the character can jump in the current state. The default implementation may be overridden or extended by implementing the custom CanJump event in Blueprints.
---@return boolean
function ASTExtraMyriapodVehicle:CanJump() end

---@return boolean
function ASTExtraMyriapodVehicle:CanJumpInternal() end

---Set a pending launch velocity on the Myriapod. This velocity will be processed on the next MyriapodMovementComponent tick, and will set it to the "falling" state. Triggers the OnLaunched event.
---@param LaunchVelocity FVector
---@param bXYOverride boolean
---@param bZOverride boolean
function ASTExtraMyriapodVehicle:LaunchCharacter(LaunchVelocity, bXYOverride, bZOverride) end

---@param Velocity FVector
function ASTExtraMyriapodVehicle:RPC_Client_ApplyVelocityOnServerHit(Velocity) end

---Let blueprint know that we were launched
---@param LaunchVelocity FVector
---@param bXYOverride boolean
---@param bZOverride boolean
function ASTExtraMyriapodVehicle:OnLaunched(LaunchVelocity, bXYOverride, bZOverride) end

---Event fired when the character has just started jumping
function ASTExtraMyriapodVehicle:OnJumped() end

---Called upon landing when falling, to perform actions based on the Hit result. Note that movement mode is still "Falling" during this event. Current Velocity value is the velocity at the time of landing. Consider OnMovementModeChanged() as well, as that can be used once the movement mode changes to the new mode (most likely Walking).
---@param Hit FHitResult
function ASTExtraMyriapodVehicle:OnLanded(Hit) end

---Event fired when the Character is walking off a surface and is about to fall because CharacterMovement->CurrentFloor became unwalkable. If CharacterMovement->MovementMode does not change during this event then the character will automatically start falling afterwards.
---@param PreviousFloorImpactNormal FVector
---@param PreviousFloorContactNormal FVector
---@param PreviousLocation FVector
---@param TimeDelta number
function ASTExtraMyriapodVehicle:OnWalkingOffLedge(PreviousFloorImpactNormal, PreviousFloorContactNormal, PreviousLocation, TimeDelta) end

---@param HitActor AActor
---@param HitInstigator AActor
---@param HitInfo FHitResult
---@param ImpulseDir FVector
---@param Damage number
---@param DamageEvent FDamageEvent
function ASTExtraMyriapodVehicle:OnTakingDamage(HitActor, HitInstigator, HitInfo, ImpulseDir, Damage, DamageEvent) end

---Called from CharacterMovementComponent to notify the character that the movement mode has changed.
---@param PrevMovementMode EMovementMode
---@param NewMovementMode EMovementMode
---@param PrevCustomMode number
---@param NewCustomMode number
function ASTExtraMyriapodVehicle:K2_OnMovementModeChanged(PrevMovementMode, NewMovementMode, PrevCustomMode, NewCustomMode) end

---Event for implementing custom character movement mode. Called by CharacterMovement if MovementMode is set to Custom.
---@param DeltaTime number
function ASTExtraMyriapodVehicle:K2_UpdateCustomMovement(DeltaTime) end

---True if jump is actively providing a force, such as when the jump key is held and the time it has been held is less than JumpMaxHoldTime.
---@return boolean
function ASTExtraMyriapodVehicle:IsJumpProvidingForce() end

---Rep notify for ReplicatedBasedMovement
function ASTExtraMyriapodVehicle:OnRep_ReplicatedBasedMovement() end

---Set whether this actor's movement replicates to network clients.
---@param bInReplicateMovement boolean
function ASTExtraMyriapodVehicle:SetReplicateMovement(bInReplicateMovement) end

---@param NewBase UPrimitiveComponent
---@param BoneName string
---@param bNotifyActor boolean
function ASTExtraMyriapodVehicle:SetBaseBP(NewBase, BoneName, bNotifyActor) end

---Cache mesh offset from capsule. This is used as the target for network smoothing interpolation, when the mesh is offset with lagged smoothing. This is automatically called during initialization; call this at runtime if you intend to change the default mesh offset from the capsule.
---@param MeshRelativeLocation FVector
---@param MeshRelativeRotation FRotator
function ASTExtraMyriapodVehicle:CacheInitialMeshOffset(MeshRelativeLocation, MeshRelativeRotation) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageInstigatorPawn APawn
---@param IsHeadShotDamage boolean
function ASTExtraMyriapodVehicle:BroadcastClient_TakeDamage(Damage, DamageEvent, DamageInstigatorPawn, IsHeadShotDamage) end

---@param InScale number
function ASTExtraMyriapodVehicle:ModifyMyriapodMaxSpeedScale(InScale) end

---@param player ASTExtraCharacter
function ASTExtraMyriapodVehicle:MyriapodCallingByPlayer(player) end

function ASTExtraMyriapodVehicle:StopMyriapodCallingByPlayer() end

---@param rate number
function ASTExtraMyriapodVehicle:MoveUp(rate) end

---@param rate number
function ASTExtraMyriapodVehicle:SetHandBrake(rate) end

---@param bEnalbed boolean
function ASTExtraMyriapodVehicle:SetBoosting(bEnalbed) end

---@param rate number
function ASTExtraMyriapodVehicle:ServerSetHandBrake(rate) end

---@return FVector
function ASTExtraMyriapodVehicle:GetRotationInputDir() end

---@param dir EHitDir
function ASTExtraMyriapodVehicle:SendClient_ApplyImpluse(dir) end

---@param bEnter boolean
function ASTExtraMyriapodVehicle:PostOnPlayerActiveRegionsChangedBP(bEnter) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraMyriapodVehicle:ClientEnterVehicle(Character, SeatType, IsSucc) end

function ASTExtraMyriapodVehicle:SetPlayerEnterVelocity() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function ASTExtraMyriapodVehicle:OnServerEnterVehicle(Character, SeatType, bSuccess) end

---@param InCharacter ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraMyriapodVehicle:OnServerExitVehicle(InCharacter, SeatType, IsSucc) end

---@param IsSucc boolean
function ASTExtraMyriapodVehicle:OnEnteringVehicleOnServer(IsSucc) end

function ASTExtraMyriapodVehicle:OnExitingVehicleOnServer() end

---@param InVehicleHealthState ESTExtraVehicleHealthState
function ASTExtraMyriapodVehicle:HandleOnVehicleHealthStateChanged(InVehicleHealthState) end

function ASTExtraMyriapodVehicle:DisablePawnCollision() end

function ASTExtraMyriapodVehicle:OnRep_MyriapodDead() end

function ASTExtraMyriapodVehicle:GetUp() end

function ASTExtraMyriapodVehicle:ServerGetUp() end

function ASTExtraMyriapodVehicle:BrakeEnd() end

function ASTExtraMyriapodVehicle:ServerBrakeEnd() end

---@param ServerLocation FVector_NetQuantize100
---@param ServerRotator FVector_NetQuantizeNormal
---@param ServerLinearVelocity FVector_NetQuantize100
---@param ServerAngularVelocity number
function ASTExtraMyriapodVehicle:SendServerMoveToClient(ServerLocation, ServerRotator, ServerLinearVelocity, ServerAngularVelocity) end

function ASTExtraMyriapodVehicle:OnRep_FollowPawn() end

---@return boolean
function ASTExtraMyriapodVehicle:IsDriverShootingState() end

---@return boolean
function ASTExtraMyriapodVehicle:GetFollowState() end

function ASTExtraMyriapodVehicle:SetEnterDriverShoot() end

function ASTExtraMyriapodVehicle:SetExitDriverShoot() end

function ASTExtraMyriapodVehicle:SetEnterFollowState() end

function ASTExtraMyriapodVehicle:SetExitFollowState() end

---@return boolean
function ASTExtraMyriapodVehicle:CanCallByPlayer() end

---@param bCanCall boolean
function ASTExtraMyriapodVehicle:SetCanCallByPlayer(bCanCall) end

---@param type EHorseBehaviorType
function ASTExtraMyriapodVehicle:changedState(type) end

---@param type EHorseBehaviorType
function ASTExtraMyriapodVehicle:OnChangedState(type) end

function ASTExtraMyriapodVehicle:OnRep_HorseStateChanged() end

---@param player ASTExtraCharacter
function ASTExtraMyriapodVehicle:EnterBehaviorTreeState(player) end

---@param ExitReason EExitBehaviorReason
function ASTExtraMyriapodVehicle:ExitBehaviorTreeState(ExitReason) end

function ASTExtraMyriapodVehicle:ReqServerDetachEveryoneFromSeat() end

---@return boolean
function ASTExtraMyriapodVehicle:ApplySubAnimation() end

function ASTExtraMyriapodVehicle:CheckBaseIsClear() end

---@return boolean
function ASTExtraMyriapodVehicle:CheckOnMoveablePlatform() end

---@param Floor UPrimitiveComponent
---@return boolean
function ASTExtraMyriapodVehicle:CheckFloorShouldFollow(Floor) end

---@param FindPawn APawn
---@return boolean
function ASTExtraMyriapodVehicle:CheckFollowPawnValid(FindPawn) end

function ASTExtraMyriapodVehicle:TlogStartSwim() end

function ASTExtraMyriapodVehicle:TlogEndSwim() end

function ASTExtraMyriapodVehicle:OnEngineStop() end

function ASTExtraMyriapodVehicle:OnEngineStart() end

---@return boolean
function ASTExtraMyriapodVehicle:DoJumpWithTrailer() end

function ASTExtraMyriapodVehicle:ServerDoJumpWithTrailer() end

function ASTExtraMyriapodVehicle:JumpWithTrailer() end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraMyriapodVehicle:AttachedToVehicle(InVehicle) end

---@param LastVehicle ASTExtraVehicleBase
function ASTExtraMyriapodVehicle:DetachedFromVehicle(LastVehicle) end
