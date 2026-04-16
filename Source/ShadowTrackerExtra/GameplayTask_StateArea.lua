---@meta

---@class UGameplayTask_StateArea: UUAEGameplayTask
---@field OnEnterArea FStateAreaDelegate
---@field OnLeaveArea FStateAreaDelegate
---@field bInArea boolean
---@field AreaStateSet ULuaSetHelper<string>
---@field StateInterface IActivityStateInterface
local UGameplayTask_StateArea = {}

---@param LeaveState string
---@param EnterState string
function UGameplayTask_StateArea:OnStateChange(LeaveState, EnterState) end
