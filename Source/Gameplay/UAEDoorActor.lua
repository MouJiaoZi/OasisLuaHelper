---@meta

---@class AUAEDoorActor: AUAENetActor
---@field PreciseLocation FVector
---@field PreciseScale FVector
local AUAEDoorActor = {}

---@param InNetCullDistanceSquared number
function AUAEDoorActor:SetNetCullDistanceSquared(InNetCullDistanceSquared) end

function AUAEDoorActor:OnRep_PreciseLocation() end

function AUAEDoorActor:OnRep_PreciseScale() end
