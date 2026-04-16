---@meta

---@class UMobaCharFMObj_Accumulate: UAnimFunctionModule_ObjInstance
---@field bAccumulateAnimSeqChange boolean
---@field AccumulateAnimSeqChangeTimer number
---@field AccumulateAnimSeqChangeTimerCounter number
---@field AccumulateRealtime number
---@field bAccumulateRealTimeMax boolean
---@field AccumulateRate number
---@field bAccumulateRate boolean
---@field bAccumulateRateMax boolean
---@field bHasAccumulateRate boolean
---@field bBlendOutAccumulateRate boolean
---@field bShouldPlayAccumulateFireEndAnim boolean
---@field BlendInSpeed number
---@field BlendOutSpeed number
---@field BlendOutRealSpeed number
---@field BlendOutDelayTime number
---@field BlendOutDelayTime_Counter number
---@field CacheAccumulateRate number
local UMobaCharFMObj_Accumulate = {}

---@param NewState EFreshWeaponStateType
function UMobaCharFMObj_Accumulate:HandlePlayerWeaponStateChanged(NewState) end
