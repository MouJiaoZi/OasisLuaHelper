---@meta

---@class UUAESkillAction_DelayExecuteAction: UUAESkillActionBP
---@field Actions ULuaArrayHelper<FBuffActionItem>
local UUAESkillAction_DelayExecuteAction = {}

---@param InstanceNodeContainer UObject
function UUAESkillAction_DelayExecuteAction:ExecuteActionsDoAction(InstanceNodeContainer) end

---@param InstanceNodeContainer UObject
function UUAESkillAction_DelayExecuteAction:ExecuteActionsUnDoAction(InstanceNodeContainer) end

---@param InstanceNodeContainer UObject
function UUAESkillAction_DelayExecuteAction:ExecuteActionsReset(InstanceNodeContainer) end
