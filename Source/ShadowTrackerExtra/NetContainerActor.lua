---@meta

---@class ANetContainerActor: AUAERegionActor
---@field bAutoFit boolean
---@field bSureLarge boolean
---@field SubActors ULuaArrayHelper<AActor>
local ANetContainerActor = {}

---@param Actor AActor
function ANetContainerActor:RegistActor(Actor) end

---@param Actor AActor
function ANetContainerActor:UnRegistActor(Actor) end

---@param Actor AActor
function ANetContainerActor:AddSubActorToNetContainer(Actor) end
