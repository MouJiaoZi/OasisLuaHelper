---@meta

---@class EDropType
---@field Probability number @概率
---@field Weight number @权重
EDropType = {}


---@class FUGCDropItemData
---@field Parameter number
---@field ItemID number
---@field ItemNumMin number
---@field ItemNumMax number
FUGCDropItemData = {}


---@class FUGCDropData
---@field ID number
---@field Description string
---@field Type EDropType
---@field RollNum number
---@field DropItemInfo ULuaArrayHelper<FUGCDropItemData>
FUGCDropData = {}


---@class UUGCDropDataTable: UUAEDataTable
local UUGCDropDataTable = {}
