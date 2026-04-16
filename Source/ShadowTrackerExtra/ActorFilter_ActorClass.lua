---@meta

---@class UActorFilter_ActorClass: UActorFilter
---@field bExplicitClass number
---@field IncludedActorClasses ULuaArrayHelper<AActor>
local UActorFilter_ActorClass = {}


---@class UActorFilter_ExcludeActorClass: UActorFilter_ActorClass
---@field ExcludedActorClasses ULuaArrayHelper<AActor>
local UActorFilter_ExcludeActorClass = {}
