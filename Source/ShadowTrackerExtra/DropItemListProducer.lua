---@meta

---@class FDropItemListGeneratorBase
FDropItemListGeneratorBase = {}


---@class FDropItemListGenerator_ItemTable
---@field DropConfigTablePath UUAEDataTable
---@field DropRuleTablePath UUAEDataTable
---@field RankDropTablePath UUAEDataTable
---@field ProduceID number
---@field IDIPReplaceID number
---@field UpRankProbabilityItems ULuaMapHelper<number, number>
---@field CachedConfig FCommonDropItemConfig
---@field CustomBoxName string
---@field CachedPlayerRank number
FDropItemListGenerator_ItemTable = {}


---@class FDropItemListGenerator_BluePrint
---@field CachedConfig FCommonDropItemConfig
FDropItemListGenerator_BluePrint = {}


---@class FDILG_FunctionName
---@field CustomFunctionName string
FDILG_FunctionName = {}


---@class FDropItemListGenerator_CustomFunction
---@field CustomFunction FDILG_FunctionName
FDropItemListGenerator_CustomFunction = {}


---@class FDropItemListGenerator_Escape_ItemTable
---@field DropLimitItemSpeKey number
FDropItemListGenerator_Escape_ItemTable = {}


---@class FDropItemListGeneratorSelector
---@field SelectType EDropItemListGeneratorType
---@field DropItemListGenerator_ItemTable FDropItemListGenerator_ItemTable
---@field DropItemListGenerator_BluePrint FDropItemListGenerator_BluePrint
---@field DropItemListGenerator_CustomFunction FDropItemListGenerator_CustomFunction
---@field DropItemListGenerator_Escape_ItemTable FDropItemListGenerator_Escape_ItemTable
---@field GeneratorBase_Invalid FDropItemListGeneratorBase
FDropItemListGeneratorSelector = {}
