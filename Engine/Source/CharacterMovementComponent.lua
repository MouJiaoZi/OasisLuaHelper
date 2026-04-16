---@meta

---Data about the floor for walking movement, used by CharacterMovementComponent.
---@class FFindFloorResult
---@field bBlockingHit number @True if there was a blocking hit in the floor test that was NOT in initial penetration. The HitResult can give more info about other circumstances.
---@field bWalkableFloor number @True if the hit found a valid walkable floor.
---@field bLineTrace number @True if the hit found a valid walkable floor using a line trace (rather than a sweep test, which happens when the sweep test fails to yield a walkable surface).
---@field FloorDist number @The distance to the floor, computed from the swept capsule trace.
---@field LineDist number @The distance to the floor, computed from the trace. Only valid if bLineTrace is true.
---@field HitResult FHitResult @Hit result of the test that found a floor. Includes more specific data about the point of impact and surface normal at that point.
FFindFloorResult = {}


---Tick function that calls UCharacterMovementComponent::PostPhysicsTickComponent
---@class FCharacterMovementComponentPostPhysicsTickFunction
FCharacterMovementComponentPostPhysicsTickFunction = {}


---CharacterMovementComponent handles movement logic for the associated Character owner. It supports various movement modes including: walking, falling, swimming, flying, custom. Movement is affected primarily by current Velocity and Acceleration. Acceleration is updated each frame based on the input vector accumulated thus far (see UPawnMovementComponent::GetPendingInputVector()). Networking is fully implemented, with server-client correction and prediction included.
---@class UCharacterMovementComponent: UPawnMovementComponent, IRVOAvoidanceInterface, INetworkPredictionInterface, IObjectPoolInterface
---@field bApplyGravityWhileJumping number @Apply gravity while the character is actively jumping (e.g. holding the jump key). Helps remove frame-rate dependent jump height, but may alter base jump height.
---@field GravityScale number @Custom gravity scale. Gravity is multiplied by this amount for the character.
---@field MaxStepHeight number @Maximum height character can step up
---@field JumpZVelocity number @Initial velocity (instantaneous vertical acceleration) when jumping.
---@field JumpOffJumpZFactor number @Fraction of JumpZVelocity to use when automatically "jumping off" of a base actor that's not allowed to be a base for a character. (For example, if you're not allowed to stand on other players.)
---@field WalkableFloorAngle number @Max angle in degrees of a walkable surface. Any greater than this and it is too steep to be walkable.
---@field WalkableFloorZ number @Minimum Z value for floor normal. If less, not a walkable surface. Computed from WalkableFloorAngle.
---@field MovementMode EMovementMode @Actor's current movement mode (walking, falling, etc). - walking:  Walking on a surface, under the effects of friction, and able to "step up" barriers. Vertical velocity is zero. - falling:  Falling under the effects of gravity, after jumping or walking off the edge of a surface. - flying:   Flying, ignoring the effects of gravity. - swimming: Swimming through a fluid volume, under the effects of gravity and buoyancy. - custom:   User-defined custom movement mode, including many possible sub-modes. This is automatically replicated through the Character owner and for client-server movement functions.
---@field CustomMovementMode number @Current custom sub-mode if MovementMode is set to Custom. This is automatically replicated through the Character owner and for client-server movement functions.
---@field OldBaseLocation FVector @Saved location of object we are standing on, for UpdateBasedMovement() to determine if base moved in the last frame, and therefore pawn needs an update.
---@field OldBaseQuat FQuat @Saved location of object we are standing on, for UpdateBasedMovement() to determine if base moved in the last frame, and therefore pawn needs an update.
---@field OldReplaySampleLocation FVector
---@field OldReplaySampleTime number
---@field GroundFriction number @Setting that affects movement control. Higher values allow faster changes in direction. If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero), where it is multiplied by BrakingFrictionFactor. When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity. This can be used to simulate slippery surfaces such as ice or oil by changing the value (possibly based on the material pawn is standing on).
---@field MaxWalkSpeed number @The maximum ground speed when walking. Also determines maximum lateral speed when falling.
---@field MaxWalkSpeedCrouched number @The maximum ground speed when walking and crouched.
---@field MaxSwimSpeed number @The maximum swimming speed.
---@field MaxFlySpeed number @The maximum flying speed.
---@field MaxCustomMovementSpeed number @The maximum speed when using Custom movement mode.
---@field MaxAcceleration number @Max Acceleration (rate of change of velocity)
---@field MinAnalogWalkSpeed number @The ground speed that we should accelerate up to when walking at minimum analog stick tilt
---@field BrakingFrictionFactor number @Factor used to multiply actual value of friction used when braking. This applies to any friction value that is currently used, which may depend on bUseSeparateBrakingFriction.
---@field BrakingFriction number @Friction (drag) coefficient applied when braking (whenever Acceleration = 0, or if character is exceeding max speed); actual value used is this multiplied by BrakingFrictionFactor. When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity. Braking is composed of friction (velocity-dependent drag) and constant deceleration. This is the current value, used in all movement modes; if this is not desired, override it or bUseSeparateBrakingFriction when movement mode changes.
---@field bUseSeparateBrakingFriction number @If true, BrakingFriction will be used to slow the character to a stop (when there is no Acceleration). If false, braking uses the same friction passed to CalcVelocity() (ie GroundFriction when walking), multiplied by BrakingFrictionFactor. This setting applies to all movement modes; if only desired in certain modes, consider toggling it when movement modes change.
---@field BrakingDecelerationWalking number @Deceleration when walking and not applying acceleration. This is a constant opposing force that directly lowers velocity by a constant value.
---@field BrakingDecelerationFalling number @Lateral deceleration when falling and not applying acceleration.
---@field BrakingDecelerationSwimming number @Deceleration when swimming and not applying acceleration.
---@field BrakingDecelerationFlying number @Deceleration when flying and not applying acceleration.
---@field AirControl number @When falling, amount of lateral movement control available to the character. 0 = no control, 1 = full control at max speed of MaxWalkSpeed.
---@field AirControlBoostMultiplier number @When falling, multiplier applied to AirControl when lateral velocity is less than AirControlBoostVelocityThreshold. Setting this to zero will disable air control boosting. Final result is clamped at 1.
---@field AirControlBoostVelocityThreshold number @When falling, if lateral velocity magnitude is less than this value, AirControl is multiplied by AirControlBoostMultiplier. Setting this to zero will disable air control boosting.
---@field FallingLateralFriction number @Friction to apply to lateral air movement when falling. If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero).
---@field CrouchedHalfHeight number @Collision half-height when crouching (component scale is applied separately)
---@field Buoyancy number @Water buoyancy. A ratio (1.0 = neutral buoyancy, 0.0 = no buoyancy)
---@field PerchRadiusThreshold number @Don't allow the character to perch on the edge of a surface if the contact is this close to the edge of the capsule. Note that characters will not fall off if they are within MaxStepHeight of a walkable surface below.
---@field PerchAdditionalHeight number @When perching on a ledge, add this additional distance to MaxStepHeight when determining how high above a walkable floor we can perch. Note that we still enforce MaxStepHeight to start the step up; this just allows the character to hang off the edge or step slightly higher off the floor. (@see PerchRadiusThreshold)
---@field RotationRate FRotator @Change in rotation per second, used when UseControllerDesiredRotation or OrientRotationToMovement are true. Set a negative value for infinite rotation rate and instant turns.
---@field bUseControllerDesiredRotation number @If true, smoothly rotate the Character toward the Controller's desired rotation (typically Controller->ControlRotation), using RotationRate as the rate of rotation change. Overridden by OrientRotationToMovement. Normally you will want to make sure that other settings are cleared, such as bUseControllerRotationYaw on the Character.
---@field bOrientRotationToMovement number @If true, rotate the Character toward the direction of acceleration, using RotationRate as the rate of rotation change. Overrides UseControllerDesiredRotation. Normally you will want to make sure that other settings are cleared, such as bUseControllerRotationYaw on the Character.
---@field bSweepWhileNavWalking number @Whether or not the character should sweep for collision geometry while walking.
---@field bMovementInProgress number @True during movement update. Used internally so that attempts to change CharacterOwner and UpdatedComponent are deferred until after an update.
---@field bEnableScopedMovementUpdates number @If true, high-level movement updates will be wrapped in a movement scope that accumulates updates and defers a bulk of the work until the end. When enabled, touch and hit events will not be triggered until the end of multiple moves within an update, which can improve performance.
---@field bForceMaxAccel number @Ignores size of acceleration component, and forces max acceleration to drive character at full velocity.
---@field bRunPhysicsWithNoController number @If true, movement will be performed even if there is no Controller for the Character owner. Normally without a Controller, movement will be aborted and velocity and acceleration are zeroed if the character is walking. Characters that are spawned without a Controller but with this flag enabled will initialize the movement mode to DefaultLandMovementMode or DefaultWaterMovementMode appropriately.
---@field bForceNextFloorCheck number @Force the Character in MOVE_Walking to do a check for a valid floor even if he hasn't moved. Cleared after next floor check. Normally if bAlwaysCheckFloor is false we try to avoid the floor check unless some conditions are met, but this can be used to force the next check to always run.
---@field bShrinkProxyCapsule number @If true, the capsule needs to be shrunk on this simulated proxy, to avoid replication rounding putting us in geometry. Whenever this is set to true, this will cause the capsule to be shrunk again on the next update, and then set to false.
---@field bCanWalkOffLedges number @If true, Character can walk off a ledge.
---@field bCanWalkOffLedgesWhenCrouching number @If true, Character can walk off a ledge when crouching.
---@field bNetworkSmoothingComplete number @Signals that smoothed position/rotation has reached target, and no more smoothing is necessary until a future update. This is used as an optimization to skip calls to SmoothClientPosition() when true. SmoothCorrection() sets it false when a new network update is received. SmoothClientPosition_Interpolate() sets this to true when the interpolation reaches the target, before one last call to SmoothClientPosition_UpdateVisuals(). If this is not desired, override SmoothClientPosition() to always set this to false to avoid this feature.
---@field bNetworkSkipProxyPredictionOnNetUpdate number @Whether we skip prediction on frames where a proxy receives a network update. This can avoid expensive prediction on those frames, with the side-effect of predicting with a frame of additional latency.
---@field bForceNoSimulatePrediction number @Whether we skip prediction on simulate movement, only interpolate from server replicated movement
---@field bDeferUpdateMoveComponent number @true to update CharacterOwner and UpdatedComponent after movement ends
---@field MaxOutOfWaterStepHeight number @Maximum step height for getting out of water
---@field OutofWaterZ number @Z velocity applied when pawn tries to get out of water
---@field Mass number @Mass of pawn (for when momentum is imparted to it).
---@field bEnablePhysicsInteraction boolean @If enabled, the player will interact with physics objects when walking into them.
---@field bTouchForceScaledToMass boolean @If enabled, the TouchForceFactor is applied per kg mass of the affected object.
---@field bPushForceScaledToMass boolean @If enabled, the PushForceFactor is applied per kg mass of the affected object.
---@field bPushForceUsingZOffset boolean @If enabled, the PushForce location is moved using PushForcePointZOffsetFactor. Otherwise simply use the impact point.
---@field bScalePushForceToVelocity boolean @If enabled, the applied push force will try to get the physics object to the same velocity than the player, not faster. This will only scale the force down, it will never apply more force than defined by PushForceFactor.
---@field StandingDownwardForceScale number @Force applied to objects we stand on (due to Mass and Gravity) is scaled by this amount.
---@field InitialPushForceFactor number @Initial impulse force to apply when the player bounces into a blocking physics object.
---@field PushForceFactor number @Force to apply when the player collides with a blocking physics object.
---@field PushForcePointZOffsetFactor number @Z-Offset for the position the force is applied to. 0.0f is the center of the physics object, 1.0f is the top and -1.0f is the bottom of the object.
---@field TouchForceFactor number @Force to apply to physics objects that are touched by the player.
---@field MinTouchForce number @Minimum Force applied to touched physics objects. If < 0.0f, there is no minimum.
---@field MaxTouchForce number @Maximum force applied to touched physics objects. If < 0.0f, there is no maximum.
---@field RepulsionForce number @Force per kg applied constantly to all overlapping components.
---@field bForceBraking_DEPRECATED number
---@field CrouchedSpeedMultiplier_DEPRECATED number @Multiplier to max ground speed to use when crouched
---@field UpperImpactNormalScale_DEPRECATED number
---@field Acceleration FVector @Current acceleration vector (with magnitude). This is calculated each update based on the input vector and the constraints of MaxAcceleration and the current movement mode.
---@field LastUpdateLocation FVector @Location after last PerformMovement or SimulateMovement update. Used internally to detect changes in position from outside character movement to try to validate the current floor.
---@field LastUpdateRotation FQuat @Rotation after last PerformMovement or SimulateMovement update.
---@field LastUpdateVelocity FVector @Velocity after last PerformMovement or SimulateMovement update. Used internally to detect changes in velocity from external sources.
---@field ServerLastTransformUpdateTimeStamp number @Timestamp when location or rotation last changed during an update. Only valid on the server.
---@field PendingImpulseToApply FVector @Accumulated impulse to be added next tick.
---@field PendingForceToApply FVector @Accumulated force to be added next tick.
---@field AnalogInputModifier number @Modifier to applied to values such as acceleration and max speed due to analog input.
---@field LastStuckWarningTime number @Used for throttling "stuck in geometry" logging.
---@field LastPrintApplyImpactPhysicsForcesLog number
---@field MaxSimulationTimeStep number @Max time delta for each discrete simulation step. Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking). Lowering this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance. WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
---@field MaxSimulationIterations number @Max number of iterations used for each discrete simulation step. Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking). Increasing this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance. WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
---@field MaxDepenetrationWithGeometry number @Max distance we allow simulated proxies to depenetrate when moving out of anything but Pawns. This is generally more tolerant than with Pawns, because other geometry is either not moving, or is moving predictably with a bit of delay compared to on the server.
---@field MaxDepenetrationWithGeometryAsProxy number @Max distance we allow simulated proxies to depenetrate when moving out of anything but Pawns. This is generally more tolerant than with Pawns, because other geometry is either not moving, or is moving predictably with a bit of delay compared to on the server.
---@field MaxDepenetrationWithPawn number @Max distance we are allowed to depenetrate when moving out of other Pawns.
---@field MaxDepenetrationWithPawnAsProxy number @Max distance we allow simulated proxies to depenetrate when moving out of other Pawns. Typically we don't want a large value, because we receive a server authoritative position that we should not then ignore by pushing them out of the local player.
---@field NetworkSimulatedSmoothLocationTime number @How long to take to smoothly interpolate from the old pawn position on the client to the corrected one sent by the server. Not used by Linear smoothing.
---@field NetworkSimulatedSmoothRotationTime number @How long to take to smoothly interpolate from the old pawn rotation on the client to the corrected one sent by the server. Not used by Linear smoothing.
---@field ListenServerNetworkSimulatedSmoothLocationTime number @Similar setting as NetworkSimulatedSmoothLocationTime but only used on Listen servers.
---@field ListenServerNetworkSimulatedSmoothRotationTime number @Similar setting as NetworkSimulatedSmoothRotationTime but only used on Listen servers.
---@field NetProxyShrinkRadius number @Shrink simulated proxy capsule radius by this amount, to account for network rounding that may cause encroachment. Changing during gameplay is not supported.
---@field NetProxyShrinkHalfHeight number @Shrink simulated proxy capsule half height by this amount, to account for network rounding that may cause encroachment. Changing during gameplay is not supported.
---@field NetworkMaxSmoothUpdateDistance number @Maximum distance character is allowed to lag behind server location when interpolating between updates.
---@field NetworkNoSmoothUpdateDistance number @Maximum distance beyond which character is teleported to the new server location without any smoothing.
---@field bReplaySmoothUseInterp boolean
---@field NetworkSmoothingMode ENetworkSmoothingMode @Smoothing mode for simulated proxies in network game.
---@field LedgeCheckThreshold number @Used in determining if pawn is going off ledge.  If the ledge is "shorter" than this value then the pawn will be able to walk off it. *
---@field JumpOutOfWaterPitch number @When exiting water, jump if control pitch angle is this high or above.
---@field CurrentFloor FFindFloorResult @Information about the floor the Character is standing on (updated only during walking movement).
---@field DefaultLandMovementMode EMovementMode @Default movement mode when not in water. Used at player startup or when teleported.
---@field DefaultWaterMovementMode EMovementMode @Default movement mode when in water. Used at player startup or when teleported.
---@field GroundMovementMode EMovementMode @Ground movement mode to switch to after falling and resuming ground movement. Only allowed values are: MOVE_Walking, MOVE_NavWalking.
---@field bMaintainHorizontalGroundVelocity number @If true, walking movement always maintains horizontal velocity when moving up ramps, which causes movement up ramps to be faster parallel to the ramp surface. If false, then walking movement maintains velocity magnitude parallel to the ramp surface.
---@field bImpartBaseVelocityX number @If true, impart the base actor's X velocity when falling off it (which includes jumping)
---@field bImpartBaseVelocityY number @If true, impart the base actor's Y velocity when falling off it (which includes jumping)
---@field bImpartBaseVelocityZ number @If true, impart the base actor's Z velocity when falling off it (which includes jumping)
---@field bImpartBaseAngularVelocity number @If true, impart the base component's tangential components of angular velocity when jumping or falling off it. Only those components of the velocity allowed by the separate component settings (bImpartBaseVelocityX etc) will be applied.
---@field bJustTeleported number @Used by movement code to determine if a change in position is based on normal movement or a teleport. If not a teleport, velocity can be recomputed based on the change in position.
---@field bNetworkUpdateReceived number @True when a network replication update is received for simulated proxies.
---@field bNetworkMovementModeChanged number @True when the networked movement mode has been replicated.
---@field bIgnoreClientMovementErrorChecksAndCorrection number @True when we should ignore server location difference checks for client error on this movement component This can be useful when character is moving at extreme speeds for a duration and you need it to look smooth on clients. Make sure to disable when done, as this would break this character's server-client movement correction.
---@field bNotifyApex number @If true, event NotifyJumpApex() to CharacterOwner's controller when at apex of jump. Is cleared when event is triggered. By default this is off, and if you want the event to fire you typically set it to true when movement mode changes to "Falling" from another mode (see OnMovementModeChanged).
---@field bCheatFlying number @Instantly stop when in flying mode and no acceleration is being applied.
---@field bWantsToCrouch number @If true, try to crouch (or keep crouching) on next update. If false, try to stop crouching on next update.
---@field bCrouchMaintainsBaseLocation number @If true, crouching should keep the base of the capsule in place by lowering the center of the shrunken capsule. If false, the base of the capsule moves up and the center stays in place. The same behavior applies when the character uncrouches: if true, the base is kept in the same location and the center moves up. If false, the capsule grows and only moves up if the base impacts something. By default this variable is set when the movement mode changes: set to true when walking and false otherwise. Feel free to override the behavior when the movement mode changes.
---@field bIgnoreBaseRotation number @Whether the character ignores changes in rotation of the base it is standing on. If true, the character maintains current world rotation. If false, the character rotates with the moving base.
---@field bFastAttachedMove number @Set this to true if riding on a moving base that you know is clear from non-moving world obstructions. Optimization to avoid sweeps during based movement, use with care.
---@field bAlwaysCheckFloor number @Whether we always force floor checks for stationary Characters while walking. Normally floor checks are avoided if possible when not moving, but this can be used to force them if there are use-cases where they are being skipped erroneously (such as objects moving up into the character from below).
---@field bUseFlatBaseForFloorChecks number @Performs floor checks as if the character is using a shape with a flat base. This avoids the situation where characters slowly lower off the side of a ledge (as their capsule 'balances' on the edge).
---@field bPerformingJumpOff number @Used to prevent reentry of JumpOff()
---@field bWantsToLeaveNavWalking number @Used to safely leave NavWalking movement mode
---@field bUseRVOAvoidance number @If set, component will use RVO avoidance. This only runs on the server.
---@field bRequestedMoveUseAcceleration number @Should use acceleration for path following? If true, acceleration is applied when path following to reach the target velocity. If false, path following velocity is set directly, disregarding acceleration.
---@field bIsNavWalkingOnServer number @Set on clients when server's movement mode is NavWalking
---@field bHasRequestedVelocity number @Was velocity requested by path following?
---@field bRequestedMoveWithMaxSpeed number @Was acceleration requested to be always max speed?
---@field bWasAvoidanceUpdated number @Was avoidance updated in this frame?
---@field bUseRVOPostProcess number @if set, PostProcessAvoidanceVelocity will be called
---@field bDeferUpdateBasedMovement number @Flag set in pre-physics update to indicate that based movement should be updated post-physics
---@field bProjectNavMeshWalking number @Whether to raycast to underlying geometry to better conform navmesh-walking characters
---@field bProjectNavMeshOnBothWorldChannels number @Use both WorldStatic and WorldDynamic channels for NavWalking geometry conforming
---@field AvoidanceLockVelocity FVector @forced avoidance velocity, used when AvoidanceLockTimer is > 0
---@field AvoidanceLockTimer number @remaining time of avoidance velocity lock
---@field AvoidanceConsiderationRadius number
---@field RequestedVelocity FVector @Velocity requested by path following.
---@field AvoidanceUID number @No default value, for now it's assumed to be valid if GetAvoidanceManager() returns non-NULL.
---@field AvoidanceGroup FNavAvoidanceMask @Moving actor's group mask
---@field GroupsToAvoid FNavAvoidanceMask @Will avoid other agents if they are in one of specified groups
---@field GroupsToIgnore FNavAvoidanceMask @Will NOT avoid other agents if they are in one of specified groups, higher priority than GroupsToAvoid
---@field AvoidanceWeight number @De facto default value 0.5 (due to that being the default in the avoidance registration function), indicates RVO behavior.
---@field PendingLaunchVelocity FVector @Temporarily holds launch velocity when pawn is to be launched so it happens at end of movement.
---@field CachedProjectedNavMeshHitResult FHitResult @Last valid projected hit result from raycast to geometry from navmesh
---@field NavMeshProjectionInterval number @How often we should raycast to project from navmesh to underlying geometry
---@field NavMeshProjectionTimer number
---@field NavMeshProjectionInterpSpeed number @Speed at which to interpolate agent navmesh offset between traces. 0: Instant (no interp) > 0: Interp speed")
---@field NavMeshProjectionHeightScaleUp number @Scale of the total capsule height to use for projection from navmesh to underlying geometry in the upward direction. In other words, start the trace at [CapsuleHeight * NavMeshProjectionHeightScaleUp] above nav mesh.
---@field NavMeshProjectionHeightScaleDown number @Scale of the total capsule height to use for projection from navmesh to underlying geometry in the downward direction. In other words, trace down to [CapsuleHeight * NavMeshProjectionHeightScaleDown] below nav mesh.
---@field NavWalkingFloorDistTolerance number @Ignore small differences in ground height between server and client data during NavWalking mode
---@field PostPhysicsTickFunction any @Post-physics tick function for this character
---@field MinTimeBetweenTimeStampResets number @Minimum time between client TimeStamp resets. !! This has to be large enough so that we don't confuse the server if the client can stall or timeout. We do this as we use floats for TimeStamps, and server derives DeltaTime from two TimeStamps. As time goes on, accuracy decreases from those floating point numbers. So we trigger a TimeStamp reset at regular intervals to maintain a high level of accuracy.
---@field CurrentRootMotion FRootMotionSourceGroup @Root Motion Group containing active root motion sources being applied to movement
---@field RootMotionParams FRootMotionMovementParams @Root Motion movement params. Holds result of anim montage root motion during PerformMovement(), and is overridden during autonomous move playback to force historical root motion for MoveAutonomous() calls
---@field AnimRootMotionVelocity FVector @Velocity extracted from RootMotionParams when there is anim root motion active. Invalid to use when HasAnimRootMotion() returns false.
---@field bWasSimulatingRootMotion boolean @True when SimulatedProxies are simulating RootMotion
---@field bAllowPhysicsRotationDuringAnimRootMotion number
local UCharacterMovementComponent = {}

---@return string
function UCharacterMovementComponent:GetToString() end

---@param GroupFlags number
function UCharacterMovementComponent:SetAvoidanceGroup(GroupFlags) end

---@param GroupMask FNavAvoidanceMask
function UCharacterMovementComponent:SetAvoidanceGroupMask(GroupMask) end

---@param GroupFlags number
function UCharacterMovementComponent:SetGroupsToAvoid(GroupFlags) end

---@param GroupMask FNavAvoidanceMask
function UCharacterMovementComponent:SetGroupsToAvoidMask(GroupMask) end

---@param GroupFlags number
function UCharacterMovementComponent:SetGroupsToIgnore(GroupFlags) end

---@param GroupMask FNavAvoidanceMask
function UCharacterMovementComponent:SetGroupsToIgnoreMask(GroupMask) end

---Change avoidance state and registers in RVO manager if needed
---@param bEnable boolean
function UCharacterMovementComponent:SetAvoidanceEnabled(bEnable) end

---Change movement mode.
---@param NewMovementMode EMovementMode
---@param NewCustomMode number
function UCharacterMovementComponent:SetMovementMode(NewMovementMode, NewCustomMode) end

---Set movement mode to use when returning to walking movement (either MOVE_Walking or MOVE_NavWalking). If movement mode is currently one of Walking or NavWalking, this will also change the current movement mode (via SetMovementMode()) if the new mode is not the current ground mode.
---@param NewGroundMovementMode EMovementMode
function UCharacterMovementComponent:SetGroundMovementMode(NewGroundMovementMode) end

---@return number
function UCharacterMovementComponent:PackNetworkMovementMode() end

---@param ReceivedMode number
---@param OutMode EMovementMode
---@param OutCustomMode number
---@param OutGroundMode EMovementMode
function UCharacterMovementComponent:UnpackNetworkMovementMode(ReceivedMode, OutMode, OutCustomMode, OutGroundMode) end

---@param ReceivedMode number
function UCharacterMovementComponent:ApplyNetworkMovementMode(ReceivedMode) end

---@param MovementBase USceneComponent
---@return boolean
function UCharacterMovementComponent:CheckBaseIsMoveable(MovementBase) end

---@return boolean
function UCharacterMovementComponent:IsWalking() end

---Make movement impossible (sets movement mode to MOVE_None).
function UCharacterMovementComponent:DisableMovement() end

---Return true if we have a valid CharacterOwner and UpdatedComponent.
---@return boolean
function UCharacterMovementComponent:HasValidData() end

---Update or defer updating of position based on Base movement
---@param DeltaSeconds number
function UCharacterMovementComponent:MaybeUpdateBasedMovement(DeltaSeconds) end

---Call SaveBaseLocation() if not deferring updates (bDeferUpdateBasedMovement is false).
function UCharacterMovementComponent:MaybeSaveBaseLocation() end

---If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it. Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ.
---@return FVector
function UCharacterMovementComponent:GetImpartedMovementBaseVelocity() end

---Updates Velocity and Acceleration based on the current state, applying the effects of friction and acceleration or deceleration. Does not apply gravity. This is used internally during movement updates. Normally you don't need to call this from outside code, but you might want to use it for custom movement modes.
---@param DeltaTime number
---@param Friction number
---@param bFluid boolean
---@param BrakingDeceleration number
function UCharacterMovementComponent:CalcVelocity(DeltaTime, Friction, bFluid, BrakingDeceleration) end

---Compute the max jump height based on the JumpZVelocity velocity and gravity. This does not take into account the CharacterOwner's MaxJumpHoldTime.
---@return number
function UCharacterMovementComponent:GetMaxJumpHeight() end

---Compute the max jump height based on the JumpZVelocity velocity and gravity. This does take into account the CharacterOwner's MaxJumpHoldTime.
---@return number
function UCharacterMovementComponent:GetMaxJumpHeightWithJumpTime() end

---@return number
function UCharacterMovementComponent:GetMinAnalogSpeed() end

---@return number
function UCharacterMovementComponent:K2_GetModifiedMaxAcceleration() end

---@return number
function UCharacterMovementComponent:GetMaxAcceleration() end

---@return number
function UCharacterMovementComponent:GetMaxBrakingDeceleration() end

---@return FVector
function UCharacterMovementComponent:GetCurrentAcceleration() end

---@return number
function UCharacterMovementComponent:GetAnalogInputModifier() end

---@param Hit FHitResult
---@return boolean
function UCharacterMovementComponent:CanStepUp(Hit) end

---Update the base of the character, which is the PrimitiveComponent we are standing on.
---@param NewBase UPrimitiveComponent
---@param BoneName string
---@param bNotifyActor boolean
function UCharacterMovementComponent:SetBase(NewBase, BoneName, bNotifyActor) end

---Update the base of the character, using the given floor result if it is walkable, or null if not. Calls SetBase().
---@param FloorResult FFindFloorResult
function UCharacterMovementComponent:SetBaseFromFloor(FloorResult) end

---Clears forces accumulated through AddImpulse() and AddForce(), and also pending launch velocity.
function UCharacterMovementComponent:ClearAccumulatedForces() end

---Add by zoranouyang Is there AddImpulse() or AddForce() or Launch()?
---@return boolean
function UCharacterMovementComponent:HasAccumulatedForcesOrLaunch() end

---Add impulse to character. Impulses are accumulated each tick and applied together so multiple calls to this function will accumulate. An impulse is an instantaneous force, usually applied once. If you want to continually apply forces each frame, use AddForce(). Note that changing the momentum of characters like this can change the movement mode.
---@param Impulse FVector
---@param bVelocityChange boolean
function UCharacterMovementComponent:AddImpulse(Impulse, bVelocityChange) end

---Add force to character. Forces are accumulated each tick and applied together so multiple calls to this function will accumulate. Forces are scaled depending on timestep, so they can be applied each frame. If you want an instantaneous force, use AddImpulse. Adding a force always takes the actor's mass into account. Note that changing the momentum of characters like this can change the movement mode.
---@param Force FVector
function UCharacterMovementComponent:AddForce(Force) end

---@return number
function UCharacterMovementComponent:GetPerchRadiusThreshold() end

---Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface). Simply computed as the capsule radius minus the result of GetPerchRadiusThreshold().
---@return number
function UCharacterMovementComponent:GetValidPerchRadius() end

---Return true if the hit result should be considered a walkable surface for the character.
---@param Hit FHitResult
---@return boolean
function UCharacterMovementComponent:IsWalkable(Hit) end

---Get the max angle in degrees of a walkable surface for the character.
---@return number
function UCharacterMovementComponent:K2_GetWalkableFloorAngle() end

---Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.
---@param InWalkableFloorAngle number
function UCharacterMovementComponent:SetWalkableFloorAngle(InWalkableFloorAngle) end

---Get the Z component of the normal of the steepest walkable surface for the character. Any lower than this and it is not walkable.
---@return number
function UCharacterMovementComponent:K2_GetWalkableFloorZ() end

---Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.
---@param InWalkableFloorZ number
function UCharacterMovementComponent:SetWalkableFloorZ(InWalkableFloorZ) end

---Sweeps a vertical trace to find the floor for the capsule at the given location. Will attempt to perch if ShouldComputePerchResult() returns true for the downward sweep result. No floor will be found if collision is disabled on the capsule!
---@param CapsuleLocation FVector
---@param FloorResult FFindFloorResult
function UCharacterMovementComponent:K2_FindFloor(CapsuleLocation, FloorResult) end

---Compute distance to the floor from bottom sphere of capsule and store the result in FloorResult. This distance is the swept distance of the capsule to the first point impacted by the lower hemisphere, or distance from the bottom of the capsule in the case of a line trace. This function does not care if collision is disabled on the capsule (unlike FindFloor).
---@param CapsuleLocation FVector
---@param LineDistance number
---@param SweepDistance number
---@param SweepRadius number
---@param FloorResult FFindFloorResult
function UCharacterMovementComponent:K2_ComputeFloorDist(CapsuleLocation, LineDistance, SweepDistance, SweepRadius, FloorResult) end

---Called when the collision capsule touches another primitive component
---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UCharacterMovementComponent:CapsuleTouched(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

function UCharacterMovementComponent:ResetPredictionData_Client() end

function UCharacterMovementComponent:ResetPredictionData_Server() end

---@return number
function UCharacterMovementComponent:GetSmoothNetUpdateRotationTimeTemporaty() end

---@param InSmoothNetUpdateRotationTime number
function UCharacterMovementComponent:SetSmoothNetUpdateRotationTimeTemporaty(InSmoothNetUpdateRotationTime) end

---Replicated function sent by client to server - contains client movement and view info.
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param CompressedMoveFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
function UCharacterMovementComponent:ServerMove(TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

---Replicated function sent by client to server - contains client movement and view info for two moves.
---@param TimeStamp0 number
---@param InAccel0 FVector_NetQuantize10
---@param PendingFlags number
---@param View0 number
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param NewFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
function UCharacterMovementComponent:ServerMoveDual(TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

---Replicated function sent by client to server - contains client movement and view info for two moves. First move is non root motion, second is root motion.
---@param TimeStamp0 number
---@param InAccel0 FVector_NetQuantize10
---@param PendingFlags number
---@param View0 number
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param NewFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
function UCharacterMovementComponent:ServerMoveDualHybridRootMotion(TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

---@param OldTimeStamp number
---@param OldAccel FVector_NetQuantize10
---@param OldMoveFlags number
function UCharacterMovementComponent:ServerMoveOld(OldTimeStamp, OldAccel, OldMoveFlags) end

---If no client adjustment is needed after processing received ServerMove(), ack the good move so client can remove it from SavedMoves
---@param TimeStamp number
function UCharacterMovementComponent:ClientAckGoodMove(TimeStamp) end

---@param TimeStamp number
function UCharacterMovementComponent:OnGoodMoveAck(TimeStamp) end

---Replicate position correction to client, associated with a timestamped servermove.  Client will replay subsequent moves after applying adjustment.
---@param TimeStamp number
---@param NewLoc FVector
---@param NewVel FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function UCharacterMovementComponent:ClientAdjustPosition(TimeStamp, NewLoc, NewVel, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function UCharacterMovementComponent:ClientVeryShortAdjustPosition(TimeStamp, NewLoc, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---Replicate position correction to client when using root motion for movement. (animation root motion specific)
---@param TimeStamp number
---@param ServerMontageTrackPosition number
---@param ServerLoc FVector
---@param ServerRotation FVector_NetQuantizeNormal
---@param ServerVelZ number
---@param ServerBase UPrimitiveComponent
---@param ServerBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function UCharacterMovementComponent:ClientAdjustRootMotionPosition(TimeStamp, ServerMontageTrackPosition, ServerLoc, ServerRotation, ServerVelZ, ServerBase, ServerBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---Replicate root motion source correction to client when using root motion for movement.
---@param TimeStamp number
---@param ServerRootMotion FRootMotionSourceGroup
---@param bHasAnimRootMotion boolean
---@param ServerMontageTrackPosition number
---@param ServerLoc FVector
---@param ServerRotation FVector_NetQuantizeNormal
---@param ServerVelZ number
---@param ServerBase UPrimitiveComponent
---@param ServerBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function UCharacterMovementComponent:ClientAdjustRootMotionSourcePosition(TimeStamp, ServerRootMotion, bHasAnimRootMotion, ServerMontageTrackPosition, ServerLoc, ServerRotation, ServerVelZ, ServerBase, ServerBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end
