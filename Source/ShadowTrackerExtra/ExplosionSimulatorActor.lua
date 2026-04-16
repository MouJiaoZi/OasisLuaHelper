---@meta

---@class AExplosionSimulatorActor: AActor
---@field RadialDamageParams FApplyRadialDamageParams
---@field SimulateActorClassName string
---@field SimulateActorClass AActor
local AExplosionSimulatorActor = {}

---@param DeltaTime number
function AExplosionSimulatorActor:DrawExplosionVisualizer(DeltaTime) end

function AExplosionSimulatorActor:UpdateSimulationParams() end
