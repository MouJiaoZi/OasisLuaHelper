---@meta

---@class FCompareNodeContariner
---@field Describe string
---@field DefaultReportType string
---@field bEnableChack boolean
---@field ConditionList ULuaArrayHelper<UCompareBaseCondition>
---@field ActionList ULuaArrayHelper<UCompareBaseActionNode>
FCompareNodeContariner = {}


---@class UObjectPropertyCompareComponent: UObjectPropertyCompareBase
---@field CompareActionList ULuaArrayHelper<UCompareBaseNode>
local UObjectPropertyCompareComponent = {}
