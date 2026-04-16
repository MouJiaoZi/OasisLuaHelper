---@meta

---@class FPlayerGrowthRow
---@field Level number
---@field LevelUpExp number
---@field BackpackCapacityGrowth number
---@field SpeedGrowth number
---@field DamageGrowth number
FPlayerGrowthRow = {}


---@class UPVEGrowUpComponent: UActorComponent
---@field PlayerGrowthData ULuaMapHelper<number, FPlayerGrowthRow>
---@field DataTableName string
local UPVEGrowUpComponent = {}

---@param CurLevel number
function UPVEGrowUpComponent:ClientNotifyLevelUp(CurLevel) end
