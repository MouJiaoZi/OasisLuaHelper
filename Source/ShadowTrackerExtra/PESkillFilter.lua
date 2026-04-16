---@meta

---@class UPESkillFilter: UObject
---@field bNot boolean
local UPESkillFilter = {}

---@param Skill UPersistEffectSkill
---@param InActors ULuaArrayHelper<AActor>
function UPESkillFilter:HandleFilterArray(Skill, InActors) end


---@class UPESkillFilter_ActorClass: UPESkillFilter
---@field ActorClass ULuaArrayHelper<AActor>
local UPESkillFilter_ActorClass = {}


---@class UPESkillFilter_Camp: UPESkillFilter
---@field FilterCamp ECampRelation
local UPESkillFilter_Camp = {}


---@class UPESkillFilter_EntityType: UPESkillFilter
---@field IncludedEntityTypes FGameplayTagContainer @要包含的实体类型GameplayTag容器
local UPESkillFilter_EntityType = {}
