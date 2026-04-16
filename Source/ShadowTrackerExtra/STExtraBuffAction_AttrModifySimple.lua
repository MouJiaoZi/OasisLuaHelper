---@meta

---@class FAttrModifySimpleDataStruct
FAttrModifySimpleDataStruct = {}


---快捷属性修改器操作Action
---@class USTExtraBuffAction_AttrModifySimple: USTExtraBuffAction
---@field AuthorityOnly boolean
---@field GameAttribute FGameAttributeContainer
---@field ModifierOp EAttrOperator
---@field bUseAttrCalculation boolean
---@field DefaultModifierValue number
---@field CalculatorClass USTExtraGameMagnitudeCalculation
---@field OptionalModifyItemNameID string
---@field bResetRemove boolean
---@field bAutoRemove boolean
---@field PawnStateListDisableModify ULuaArrayHelper<EPawnState>
---@field bRemoveBeforeAdd boolean
---@field bIncludeTeammates boolean
local USTExtraBuffAction_AttrModifySimple = {}
