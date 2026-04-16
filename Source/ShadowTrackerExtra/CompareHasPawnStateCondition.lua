---@meta

---@class FCompareHasPawnStateConditionParam
---@field bHasAnyState boolean
---@field PawnStateList ULuaArrayHelper<EPawnState>
FCompareHasPawnStateConditionParam = {}


---@class UCompareHasPawnStateCondition: UCompareBaseCondition
---@field bHasAnyState boolean
---@field PawnStateList ULuaArrayHelper<EPawnState>
---@field ParamList ULuaArrayHelper<FCompareHasPawnStateConditionParam>
local UCompareHasPawnStateCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareHasPawnStateCondition:InitCompareNode(OwnerCom) end

function UCompareHasPawnStateCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareHasPawnStateCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareHasPawnStateCondition:GetConditionInfo(OutString) end

---@param InNode UCompareBaseNode
---@return number
function UCompareHasPawnStateCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareHasPawnStateCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareHasPawnStateCondition:ModifyNodeParam(InParamIndex) end

function UCompareHasPawnStateCondition:ResetParamList() end
