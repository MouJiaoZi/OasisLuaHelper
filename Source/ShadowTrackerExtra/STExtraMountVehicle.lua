---@meta

---@class ASTExtraMountVehicle: ASTExtraVehicleBase, ISTExtraInputInterface
---@field bPressedJump number @When true, player wants to jump
---@field bWasJumping number
---@field bClientUpdating number @When true, applying updates to network client (replaying saved moves for a locally controlled character)
---@field bSimGravityDisabled number @Disable simulated gravity (set when character encroaches geometry on client, to keep him from falling through floors)
---@field JumpMaxHoldTime number @The max time the jump key can be held. Note that if StopJumping() is not called before the max jump hold time is reached, then the character will carry on receiving vertical velocity. Therefore it is usually best to call StopJumping() when jump input has ceased (such as a button up event).
---@field MaxMoveSpeed number
---@field SpeedCheckDeltaTime number
---@field MaxSpeedOverflowTimes number
---@field BasedMovement any @Info about our current movement base (object we are standing on).
---@field ReplicatedBasedMovement any @Replicated version of relative movement. Read-only on simulated proxies!
---@field ReplicatedMovementMode number @Vehicle MovementMode (and custom mode) replicated for simulated proxies. Use CharacterMovementComponent::UnpackNetworkMovementMode() to translate it.
---@field bInBaseReplication boolean @Flag that we are receiving replication of the based movement.
---@field BaseTranslationOffset FVector @Saved translation offset of mesh.
---@field BaseRotationOffset FQuat @Saved rotation offset of mesh.
---@field ForwardSpeed number
---@field RightSpeed number
---@field UpSpeed number
---@field MaxSpeedCheck number
---@field MoonViewDistanceCheck number
---@field MaxZSpeedCheck number
---@field MoonViewPlatforms ULuaArrayHelper<AActor>
---@field NetworkPredictionInterface INetworkPredictionInterface
local ASTExtraMountVehicle = {}

---true if we are playing Root Motion right now
---@return boolean
function ASTExtraMountVehicle:IsPlayingRootMotion() end

---true if we are playing Root Motion right now, through a Montage with RootMotionMode == ERootMotionMode::RootMotionFromMontagesOnly. This means code path for networked root motion is enabled.
---@return boolean
function ASTExtraMountVehicle:IsPlayingNetworkedRootMotionMontage() end

---@param rate number
function ASTExtraMountVehicle:MoveForward(rate) end

---@param rate number
function ASTExtraMountVehicle:MoveRight(rate) end

---@param rate number
function ASTExtraMountVehicle:MoveUp(rate) end

---Check if the character can jump **in the current state**. The default implementation may be overridden or extended by implementing the custom CanJump event in Blueprints.
---@return boolean
function ASTExtraMountVehicle:CanMove() end

---True if jump is actively providing a force, such as when the jump key is held and the time it has been held is less than JumpMaxHoldTime.
---@return boolean
function ASTExtraMountVehicle:IsJumpProvidingForce() end

---Make the character jump on the next update. If you want your character to jump according to the time that the jump key is held, then you can set JumpKeyHoldTime to some non-zero value. Make sure in this case to call StopJumping() when you want the jump's z-velocity to stop being applied (such as on a button up event), otherwise the character will carry on receiving the velocity until JumpKeyHoldTime is reached.
function ASTExtraMountVehicle:VehicleJump() end

---@return boolean
function ASTExtraMountVehicle:CanVehicleJump() end

---Check if the character can jump in the current state. The default implementation may be overridden or extended by implementing the custom CanJump event in Blueprints.
---@return boolean
function ASTExtraMountVehicle:CanJump() end

---Stop the character from jumping on the next update. Call this from an input event (such as a button 'up' event) to cease applying jump Z-velocity. If this is not called, then jump z-velocity will be applied until JumpMaxHoldTime is reached.
function ASTExtraMountVehicle:StopJumping() end

function ASTExtraMountVehicle:ResetJumpZVelocity() end

---@return number
function ASTExtraMountVehicle:GetForwardSpeed() end

---@return number
function ASTExtraMountVehicle:GetRightwardSpeed() end

---@return number
function ASTExtraMountVehicle:GetUpSpeed() end

---Rep notify for ReplicatedBasedMovement
function ASTExtraMountVehicle:OnRep_ReplicatedBasedMovement() end
