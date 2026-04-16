---@meta

---@class UCrowdAgentComponent: UActorComponent
---@field AgentRadius number
---@field SegmentRadius number
---@field Height number
---@field MaxSpeed number
---@field MaxForce number
---@field QueryNeighborRadius number
---@field QueryBoundaryRadius number
---@field StopMoveDistance number
---@field bSimulateCrowdAgent boolean
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field bUpdateRealDestInUpdate boolean
---@field bOpenDebugDraw boolean
---@field bNeedTick boolean
local UCrowdAgentComponent = {}

---@param AgentActor AActor
---@param Message string
---@param Result boolean
function UCrowdAgentComponent:ReceivePXGCrowdMessage(AgentActor, Message, Result) end

---@param Loc FVector
---@param StopRadius number
---@return EGenericMoveState
function UCrowdAgentComponent:MoveToLoc(Loc, StopRadius) end

---@param actor AActor
function UCrowdAgentComponent:MoveToActor(actor) end

---@param Radius number
function UCrowdAgentComponent:RandomMoveToPosition(Radius) end

function UCrowdAgentComponent:StopMove() end

---@return FVector
function UCrowdAgentComponent:GetVelocity() end

---@return number
function UCrowdAgentComponent:GetMaxSpeed() end

---@param MaxSpeed number
function UCrowdAgentComponent:SetMaxSpeed(MaxSpeed) end

---@return boolean
function UCrowdAgentComponent:IsMoving() end

---@param InGroupMask number
---@param InGroupsToAvoid number
function UCrowdAgentComponent:SetGroupInfo(InGroupMask, InGroupsToAvoid) end
