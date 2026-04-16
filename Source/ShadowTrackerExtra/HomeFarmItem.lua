---@meta

---@class EFarmPlantState
---@field Empty number
---@field Seed number
---@field Seedling number
---@field Ripe number
EFarmPlantState = {}


---@class EFarmOperationType
---@field Plant number
---@field Watering number
---@field Weed number
---@field Harvest number
---@field DigOut number
---@field TakeSeed number
EFarmOperationType = {}


---@class FFarmItemData
---@field ItemID number
---@field GridID number
---@field CreateTime number
---@field WaterTimes number
---@field WeedTimes number
---@field NextWateringTime number
---@field NeedWeed boolean
FFarmItemData = {}


---@class FFarmGridData
---@field GridID number
---@field SeedId number
FFarmGridData = {}
