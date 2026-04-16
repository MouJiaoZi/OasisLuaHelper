---@meta

---@class UUGCMVehicleHandle: UObject, IUGCVehicleInterface
---@field CacheProcess ULuaMapHelper<UClass, UUGCVehicleDamageToAliveProcess>
local UUGCMVehicleHandle = {}

---@param OtherActor AActor
function UUGCMVehicleHandle:FindDamageToAliveHandleClass(OtherActor) end
