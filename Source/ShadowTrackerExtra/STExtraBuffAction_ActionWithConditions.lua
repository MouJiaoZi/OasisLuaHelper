---@meta

---@class FActionWithConditionsInstanceStruct_buff
FActionWithConditionsInstanceStruct_buff = {}


---@class USTExtraBuffAction_ActionWithConditions: USTExtraBuffAction
---@field Conditions ULuaArrayHelper<UUAESkillCondition>
---@field IsUseFirstConditionResultToUpdate boolean
---@field Actions ULuaArrayHelper<FBuffActionItem>
---@field FalseActions ULuaArrayHelper<FBuffActionItem>
local USTExtraBuffAction_ActionWithConditions = {}
