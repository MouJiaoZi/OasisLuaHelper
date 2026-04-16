---@meta

---@class UDynamicObstacleAvoidanceComponent: UMovementComponent, IRVOAvoidanceInterface, ICrowdAgentInterface
---@field bUseRVO boolean
---@field AvoidanceWeight number
---@field bCustomOriginRelativeLocation boolean
---@field OriginRelativeLocation FVector
---@field bCustomAvoidanceCapsule boolean
---@field AvoidanceRadius number
---@field AvoidanceHalfHeight number
---@field AvoidanceGroup FNavAvoidanceMask
---@field GroupsToAvoid FNavAvoidanceMask
---@field GroupsToIgnore FNavAvoidanceMask
---@field AvoidanceUID number
---@field bAutoRegist boolean
local UDynamicObstacleAvoidanceComponent = {}

function UDynamicObstacleAvoidanceComponent:RegisterCrowdAgent() end

function UDynamicObstacleAvoidanceComponent:CleanUp() end

---@param GroupMask FNavAvoidanceMask
function UDynamicObstacleAvoidanceComponent:SetAvoidanceGroupMask(GroupMask) end

---@param GroupMask FNavAvoidanceMask
function UDynamicObstacleAvoidanceComponent:SetGroupsToAvoidMask(GroupMask) end

---@param GroupMask FNavAvoidanceMask
function UDynamicObstacleAvoidanceComponent:SetGroupsToIgnoreMask(GroupMask) end
