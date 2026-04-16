---@meta

---@class USTCustomMeshComponent: UStaticMeshComponent
---@field ObjectsForChecking ULuaArrayHelper<UObject>
---@field ObjectsNamesForIgnore ULuaArrayHelper<string>
---@field InitCollisionType ECollisionTraceFlag
local USTCustomMeshComponent = {}

---@param world UWorld
---@param tranx FTransform
---@return boolean
function USTCustomMeshComponent:CheckAnyOverlappingActor(world, tranx) end

---@param flag ECollisionTraceFlag
function USTCustomMeshComponent:SetCollisionTraceFlag(flag) end

---@param flag ECollisionTraceFlag
function USTCustomMeshComponent:RebuildBodyWithCollisionTraceFlag(flag) end
