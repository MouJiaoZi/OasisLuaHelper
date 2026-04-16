---@meta

---@class EUGCCommonItemRepType
---@field Insert number
---@field Update number
---@field Delete number
---@field UpdateReplicated number
EUGCCommonItemRepType = {}


---@class FUGCCommonItemID
---@field SpecificID number
---@field InstanceID number
FUGCCommonItemID = {}


---@class FUGCCommonItemType
---@field Type number
---@field SubType number
FUGCCommonItemType = {}


---@class FUGCCommonItemData
---@field ID FUGCCommonItemID
---@field Count number
---@field AddTime number
---@field ExpireTime number
---@field IsExpired boolean
---@field IsNew number
---@field SourceTableName string
FUGCCommonItemData = {}


---@class FNetRepUGCCommonItemData
---@field ItemData FUGCCommonItemData
---@field ItemRepType EUGCCommonItemRepType
---@field ItemUpdateStamp number
FNetRepUGCCommonItemData = {}


---@class UUGCCommonItemWrapper: UObject, IItemInterface
local UUGCCommonItemWrapper = {}

---@return number
function UUGCCommonItemWrapper:GetItemInstanceId() end

---@return number
function UUGCCommonItemWrapper:GetItemAddTime() end

---@return number
function UUGCCommonItemWrapper:GetItemExpireTime() end

---@return boolean
function UUGCCommonItemWrapper:GetItemIsExpired() end

---@return boolean
function UUGCCommonItemWrapper:GetItemIsNew() end

---@return number
function UUGCCommonItemWrapper:GetItemWeight() end

---@param ItemData FUGCCommonItemData
function UUGCCommonItemWrapper:SetItemData(ItemData) end
