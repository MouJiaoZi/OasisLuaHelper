---@meta

---@class FHomeMallItemData
---@field TypeSpecificID number
FHomeMallItemData = {}


---@class FHomeMallItemType
---@field Type number
---@field SubType number
FHomeMallItemType = {}


---@class UHomeMallItemWrapper: UObject, IItemInterface
local UHomeMallItemWrapper = {}

---@param MallItemData FHomeMallItemData
function UHomeMallItemWrapper:SetItemData(MallItemData) end
