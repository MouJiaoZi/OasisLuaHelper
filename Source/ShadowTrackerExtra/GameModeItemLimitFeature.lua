---@meta

---@class FRevivalSaveItemLimitInfo
---@field ItemID number
---@field MinLimit number
---@field Ratio_Min number
---@field Ratio_Max number
FRevivalSaveItemLimitInfo = {}


---@class FRevivalSaveItemLimitInfoCollection
---@field RevivalSaveItemLimitList ULuaArrayHelper<FRevivalSaveItemLimitInfo>
FRevivalSaveItemLimitInfoCollection = {}


---@class FDeadDropItemLimitInfo
---@field ItemID number
---@field MinDropLimit number
---@field DropRatio_Min number
---@field DropRatio_Max number
FDeadDropItemLimitInfo = {}


---@class FDeadDropItemLimitInfoCollection
---@field DeadDropItemLimitList ULuaArrayHelper<FDeadDropItemLimitInfo>
FDeadDropItemLimitInfoCollection = {}


---@class FPickupItemLimitInfo
---@field ItemID number
---@field MaxPickupLimit number
---@field ExceedLimitTipID number
FPickupItemLimitInfo = {}


---@class FPickupItemListLimitInfo
---@field ItemIDList ULuaArrayHelper<number>
---@field MaxPickupLimit number
---@field ExceedLimitTipID number
FPickupItemListLimitInfo = {}


---@class FPickupItemModeLimitInfo
---@field LimitedItemID number
---@field ReplaceToItemID number
FPickupItemModeLimitInfo = {}


---@class FPickupItemLimitInfoCollection
---@field bIsShowExceedLimitTip boolean
---@field PickupItemLimitList ULuaArrayHelper<FPickupItemLimitInfo>
---@field PickupItemListLimitList ULuaArrayHelper<FPickupItemListLimitInfo>
---@field PickupModeLimitedInfo ULuaArrayHelper<FPickupItemModeLimitInfo>
FPickupItemLimitInfoCollection = {}
