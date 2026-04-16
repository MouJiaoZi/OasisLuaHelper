---@meta

---@class FCompareHasChildActorConditionParam
---@field ActorClass AActor
---@field ActorWeakPtr AActor
FCompareHasChildActorConditionParam = {}


---@class UCompareHasChildActorCondition: UCompareBaseCondition
---@field bRecursion boolean
---@field ActorClass AActor
---@field ActorWeakPtr AActor
---@field ParamList ULuaArrayHelper<FCompareHasChildActorConditionParam>
local UCompareHasChildActorCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareHasChildActorCondition:InitCompareNode(OwnerCom) end

function UCompareHasChildActorCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareHasChildActorCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareHasChildActorCondition:GetConditionInfo(OutString) end

function UCompareHasChildActorCondition:ResetCondition() end

---@param InNode UCompareBaseNode
---@return number
function UCompareHasChildActorCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareHasChildActorCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareHasChildActorCondition:ModifyNodeParam(InParamIndex) end

function UCompareHasChildActorCondition:ResetParamList() end
