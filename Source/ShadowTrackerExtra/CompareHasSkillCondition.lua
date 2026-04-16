---@meta

---@class FCompareHasSkillConditionParam
---@field SkillSoftClass AUTSkill
FCompareHasSkillConditionParam = {}


---@class UCompareHasSkillCondition: UCompareBaseCondition
---@field SkillSoftClass AUTSkill
---@field ParamList ULuaArrayHelper<FCompareHasSkillConditionParam>
local UCompareHasSkillCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UCompareHasSkillCondition:InitCompareNode(OwnerCom) end

function UCompareHasSkillCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UCompareHasSkillCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UCompareHasSkillCondition:GetConditionInfo(OutString) end

---@param InNode UCompareBaseNode
---@return number
function UCompareHasSkillCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UCompareHasSkillCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UCompareHasSkillCondition:ModifyNodeParam(InParamIndex) end

function UCompareHasSkillCondition:ResetParamList() end
