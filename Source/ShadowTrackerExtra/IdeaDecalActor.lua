---@meta

---@class AIdeaDecalActor: AActor
---@field DecalId number
---@field DecalInfo FIdeaDecalInfo
local AIdeaDecalActor = {}

function AIdeaDecalActor:OnRep_DecalInfo() end

---@param PredicatedLOD number
function AIdeaDecalActor:HandleSkeletalmeshChanged(PredicatedLOD) end

---@param Origin FVector
---@param EffectRange number
function AIdeaDecalActor:TriggerDeformEffect(Origin, EffectRange) end

---@param params FFastDestructibleParameters
function AIdeaDecalActor:HandleOnInstanceDestroy(params) end
