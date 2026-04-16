---@meta

---@class FCompareHasAttachParentConditionParam
---@field ActorClass AActor
---@field ActorWeakPtr AActor
FCompareHasAttachParentConditionParam = {}


---@class UCompareHasAttachParentCondition: UCompareBaseCondition
---@field ActorClass AActor
---@field ActorWeakPtr AActor
---@field ParamList ULuaArrayHelper<FCompareHasAttachParentConditionParam>
local UCompareHasAttachParentCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareHasAttachParentCondition:InitCompareNode(OwnerCom) end

function UCompareHasAttachParentCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareHasAttachParentCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareHasAttachParentCondition:GetConditionInfo(OutString) end

function UCompareHasAttachParentCondition:ResetCondition() end

---@param InNode UCompareBaseNode
---@return number
function UCompareHasAttachParentCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareHasAttachParentCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareHasAttachParentCondition:ModifyNodeParam(InParamIndex) end

function UCompareHasAttachParentCondition:ResetParamList() end
