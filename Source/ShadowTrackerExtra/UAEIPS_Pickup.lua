---@meta

---@class FUAEPickupItemSpotProperty
---@field SpotType EUAESpotType
---@field SpotPercentMin number
---@field SpotPercentMax number
---@field SpotPercentDot number
---@field PerSpotMin number
---@field PerSpotMax number
---@field WeightsPerValue ULuaArrayHelper<FUAESpotWeight>
---@field WeightsPerCategory ULuaArrayHelper<FUAESpotWeight>
FUAEPickupItemSpotProperty = {}


---@class FUAEPickupGroupPropertyArray
---@field PickupSpotProperties ULuaArrayHelper<FUAEPickupItemSpotProperty>
FUAEPickupGroupPropertyArray = {}


---@class FPickupGenerateSpawnData
---@field KeyID number
---@field ValueFilter string
---@field CategoryFilter string
---@field ItemPath string
---@field Count number
---@field Weight number
---@field ItemTogetherPath string
---@field StackCount number
---@field CountMin number
---@field CountMax number
FPickupGenerateSpawnData = {}


---@class UUAEIPS_Pickup: UUAEProductionStrategy
---@field PickupSpotGroupProperties ULuaArrayHelper<FUAEPickupGroupPropertyArray>
local UUAEIPS_Pickup = {}
