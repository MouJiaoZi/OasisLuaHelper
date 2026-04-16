---@meta

---@class IPhaseActorInterface
IPhaseActorInterface = {}

---@param soa AActor
function IPhaseActorInterface:SetSkillOwnerActor(soa) end

---@param _type UTSkillEventType
function IPhaseActorInterface:SendPhaseEvent(_type) end
