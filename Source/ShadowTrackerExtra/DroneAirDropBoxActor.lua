---@meta

---@class FItemsDroneBoxDataAssetConfigGroup
---@field GroupName string
---@field Weight number
---@field ConfigItems ULuaArrayHelper<FAirDropBoxGenerateWrapperItemData>
FItemsDroneBoxDataAssetConfigGroup = {}


---@class ADroneAirDropBoxActor: AAirDropBoxActor
---@field ConfigAirDropDatas ULuaArrayHelper<FItemsDroneBoxDataAssetConfigGroup>
---@field IsPutDown boolean
---@field DroppingAcceleration number
local ADroneAirDropBoxActor = {}

function ADroneAirDropBoxActor:RandomConfigAirDropData() end
