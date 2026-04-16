---@meta

---针对PVE玩法，特化出来的屏幕选取目标组件，主要目的是性能优化
---@class UTargetPickerEffect_ScreenAreaPVE: UTargetPickerEffect_ScreenArea
---@field StopCheckBlockWhenValidTargetNumThreshold number
---@field UseFixedOffectWithMassiveEntity boolean
---@field MassiveEntityLockPositionOffect FVector
---@field TempPickResultList ULuaArrayHelper<FTargetPickerEffectResultItem>
local UTargetPickerEffect_ScreenAreaPVE = {}
