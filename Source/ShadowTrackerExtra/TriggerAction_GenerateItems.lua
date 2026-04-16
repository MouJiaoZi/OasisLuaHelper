---@meta

---@class FTrigger_GenerateItemInfo
---@field ItemID number
---@field Count number
FTrigger_GenerateItemInfo = {}


---@class FTrigger_GenerateCustomItemInfo
---@field ItemHandleClass UItemHandleBase
---@field Count number
FTrigger_GenerateCustomItemInfo = {}


---@class FTrigger_GenerateItemsConfig
---@field Weight number
---@field GenerateItemList ULuaArrayHelper<FTrigger_GenerateItemInfo>
---@field GenerateCustomItemList ULuaArrayHelper<FTrigger_GenerateCustomItemInfo>
FTrigger_GenerateItemsConfig = {}


---@class UTriggerAction_GenerateItems: UTriggerAction
---@field GenerateItemsConfigList ULuaArrayHelper<FTrigger_GenerateItemsConfig>
local UTriggerAction_GenerateItems = {}
