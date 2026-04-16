---@meta

---@class ERescueHelicopterState
---@field State_Spawned number
---@field State_FlyToTarget number
---@field State_DropLadder number
---@field State_Waiting number
---@field State_PullLadder number
---@field State_Leave number
ERescueHelicopterState = {}


---@class ARescueHelicopterBase: ACharacter, IPostProcessor_SpawnActorAction
---@field MaxRescueNum number
---@field FlyingZ number
---@field WaitingHeight number
---@field OwnerPlayerKey number
---@field HelicopterState ERescueHelicopterState
---@field HelicopterId number
---@field TargetLocation FVector
---@field PlayerKeys ULuaArrayHelper<number>
---@field CountDownSeconds number
---@field bCanSeeInMiniMap boolean
local ARescueHelicopterBase = {}

---@param InCenter FVector
---@param InRadius number
---@param ValidActorTag string
---@param InGrowRadiusBy number
---@return FVector
function ARescueHelicopterBase:RandomTargetLoc(InCenter, InRadius, ValidActorTag, InGrowRadiusBy) end

---@param TargetLoc FVector
function ARescueHelicopterBase:BP_FlyToTargetLocation(TargetLoc) end

function ARescueHelicopterBase:OnHelicopterArrived() end

---@param Player ASTExtraBaseCharacter
function ARescueHelicopterBase:OnPlayerRescued(Player) end

function ARescueHelicopterBase:OnHelicopterLeft() end

---@param Player ASTExtraBaseCharacter
function ARescueHelicopterBase:BP_BoardPlayer(Player) end

function ARescueHelicopterBase:OnRep_HelicopterState() end

---@param InPlayerKey number
function ARescueHelicopterBase:OwnedByPlayer(InPlayerKey) end

---@param InPlayerKey number
---@return boolean
function ARescueHelicopterBase:IsOwnedByPlayer(InPlayerKey) end

---@param PS ULuaArrayHelper<ASTExtraPlayerState>
function ARescueHelicopterBase:GetBoardedPlayerPlayerState(PS) end
