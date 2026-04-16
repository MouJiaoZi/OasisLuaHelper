---@meta

---@class AActorCacheMgr: AActor
---@field DataMap ULuaMapHelper<AActor, UActorCachePool>
local AActorCacheMgr = {}

---@param Type AActor
---@param Target AActor
---@return boolean
function AActorCacheMgr:AddToPool(Type, Target) end
