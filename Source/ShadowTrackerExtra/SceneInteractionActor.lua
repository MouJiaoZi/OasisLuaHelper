---@meta

---@class ASceneInteractionActor: AActor
---@field SimulateServer boolean
---@field TickIntervalTime number
---@field LifeSpan number
---@field InteractionInterval number
---@field ServerCheckInteractionInterval boolean
---@field InteractionCount number
---@field ConditionList ULuaArrayHelper<UInteractionCondition>
---@field ActionList ULuaArrayHelper<UInteractionAction>
local ASceneInteractionActor = {}

function ASceneInteractionActor:OnRep_InteractionCount() end
