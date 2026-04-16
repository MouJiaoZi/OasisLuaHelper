---@meta

---@class FPenetrateSurfaceResult
---@field eSurface EPhysicalSurface
---@field InPoint FVector
---@field OutPoint FVector
---@field Normal FVector
---@field Tags ULuaArrayHelper<string>
FPenetrateSurfaceResult = {}


---@class UPenetrationdamageComponent: UActorComponent
---@field PenetrateItemCfg ULuaMapHelper<EPhysicalSurface, number>
---@field ForceBlockedActorTags ULuaArrayHelper<string>
---@field ObjectTypesCanBlockDamage ULuaArrayHelper<EObjectTypeQuery>
local UPenetrationdamageComponent = {}

---@param OriPoint FVector
---@param Victim AActor
---@return boolean
function UPenetrationdamageComponent:CanBlockDamage(OriPoint, Victim) end
