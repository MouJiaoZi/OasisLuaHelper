---@meta

---@class FJumpPadPlayerData
FJumpPadPlayerData = {}


---@class AJumpPad: AActor
---@field JumpTarget FVector @The destination of this Jump Pad
---@field JumpTime number @The length of air time it takes to reach the target
---@field bMaintainVelocity boolean @Keep the characters XY Velocity when jumping
---@field bJumpToAbsoluteLocation boolean @Keep the characters XY Velocity when jumping
---@field PendingJumpActors ULuaArrayHelper<AActor> @Actors we want to Jump next tick
local AJumpPad = {}

---Get the Jump Pad Velocity from JumpActor's location
---@param JumpActor AActor
---@return FVector
function AJumpPad:CalculateJumpVelocity(JumpActor) end

---@param NewChar ACharacter
function AJumpPad:AddPlayer(NewChar) end

---@param NewChar ACharacter
function AJumpPad:RemovePlayer(NewChar) end

function AJumpPad:ForceStopAll() end

function AJumpPad:CheckGameStateChangeEventBind() end

---@param InNewGameState string
function AJumpPad:OnGameStateChanged(InNewGameState) end

---@param InNewGameState string
function AJumpPad:BP_OnGameStateChanged(InNewGameState) end

---@param Actor AActor
function AJumpPad:Launch_Internal(Actor) end

---@param Actor AActor
function AJumpPad:PreLaunch(Actor) end

---@param InActor AActor
---@return boolean
function AJumpPad:CanPlayerJump(InActor) end

---@param Actor AActor
---@param Vel FVector
function AJumpPad:LaunchTick(Actor, Vel) end

---@param Actor AActor
function AJumpPad:LaunchFinished(Actor) end
