---@meta

---Tick function that calls UCharacterMovementComponent::PostPhysicsTickComponent
---@class FMountVehicleMovementComponentPostPhysicsTickFunction
FMountVehicleMovementComponentPostPhysicsTickFunction = {}


---@class UMountMovementComponent: UPawnMovementComponent, INetworkPredictionInterface
---@field bApplyGravityWhileJumping number @Apply gravity while the character is actively jumping (e.g. holding the jump key). Helps remove frame-rate dependent jump height, but may alter base jump height.
---@field GravityScale number @Custom gravity scale. Gravity is multiplied by this amount for the character.
---@field JumpZVelocity number @Initial velocity (instantaneous vertical acceleration) when jumping.
---@field JumpOffJumpZFactor number @Fraction of JumpZVelocity to use when automatically "jumping off" of a base actor that's not allowed to be a base for a character. (For example, if you're not allowed to stand on other players.)
---@field MovementMode EMovementMode @Actor's current movement mode (walking, falling, etc). - walking:  Walking on a surface, under the effects of friction, and able to "step up" barriers. Vertical velocity is zero. - falling:  Falling under the effects of gravity, after jumping or walking off the edge of a surface. - flying:   Flying, ignoring the effects of gravity. - swimming: Swimming through a fluid volume, under the effects of gravity and buoyancy. - custom:   User-defined custom movement mode, including many possible sub-modes. This is automatically replicated through the Character owner and for client-server movement functions.
---@field MaxSimulationTimeStep number @Max time delta for each discrete simulation step. Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking). Lowering this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance. WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
---@field MaxSimulationIterations number @Max number of iterations used for each discrete simulation step. Used primarily in the the more advanced movement modes that break up larger time steps (usually those applying gravity such as falling and walking). Increasing this value can address issues with fast-moving objects or complex collision scenarios, at the cost of performance. WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
---@field bEnableScopedMovementUpdates number @If true, high-level movement updates will be wrapped in a movement scope that accumulates updates and defers a bulk of the work until the end. When enabled, touch and hit events will not be triggered until the end of multiple moves within an update, which can improve performance.
---@field bNetworkUpdateReceived number @True when a network replication update is received for simulated proxies.
---@field bNetworkMovementModeChanged number @True when the networked movement mode has been replicated.
---@field bForceNoSimulatePrediction number @Whether we skip prediction on simulate movement, only interpolate from server replicated movement
---@field bNetworkSkipProxyPredictionOnNetUpdate number @Whether we skip prediction on frames where a proxy receives a network update. This can avoid expensive prediction on those frames, with the side-effect of predicting with a frame of additional latency.
---@field MaxFlySpeed number @The maximum flying speed.
---@field BrakingDecelerationFlying number @Deceleration when flying and not applying acceleration.
---@field MaxAcceleration number @Max Acceleration (rate of change of velocity)
---@field MinAnalogWalkSpeed number @The ground speed that we should accelerate up to when walking at minimum analog stick tilt
---@field BrakingFrictionFactor number @Factor used to multiply actual value of friction used when braking. This applies to any friction value that is currently used, which may depend on bUseSeparateBrakingFriction.
---@field BrakingFriction number @Friction (drag) coefficient applied when braking (whenever Acceleration = 0, or if character is exceeding max speed); actual value used is this multiplied by BrakingFrictionFactor. When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity. Braking is composed of friction (velocity-dependent drag) and constant deceleration. This is the current value, used in all movement modes; if this is not desired, override it or bUseSeparateBrakingFriction when movement mode changes.
---@field MaxStepHeight number @Maximum height character can step up
---@field bUseSeparateBrakingFriction number @If true, BrakingFriction will be used to slow the character to a stop (when there is no Acceleration). If false, braking uses the same friction passed to CalcVelocity() (ie GroundFriction when walking), multiplied by BrakingFrictionFactor. This setting applies to all movement modes; if only desired in certain modes, consider toggling it when movement modes change.
---@field bJustTeleported number @Used by movement code to determine if a change in position is based on normal movement or a teleport. If not a teleport, velocity can be recomputed based on the change in position.
---@field bForceMaxAccel number @Ignores size of acceleration component, and forces max acceleration to drive character at full velocity.
---@field bUseFlatBaseForFloorChecks number @Performs floor checks as if the character is using a shape with a flat base. This avoids the situation where characters slowly lower off the side of a ledge (as their capsule 'balances' on the edge).
---@field PerchRadiusThreshold number @Don't allow the character to perch on the edge of a surface if the contact is this close to the edge of the capsule. Note that characters will not fall off if they are within MaxStepHeight of a walkable surface below.
---@field bMaintainHorizontalGroundVelocity number @If true, walking movement always maintains horizontal velocity when moving up ramps, which causes movement up ramps to be faster parallel to the ramp surface. If false, then walking movement maintains velocity magnitude parallel to the ramp surface.
---@field bAlwaysCheckFloor number @Whether we always force floor checks for stationary Characters while walking. Normally floor checks are avoided if possible when not moving, but this can be used to force them if there are use-cases where they are being skipped erroneously (such as objects moving up into the character from below).
---@field bForceNextFloorCheck number @Force the Character in MOVE_Walking to do a check for a valid floor even if he hasn't moved. Cleared after next floor check. Normally if bAlwaysCheckFloor is false we try to avoid the floor check unless some conditions are met, but this can be used to force the next check to always run.
---@field MinTimeBetweenTimeStampResets number @Minimum time between client TimeStamp resets. !! This has to be large enough so that we don't confuse the server if the client can stall or timeout. We do this as we use floats for TimeStamps, and server derives DeltaTime from two TimeStamps. As time goes on, accuracy decreases from those floating point numbers. So we trigger a TimeStamp reset at regular intervals to maintain a high level of accuracy.
---@field PerchAdditionalHeight number @When perching on a ledge, add this additional distance to MaxStepHeight when determining how high above a walkable floor we can perch. Note that we still enforce MaxStepHeight to start the step up; this just allows the character to hang off the edge or step slightly higher off the floor. (@see PerchRadiusThreshold)
---@field CurrentFloor FFindFloorResult @Information about the floor the Character is standing on (updated only during walking movement).
---@field NetworkMaxSmoothUpdateDistance number @Maximum distance character is allowed to lag behind server location when interpolating between updates.
---@field NetworkNoSmoothUpdateDistance number @Maximum distance beyond which character is teleported to the new server location without any smoothing.
---@field bReplaySmoothUseInterp boolean
---@field NetworkSmoothingMode ENetworkSmoothingMode @Smoothing mode for simulated proxies in network game.
---@field NetworkSimulatedSmoothLocationTime number @How long to take to smoothly interpolate from the old pawn position on the client to the corrected one sent by the server. Not used by Linear smoothing.
---@field NetworkSimulatedSmoothRotationTime number @How long to take to smoothly interpolate from the old pawn rotation on the client to the corrected one sent by the server. Not used by Linear smoothing.
---@field bIgnoreBaseRotation number @Whether the character ignores changes in rotation of the base it is standing on. If true, the character maintains current world rotation. If false, the character rotates with the moving base.
---@field PostPhysicsTickFunction any @Post-physics tick function for this character
---@field GroundFriction number @Setting that affects movement control. Higher values allow faster changes in direction. If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero), where it is multiplied by BrakingFrictionFactor. When braking, this property allows you to control how much friction is applied when moving across the ground, applying an opposing force that scales with current velocity. This can be used to simulate slippery surfaces such as ice or oil by changing the value (possibly based on the material pawn is standing on).
---@field FallingLateralFriction number @Friction to apply to lateral air movement when falling. If bUseSeparateBrakingFriction is false, also affects the ability to stop more quickly when braking (whenever Acceleration is zero).
---@field MaxWalkSpeed number @The maximum ground speed when walking. Also determines maximum lateral speed when falling.
---@field AirControl number @When falling, amount of lateral movement control available to the character. 0 = no control, 1 = full control at max speed of MaxWalkSpeed.
---@field GroundMovementMode EMovementMode
---@field Acceleration FVector @Current acceleration vector (with magnitude). This is calculated each update based on the input vector and the constraints of MaxAcceleration and the current movement mode.
---@field LastUpdateLocation FVector @Location after last PerformMovement or SimulateMovement update. Used internally to detect changes in position from outside character movement to try to validate the current floor.
---@field LastUpdateRotation FQuat @Rotation after last PerformMovement or SimulateMovement update.
---@field LastUpdateVelocity FVector @Velocity after last PerformMovement or SimulateMovement update. Used internally to detect changes in velocity from external sources.
---@field AnalogInputModifier number @Modifier to applied to values such as acceleration and max speed due to analog input.
---@field ServerLastTransformUpdateTimeStamp number @Timestamp when location or rotation last changed during an update. Only valid on the server.
---@field WalkableFloorAngle number @Max angle in degrees of a walkable surface. Any greater than this and it is too steep to be walkable.
---@field WalkableFloorZ number @Minimum Z value for floor normal. If less, not a walkable surface. Computed from WalkableFloorAngle.
local UMountMovementComponent = {}

---@param DeltaTime number
---@param Friction number
---@param bFluid boolean
---@param BrakingDeceleration number
function UMountMovementComponent:CalcVelocity(DeltaTime, Friction, bFluid, BrakingDeceleration) end

---@return number
function UMountMovementComponent:GetMaxAcceleration() end

---@return number
function UMountMovementComponent:GetMinAnalogSpeed() end

---Return true if the hit result should be considered a walkable surface for the character.
---@param Hit FHitResult
---@return boolean
function UMountMovementComponent:IsWalkable(Hit) end

---Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface). Simply computed as the capsule radius minus the result of GetPerchRadiusThreshold().
---@return number
function UMountMovementComponent:GetValidPerchRadius() end

---@return number
function UMountMovementComponent:GetPerchRadiusThreshold() end

---Change movement mode.
---@param NewMovementMode EMovementMode
---@param NewCustomMode number
function UMountMovementComponent:SetMovementMode(NewMovementMode, NewCustomMode) end

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
function UMountMovementComponent:ServerMove(TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

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
function UMountMovementComponent:ServerMoveDual(TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

---@param OldTimeStamp number
---@param OldAccel FVector_NetQuantize10
---@param OldMoveFlags number
function UMountMovementComponent:ServerMoveOld(OldTimeStamp, OldAccel, OldMoveFlags) end

---If no client adjustment is needed after processing received ServerMove(), ack the good move so client can remove it from SavedMoves
---@param TimeStamp number
function UMountMovementComponent:ClientAckGoodMove(TimeStamp) end

---Replicate position correction to client, associated with a timestamped servermove.  Client will replay subsequent moves after applying adjustment.
---@param TimeStamp number
---@param NewLoc FVector
---@param NewVel FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function UMountMovementComponent:ClientAdjustPosition(TimeStamp, NewLoc, NewVel, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function UMountMovementComponent:ClientVeryShortAdjustPosition(TimeStamp, NewLoc, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it. Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ.
---@return FVector
function UMountMovementComponent:GetImpartedMovementBaseVelocity() end

---Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.
---@param InWalkableFloorAngle number
function UMountMovementComponent:SetWalkableFloorAngle(InWalkableFloorAngle) end

---Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.
---@param InWalkableFloorZ number
function UMountMovementComponent:SetWalkableFloorZ(InWalkableFloorZ) end
