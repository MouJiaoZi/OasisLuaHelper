---@meta

---@class FCustomShopListInfo
---@field ItemID number
---@field CoinTypeID number
---@field SalePrice number
---@field StartTime string
---@field EndTime string
---@field Category number
---@field Weight number
---@field IsAddBackpack number
---@field RecyclePrice number
---@field TotalStockCount number
---@field ShopLevel number
---@field LevelOneStockCount number
---@field LevelTwoStockCount number
---@field LevelThreeStockCount number
---@field KitItemID number
---@field KitItemCount number
FCustomShopListInfo = {}


---@class FSimpleShopListInfo
---@field ItemID number
---@field CoinTypeID number
---@field SalePrice number
---@field StartTime string
---@field EndTime string
---@field Category number
---@field Weight number
---@field IsAddBackpack number
FSimpleShopListInfo = {}


---@class UBattleCustomShopComponent: UActorComponent
---@field CoinTypeID number
---@field CompShopLevel number
---@field IsCheckTransaction boolean
---@field ShowUIListName string
---@field IsShowShopByWeight boolean
---@field IsItemShopOpen boolean
---@field LuaCommonItemShopTableName string
---@field IsWeaponryShopOpen boolean
---@field LuaWeaponryShopTableName string
---@field IsRandomShopOpen boolean
---@field LuaRandomItemShopTableName string
---@field RandomItemPrice number
---@field IsVehicleShopOpen boolean
---@field LuaVehicleShopTableName string
---@field VehiclePrice number
---@field VehicleID number
local UBattleCustomShopComponent = {}
