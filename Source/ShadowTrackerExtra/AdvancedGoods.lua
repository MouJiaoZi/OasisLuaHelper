---@meta

---@class FTestActivityLink
---@field LinkName string
---@field LinkConditionFunctionName string
---@field bNotCondition boolean
---@field LinkStateIndex number
---@field LinkStateName string
FTestActivityLink = {}


---@class FTestActivityState
---@field StateName string
---@field StateEnterFunctionName string
---@field StateLeaveFunctionName string
---@field StateIndex number
---@field LinkArray ULuaArrayHelper<FTestActivityLink>
---@field bStateMachineEntry boolean
---@field bNeedStateSequence boolean
---@field StateSequenceName string
---@field SequenceLength number
FTestActivityState = {}


---@class AAdvancedGoods: AActor
---@field bEnableLuaRepTest boolean
---@field TestRepInterval number
---@field TestRepArrrayCount number
---@field bNeedCheck boolean
---@field bStopChangeVal boolean
---@field bSubToEmpty boolean
---@field TestRepData ULuaArrayHelper<FTestActivityState>
---@field TestRepDataPool ULuaArrayHelper<FTestActivityLink>
local AAdvancedGoods = {}

function AAdvancedGoods:TestLuaReplicate() end

function AAdvancedGoods:CheckLuaReplicate() end

---@return boolean
function AAdvancedGoods:IsLuaReplicateSame() end

function AAdvancedGoods:OnRep_TestRepData() end

---@param bStop boolean
function AAdvancedGoods:RequestChangeState(bStop) end
