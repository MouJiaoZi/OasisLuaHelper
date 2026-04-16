---@meta

---Actor添加CrowdAgent组件后，引擎的crowd move会考虑避障改物体
---@class USimpleCrowdAgentComponent: UActorComponent, ICrowdAgentInterface
---@field bAutoRegist boolean
---@field Radius number
---@field HalfHeight number
---@field MaxSpeed number
---@field AvoidanceGroup FNavAvoidanceMask @Moving actor's group mask
---@field GroupsToAvoid FNavAvoidanceMask @Will avoid other agents if they are in one of specified groups
---@field GroupsToIgnore FNavAvoidanceMask @Will NOT avoid other agents if they are in one of specified groups, higher priority than GroupsToAvoid
local USimpleCrowdAgentComponent = {}

function USimpleCrowdAgentComponent:RegisterCrowdAgent() end

function USimpleCrowdAgentComponent:CleanUp() end

---@param GroupMask FNavAvoidanceMask
function USimpleCrowdAgentComponent:SetAvoidanceGroupMask(GroupMask) end

---@param GroupMask FNavAvoidanceMask
function USimpleCrowdAgentComponent:SetGroupsToAvoidMask(GroupMask) end

---@param GroupMask FNavAvoidanceMask
function USimpleCrowdAgentComponent:SetGroupsToIgnoreMask(GroupMask) end
