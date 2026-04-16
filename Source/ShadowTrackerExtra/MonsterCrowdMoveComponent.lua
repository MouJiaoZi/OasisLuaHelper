---@meta

---@class UMonsterCrowdMoveComponent: UGameModeBaseComponent, ICrowdAgentQueryInterface
---@field NavMeshBounds FBox
local UMonsterCrowdMoveComponent = {}

---@param Agent AActor
function UMonsterCrowdMoveComponent:AddCrowdAgent(Agent) end

---@param Agent AActor
function UMonsterCrowdMoveComponent:RemoveCrowdAgent(Agent) end
