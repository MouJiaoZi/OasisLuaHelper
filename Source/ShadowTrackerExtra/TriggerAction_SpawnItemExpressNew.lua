---@meta

---两种位置方式 1.直接在player附近随出位置点 2.提前设好spot点，找到离player最近的一个spot点，在此点上刷
---@class FSpawnItemExpressNewCfg
---@field DropHeight number
---@field bExpressItemNumCtrl boolean
---@field ExpressItemNumMin number
---@field ExpressItemNumMax number
---@field bExpressItemNumPerPlayerCtrl boolean
---@field ExpressItemNumPerPlayerTotal number
---@field ExpressItemNumPerPlayer number
---@field bSpawnExpressItemPerPlayerCD boolean
---@field SpawnExpressItemPerPlayerCD number
---@field bSupplementExpressItemCD boolean
---@field SupplementExpressItemCD number
---@field bAISpawnExpressItem boolean
FSpawnItemExpressNewCfg = {}


---@class UTriggerAction_SpawnItemExpressNew: UTriggerAction, ITriggerAction_SpawnItemInterface
---@field SpawnItemCfg FSpawnItemCfg
---@field SpawnItemExpressNewCfg FSpawnItemExpressNewCfg
---@field SpotDataSerialize FUAESpotDataSerialize
local UTriggerAction_SpawnItemExpressNew = {}
