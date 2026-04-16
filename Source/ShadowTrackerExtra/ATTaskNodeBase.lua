---@meta

---任务节点
---@class UATTaskNodeBase: UObject
---@field NodeDescription string
---@field bEnableTick boolean
---@field NodeState EATTaskNodeState
---@field ExcuteResult EATTaskNodeExcuteResult
---@field ExcuteResultMsg string
---@field OnNodeStateChangeDelegate FOnNodeStateChangeDelegate
---@field OnNodeExcuteResultDelegate FOnNodeExcuteResultDelegate
local UATTaskNodeBase = {}

---@param NewState EATTaskNodeState
function UATTaskNodeBase:ChangeState(NewState) end

function UATTaskNodeBase:BeginTask() end

---@param DeltaTime number
function UATTaskNodeBase:TickTask(DeltaTime) end

function UATTaskNodeBase:EndTask() end

function UATTaskNodeBase:ForceEndTask() end

function UATTaskNodeBase:ReceiveBeginTask() end

---@param DeltaTime number
function UATTaskNodeBase:ReceiveTickTask(DeltaTime) end

function UATTaskNodeBase:ReceiveEndTask() end
