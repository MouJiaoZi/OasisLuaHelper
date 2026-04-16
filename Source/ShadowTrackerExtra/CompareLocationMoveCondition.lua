---@meta

---@class FCompareLocationMoveConditionParam
---@field bMoveEveryFrame boolean
---@field bRecordLocation boolean
---@field MoveDistanceSq number
---@field FirstHitResult ECompareConditionResult
---@field GreaterResult ECompareConditionResult
---@field LessEqualResult ECompareConditionResult
---@field LcastLocation FVector
FCompareLocationMoveConditionParam = {}


---@class UCompareLocationMoveCondition: UCompareBaseCondition
---@field bMoveEveryFrame boolean
---@field bRecordLocation boolean
---@field MoveDistanceSq number
---@field FirstHitResult ECompareConditionResult
---@field GreaterResult ECompareConditionResult
---@field LessEqualResult ECompareConditionResult
---@field LcastLocation FVector
---@field ParamList ULuaArrayHelper<FCompareLocationMoveConditionParam>
local UCompareLocationMoveCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareLocationMoveCondition:InitCompareNode(OwnerCom) end

function UCompareLocationMoveCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareLocationMoveCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareLocationMoveCondition:GetConditionInfo(OutString) end

function UCompareLocationMoveCondition:ResetCondition() end

---@param InNode UCompareBaseNode
---@return number
function UCompareLocationMoveCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareLocationMoveCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareLocationMoveCondition:ModifyNodeParam(InParamIndex) end

function UCompareLocationMoveCondition:ResetParamList() end
