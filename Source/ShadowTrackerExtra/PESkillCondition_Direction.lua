---@meta

---@class EPEConditionCheckDirectionType
---@field EPEConditionCheckDirectionType_SelectDirection number @选中方向
---@field EPEConditionCheckDirectionType_SelectTarget number @选中目标
---@field EPEConditionCheckDirectionType_SelectTransform number @选中位置
EPEConditionCheckDirectionType = {}


---@class UPESkillCondition_Direction: UPESkillConditionBase
---@field OwnerPitch number
---@field OwnerYaw number
---@field DirectionType EPEConditionCheckDirectionType
---@field MinAngle number
---@field MaxAngle number
local UPESkillCondition_Direction = {}

---@return boolean
function UPESkillCondition_Direction:CheckCondition() end
