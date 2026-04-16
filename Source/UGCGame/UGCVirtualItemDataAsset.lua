---@meta

---@class FUGCVirtualItemDataAssetInfo
---@field ItemID number
---@field ItemName string
---@field ItemType number
---@field ItemSubType number
---@field MaxCount number
---@field WeightforOrder number
---@field BigWorldBackpackTab string
---@field ItemBigIcon_n UTexture
---@field ItemSmallIcon_n UTexture
---@field ItemDesc string
---@field ItemQuality number
---@field TimeLimitType number
---@field ExTime string
---@field ValidHours number
FUGCVirtualItemDataAssetInfo = {}


---@class UUGCVirtualItemDataAsset: UUGCBigWorldTableDataAsset
---@field VirtualItems ULuaMapHelper<number, FUGCVirtualItemDataAssetInfo>
local UUGCVirtualItemDataAsset = {}
