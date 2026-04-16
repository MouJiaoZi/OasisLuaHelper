---@meta

---@class FDelayAction
---@field DelayTime number
---@field NeedReset boolean
---@field NeedUndo boolean
FDelayAction = {}


---@class FDelayActionInstanceNode
FDelayActionInstanceNode = {}


---@class UUAESkillAction_DelayAction: UUAESkillAction
---@field PendingDelayAction FDelayAction
---@field NeedLog boolean
local UUAESkillAction_DelayAction = {}
