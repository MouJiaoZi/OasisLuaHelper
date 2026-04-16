---@meta

---Setting that controls behavior when movement is restricted to a 2D plane defined by a specific axis/normal, so that movement along the locked axis is not be possible.
---@class EPlaneConstraintAxisSetting
---@field Custom number @Lock movement to a user-defined axis.
---@field X number @Lock movement in the X axis.
---@field Y number @Lock movement in the Y axis.
---@field Z number @Lock movement in the Z axis.
---@field UseGlobalPhysicsSetting number @Use the global physics project setting.
EPlaneConstraintAxisSetting = {}


---MovementComponent is an abstract component class that defines functionality for moving a PrimitiveComponent (our UpdatedComponent) each tick. Base functionality includes: - Restricting movement to a plane or axis. - Utility functions for special handling of collision results (SlideAlongSurface(), ComputeSlideVector(), TwoWallAdjust()). - Utility functions for moving when there may be initial penetration (SafeMoveUpdatedComponent(), ResolvePenetration()). - Automatically registering the component tick and finding a component to move on the owning Actor. Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()). During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.
---@class UMovementComponent: UActorComponent
---@field Velocity FVector @Current velocity of updated component.
---@field PlaneConstraintNormal FVector @The normal or axis of the plane that constrains movement, if bConstrainToPlane is enabled. If for example you wanted to constrain movement to the X-Z plane (so that Y cannot change), the normal would be set to X=0 Y=1 Z=0. This is recalculated whenever PlaneConstraintAxisSetting changes. It is normalized once the component is registered with the game world.
---@field PlaneConstraintOrigin FVector @The origin of the plane that constrains movement, if plane constraint is enabled. This defines the behavior of snapping a position to the plane, such as by SnapUpdatedComponentToPlane().
---@field bUpdateOnlyIfRendered number @If true, skips TickComponent() if UpdatedComponent was not recently rendered.
---@field bAutoUpdateTickRegistration number @If true, whenever the updated component is changed, this component will enable or disable its tick dependent on whether it has something to update. This will NOT enable tick at startup if bAutoActivate is false, because presumably you have a good reason for not wanting it to start ticking initially.
---@field bTickBeforeOwner number @If true, after registration we will add a tick dependency to tick before our owner (if we can both tick). This is important when our tick causes an update in the owner's position, so that when the owner ticks it uses the most recent position without lag. Disabling this can improve performance if both objects tick but the order of ticks doesn't matter.
---@field bAutoRegisterUpdatedComponent number @If true, registers the owner's Root component as the UpdatedComponent if there is not one currently assigned.
---@field bConstrainToPlane number @If true, movement will be constrained to a plane.
---@field bSnapToPlaneAtStart number @If true and plane constraints are enabled, then the updated component will be snapped to the plane when first attached.
---@field bAutoRegisterPhysicsVolumeUpdates number @If true, then applies the value of bComponentShouldUpdatePhysicsVolume to the UpdatedComponent. If false, will not change bShouldUpdatePhysicsVolume on the UpdatedComponent at all.
---@field bComponentShouldUpdatePhysicsVolume number @If true, enables bShouldUpdatePhysicsVolume on the UpdatedComponent during initialization from SetUpdatedComponent(), otherwise disables such updates. Only enabled if bAutoRegisterPhysicsVolumeUpdates is true. WARNING: UpdatePhysicsVolume is potentially expensive if overlap events are also *disabled* because it requires a separate query against all physics volumes in the world.
---@field PlaneConstraintAxisSetting EPlaneConstraintAxisSetting @Setting that controls behavior when movement is restricted to a 2D plane defined by a specific axis/normal, so that movement along the locked axis is not be possible.
local UMovementComponent = {}

---Returns gravity that affects this component
---@return number
function UMovementComponent:GetGravityZ() end

---Returns maximum speed of component in current movement mode.
---@return number
function UMovementComponent:GetMaxSpeed() end

---Returns a scalar applied to the maximum velocity that the component can currently move.
---@return number
function UMovementComponent:K2_GetMaxSpeedModifier() end

---Returns the result of GetMaxSpeed() * GetMaxSpeedModifier().
---@return number
function UMovementComponent:K2_GetModifiedMaxSpeed() end

---Returns true if the current velocity is exceeding the given max speed (usually the result of GetMaxSpeed()), within a small error tolerance. Note that under normal circumstances updates cause by acceleration will not cause this to be true, however external forces or changes in the max speed limit can cause the max speed to be violated.
---@param MaxSpeed number
---@return boolean
function UMovementComponent:IsExceedingMaxSpeed(MaxSpeed) end

---Stops movement immediately (zeroes velocity, usually zeros acceleration for components with acceleration).
function UMovementComponent:StopMovementImmediately() end

---Delegate when PhysicsVolume of UpdatedComponent has been changed *
---@param NewVolume APhysicsVolume
function UMovementComponent:PhysicsVolumeChanged(NewVolume) end

---Assign the component we move and update.
---@param NewUpdatedComponent USceneComponent
function UMovementComponent:SetUpdatedComponent(NewUpdatedComponent) end

---Moves our UpdatedComponent by the given Delta, and sets rotation to NewRotation. Respects the plane constraint, if enabled.
---@param Delta FVector
---@param NewRotation FRotator
---@param OutHit FHitResult
---@param bSweep boolean
---@param bTeleport boolean
---@return boolean
function UMovementComponent:K2_MoveUpdatedComponent(Delta, NewRotation, OutHit, bSweep, bTeleport) end

---Set the plane constraint axis setting. Changing this setting will modify the current value of PlaneConstraintNormal.
---@param NewAxisSetting EPlaneConstraintAxisSetting
function UMovementComponent:SetPlaneConstraintAxisSetting(NewAxisSetting) end

---Get the plane constraint axis setting.
---@return EPlaneConstraintAxisSetting
function UMovementComponent:GetPlaneConstraintAxisSetting() end

---Sets the normal of the plane that constrains movement, enforced if the plane constraint is enabled. Changing the normal automatically sets PlaneConstraintAxisSetting to "Custom".
---@param PlaneNormal FVector
function UMovementComponent:SetPlaneConstraintNormal(PlaneNormal) end

---Uses the Forward and Up vectors to compute the plane that constrains movement, enforced if the plane constraint is enabled.
---@param Forward FVector
---@param Up FVector
function UMovementComponent:SetPlaneConstraintFromVectors(Forward, Up) end

---Sets the origin of the plane that constrains movement, enforced if the plane constraint is enabled.
---@param PlaneOrigin FVector
function UMovementComponent:SetPlaneConstraintOrigin(PlaneOrigin) end

---Sets whether or not the plane constraint is enabled.
---@param bEnabled boolean
function UMovementComponent:SetPlaneConstraintEnabled(bEnabled) end

---Constrain a direction vector to the plane constraint, if enabled.
---@param Direction FVector
---@return FVector
function UMovementComponent:ConstrainDirectionToPlane(Direction) end

---Constrain a position vector to the plane constraint, if enabled.
---@param Location FVector
---@return FVector
function UMovementComponent:ConstrainLocationToPlane(Location) end

---Constrain a normal vector (of unit length) to the plane constraint, if enabled.
---@param Normal FVector
---@return FVector
function UMovementComponent:ConstrainNormalToPlane(Normal) end

---Snap the updated component to the plane constraint, if enabled.
function UMovementComponent:SnapUpdatedComponentToPlane() end
