---@meta

---@class UPESkillMagicFieldActionBase: UObject
local UPESkillMagicFieldActionBase = {}

---@param OwnerActor AActor
---@param TargetActors ULuaArrayHelper<AActor>
---@param MagicField APESkillMagicFieldActorBase
function UPESkillMagicFieldActionBase:ExecuteAction(OwnerActor, TargetActors, MagicField) end

---@param OwnerActor AActor
---@param TargetActors ULuaArrayHelper<AActor>
---@param MagicField APESkillMagicFieldActorBase
---@return boolean
function UPESkillMagicFieldActionBase:ExecuteAction_BP(OwnerActor, TargetActors, MagicField) end
