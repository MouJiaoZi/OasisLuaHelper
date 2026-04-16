---@meta

---@class FAvatarDynamicCacheInfo
---@field CacheTriggerObj UObject
---@field CacheCounter number
---@field DelayItemLoadID number
---@field HandleCacheLoadID number
---@field RenderResCacheLoadID number
---@field DelayLoadItemList ULuaArrayHelper<number>
---@field DynamicCacheHandleMap ULuaMapHelper<number, UObject>
---@field DynamicCacheRenderResMap ULuaMapHelper<FSoftObjectPath, UObject>
FAvatarDynamicCacheInfo = {}


---@class UAvatarDynamicCacheStrategy: UObject
local UAvatarDynamicCacheStrategy = {}

---@param InAvatarCompObj UObject
---@return boolean
function UAvatarDynamicCacheStrategy:IsStrategyApplicable(InAvatarCompObj) end

---@param InAvatarCompObj UObject
---@param InSlotID number
---@param InItemID number
---@param InSyncDataRepCounter number
---@return boolean
function UAvatarDynamicCacheStrategy:TryDelayLoadItemHandle(InAvatarCompObj, InSlotID, InItemID, InSyncDataRepCounter) end

---@param InAvatarCompObj UObject
---@param InItemResObj UObject
---@param InAsyncLoadID number
---@return boolean
function UAvatarDynamicCacheStrategy:TryCacheLoadedHandle(InAvatarCompObj, InItemResObj, InAsyncLoadID) end

---@param InAvatarCompObj UObject
---@param InAssetSoftPathList ULuaArrayHelper<FSoftObjectPath>
---@param InAsyncLoadID number
---@return boolean
function UAvatarDynamicCacheStrategy:TryCacheLoadedResourse(InAvatarCompObj, InAssetSoftPathList, InAsyncLoadID) end

---@param InAvatarCompObj UObject
---@param InAsyncLoadID number
---@return boolean
function UAvatarDynamicCacheStrategy:TryTriggerPostResourceLoadedAction(InAvatarCompObj, InAsyncLoadID) end

---@param InAvatarCompObj UObject
function UAvatarDynamicCacheStrategy:TryReleaseCacheStrategy(InAvatarCompObj) end

function UAvatarDynamicCacheStrategy:ReleaseCache() end
