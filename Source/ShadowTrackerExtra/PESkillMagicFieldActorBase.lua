---@meta

---@class APESkillMagicFieldActorBase: AUAERegionActor, ISkillAbilityInterface, IOwnershipChainInterface
---@field MagicFieldConfig FMagicFieldConfig
---@field CurrentActorsInField ULuaSetHelper<AActor>
---@field OverlapCheckAreaComponents ULuaArrayHelper<UOverlapCheckAreaComponent>
local APESkillMagicFieldActorBase = {}

function APESkillMagicFieldActorBase:InitializeMagicFieldSelf() end

---预初始化法术场，仅设置Owner信息，不执行完整初始化流程
---@param pOwnerSkill UPersistEffectSkill
---@param InOwner AActor
function APESkillMagicFieldActorBase:PreInitialize(pOwnerSkill, InOwner) end

---@param pOwnerSkill UPersistEffectSkill
---@param InOwner AActor
---@param IntervalOverride number
---@param DurationOverride number
function APESkillMagicFieldActorBase:InitializeMagicField(pOwnerSkill, InOwner, IntervalOverride, DurationOverride) end

---@param pOwnerSkill UPersistEffectSkill
---@param InOwner AActor
---@param IntervalOverride number
---@param DurationOverride number
function APESkillMagicFieldActorBase:InitializeMagicField_BP(pOwnerSkill, InOwner, IntervalOverride, DurationOverride) end

function APESkillMagicFieldActorBase:DestroyMagicField() end

---@param Actor AActor
function APESkillMagicFieldActorBase:AddTargetToField(Actor) end

---@param Actor AActor
function APESkillMagicFieldActorBase:RemoveTargetFromField(Actor) end

function APESkillMagicFieldActorBase:GetRangeActors() end

function APESkillMagicFieldActorBase:OnRep_AttachmentReplication_BP() end

---@param Actor AActor
function APESkillMagicFieldActorBase:OnActorEnterField(Actor) end

---@param Actor AActor
function APESkillMagicFieldActorBase:OnActorExitField(Actor) end

function APESkillMagicFieldActorBase:ExecuteIntervalActions() end

function APESkillMagicFieldActorBase:EndMagicField() end

---@param Actor AActor
---@return boolean
function APESkillMagicFieldActorBase:IsValidTarget(Actor) end

function APESkillMagicFieldActorBase:BindOverlapCheckAreaComponents() end

function APESkillMagicFieldActorBase:UnbindOverlapCheckAreaComponents() end

---@param CheckActorArray FOverlapCheckActorArray
function APESkillMagicFieldActorBase:OnOverlapCheckChanged(CheckActorArray) end
