---@meta

---@class EPathFollowingStatus
---@field Idle number @No requests
---@field Waiting number @Request with incomplete path, will start after UpdateMove()
---@field Paused number @Request paused, will continue after ResumeMove()
---@field Moving number @Following path
EPathFollowingStatus = {}


---@class EPathFollowingResult
---@field Success number @Reached destination
---@field Blocked number @Movement was blocked
---@field OffPath number @Agent is not on path
---@field Aborted number @Aborted and stopped (failure)
---@field Skipped_DEPRECATED number @DEPRECATED, use Aborted result instead
---@field Invalid number @Request was invalid
EPathFollowingResult = {}


---@class EPathFollowingAction
---@field Error number
---@field NoMove number
---@field DirectMove number
---@field PartialPath number
---@field PathToGoal number
EPathFollowingAction = {}


---@class EPathFollowingRequestResult
---@field Failed number
---@field AlreadyAtGoal number
---@field RequestSuccessful number
EPathFollowingRequestResult = {}


---@class UPathFollowingComponent: UActorComponent, IAIResourceInterface
local UPathFollowingComponent = {}

---called when moving agent collides with another actor
---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UPathFollowingComponent:OnActorBump(SelfActor, OtherActor, NormalImpulse, Hit) end

---@return EPathFollowingAction
function UPathFollowingComponent:GetPathActionType() end

---@return FVector
function UPathFollowingComponent:GetPathDestination() end

---called when NavigationSystem registers new navigation data type while this component instance has empty MyNavData. This is usually the case for AI agents hand-placed on levels.
---@param NavData ANavigationData
function UPathFollowingComponent:OnNavDataRegistered(NavData) end
