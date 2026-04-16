---@meta

---@class UAvatarDynamicCacheDefaultStrategy: UAvatarDynamicCacheStrategy
---@field CacheTargetObj UObject
---@field DynamicCacheHandleMap ULuaMapHelper<number, UObject>
---@field DynamicCacheRenderResMap ULuaMapHelper<FSoftObjectPath, UObject>
local UAvatarDynamicCacheDefaultStrategy = {}

---@param InAvatarCompObj UObject
function UAvatarDynamicCacheDefaultStrategy:CheckUniqueCacheTrigger(InAvatarCompObj) end
