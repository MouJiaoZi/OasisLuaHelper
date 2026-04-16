---@meta

---@class EPEConditionCompareType
---@field PEConditionCompareType_AND number @AND
---@field PEConditionCompareType_OR number @OR
EPEConditionCompareType = {}


---@class EPEConditionResultType
---@field EPEConditionResultType_Normal number @正常
---@field EPEConditionResultType_Negation number @取反
EPEConditionResultType = {}


---@class FPESkillConditionTemplate
FPESkillConditionTemplate = {}


---该类是所有技能条件类的基类，提供了初始化和检查条件的基本功能。
---@class UPESkillConditionBase: UPESkillExtConditionBase
---@field ConditionCompareType EPEConditionCompareType
---@field ConditionResultType EPEConditionResultType
local UPESkillConditionBase = {}

---@param TriggerEvent UPESkillEventBase
function UPESkillConditionBase:TriggerEvents(TriggerEvent) end

---@param bBaseResult boolean
---@return boolean
function UPESkillConditionBase:ReturnResult(bBaseResult) end
