---@meta

---@class AShrinkCircleActor: AActor, IPostProcessor_SpawnActorAction
---@field ShrinkRadius number
---@field ShrinkLocation FVector
local AShrinkCircleActor = {}

function AShrinkCircleActor:OnRep_ShrinkRadius() end

function AShrinkCircleActor:OnRep_ShrinkLocation() end
