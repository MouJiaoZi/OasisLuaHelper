---@meta

---@class FComponentPoolCacheList
---@field PoolList ULuaArrayHelper<USceneComponent>
FComponentPoolCacheList = {}


---@class AComponentPoolActor: AActor
---@field PoolMap ULuaMapHelper<number, FComponentPoolCacheList>
---@field PoolCount number
local AComponentPoolActor = {}

---@param InPoolCount number
function AComponentPoolActor:InitPoolActor(InPoolCount) end

---@param InComponent USceneComponent
---@return boolean
function AComponentPoolActor:AddToPool(InComponent) end
