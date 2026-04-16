---@meta

---@class USkillUtils: UObject
local USkillUtils = {}

---@param pChar ASTExtraBaseCharacter
---@return boolean
function USkillUtils:IsCurUseGrenade(pChar) end

---@param UserActor AActor
---@param ParticleTagName string
---@param OutParArr ULuaArrayHelper<UParticleSystemComponent>
function USkillUtils:GetParticleComps(UserActor, ParticleTagName, OutParArr) end

---@param Actor AActor
---@param ID number
---@param loc FVector
---@param playerKey string
function USkillUtils:QuickFireEvent_UseItem(Actor, ID, loc, playerKey) end

---@param Actor AActor
---@param loc FVector
---@param ExtraInfoTag string
function USkillUtils:QuickFireEvent_SpawnActorAtLocation(Actor, loc, ExtraInfoTag) end

---@param Actor AActor
---@param TerminatorTag string
function USkillUtils:QuickFireEvent_TerminateShrinkCircle(Actor, TerminatorTag) end

---@param damageType EDamageType
---@return FSTPointDamageEvent
function USkillUtils:DamageEventFactory(damageType) end

---@param InOwnerSkillManager UUTSkillManagerComponent
---@param InSkill UUTSkillBaseWidget
---@param InValue number
---@param Selector FUAEBlackboardKeySelector
---@param CreateIfNotExists boolean
function USkillUtils:WriteIntToSkillBlackBoard(InOwnerSkillManager, InSkill, InValue, Selector, CreateIfNotExists) end

---@param InOwnerSkillManager UUTSkillManagerComponent
---@param InSkill UUTSkillBaseWidget
---@param Selector FUAEBlackboardKeySelector
---@param DefaultVal number
---@return number
function USkillUtils:ReadIntFromSkillBlackBoard(InOwnerSkillManager, InSkill, Selector, DefaultVal) end
