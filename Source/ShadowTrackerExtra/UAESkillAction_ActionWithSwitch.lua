---@meta

---@class FUAESkillAction_ActionWithSwitchStruct
FUAESkillAction_ActionWithSwitchStruct = {}


---@class USkillConditionSwitch: UObject
local USkillConditionSwitch = {}

---@param ActionOwner UUTSkillAction
---@param ContainerOwner UObject
---@return number
function USkillConditionSwitch:GetSwitchIndex(ActionOwner, ContainerOwner) end


---@class UUAESkillAction_ActionWithSwitch: USTExtraBuffAction
---@field Switch USkillConditionSwitch
---@field Actions ULuaArrayHelper<UUTSkillAction>
local UUAESkillAction_ActionWithSwitch = {}
