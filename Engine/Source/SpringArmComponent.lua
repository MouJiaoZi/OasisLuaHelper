---@meta

---This component tries to maintain its children at a fixed distance from the parent, but will retract the children if there is a collision, and spring back when there is no collision. Example: Use as a 'camera boom' to keep the follow camera for a player from colliding into the world.
---@class USpringArmComponent: USceneComponent
---@field TargetArmLength number @Natural length of the spring arm when there are no collisions
---@field SocketOffset FVector @offset at end of spring arm; use this instead of the relative offset of the attached component to ensure the line trace works as desired
---@field TargetOffset FVector @Offset at start of spring, applied in world space. Use this if you want a world-space offset from the parent component instead of the usual relative-space offset.
---@field ProbeSize number @How big should the query probe sphere be (in unreal units)
---@field ProbeChannel ECollisionChannel @Collision channel of the query probe (defaults to ECC_Camera)
---@field bDoCollisionTest number @If true, do a collision test using ProbeChannel and ProbeSize to prevent camera clipping into level.
---@field bUsePawnControlRotation number @If this component is placed on a pawn, should it use the view/control rotation of the pawn where possible? When disabled, the component will revert to using the stored RelativeRotation of the component. Note that this component itself does not rotate, but instead maintains its relative rotation to its parent as normal, and just repositions and rotates its children as desired by the inherited rotation settings. Use GetTargetRotation() if you want the rotation target based on all the settings (UsePawnControlRotation, InheritPitch, etc).
---@field bInheritPitch number @Should we inherit pitch from parent component. Does nothing if using Absolute Rotation.
---@field bInheritYaw number @Should we inherit yaw from parent component. Does nothing if using Absolute Rotation.
---@field bInheritRoll number @Should we inherit roll from parent component. Does nothing if using Absolute Rotation.
---@field bEnableCameraLag number @If true, camera lags behind target position to smooth its movement.
---@field bEnableCameraRotationLag number @If true, camera lags behind target rotation to smooth its movement.
---@field bUseCameraLagSubstepping number @If bUseCameraLagSubstepping is true, sub-step camera damping so that it handles fluctuating frame rates well (though this comes at a cost).
---@field bDrawDebugLagMarkers number @If true and camera location lag is enabled, draws markers at the camera target (in green) and the lagged position (in yellow). A line is drawn between the two locations, in green normally but in red if the distance to the lag target has been clamped (by CameraLagMaxDistance).
---@field CameraLagSpeed number @If bEnableCameraLag is true, controls how quickly camera reaches target position. Low values are slower (more lag), high values are faster (less lag), while zero is instant (no lag).
---@field CameraRotationLagSpeed number @If bEnableCameraRotationLag is true, controls how quickly camera reaches target position. Low values are slower (more lag), high values are faster (less lag), while zero is instant (no lag).
---@field CameraLagMaxTimeStep number @Max time step used when sub-stepping camera lag.
---@field CameraLagMaxDistance number @Max distance the camera target may lag behind the current location. If set to zero, no max distance is enforced.
---@field IgnoredActors ULuaArrayHelper<AActor>
---@field CacheHit FHitResult
local USpringArmComponent = {}

---Get the target rotation we inherit, used as the base target for the boom rotation. This is derived from attachment to our parent and considering the UsePawnControlRotation and absolute rotation flags.
---@return FRotator
function USpringArmComponent:GetTargetRotation() end

---Sets whether the component is active or not
---@param bNewActive boolean
---@param bReset boolean
function USpringArmComponent:SetActive(bNewActive, bReset) end

---@param bDoTrace boolean
---@param bDoLocationLag boolean
---@param bDoRotationLag boolean
---@param DeltaTime number
function USpringArmComponent:UpdateDesiredArmLocationCustom(bDoTrace, bDoLocationLag, bDoRotationLag, DeltaTime) end

function USpringArmComponent:GetExtraIgnoreActors() end

function USpringArmComponent:GetExtraIgnoreCompoents() end
