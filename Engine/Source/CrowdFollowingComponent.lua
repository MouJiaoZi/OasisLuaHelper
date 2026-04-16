---@meta

---@class UCrowdFollowingComponent: UPathFollowingComponent, ICrowdAgentInterface
---@field CrowdAgentMoveDirection FVector
---@field AvoidanceGroup_DEPRECATED FNavAvoidanceMask @DEPRECATED: Group mask for this agent - use property from CharacterMovementComponent instead
---@field GroupsToAvoid_DEPRECATED FNavAvoidanceMask @DEPRECATED: Will avoid other agents if they are in one of specified groups - use property from CharacterMovementComponent instead
---@field GroupsToIgnore_DEPRECATED FNavAvoidanceMask @DEPRECATED: Will NOT avoid other agents if they are in one of specified groups, higher priority than GroupsToAvoid - use property from CharacterMovementComponent instead
local UCrowdFollowingComponent = {}

---master switch for crowd steering & avoidance
---@param bSuspend boolean
function UCrowdFollowingComponent:SuspendCrowdSteering(bSuspend) end
