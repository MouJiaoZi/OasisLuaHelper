---@meta

---@class EDropGroupType
---@field Probability number @概率
---@field Weight number @权重
EDropGroupType = {}


---@class FUGCDropGroupItemData
---@field Parameter number
---@field DropID number
FUGCDropGroupItemData = {}


---@class FUGCDropGroupData
---@field DropGroupID number
---@field Description string
---@field Type EDropGroupType
---@field DropGroupItemInfo ULuaArrayHelper<FUGCDropGroupItemData>
FUGCDropGroupData = {}


---@class UUGCDropGroupDataTable: UUAEDataTable
local UUGCDropGroupDataTable = {}
