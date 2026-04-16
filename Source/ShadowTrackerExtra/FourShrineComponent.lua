---@meta

---@class UFourShrineComponent: UActorComponent
---@field BeastType EBeastType
local UFourShrineComponent = {}

---@param CyclonePos FVector
---@param TargetPos FVector
---@param Radius number
---@param ManualOffset FVector
---@return FVector
function UFourShrineComponent:GetJumpTarget(CyclonePos, TargetPos, Radius, ManualOffset) end
