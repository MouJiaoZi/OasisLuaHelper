---@meta

---@class FVehicleSupplyData
---@field VehicleType ESTExtraVehicleType
---@field fCurRecoverPencent number
---@field fCurSupplyCD number
---@field fSupplyEffectTime number
---@field fSupplyEffectMoveDisSquLimit number
FVehicleSupplyData = {}


---@class UVehicleSupplyRegionComponent: UVehicleNoEntryRegionComponent
---@field DefaultSupplyData FVehicleSupplyData
---@field SupplyDataArray ULuaArrayHelper<FVehicleSupplyData>
local UVehicleSupplyRegionComponent = {}
