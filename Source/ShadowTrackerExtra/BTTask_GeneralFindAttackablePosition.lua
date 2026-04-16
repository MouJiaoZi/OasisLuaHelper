---@meta

---@class FGeneralRandLocationRetryRule
---@field AngleRangeMin number
---@field AngleRangeMax number
---@field ScanStep number
FGeneralRandLocationRetryRule = {}


---@class UBTTask_GeneralFindAttackablePosition: UBTTaskNode
---@field BBKeyTargetEnemy any
---@field BBKeyFoundAttackablePosition any
---@field bReachableTest number
---@field bUseNavSystem number
---@field MaxIterations number
---@field retryRules ULuaArrayHelper<FGeneralRandLocationRetryRule>
---@field MaxAttackableRadius number
---@field ScanMinOuterCircleRadius number
---@field ScanRingWidth number
---@field HeightTestOffset number
---@field bUseCapsuleTrace boolean
---@field TraceCapsuleScale number
---@field bOnlyLandscape boolean
local UBTTask_GeneralFindAttackablePosition = {}
