---@meta

---Condition基类
---@class UConditionEffect: ULogicEffectBase
---@field SubConditionEffectListWrapper_True FLogicEffectSequenceWrapper
---@field SubConditionEffectListWrapper_False FLogicEffectSequenceWrapper
local UConditionEffect = {}

---@return boolean
function UConditionEffect:IsOK() end
