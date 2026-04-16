---@meta

---@class UMobaAIProbeComponent: UAIProbeComponent
local UMobaAIProbeComponent = {}

---@return string
function UMobaAIProbeComponent:GetAreaThreatScore() end

---@param PlayerKey number
---@return boolean
function UMobaAIProbeComponent:SpawnAIControllerWithPlayerKey(PlayerKey) end
