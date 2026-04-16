---@meta

---@class EHomeItemRepType
---@field Insert number
---@field Update number
---@field Delete number
---@field Expire number
---@field Replicated number
EHomeItemRepType = {}


---@class FHomeItemID
---@field SpecificID number
---@field InstanceID number
FHomeItemID = {}


---@class FHomeItemUpdateUseCountParam
---@field ID FHomeItemID
---@field UseCount number
FHomeItemUpdateUseCountParam = {}


---@class FHomeItemType
---@field Type number
---@field SubType number
FHomeItemType = {}


---@class FHomeItemData
---@field ID FHomeItemID
---@field Count number
---@field UseCount number
---@field AddTime number
---@field ExpireTime number
---@field IsExpired boolean
---@field IsNew boolean
FHomeItemData = {}


---@class FNetRepHomeItemData
---@field ItemData FHomeItemData
---@field ItemRepType EHomeItemRepType
FNetRepHomeItemData = {}


---@class UHomeItemWrapper: UObject, IItemInterface
---@field ItemRepType EHomeItemRepType
local UHomeItemWrapper = {}

---@return number
function UHomeItemWrapper:GetItemInstanceId() end

---@return number
function UHomeItemWrapper:GetItemUseCount() end

---@return number
function UHomeItemWrapper:GetItemAddTime() end

---@return number
function UHomeItemWrapper:GetItemExpireTime() end

---@return boolean
function UHomeItemWrapper:GetItemIsExpired() end

---@return boolean
function UHomeItemWrapper:GetItemIsNew() end

---@return number
function UHomeItemWrapper:GetItemMallId() end

---@return number
function UHomeItemWrapper:GetItemPrice() end

---@return boolean
function UHomeItemWrapper:GetIsShowInWarehouse() end

---@param ItemData FHomeItemData
function UHomeItemWrapper:SetItemData(ItemData) end
