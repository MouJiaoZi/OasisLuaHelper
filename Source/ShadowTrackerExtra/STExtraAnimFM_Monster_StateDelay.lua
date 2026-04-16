---@meta

---@class USTExtraAnimFM_Monster_StateDelay: UAnimFunctionModule_ObjInstanceBP
---@field ToBattleDelayTime number
---@field ToIdleDelayTime number
---@field bIsInBattleWithDelay boolean
local USTExtraAnimFM_Monster_StateDelay = {}

---@param AnimInstance UAnimInstanceBase
---@return boolean
function USTExtraAnimFM_Monster_StateDelay:GetIsInBattleBP(AnimInstance) end
