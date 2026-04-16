---@meta

---@class UTriggerCondition_TeamAction: UTriggerCondition_Task
---@field TeamActionConditionType ETaskTeamActionConditionType
---@field TimeIntervalForSameEmotion number
---@field EmoteIDUniqueSet ULuaSetHelper<number>
---@field AreaIDUniqueSet ULuaSetHelper<number>
local UTriggerCondition_TeamAction = {}

---Directly set task area type
---@param ActionConditionType ETaskTeamActionConditionType
---@param TimeIntervalForSameEmote number
function UTriggerCondition_TeamAction:SetTeamActionConditionType(ActionConditionType, TimeIntervalForSameEmote) end
