---@meta

---@class EAutoEndTaskType
---@field AutoEndTaskType_None number @不自动结束
---@field AutoEndTaskType_Deactivate number @技能激活结束时
---@field AutoEndTaskType_LeaveCurrentState number @技能状态跳转时
EAutoEndTaskType = {}


---@class UUAEGameplayTask: UGameplayTask
local UUAEGameplayTask = {}

---@param LeaveState string
---@param EnterState string
function UUAEGameplayTask:EndUAETask(LeaveState, EnterState) end

---@param Reason number
function UUAEGameplayTask:EndUAETaskByDeactivateSkill(Reason) end

---@param bIsGlobal boolean
function UUAEGameplayTask:SetTaskGlobal(bIsGlobal) end

---@param InAutoEndTaskType EAutoEndTaskType
function UUAEGameplayTask:SetAutoEndTaskType(InAutoEndTaskType) end
