---@meta

---@class FAvatarResourceGlobalStrongRefCacheItem
---@field RefCount number
FAvatarResourceGlobalStrongRefCacheItem = {}


---@class UAvatarResourceGlobalStrongRefCache: UAvatarManagementModBase
---@field AvatarResourceGlobalStrongRefCacheMap ULuaMapHelper<FSoftObjectPath, FAvatarResourceGlobalStrongRefCacheItem>
---@field SoftObjectPathLookupMap ULuaMapHelper<string, FSoftObjectPath>
---@field TickTimerInterval number
local UAvatarResourceGlobalStrongRefCache = {}

---@param InPath FSoftObjectPath
---@param InAvatarObject UObject
function UAvatarResourceGlobalStrongRefCache:TryAdd(InPath, InAvatarObject) end

---@param InPath FSoftObjectPath
function UAvatarResourceGlobalStrongRefCache:TryRemove(InPath) end

---@param Key string
---@param InPath FSoftObjectPath
function UAvatarResourceGlobalStrongRefCache:AddRelation(Key, InPath) end

---@param Key string
function UAvatarResourceGlobalStrongRefCache:TryRemoveRelation(Key) end

function UAvatarResourceGlobalStrongRefCache:RemoveRelationInternal() end

---@param Key string
---@return FSoftObjectPath
function UAvatarResourceGlobalStrongRefCache:FindRelation(Key) end

function UAvatarResourceGlobalStrongRefCache:DumpInfo() end

function UAvatarResourceGlobalStrongRefCache:RemoveResInternal() end
