---@meta

---@class EPESkillTransformConditionType
---@field EPESkillTransformConditionType_Valid number @有合法选点
---@field EPESkillTransformConditionType_Invalid number @没有合法选点
EPESkillTransformConditionType = {}


---@class UPESkillCondition_ValidSelectedTransform: UPESkillConditionBase
---@field TransformCondition EPESkillTransformConditionType
local UPESkillCondition_ValidSelectedTransform = {}

---@return boolean
function UPESkillCondition_ValidSelectedTransform:CheckCondition() end
