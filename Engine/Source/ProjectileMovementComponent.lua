---@meta

---ProjectileMovementComponent updates the position of another component during its tick. Behavior such as bouncing after impacts and homing toward a target are supported. Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()). If the updated component is simulating physics, only the initial launch parameters (when initial velocity is non-zero) will affect the projectile, and the physics sim will take over from there.
---@class UProjectileMovementComponent: UMovementComponent
---@field InitialSpeed number @Initial speed of projectile. If greater than zero, this will override the initial Velocity value and instead treat Velocity as a direction.
---@field MaxSpeed number @Limit on speed of projectile (0 means no limit).
---@field bRotationFollowsVelocity number @If true, this projectile will have its rotation updated each frame to match the direction of its velocity.
---@field bRotationRemainsVertical number @If true, this projectile will have its rotation updated each frame to maintain the rotations Yaw only. (bRotationFollowsVelocity is required to be true)
---@field bShouldBounce number @If true, simple bounces will be simulated. Set this to false to stop simulating on contact.
---@field bInitialVelocityInLocalSpace number @If true, the initial Velocity is interpreted as being in local space upon startup.
---@field bForceSubStepping number @If true, forces sub-stepping to break up movement into discrete smaller steps to improve accuracy of the trajectory. Objects that move in a straight line typically do *not* need to set this, as movement always uses continuous collision detection (sweeps) so collision is not missed. Sub-stepping is automatically enabled when under the effects of gravity or when homing towards a target.
---@field bSimulationEnabled number @If true, does normal simulation ticking and update. If false, simulation is halted, but component will still tick (allowing interpolation to run).
---@field bSweepCollision number @If true, movement uses swept collision checks. If false, collision effectively teleports to the destination. Note that when this is disabled, movement will never generate blocking collision hits (though overlaps will be updated).
---@field bIsHomingProjectile number @If true, we will accelerate toward our homing target. HomingTargetComponent must be set after the projectile is spawned.
---@field bBounceAngleAffectsFriction number @Controls the effects of friction on velocity parallel to the impact surface when bouncing. If true, friction will be modified based on the angle of impact, making friction higher for perpendicular impacts and lower for glancing impacts. If false, a bounce will retain a proportion of tangential velocity equal to (1.0 - Friction), acting as a "horizontal restitution".
---@field bIsSliding number @If true, projectile is sliding / rolling along a surface.
---@field bInterpMovement number @If true and there is an interpolated component set, location (and optionally rotation) interpolation is enabled which allows the interpolated object to smooth uneven updates of the UpdatedComponent's location (usually to smooth network updates). This requires using SetInterpolatedComponent() to indicate the visual component that lags behind the collision, and using MoveInterpolationTarget() when the new target location/rotation is received (usually on a net update).
---@field bInterpRotation number @If true and there is an interpolated component set, rotation interpolation is enabled which allows the interpolated object to smooth uneven updates of the UpdatedComponent's rotation (usually to smooth network updates). Rotation interpolation is *only* applied if bInterpMovement is also enabled.
---@field PreviousHitTime number @Saved HitResult Time (0 to 1) from previous simulation step. Equal to 1.0 when there was no impact.
---@field PreviousHitNormal FVector @Saved HitResult Normal from previous simulation step that resulted in an impact. If PreviousHitTime is 1.0, then the hit was not in the last step.
---@field ProjectileGravityScale number @Custom gravity scale for this projectile. Set to 0 for no gravity.
---@field Buoyancy number @Buoyancy of UpdatedComponent in fluid. 0.0=sinks as fast as in air, 1.0=neutral buoyancy
---@field Bounciness number @Percentage of velocity maintained after the bounce in the direction of the normal of impact (coefficient of restitution). 1.0 = no velocity lost, 0.0 = no bounce. Ignored if bShouldBounce is false.
---@field Friction number @Coefficient of friction, affecting the resistance to sliding along a surface. Normal range is [0,1] : 0.0 = no friction, 1.0+ = very high friction. Also affects the percentage of velocity maintained after the bounce in the direction tangent to the normal of impact. Ignored if bShouldBounce is false.
---@field BounceVelocityStopSimulatingThreshold number @If velocity is below this threshold after a bounce, stops simulating and triggers the OnProjectileStop event. Ignored if bShouldBounce is false, in which case the projectile stops simulating on the first impact.
---@field MinFrictionFraction number @When bounce angle affects friction, apply at least this fraction of normal friction. Helps consistently slow objects sliding or rolling along surfaces or in valleys when the usual friction amount would take a very long time to settle.
---@field OnProjectileBounce FOnProjectileBounceDelegate @Called when projectile impacts something and bounces are enabled.
---@field OnProjectileStop FOnProjectileStopDelegate @Called when projectile has come to a stop (velocity is below simulation threshold, bounces are disabled, or it is forcibly stopped).
---@field HomingAccelerationMagnitude number @The magnitude of our acceleration towards the homing target. Overall velocity magnitude will still be limited by MaxSpeed.
---@field HomingTargetComponent USceneComponent @The current target we are homing towards. Can only be set at runtime (when projectile is spawned or updating).
---@field MaxSimulationTimeStep number @Max time delta for each discrete simulation step. Lowering this value can address precision issues with fast-moving objects or complex collision scenarios, at the cost of performance. WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
---@field MaxSimulationIterations number @Max number of iterations used for each discrete simulation step. Increasing this value can address precision issues with fast-moving objects or complex collision scenarios, at the cost of performance. WARNING: if (MaxSimulationTimeStep * MaxSimulationIterations) is too low for the min framerate, the last simulation step may exceed MaxSimulationTimeStep to complete the simulation.
---@field BounceAdditionalIterations number @On the first few bounces (up to this amount), allow extra iterations over MaxSimulationIterations if necessary.
---@field InterpLocationTime number @"Time" over which most of the location interpolation occurs, when the UpdatedComponent (target) moves ahead of the interpolated component. Since the implementation uses exponential lagged smoothing, this is a rough time value and experimentation should inform a final result. A value of zero is effectively instantaneous interpolation.
---@field InterpRotationTime number @"Time" over which most of the rotation interpolation occurs, when the UpdatedComponent (target) moves ahead of the interpolated component. Since the implementation uses exponential lagged smoothing, this is a rough time value and experimentation should inform a final result. A value of zero is effectively instantaneous interpolation.
---@field InterpLocationMaxLagDistance number @Max distance behind UpdatedComponent which the interpolated component is allowed to lag.
---@field InterpLocationSnapToTargetDistance number @Max distance behind UpdatedComponent beyond which the interpolated component is snapped to the target location instead. For instance if the target teleports this far beyond the interpolated component, the interpolation is snapped to match the target.
local UProjectileMovementComponent = {}

---Sets the velocity to the new value, rotated into Actor space.
---@param NewVelocity FVector
function UProjectileMovementComponent:SetVelocityInLocalSpace(NewVelocity) end

---Clears the reference to UpdatedComponent, fires stop event (OnProjectileStop), and stops ticking (if bAutoUpdateTickRegistration is true).
---@param HitResult FHitResult
function UProjectileMovementComponent:StopSimulating(HitResult) end

---Assigns the component that will be used for network interpolation/smoothing. It is expected that this is a component attached somewhere below the UpdatedComponent. When network updates use MoveInterpolationTarget() to move the UpdatedComponent, the interpolated component's relative offset will be maintained and smoothed over the course of future component ticks. The current relative location and rotation of the component is saved as the target offset for future interpolation.
---@param Component USceneComponent
function UProjectileMovementComponent:SetInterpolatedComponent(Component) end

---Moves the UpdatedComponent, which is also the interpolation target for the interpolated component. If there is not interpolated component, this simply moves UpdatedComponent. Use this typically from PostNetReceiveLocationAndRotation() or similar from an Actor.
---@param NewLocation FVector
---@param NewRotation FRotator
function UProjectileMovementComponent:MoveInterpolationTarget(NewLocation, NewRotation) end

---Resets interpolation so that interpolated component snaps back to the initial location/rotation without any additional offsets.
function UProjectileMovementComponent:ResetInterpolation() end

---Don't allow velocity magnitude to exceed MaxSpeed, if MaxSpeed is non-zero.
---@param NewVelocity FVector
---@return FVector
function UProjectileMovementComponent:LimitVelocity(NewVelocity) end
