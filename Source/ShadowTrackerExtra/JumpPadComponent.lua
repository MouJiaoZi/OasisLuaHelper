---@meta

---@class FJumpActorInfo
---@field JumpActor AActor
---@field JumpTarget FVector
---@field FlightTime number
---@field FinishedTimeHandle FTimerHandle
FJumpActorInfo = {}


---@class UJumpPadComponent: UActorComponent
---@field bSetMoveableFalse boolean
---@field bTickLaunch boolean
---@field bSetMovementModeToFalling boolean
---@field bAbsoluteCoordinates boolean
---@field bUseFixedJumpTarget boolean
---@field JumpTarget FVector @The destination of this Jump Pad
---@field JumpTime number @The length of air time it takes to reach the target
---@field RestrictedJumpTime number @amount of jump time during which a Pawn's movement is restricted (no air control, etc) to avoid them unintentionally missing the expected destination
---@field bMaintainVelocity boolean @Keep the characters XY Velocity when jumping
---@field bEnable boolean
---@field PendingJumpActorsInfo ULuaArrayHelper<FJumpActorInfo> @Actors we want to Jump next tick
---@field OnPreLaunch FOnPreLaunch
---@field OnLaunchFinished FOnLaunchFinished
---@field AuthoredGravityZ number @used to detect low grav mods
---@field bUseAutoOverlap boolean
---@field CheckOverlapInterval number
---@field OverlapComponentName string
local UJumpPadComponent = {}

function UJumpPadComponent:OnRep_Enable() end

---@param NewTarget FVector
function UJumpPadComponent:SetFixedTarget(NewTarget) end

---@param JumpActor AActor
---@param NewTarget FVector
function UJumpPadComponent:SetTargetByActor(JumpActor, NewTarget) end

---Get the Jump Pad Velocity from JumpActor's location
---@param JumpActor AActor
---@return FVector
function UJumpPadComponent:CalculateJumpVelocity(JumpActor) end

---returns whether this jump pad is currently enabled and will launch actors that touch it and pass CanLaunch()
---@return boolean
function UJumpPadComponent:IsEnabled() end

---@param bSetEnable boolean
function UJumpPadComponent:SetEnabled(bSetEnable) end

---returns whether the given Actor can be launched by this jumppad
---@param TestActor AActor
---@return boolean
function UJumpPadComponent:CanLaunch(TestActor) end

---Launches the actor
---@param Actor AActor
function UJumpPadComponent:Launch(Actor) end

---@param JumpActorInfo FJumpActorInfo
function UJumpPadComponent:PreLaunch(JumpActorInfo) end

---@param Actor AActor
function UJumpPadComponent:LaunchFinished(Actor) end

---@param OtherActor AActor
function UJumpPadComponent:AddActorToLaunch(OtherActor) end

---@return number
function UJumpPadComponent:GetGravityZ() end

---@param Actor AActor
---@param bIsMovable boolean
function UJumpPadComponent:SetMovable(Actor, bIsMovable) end
