---@meta

---@class FSpawnVehicleConfig
---@field VehicleSpawnID number
---@field OffsetLocation FVector
---@field AutoEnterVehicle boolean
FSpawnVehicleConfig = {}


---@class UUAESkillAction_CallAVehicle: UUAESkillAction_Activities
---@field SpawnVehicleConfig FSpawnVehicleConfig
---@field bNeedConsumeItem boolean
---@field bCreateUnmannedVehicle boolean
---@field ConsumeItemID number
---@field ConsumeItemType number
---@field ConsumeItemCount number
---@field ConsumeFuncName string
---@field DoAirLineCheck boolean
---@field CheckSphereRadius number
---@field CheckAirLineDistance number
---@field CheckFailTipID number
local UUAESkillAction_CallAVehicle = {}
