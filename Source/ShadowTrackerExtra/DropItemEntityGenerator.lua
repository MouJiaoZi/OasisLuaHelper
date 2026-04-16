---@meta

---@class FItemEntityGeneratorBase
---@field bNeedPerformance boolean
FItemEntityGeneratorBase = {}


---@class FItemEntityGenerator_Wrapper
---@field bApplyPickUpTrace boolean
---@field IsForceNotTrainingMode boolean
---@field WrapperItemLifeSpan number
---@field WrapperNetCullDistanceSquared number
---@field PickUpItemFlowSourceType EPickUpItemFlowSourceType
FItemEntityGenerator_Wrapper = {}


---@class FItemEntityGenerator_TombBox
---@field TombBoxTemplate APlayerTombBox
---@field bApplyPickUpTrace boolean
---@field TombBoxItemLifeSpan number
---@field BoxType EPickUpBoxType
---@field PickUpItemFlowSourceType EPickUpItemFlowSourceType
---@field bIsOnlyKillerPick boolean
FItemEntityGenerator_TombBox = {}


---@class FItemEntityGenerator_TresureBox
---@field TresureBoxTemplate APlayerTombBox
---@field bApplyPickUpTrace boolean
---@field ShouldTreasureBoxHidden boolean
---@field TresureBoxItemLifeSpan number
---@field BoxType EPickUpBoxType
---@field bAddToNewRegion boolean
---@field PickUpItemFlowSourceType EPickUpItemFlowSourceType
FItemEntityGenerator_TresureBox = {}


---@class FItemEntityGenerator_BackPack
---@field ItemValidDuration ULuaMapHelper<number, number>
---@field Reason number
---@field PickupReason EBattleItemPickupReason
---@field PickUpItemFlowSourceType EPickUpItemFlowSourceType
FItemEntityGenerator_BackPack = {}


---@class FItemEntityGenerator_CustomFunction
FItemEntityGenerator_CustomFunction = {}


---@class FDropItemEntityGeneratorSelector
---@field ItemEntityGenerator_Wrapper FItemEntityGenerator_Wrapper
---@field ItemEntityGenerator_TombBox FItemEntityGenerator_TombBox
---@field ItemEntityGenerator_TresureBox FItemEntityGenerator_TresureBox
---@field ItemEntityGenerator_BackPack FItemEntityGenerator_BackPack
---@field ItemEntityGenerator_CustomFunction FItemEntityGenerator_CustomFunction
---@field EntityGenerator_Invalid FItemEntityGeneratorBase
FDropItemEntityGeneratorSelector = {}
