---@meta

---@class EActorCacheID
---@field ACID_Bullet number
---@field ACID_BulletImpactEffect number
EActorCacheID = {}


---@class USTEActorCacheComponent: UActorComponent
---@field PoolSizeLimit_Bullet number
---@field PoolSizeLimit_BulletImpactEffect number
local USTEActorCacheComponent = {}

---@param ID EActorCacheID
---@param Target ASTECachableActor
---@return boolean
function USTEActorCacheComponent:PushActorToPool(ID, Target) end
