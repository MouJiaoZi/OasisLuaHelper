---@meta

---@class AUAEGroupEntity: AGroupEntity
---@field bCheckTargetVisibility boolean
---@field DBAttackRadiusScalar number
---@field bUseGpuAnim boolean
---@field bGPUAnim boolean
---@field ReachWayPointRadius number
---@field MoveWayPointArr ULuaArrayHelper<FVector>
---@field bGroupMovetoPlayer boolean
local AUAEGroupEntity = {}

---@param index number
---@return FVector
function AUAEGroupEntity:GetMemberLocation(index) end

function AUAEGroupEntity:KillAllMember() end

function AUAEGroupEntity:ShowCPUAnim() end
