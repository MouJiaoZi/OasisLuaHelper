---@meta

---@class FHomeMallItem
---@field ItemMallID number
---@field ItemID number
---@field ItemPrice number
FHomeMallItem = {}


---@class UHomeMallManager: UObject, IItemSourceInterface
---@field ItemMap ULuaMapHelper<FHomeItemID, IItemInterface>
---@field ItemTypeMap ULuaMapHelper<FHomeItemType, FItemArray>
---@field HomeMallItemMap ULuaMapHelper<number, FHomeMallItem>
local UHomeMallManager = {}

function UHomeMallManager:DeleteInstance() end

---@param HomeMallItems ULuaArrayHelper<FHomeMallItem>
function UHomeMallManager:UpdateMallItem(HomeMallItems) end
