---@meta

---Tick function that calls UCharacterMovementComponent::PostPhysicsTickComponent
---@class FVehicleMovementComponentPostPhysicsTickFunction
FVehicleMovementComponentPostPhysicsTickFunction = {}


---@class UFlyingVehicleMovementComponent: UPawnMovementComponent, INetworkPredictionInterface
---@field bEnableScopedMovementUpdates number @If true, high-level movement updates will be wrapped in a movement scope that accumulates updates and defers a bulk of the work until the end. When enabled, touch and hit events will not be triggered until the end of multiple moves within an update, which can improve performance.
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
---@field bMaintainHorizontalGroundVelocity number @If true, walking movement always maintains horizontal velocity when moving up ramps, which causes movement up ramps to be faster parallel to the ramp surface. If false, then walking movement maintains velocity magnitude parallel to the ramp surface.
---@field MinTimeBetweenTimeStampResets number @Minimum time between client TimeStamp resets. !! This has to be large enough so that we don't confuse the server if the client can stall or timeout. We do this as we use floats for TimeStamps, and server derives DeltaTime from two TimeStamps. As time goes on, accuracy decreases from those floating point numbers. So we trigger a TimeStamp reset at regular intervals to maintain a high level of accuracy.
---@field CurrentFloor FFindFloorResult @Information about the floor the Character is standing on (updated only during walking movement).
---@field NetworkMaxSmoothUpdateDistance number @Maximum distance character is allowed to lag behind server location when interpolating between updates.
---@field NetworkNoSmoothUpdateDistance number @Maximum distance beyond which character is teleported to the new server location without any smoothing.
---@field NetworkSmoothingMode ENetworkSmoothingMode @Smoothing mode for simulated proxies in network game.
---@field NetworkSimulatedSmoothLocationTime number @How long to take to smoothly interpolate from the old pawn position on the client to the corrected one sent by the server. Not used by Linear smoothing.
---@field NetworkSimulatedSmoothRotationTime number @How long to take to smoothly interpolate from the old pawn rotation on the client to the corrected one sent by the server. Not used by Linear smoothing.
---@field bIgnoreBaseRotation number @Whether the character ignores changes in rotation of the base it is standing on. If true, the character maintains current world rotation. If false, the character rotates with the moving base.
---@field PostPhysicsTickFunction any @Post-physics tick function for this character
---@field Acceleration FVector @Current acceleration vector (with magnitude). This is calculated each update based on the input vector and the constraints of MaxAcceleration and the current movement mode.
---@field LastUpdateLocation FVector @Location after last PerformMovement or SimulateMovement update. Used internally to detect changes in position from outside character movement to try to validate the current floor.
---@field LastUpdateRotation FQuat @Rotation after last PerformMovement or SimulateMovement update.
---@field LastUpdateVelocity FVector @Velocity after last PerformMovement or SimulateMovement update. Used internally to detect changes in velocity from external sources.
---@field AnalogInputModifier number @Modifier to applied to values such as acceleration and max speed due to analog input.
---@field ServerLastTransformUpdateTimeStamp number @Timestamp when location or rotation last changed during an update. Only valid on the server.
---@field WalkableFloorAngle number @Max angle in degrees of a walkable surface. Any greater than this and it is too steep to be walkable.
---@field WalkableFloorZ number @Minimum Z value for floor normal. If less, not a walkable surface. Computed from WalkableFloorAngle.
local UFlyingVehicleMovementComponent = {}

---@param DeltaTime number
---@param Friction number
---@param bFluid boolean
---@param BrakingDeceleration number
function UFlyingVehicleMovementComponent:CalcVelocity(DeltaTime, Friction, bFluid, BrakingDeceleration) end

---@return number
function UFlyingVehicleMovementComponent:GetMaxAcceleration() end

---@return number
function UFlyingVehicleMovementComponent:GetMinAnalogSpeed() end

---Return true if the hit result should be considered a walkable surface for the character.
---@param Hit FHitResult
---@return boolean
function UFlyingVehicleMovementComponent:IsWalkable(Hit) end

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
function UFlyingVehicleMovementComponent:ServerMove(TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

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
function UFlyingVehicleMovementComponent:ServerMoveDual(TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

---@param OldTimeStamp number
---@param OldAccel FVector_NetQuantize10
---@param OldMoveFlags number
function UFlyingVehicleMovementComponent:ServerMoveOld(OldTimeStamp, OldAccel, OldMoveFlags) end

---If no client adjustment is needed after processing received ServerMove(), ack the good move so client can remove it from SavedMoves
---@param TimeStamp number
function UFlyingVehicleMovementComponent:ClientAckGoodMove(TimeStamp) end

---Replicate position correction to client, associated with a timestamped servermove.  Client will replay subsequent moves after applying adjustment.
---@param TimeStamp number
---@param NewLoc FVector
---@param NewVel FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function UFlyingVehicleMovementComponent:ClientAdjustPosition(TimeStamp, NewLoc, NewVel, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function UFlyingVehicleMovementComponent:ClientVeryShortAdjustPosition(TimeStamp, NewLoc, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.
---@param InWalkableFloorAngle number
function UFlyingVehicleMovementComponent:SetWalkableFloorAngle(InWalkableFloorAngle) end

---Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.
---@param InWalkableFloorZ number
function UFlyingVehicleMovementComponent:SetWalkableFloorZ(InWalkableFloorZ) end
