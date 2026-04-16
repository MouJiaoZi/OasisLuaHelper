---@meta

---Structure for animated Actor objects.
---@class FLevelSequenceObject
---@field ObjectOrOwner TLazyObjectPtr<UObject> @The object or the owner of the object being possessed.
---@field ComponentName string @Optional name of an ActorComponent.
---@field CachedComponent UObject @Cached pointer to the Actor component (only if ComponentName is set).
FLevelSequenceObject = {}
