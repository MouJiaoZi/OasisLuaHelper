---@meta

---@class FSTVehicleWheelDust
---@field ContactSurface EPhysicalSurface
---@field MoveFx UParticleSystem
---@field SlipFx UParticleSystem
---@field HubFx UParticleSystem
---@field MinSpeed number
FSTVehicleWheelDust = {}


---@class USTVehicleWheelDustConfig: UDataAsset
---@field WheelDusts ULuaArrayHelper<FSTVehicleWheelDust>
local USTVehicleWheelDustConfig = {}
