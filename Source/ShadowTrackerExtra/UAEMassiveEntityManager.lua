---@meta

---@class UUAEMassiveEntityManager: UMassiveEntityManager
---@field DefaultEnemyActorTemplate AActor
---@field RecordLastAttackedTime number
local UUAEMassiveEntityManager = {}

---@param NavMesh AUAERecastNavMesh
function UUAEMassiveEntityManager:NotifyNavMeshLoadSuccess(NavMesh) end
