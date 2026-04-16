---@meta

---@class FCompareInWaterConditionParam
---@field UnderWaterHeight number
---@field CurrentPawnLocation FVector
---@field WaterWeakPtr AWaterSwimActor
FCompareInWaterConditionParam = {}


---@class UCompareInWaterCondition: UCompareBaseCondition
---@field UnderWaterHeight number
---@field CurrentPawnLocation FVector
---@field WaterWeakPtr AWaterSwimActor
---@field ParamList ULuaArrayHelper<FCompareInWaterConditionParam>
local UCompareInWaterCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareInWaterCondition:InitCompareNode(OwnerCom) end

function UCompareInWaterCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareInWaterCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareInWaterCondition:GetConditionInfo(OutString) end

function UCompareInWaterCondition:ResetCondition() end

---@param InNode UCompareBaseNode
---@return number
function UCompareInWaterCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareInWaterCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareInWaterCondition:ModifyNodeParam(InParamIndex) end

function UCompareInWaterCondition:ResetParamList() end
