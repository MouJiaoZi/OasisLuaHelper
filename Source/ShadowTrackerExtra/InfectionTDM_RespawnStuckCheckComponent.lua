---@meta

---@class UInfectionTDM_RespawnStuckCheckComponent: UActorComponent
local UInfectionTDM_RespawnStuckCheckComponent = {}

---@param Pawn APawn
---@param ActorLoc FVector
---@param ActorRot FQuat
---@param CapsuleRadius number
---@param CapsuleHalfHeight number
---@return boolean
function UInfectionTDM_RespawnStuckCheckComponent:IsValidCapsuleLocation(Pawn, ActorLoc, ActorRot, CapsuleRadius, CapsuleHalfHeight) end

---@param Pawn APawn
function UInfectionTDM_RespawnStuckCheckComponent:GetHistoryMoveLocations(Pawn) end

---@param PlayerController ASTExtraPlayerController
function UInfectionTDM_RespawnStuckCheckComponent:GetHistoryMoveLocationsFormPlayerController(PlayerController) end
