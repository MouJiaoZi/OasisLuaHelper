---@meta

---@class FAggregatedCollision
---@field BodySetupName string
---@field Transforms ULuaArrayHelper<FTransform>
---@field BodyInstances ULuaArrayHelper<FBodyInstance>
FAggregatedCollision = {}


---@class UAggregatedCollisionComponent: UPrimitiveComponent
---@field AggregatedCollisions ULuaArrayHelper<FAggregatedCollision>
---@field SavedBodySetups ULuaArrayHelper<UBodySetup>
local UAggregatedCollisionComponent = {}
