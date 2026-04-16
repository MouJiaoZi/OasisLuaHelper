---@meta

---@class ASTECachableActor: AActor
local ASTECachableActor = {}

---@param Pool USTEActorCacheComponent
function ASTECachableActor:RegisterCachePool(Pool) end

---@param ID EActorCacheID
---@return boolean
function ASTECachableActor:PushToPool(ID) end
