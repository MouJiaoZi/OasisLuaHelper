---@meta

---@class EVirtualItemRepType
---@field Insert number
---@field Update number
---@field Delete number
---@field Expire number
---@field Replicated number
EVirtualItemRepType = {}


---@class FVirtualItemBaseData
---@field DefineID FItemDefineID
---@field Count number
---@field ExpireTime number
---@field IsNew number
FVirtualItemBaseData = {}


---@class FVirtualItemData
FVirtualItemData = {}


---@class FNetRepVirtualItemData
---@field ItemData FVirtualItemData
---@field ItemRepType EVirtualItemRepType
FNetRepVirtualItemData = {}


---@class UVirtualItemFuncBase: UObject, IItemFuncInterface
local UVirtualItemFuncBase = {}

---@param ItemWrapper IItemInterface
---@return boolean
function UVirtualItemFuncBase:HandleUseImpl(ItemWrapper) end

---@return boolean
function UVirtualItemFuncBase:IsUseOnServerImpl() end


---@class UVirtualItemWrapper: UObject, IItemInterface
---@field mItemData FVirtualItemData
local UVirtualItemWrapper = {}

function UVirtualItemWrapper:MarkItemNewFlagRemoved() end

---@param ItemData FVirtualItemData
function UVirtualItemWrapper:SetItemData(ItemData) end


---@class UUGCVirtualItemWrapper: UObject, IItemInterface
---@field mItemData FVirtualItemData
local UUGCVirtualItemWrapper = {}

---@return boolean
function UUGCVirtualItemWrapper:GetItemIsNew() end

---@return number
function UUGCVirtualItemWrapper:GetItemQuality() end

---@return number
function UUGCVirtualItemWrapper:GetItemExpireTime() end

function UUGCVirtualItemWrapper:MarkItemNewFlagRemoved() end

---@param ItemData FVirtualItemData
function UUGCVirtualItemWrapper:SetItemData(ItemData) end
