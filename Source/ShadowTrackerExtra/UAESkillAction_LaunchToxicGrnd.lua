---@meta

---@class UUAESkillAction_LaunchToxicGrnd: UUAESkillAction
---@field bMoveOwner boolean
---@field ProjectileActorTemplate AVNTargetedProjectileActor
---@field AttachActorData FSkillAction_AttachActorCreateData
local UUAESkillAction_LaunchToxicGrnd = {}

function UUAESkillAction_LaunchToxicGrnd:UndoAction_Internal() end

---@param _event UTSkillEventType
function UUAESkillAction_LaunchToxicGrnd:BoardcastEvent(_event) end

---@param DestroyedActor AActor
function UUAESkillAction_LaunchToxicGrnd:OnSplineDestroyed(DestroyedActor) end

function UUAESkillAction_LaunchToxicGrnd:OnCollisionHit() end


---@class UUAESkillAction_LaunchToxicGrnd: UUAESkillAction_LaunchProjectile
local UUAESkillAction_LaunchToxicGrnd = {}
