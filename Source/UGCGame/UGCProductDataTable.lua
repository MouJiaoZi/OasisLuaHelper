---@meta

---商品类型
---@class EProductType
---@field Currency number @货币
---@field Item number @物品
EProductType = {}


---购买商品所需货币类型
---@class ECurrencyType
---@field OasisCoin number @绿洲币
---@field ActivityCoin number @启元币
---@field OtherCoin number @其他货币
ECurrencyType = {}


---商品售卖状态
---@class EAvailableForSale
---@field NotForSale number @不售卖
---@field PermanentSale number @永久售卖
---@field LimitedTimeSale number @限时售卖
EAvailableForSale = {}


---商品限购状态
---@class ELimitType
---@field NotLimited number @不限购
---@field DailyLimit number @每日限购
---@field WeeklyLimit number @每周限购
---@field PermanentLimit number @永久限购
ELimitType = {}


---商品售卖的商城种类
---@class EStoreId
---@field InGame number @战斗内
---@field Lobby number @玩法详情页
EStoreId = {}


---@class FUGCProductData
---@field ProductId number
---@field ProductType EProductType
---@field ProductName string
---@field ItemID number
---@field AvailableForSale EAvailableForSale
---@field CurrencyType ECurrencyType
---@field SellingPrice number
---@field LimitType ELimitType
---@field PurchaseLimit number
---@field ListingTimeString string
---@field DelistingTimeString string
---@field StoreId EStoreId
---@field SortPriority number
---@field ItemNum number
---@field CostID number
---@field Discount number
---@field DiscountStartTime FDateTime
---@field DiscountEndTime FDateTime
---@field TabID number
FUGCProductData = {}


---@class UUGCProductDataTable: UUAEDataTable
local UUGCProductDataTable = {}
