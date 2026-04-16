---@meta

---@class UStateMachineComponent: UActorComponent
---@field AllStateList ULuaArrayHelper<UState>
---@field StartStateType EStateType
---@field FinishStateType EStateType
---@field StateMsgNotify FStateMsgNotify
---@field CurrentStateType EStateType
---@field CurrentStateEnterTime number
---@field LastStateType EStateType
---@field LastWatchedStateType EStateType
local UStateMachineComponent = {}

---@param TargetStateType EStateType
function UStateMachineComponent:ChangeWatchedState(TargetStateType) end
