---@meta

---@class UVehicleWakeFlowSkillHandle: UVHEffectSetDMIParamSkillHandle
---@field ActiveEffectSpeed number
---@field EffectActiveStateSfxLoop FSTExtraVehicleSfxLoop
---@field LastLinSpeed FVector
---@field ShouldActiveTailLight boolean
local UVehicleWakeFlowSkillHandle = {}

---@param DeltaTime number
function UVehicleWakeFlowSkillHandle:TickUpdateEffect(DeltaTime) end
