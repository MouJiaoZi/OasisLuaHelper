---@meta

---Replicated data when playing a root motion montage.
---@class FRepRootMotionMontage
---@field bIsActive boolean @Whether this has useful/active data.
---@field Position number @Track position of Montage
---@field Location FVector_NetQuantize100 @Location
---@field Rotation FRotator @Rotation
---@field MovementBaseBoneName string @Bone on the MovementBase, if a skeletal mesh.
---@field bRelativePosition boolean @Additional replicated flag, if MovementBase can't be resolved on the client. So we don't use wrong data.
---@field bRelativeRotation boolean @Whether rotation is relative or absolute.
---@field AuthoritativeRootMotion FRootMotionSourceGroup @State of Root Motion Sources on Authority
---@field Acceleration FVector_NetQuantize10 @Acceleration
---@field LinearVelocity FVector_NetQuantize10 @Velocity
FRepRootMotionMontage = {}


---@class FSimulatedRootMotionReplicatedMove
---@field Time number @Local time when move was received on client and saved.
---@field RootMotion FRepRootMotionMontage @Root Motion information
FSimulatedRootMotionReplicatedMove = {}


---Struct to hold information about the "base" object the character is standing on.
---@class FBasedMovementInfo
---@field BoneName string @Bone name on component, for skeletal meshes. NAME_None if not a skeletal mesh or if bone is invalid.
---@field Location FVector_NetQuantize100 @Location relative to MovementBase. Only valid if HasRelativeLocation() is true.
---@field Rotation FRotator @Rotation: relative to MovementBase if HasRelativeRotation() is true, absolute otherwise.
---@field bServerHasBaseComponent boolean @Whether the server says that there is a base. On clients, the component may not have resolved yet.
---@field bRelativeRotation boolean @Whether rotation is relative to the base or absolute. It can only be relative if location is also relative.
---@field bServerHasVelocity boolean @Whether there is a velocity on the server. Used for forcing replication when velocity goes to zero.
FBasedMovementInfo = {}


---@class FMovementModeChangedSignature : ULuaMulticastDelegate
FMovementModeChangedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ACharacter, PrevMovementMode: EMovementMode, PreviousCustomMode: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMovementModeChangedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function FMovementModeChangedSignature:Broadcast(Character, PrevMovementMode, PreviousCustomMode) end


---@class FCharacterMovementUpdatedSignature : ULuaMulticastDelegate
FCharacterMovementUpdatedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaSeconds: number, OldLocation: FVector, OldVelocity: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterMovementUpdatedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaSeconds number
---@param OldLocation FVector
---@param OldVelocity FVector
function FCharacterMovementUpdatedSignature:Broadcast(DeltaSeconds, OldLocation, OldVelocity) end


---@class FCharacterReachedApexSignature : ULuaSingleDelegate
FCharacterReachedApexSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterReachedApexSignature:Bind(Callback, Obj) end

---执行委托
function FCharacterReachedApexSignature:Execute() end


---@class FLandedSignature : ULuaMulticastDelegate
FLandedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Hit: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLandedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Hit FHitResult
function FLandedSignature:Broadcast(Hit) end


---Characters are Pawns that have a mesh, collision, and built-in movement logic. They are responsible for all physical interaction between the player or AI and the world, and also implement basic networking and input models. They are designed for a vertically-oriented player representation that can walk, jump, fly, and swim through the world using CharacterMovementComponent.
---@class ACharacter: APawn
---@field BasedMovement any @Info about our current movement base (object we are standing on).
---@field ReplicatedBasedMovement any @Replicated version of relative movement. Read-only on simulated proxies!
---@field AnimRootMotionTranslationScale number @Scale to apply to root motion translation on this Character
---@field NetworkPredictionInterface INetworkPredictionInterface
---@field BaseTranslationOffset FVector @Saved translation offset of mesh.
---@field BaseRotationOffset FQuat @Saved rotation offset of mesh.
---@field ReplicatedServerLastTransformUpdateTimeStamp number @CharacterMovement ServerLastTransformUpdateTimeStamp value, replicated to simulated proxies.
---@field ReplicatedMovementMode number @Flag that we are receiving replication of the based movement.
---@field bInBaseReplication boolean @Flag that we are receiving replication of the based movement.
---@field CrouchedEyeHeight number @Default crouched eye height
---@field bIsCrouched number @Set by character movement to specify that this Character is currently crouched.
---@field bPressedJump number @When true, player wants to jump
---@field bClientUpdating number @When true, applying updates to network client (replaying saved moves for a locally controlled character)
---@field bClientWasFalling number @True if Pawn was initially falling when started to replay network moves.
---@field bClientResimulateRootMotion number @If server disagrees with root motion track position, client has to resimulate root motion from last AckedMove.
---@field bClientResimulateRootMotionSources number @If server disagrees with root motion state, client has to resimulate root motion from last AckedMove.
---@field bSimGravityDisabled number @Disable simulated gravity (set when character encroaches geometry on client, to keep him from falling through floors)
---@field bClientCheckEncroachmentOnNetUpdate number
---@field bServerMoveIgnoreRootMotion number @Disable root motion on the server. When receiving a DualServerMove, where the first move is not root motion and the second is.
---@field JumpKeyHoldTime number @Jump key Held Time. This is the time that the player has held the jump key, in seconds.
---@field JumpMaxHoldTime number @The max time the jump key can be held. Note that if StopJumping() is not called before the max jump hold time is reached, then the character will carry on receiving vertical velocity. Therefore it is usually best to call StopJumping() when jump input has ceased (such as a button up event).
---@field JumpMaxCount number @The max number of jumps the character can perform. Note that if JumpMaxHoldTime is non zero and StopJumping is not called, the player may be able to perform and unlimited number of jumps. Therefore it is usually best to call StopJumping() when jump input has ceased (such as a button up event).
---@field JumpCurrentCount number @Tracks the current number of jumps performed. This is incremented in CheckJumpInput, used in CanJump_Implementation, and reset in OnMovementModeChanged. When providing overrides for these methods, it's recommended to either manually increment / reset this value, or call the Super:: method.
---@field bWasJumping number
---@field bUseReplaySampleRot number
---@field OnReachedJumpApex FCharacterReachedApexSignature @Broadcast when Character's jump reaches its apex. Needs CharacterMovement->bNotifyApex = true
---@field MovementModeChangedDelegate FMovementModeChangedSignature @Multicast delegate for MovementMode changing.
---@field OnCharacterMovementUpdated FCharacterMovementUpdatedSignature @Event triggered at the end of a CharacterMovementComponent movement update. This is the preferred event to use rather than the Tick event when performing custom updates to CharacterMovement properties based on the current state. This is mainly due to the nature of network updates, where client corrections in position from the server can cause multiple iterations of a movement update, which allows this event to update as well, while a Tick event would not.
---@field SavedRootMotion FRootMotionSourceGroup @For LocallyControlled Autonomous clients. During a PerformMovement() after root motion is prepared, we save it off into this and then record it into our SavedMoves. During SavedMove playback we use it as our "Previous Move" SavedRootMotion which includes last received root motion from the Server
---@field ClientRootMotionParams FRootMotionMovementParams @For LocallyControlled Autonomous clients. Saved root motion data to be used by SavedMoves.
---@field RootMotionRepMoves ULuaArrayHelper<FSimulatedRootMotionReplicatedMove> @Array of previously received root motion moves from the server.
---@field RepRootMotion any @Replicated Root Motion montage
---@field bReplicateBasedMovement number
---@field DisableParticleNames ULuaArrayHelper<string>
---@field GeneralCampID number
---@field EnableApplyMomentumInRadialDamage boolean
---@field bEnableAsyncAnimInstance boolean
---@field bAsyncNewAnimInstance boolean
---@field AsyncAnimInstances ULuaMapHelper<UAnimInstance, boolean>
---@field bMarkScopeIn boolean
local ACharacter = {}

---Cache mesh offset from capsule. This is used as the target for network smoothing interpolation, when the mesh is offset with lagged smoothing. This is automatically called during initialization; call this at runtime if you intend to change the default mesh offset from the capsule.
---@param MeshRelativeLocation FVector
---@param MeshRelativeRotation FRotator
function ACharacter:CacheInitialMeshOffset(MeshRelativeLocation, MeshRelativeRotation) end

---Rep notify for ReplicatedBasedMovement
function ACharacter:OnRep_ReplicatedBasedMovement() end

---Set whether this actor's movement replicates to network clients.
---@param bInReplicateMovement boolean
function ACharacter:SetReplicateMovement(bInReplicateMovement) end

---Handle Crouching replicated from server
function ACharacter:OnRep_IsCrouched() end

---Make the character jump on the next update. If you want your character to jump according to the time that the jump key is held, then you can set JumpKeyHoldTime to some non-zero value. Make sure in this case to call StopJumping() when you want the jump's z-velocity to stop being applied (such as on a button up event), otherwise the character will carry on receiving the velocity until JumpKeyHoldTime is reached.
function ACharacter:Jump() end

---Stop the character from jumping on the next update. Call this from an input event (such as a button 'up' event) to cease applying jump Z-velocity. If this is not called, then jump z-velocity will be applied until JumpMaxHoldTime is reached.
function ACharacter:StopJumping() end

---Check if the character can jump in the current state. The default implementation may be overridden or extended by implementing the custom CanJump event in Blueprints.
---@return boolean
function ACharacter:CanJump() end

---Customizable event to check if the character can jump in the current state. Default implementation returns true if the character is on the ground and not crouching, has a valid CharacterMovementComponent and CanEverJump() returns true. Default implementation also allows for 'hold to jump higher' functionality: As well as returning true when on the ground, it also returns true when GetMaxJumpTime is more than zero and IsJumping returns true.
---@return boolean
function ACharacter:CanJumpInternal() end

---True if jump is actively providing a force, such as when the jump key is held and the time it has been held is less than JumpMaxHoldTime.
---@return boolean
function ACharacter:IsJumpProvidingForce() end

---Play Animation Montage on the character mesh *
---@param AnimMontage UAnimMontage
---@param InPlayRate number
---@param StartSectionName string
---@param TPP boolean
---@param FPP boolean
---@param NewFPP boolean
---@return number
function ACharacter:PlayAnimMontage(AnimMontage, InPlayRate, StartSectionName, TPP, FPP, NewFPP) end

---Stop Animation Montage. If NULL, it will stop what's currently active. The Blend Out Time is taken from the montage asset that is being stopped. *
---@param AnimMontage UAnimMontage
function ACharacter:StopAnimMontage(AnimMontage) end

---是否正在速度场模拟中(实际生效)
---@return boolean
function ACharacter:IsVelocitySimulated() end

---获取速度场的叠加速度
---@return FVector
function ACharacter:GetAdditiveVelocity() end

---获取速度场中的模拟速度(原有速度+叠加速度)
---@return FVector
function ACharacter:GetSimulatedVelocity() end

---Set a pending launch velocity on the Character. This velocity will be processed on the next CharacterMovementComponent tick, and will set it to the "falling" state. Triggers the OnLaunched event.
---@param LaunchVelocity FVector
---@param bXYOverride boolean
---@param bZOverride boolean
function ACharacter:LaunchCharacter(LaunchVelocity, bXYOverride, bZOverride) end

---Let blueprint know that we were launched
---@param LaunchVelocity FVector
---@param bXYOverride boolean
---@param bZOverride boolean
function ACharacter:OnLaunched(LaunchVelocity, bXYOverride, bZOverride) end

---Event fired when the character has just started jumping
function ACharacter:OnJumped() end

---Called upon landing when falling, to perform actions based on the Hit result. Note that movement mode is still "Falling" during this event. Current Velocity value is the velocity at the time of landing. Consider OnMovementModeChanged() as well, as that can be used once the movement mode changes to the new mode (most likely Walking).
---@param Hit FHitResult
function ACharacter:OnLanded(Hit) end

---Event fired when the Character is walking off a surface and is about to fall because CharacterMovement->CurrentFloor became unwalkable. If CharacterMovement->MovementMode does not change during this event then the character will automatically start falling afterwards.
---@param PreviousFloorImpactNormal FVector
---@param PreviousFloorContactNormal FVector
---@param PreviousLocation FVector
---@param TimeDelta number
function ACharacter:OnWalkingOffLedge(PreviousFloorImpactNormal, PreviousFloorContactNormal, PreviousLocation, TimeDelta) end

---Request the character to start crouching. The request is processed on the next update of the CharacterMovementComponent.
---@param bClientSimulation boolean
function ACharacter:Crouch(bClientSimulation) end

---Request the character to stop crouching. The request is processed on the next update of the CharacterMovementComponent.
---@param bClientSimulation boolean
function ACharacter:UnCrouch(bClientSimulation) end

---Event when Character stops crouching.
---@param HalfHeightAdjust number
---@param ScaledHalfHeightAdjust number
function ACharacter:K2_OnEndCrouch(HalfHeightAdjust, ScaledHalfHeightAdjust) end

---Event when Character crouches.
---@param HalfHeightAdjust number
---@param ScaledHalfHeightAdjust number
function ACharacter:K2_OnStartCrouch(HalfHeightAdjust, ScaledHalfHeightAdjust) end

---Called from CharacterMovementComponent to notify the character that the movement mode has changed.
---@param PrevMovementMode EMovementMode
---@param NewMovementMode EMovementMode
---@param PrevCustomMode number
---@param NewCustomMode number
function ACharacter:K2_OnMovementModeChanged(PrevMovementMode, NewMovementMode, PrevCustomMode, NewCustomMode) end

---Event for implementing custom character movement mode. Called by CharacterMovement if MovementMode is set to Custom.
---@param DeltaTime number
function ACharacter:K2_UpdateCustomMovement(DeltaTime) end

function ACharacter:ClientCheatWalk() end

function ACharacter:ClientCheatFly() end

function ACharacter:ClientCheatGhost() end

---@param InString string
function ACharacter:RootMotionDebugClientPrintOnScreen(InString) end

---Handles replicated root motion properties on simulated proxies and position correction.
function ACharacter:OnRep_RootMotion() end

---true if we are playing Root Motion right now
---@return boolean
function ACharacter:IsPlayingRootMotion() end

---true if we are playing Root Motion right now, through a Montage with RootMotionMode == ERootMotionMode::RootMotionFromMontagesOnly. This means code path for networked root motion is enabled.
---@return boolean
function ACharacter:IsPlayingNetworkedRootMotionMontage() end

---Returns current value of AnimRootMotionScale
---@return number
function ACharacter:GetAnimRootMotionTranslationScale() end

---@param bInReplicateBasedMovement boolean
function ACharacter:SetReplicateBasedMovement(bInReplicateBasedMovement) end

function ACharacter:OnRep_GeneralCampID() end
