---@meta

---@class FCompareFunctionConditionParam
---@field FunctionName string
---@field CacheFunction UFunction
---@field FunctionReturnData ULuaArrayHelper<number>
---@field ChildConditionParam FComparePropertyConditionParam
FCompareFunctionConditionParam = {}


---@class UCompareFunctionCondition: UComparePropertyCondition
---@field FunctionName string
---@field FunctionParamList ULuaArrayHelper<FCompareFunctionConditionParam>
local UCompareFunctionCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareFunctionCondition:InitCompareNode(OwnerCom) end

function UCompareFunctionCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareFunctionCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareFunctionCondition:GetConditionInfo(OutString) end

---@return boolean
function UCompareFunctionCondition:SetOriginProperty() end

---@return boolean
function UCompareFunctionCondition:SetDestinProperty() end

---@param InOrigin boolean
function UCompareFunctionCondition:SetPropertyValue(InOrigin) end

---@param InNode UCompareBaseNode
---@return number
function UCompareFunctionCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareFunctionCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareFunctionCondition:ModifyNodeParam(InParamIndex) end

function UCompareFunctionCondition:ResetParamList() end
