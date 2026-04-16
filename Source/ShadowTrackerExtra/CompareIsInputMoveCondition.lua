---@meta

---@class FCompareIsInputMoveConditionParam
---@field ForwardRateTolerance number
---@field RightRateTolerance number
FCompareIsInputMoveConditionParam = {}


---@class UCompareIsInputMoveCondition: UCompareBaseCondition
---@field IsBindInputEvent boolean
---@field MoveForwardRate number
---@field MoveRightRate number
---@field ForwardRateTolerance number
---@field RightRateTolerance number
---@field ParamList ULuaArrayHelper<FCompareIsInputMoveConditionParam>
local UCompareIsInputMoveCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareIsInputMoveCondition:InitCompareNode(OwnerCom) end

function UCompareIsInputMoveCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareIsInputMoveCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareIsInputMoveCondition:GetConditionInfo(OutString) end

function UCompareIsInputMoveCondition:ResetCondition() end

---@param InNode UCompareBaseNode
---@return number
function UCompareIsInputMoveCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareIsInputMoveCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareIsInputMoveCondition:ModifyNodeParam(InParamIndex) end

function UCompareIsInputMoveCondition:ResetParamList() end

---@param rate number
function UCompareIsInputMoveCondition:MoveForward(rate) end

---@param rate number
function UCompareIsInputMoveCondition:MoveRight(rate) end
