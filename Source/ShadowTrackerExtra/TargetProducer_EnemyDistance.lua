---@meta

---@class UTargetProducer_EnemyDistance: UTargetProducer
---@field TargetLockTime number
---@field bEnableVisibleCheck boolean
---@field LineTraceSelfOffset FVector
---@field LineTraceTargetOffset FVector
local UTargetProducer_EnemyDistance = {}

---@param InTarget AActor
---@return boolean
function UTargetProducer_EnemyDistance:CheckVisibility(InTarget) end
