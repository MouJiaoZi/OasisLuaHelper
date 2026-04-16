---@meta

---@class FDropItemStrategyBase
---@field DropItemListGeneratorSelector FDropItemListGeneratorSelector
---@field DropItemPositionGeneratorSelector FDropItemPositionGeneratorSelector
---@field DropItemEntityGeneratorSelector FDropItemEntityGeneratorSelector
---@field DropTraceMethodSelector FDropTraceMethodSelector
---@field DropItemPerformanceSelector FDropItemPerformanceSelector
FDropItemStrategyBase = {}


---@class FDropItemStrategy_Defaults
---@field bReverseOrderDrop boolean
FDropItemStrategy_Defaults = {}


---@class FDropItemStrategy_CustomFunction
FDropItemStrategy_CustomFunction = {}


---@class FDropItemStrategySelector
---@field StrategyType EDropItemStrategyType
---@field DropItemStrategy_Defaults FDropItemStrategy_Defaults
FDropItemStrategySelector = {}
