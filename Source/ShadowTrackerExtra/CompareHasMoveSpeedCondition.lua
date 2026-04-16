---@meta

---@class FCompareHasMoveSpeedConditionParam
---@field bCheckVehicle boolean
---@field MoveSpeedSq number
FCompareHasMoveSpeedConditionParam = {}


---@class UCompareHasMoveSpeedCondition: UCompareBaseCondition
---@field bCheckVehicle boolean
---@field MoveSpeedSq number
---@field ParamList ULuaArrayHelper<FCompareHasMoveSpeedConditionParam>
local UCompareHasMoveSpeedCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareHasMoveSpeedCondition:InitCompareNode(OwnerCom) end

function UCompareHasMoveSpeedCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareHasMoveSpeedCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareHasMoveSpeedCondition:GetConditionInfo(OutString) end

function UCompareHasMoveSpeedCondition:ResetCondition() end

---@param InNode UCompareBaseNode
---@return number
function UCompareHasMoveSpeedCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareHasMoveSpeedCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareHasMoveSpeedCondition:ModifyNodeParam(InParamIndex) end

function UCompareHasMoveSpeedCondition:ResetParamList() end
