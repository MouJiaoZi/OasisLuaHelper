---@meta

---@class UDestroyActorPermission: UObject
local UDestroyActorPermission = {}

---@param Actor AActor
---@return boolean
function UDestroyActorPermission:CanDestroyActor(Actor) end


---@class UDestroyActorPermission_ActorOwnerOnly: UDestroyActorPermission
local UDestroyActorPermission_ActorOwnerOnly = {}


---@class UUAESkillAction_DestroyActor: USTExtraBuffAction
---@field TargetKey FUAEBlackboardKeySelector
---@field RemaingLifeSpan number
local UUAESkillAction_DestroyActor = {}
