---@meta

---@class EBTTask_FindAIWorldVolumeActorType
---@field EActivityBaseActor number
EBTTask_FindAIWorldVolumeActorType = {}


---@class UBTTask_FindAIWorldVolumeActor: UBTTaskNode
---@field ActorType EBTTask_FindAIWorldVolumeActorType
---@field InCenter FBlackboardKeySelector
---@field InSearchRadius number
---@field bSorted boolean
---@field OutTargetActor FBlackboardKeySelector
local UBTTask_FindAIWorldVolumeActor = {}

---@param AIC AAIController
---@param TargetActor AActor
---@return boolean
function UBTTask_FindAIWorldVolumeActor:Filter(AIC, TargetActor) end
