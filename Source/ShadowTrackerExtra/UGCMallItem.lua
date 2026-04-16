---@meta

---@class FUGCMallItemData
---@field TypeSpecificID number
FUGCMallItemData = {}


---@class FUGCMallItemType
---@field Type number
---@field SubType number
FUGCMallItemType = {}


---@class UUGCMallItemWrapper: UObject, IItemInterface
local UUGCMallItemWrapper = {}

---@param MallItemData FUGCMallItemData
function UUGCMallItemWrapper:SetItemData(MallItemData) end
