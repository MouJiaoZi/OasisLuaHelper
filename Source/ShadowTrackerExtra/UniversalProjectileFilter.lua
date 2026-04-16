---@meta

---@class FProjectileFilterContainer
---@field MatchType EProjectileMatchType
---@field Filters ULuaArrayHelper<UUniversalProjectileFilter>
FProjectileFilterContainer = {}


---过滤器
---@class UUniversalProjectileFilter: UObject
---@field bInvertFilter boolean
---@field Origin FVector
local UUniversalProjectileFilter = {}

---Event
---过滤器的过滤方法
---生效范围：SC
---@param InActor AActor @当前判断过滤的对象
---@param Causer AActor @发起过滤的对象（可能为抛体，法术场等）
---@param Instigator AController @发起过滤的对象的Controller（一般在服务端使用）
---@return boolean @bool 过滤结果
function UUniversalProjectileFilter:Filter(InActor, Causer, Instigator) end


---@class UUniversalProjectileFilter_ActorClass: UUniversalProjectileFilter
---@field bExplicitClass number
---@field IncludedActorClasses ULuaArrayHelper<AActor>
local UUniversalProjectileFilter_ActorClass = {}


---@class UUniversalProjectileFilter_Camp: UUniversalProjectileFilter
---@field FilterCamp ECampRelation
local UUniversalProjectileFilter_Camp = {}


---@class UUniversalProjectileFilter_NotTeammate: UUniversalProjectileFilter
local UUniversalProjectileFilter_NotTeammate = {}


---@class UUniversalProjectileFilter_Entity: UUniversalProjectileFilter
---@field IncludedEntityTypes FGameplayTagContainer @要包含的实体类型GameplayTag容器
local UUniversalProjectileFilter_Entity = {}


---@class UUniversalProjectileFilter_Visibility: UUniversalProjectileFilter
---@field IgnoreActorClasses ULuaArrayHelper<AActor>
---@field IgnoreActorSoftClasses ULuaArrayHelper<AActor>
---@field bTraceEyes number
---@field BlockChannel ECollisionChannel
local UUniversalProjectileFilter_Visibility = {}


---@class UUniversalProjectileFilter_BindFunction: UUniversalProjectileFilter
---@field TriggerFunction FBindFunctionSelector
local UUniversalProjectileFilter_BindFunction = {}


---@class UUniversalProjectileFilter_Probability: UUniversalProjectileFilter
---@field Probability FFloatGetter
local UUniversalProjectileFilter_Probability = {}
