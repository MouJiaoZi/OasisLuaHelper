---@meta

---@class FCompareNearClipPlaneConditionParam
---@field DestinNearClipPlaneValue number
FCompareNearClipPlaneConditionParam = {}


---@class UCompareNearClipPlaneCondition: UCompareBaseCondition
---@field DestinNearClipPlaneValue number
---@field ParamList ULuaArrayHelper<FCompareNearClipPlaneConditionParam>
local UCompareNearClipPlaneCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareNearClipPlaneCondition:InitCompareNode(OwnerCom) end

function UCompareNearClipPlaneCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareNearClipPlaneCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareNearClipPlaneCondition:GetConditionInfo(OutString) end

function UCompareNearClipPlaneCondition:ResetCondition() end

---@param InNode UCompareBaseNode
---@return number
function UCompareNearClipPlaneCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareNearClipPlaneCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareNearClipPlaneCondition:ModifyNodeParam(InParamIndex) end

function UCompareNearClipPlaneCondition:ResetParamList() end
