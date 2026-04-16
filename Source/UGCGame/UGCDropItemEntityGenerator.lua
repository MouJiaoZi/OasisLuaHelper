---@meta

---@class FUGCItemEntityGeneratorBase
---@field bNeedPerformance boolean
FUGCItemEntityGeneratorBase = {}


---@class FUGCItemEntityGenerator_Wrapper
---@field WrapperItemLifeSpan number
FUGCItemEntityGenerator_Wrapper = {}


---@class FUGCItemEntityGenerator_BackPack
---@field PickupReason EBattleItemPickupReason
FUGCItemEntityGenerator_BackPack = {}


---@class FUGCItemEntityGenerator_TombBox
---@field CustomBoxName string
---@field TombBoxTemplate APlayerTombBox
---@field bApplyPickUpTrace boolean
---@field TombBoxItemLifeSpan number
---@field BoxType EPickUpBoxType
---@field PickUpItemFlowSourceType EPickUpItemFlowSourceType
---@field bIsOnlyKillerPick boolean
FUGCItemEntityGenerator_TombBox = {}


---@class FUGCDropItemEntityGeneratorSelector
---@field ItemEntityGenerator_Wrapper FUGCItemEntityGenerator_Wrapper
---@field ItemEntityGenerator_TombBox FUGCItemEntityGenerator_TombBox
FUGCDropItemEntityGeneratorSelector = {}
