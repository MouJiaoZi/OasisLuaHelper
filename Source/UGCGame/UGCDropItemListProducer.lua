---@meta

---@class FUGCDropItemListGeneratorBase
---@field EntityType EUGCGenerateItemEntityType
FUGCDropItemListGeneratorBase = {}


---@class FUGCDropItemListGenerator_ItemTable
---@field ProduceID number
---@field ProduceGroupID number
---@field CachedConfig FCommonDropItemConfig
FUGCDropItemListGenerator_ItemTable = {}


---@class FUGCDropItemListGenerator_BluePrint
---@field CachedConfig ULuaArrayHelper<FUGCGenerateDropItemInfo>
FUGCDropItemListGenerator_BluePrint = {}


---@class FUGCDropItemListGeneratorSelector
---@field UGCSelectType EUGCDropItemListGeneratorType
---@field DropItemListGenerator_ItemTable ULuaArrayHelper<FUGCDropItemListGenerator_ItemTable>
---@field DropItemListGenerator_BluePrint ULuaArrayHelper<FUGCDropItemListGenerator_BluePrint>
FUGCDropItemListGeneratorSelector = {}
